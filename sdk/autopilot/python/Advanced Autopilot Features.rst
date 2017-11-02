.. _sdk_advanced_autopilot_features:
Advanced Autopilot Features
===========================

This document covers advanced features in autopilot.

.. rubric:: Cleaning Up\ ` <#cleaning-up>`_ 
   :name: cleaning-up

It is vitally important that every test you run leaves the system in
exactly the same state as it found it. This means that:

-  Any files written to disk need to be removed.
-  Any environment variables set during the test run need to be un-set.
-  Any applications opened during the test run need to be closed again.
-  Any ``Keyboard`` keys pressed during the test need to be released
   again.

All of the methods on
:ref:```AutopilotTestCase`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase>`
that alter the system state will automatically revert those changes at
the end of the test. Similarly, the various input devices will release
any buttons or keys that were pressed during the test. However, for all
other changes, it is the responsibility of the test author to clean up
those changes.

For example, a test might require that a file with certain content be
written to disk at the start of the test. The test case might look
something like this:

::

    class MyTests(AutopilotTestCase):

        def make_data_file(self):
            open('/tmp/datafile', 'w').write("Some data...")

        def test_application_opens_data_file(self):
            """Our application must be able to open a data file from disk."""
            self.make_data_file()
            # rest of the test code goes here

However this will leave the ``/tmp/datafile`` on disk after the test has
finished. To combat this, use the ``addCleanup`` method. The arguments
to ``addCleanup`` are a callable, and then zero or more positional or
keyword arguments. The Callable will be called with the positional and
keyword arguments after the test has ended.

Cleanup actions are called in the reverse order in which they are added,
and are called regardless of whether the test passed, failed, or raised
an uncaught exception. To fix the above test, we might write something
similar to:

::

    import os

    class MyTests(AutopilotTestCase):

        def make_data_file(self):
            open('/tmp/datafile', 'w').write("Some data...")
            self.addCleanup(os.remove, '/tmp/datafile')

        def test_application_opens_data_file(self):
            """Our application must be able to open a data file from disk."""
            self.make_data_file()
            # rest of the test code goes here

Note that by having the code to generate the ``/tmp/datafile`` file on
disk in a separate method, the test itself can ignore the fact that
these resources need to be cleaned up. This makes the tests cleaner and
easier to read.

.. rubric:: Test Scenarios\ ` <#test-scenarios>`_ 
   :name: test-scenarios

Occasionally test authors will find themselves writing multiple tests
that differ in one or two subtle ways. For example, imagine a
hypothetical test case that tests a dictionary application. The author
wants to test that certain words return no results. Without using test
scenarios, there are two basic approaches to this problem. The first is
to create many test cases, one for each specific scenario (*don’t do
this*):

::

    class DictionaryResultsTests(AutopilotTestCase):

        def test_empty_string_returns_no_results(self):
            self.dictionary_app.enter_search_term("")
            self.assertThat(len(self.dictionary_app.results), Equals(0))

        def test_whitespace_string_returns_no_results(self):
            self.dictionary_app.enter_search_term(" \t ")
            self.assertThat(len(self.dictionary_app.results), Equals(0))

        def test_punctuation_string_returns_no_results(self):
            self.dictionary_app.enter_search_term(".-?<>{}[]")
            self.assertThat(len(self.dictionary_app.results), Equals(0))

        def test_garbage_string_returns_no_results(self):
            self.dictionary_app.enter_search_term("ljdzgfhdsgjfhdgjh")
            self.assertThat(len(self.dictionary_app.results), Equals(0))

The main problem here is that there’s a lot of typing in order to change
exactly one thing (and this hypothetical test is deliberately short, to
ease clarity. Imagine a 100 line test case!). Another approach is to
make the entire thing one large test (*don’t do this either*):

::

    class DictionaryResultsTests(AutopilotTestCase):

        def test_bad_strings_returns_no_results(self):
            bad_strings = ("",
                " \t ",
                ".-?<>{}[]",
                "ljdzgfhdsgjfhdgjh",
                )
            for input in bad_strings:
                self.dictionary_app.enter_search_term(input)
                self.assertThat(len(self.dictionary_app.results), Equals(0))

This approach makes it easier to add new input strings, but what happens
when just one of the input strings stops working? It becomes very hard
to find out which input string is broken, and the first string that
breaks will prevent the rest of the test from running, since tests stop
running when the first assertion fails.

The solution is to use test scenarios. A scenario is a class attribute
that specifies one or more scenarios to run on each of the tests. This
is best demonstrated with an example:

::

    class DictionaryResultsTests(AutopilotTestCase):

        scenarios = [
            ('empty string', {'input': ""}),
            ('whitespace', {'input': " \t "}),
            ('punctuation', {'input': ".-?<>{}[]"}),
            ('garbage', {'input': "ljdzgfhdsgjfhdgjh"}),
            ]

        def test_bad_strings_return_no_results(self):
            self.dictionary_app.enter_search_term(self.input)
            self.assertThat(len(self.dictionary_app.results), Equals(0))

Autopilot will run the ``test_bad_strings_return_no_results`` once for
each scenario. On each test, the values from the scenario dictionary
will be mapped to attributes of the test case class. In this example,
that means that the ‘input’ dictionary item will be mapped to
``self.input``. Using scenarios has several benefits over either of the
other strategies outlined above:

-  Tests that use strategies will appear as separate tests in the test
   output. The test id will be the normal test id, followed by the
   strategy name in parenthesis. So in the example above, the list of
   test ids will be:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       DictionaryResultsTests.test_bad_strings_return_no_results(empty string)
       DictionaryResultsTests.test_bad_strings_return_no_results(whitespace)
       DictionaryResultsTests.test_bad_strings_return_no_results(punctuation)
       DictionaryResultsTests.test_bad_strings_return_no_results(garbage)

   .. raw:: html

      </div>

   .. raw:: html

      </div>

-  Since scenarios are treated as separate tests, it’s easier to debug
   which scenario has broken, and re-run just that one scenario.

-  Scenarios get applied before the ``setUp`` method, which means you
   can use scenario values in the ``setUp`` and ``tearDown`` methods.
   This makes them more flexible than either of the approaches listed
   above.

.. rubric:: Test Logging\ ` <#test-logging>`_ 
   :name: test-logging

Autopilot integrates the `python logging
framework <http://docs.python.org/2/library/logging.html>`_  into the
:ref:```AutopilotTestCase`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase>`
class. Various autopilot components write log messages to the logging
framework, and all these log messages are attached to each test result
when the test completes. By default, these log messages are shown when a
test fails, or if autopilot is run with the ``-v`` option.

Test authors are encouraged to write to the python logging framework
whenever doing so would make failing tests clearer. To do this, there
are a few simple steps to follow:

#. Import the logging module:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       import logging

   .. raw:: html

      </div>

   .. raw:: html

      </div>

#. Create a ``logger`` object. You can either do this at the file level
   scope, or within a test case class:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       logger = logging.getLogger(__name__)

   .. raw:: html

      </div>

   .. raw:: html

      </div>

#. Log some messages. You may choose which level the messages should be
   logged at. For example:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       logger.debug("This is debug information, not shown by default.")
       logger.info("This is some information")
       logger.warning("This is a warning")
       logger.error("This is an error")

   .. raw:: html

      </div>

   .. raw:: html

      </div>

Note

To view log messages when using ``debug`` level of logging pass ``-vv``
when running autopilot.

For more information on the various logging levels, see the `python
documentation on Logger
objects <http://docs.python.org/2/library/logging.html#logger-objects>`_ .
All messages logged in this way will be picked up by the autopilot test
runner. This is a valuable tool when debugging failing tests.

.. rubric:: Environment Patching\ ` <#environment-patching>`_ 
   :name: environment-patching

Sometimes you need to change the value of an environment variable for
the duration of a single test. It is important that the variable is
changed back to it’s original value when the test has ended, so future
tests are run in a pristine environment. The ``fixtures`` module
includes a ``fixtures.EnvironmentVariable`` fixture which takes care of
this for you. For example, to set the ``FOO`` environment variable to
``"Hello World"`` for the duration of a single test, the code would look
something like this:

::

    from fixtures import EnvironmentVariable
    from autopilot.testcase import AutopilotTestCase

    class MyTests(AutopilotTestCase):

        def test_that_needs_custom_environment(self):
            self.useFixture(EnvironmentVariable("FOO", "Hello World"))
            # Test code goes here.

The ``fixtures.EnvironmentVariable`` fixture will revert the value of
the environment variable to it’s initial value, or will delete it
altogether if the environment variable did not exist when
``fixtures.EnvironmentVariable`` was instantiated. This happens in the
cleanup phase of the test execution.

.. rubric:: Custom Assertions\ ` <#custom-assertions>`_ 
   :name: custom-assertions

Autopilot provides additional custom assertion methods within the
:ref:```AutopilotTestCase`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase>`
base class. These assertion methods can be used for validating the
visible window stack and also properties on objects whose attributes do
not have the ``wait_for`` method, such as
:ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>`
objects (See `*In Proxy
Classes* </sdk/autopilot/python/guides-good_tests/#wait-for>`_  for more
information about ``wait_for``).

:ref:```autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack>`

This assertion allows the test to check the start of the visible window
stack by passing an iterable item of
:ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>`
instances. Minimised windows will be ignored:

::

    from autopilot.process import ProcessManager
    from autopilot.testcase import AutopilotTestCase

    class WindowTests(AutopilotTestCase):

        def test_window_stack(self):
            self.launch_some_test_apps()
            pm = ProcessManager.create()
            test_app_windows = []
            for window in pm.get_open_windows():
                if self.is_test_app(window.name):
                    test_app_windows.append(window)
            self.assertVisibleWindowStack(test_app_windows)

Note

The process manager is only available on environments that use bamf,
i.e. desktop running Unity 7. There is currently no process manager for
any other platform.

:ref:```autopilot.testcase.AutopilotTestCase.assertProperty`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.assertProperty>`

This assertion allows the test to check properties of an object that
does not have a **wait\_for** method (i.e.- objects that do not come
from the autopilot DBus interface). For example the
:ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>`
object:

::

    from autopilot.process import ProcessManager
    from autopilot.testcase import AutopilotTestCase

    class WindowTests(AutopilotTestCase):

        def test_window_stack(self):
            self.launch_some_test_apps()
            pm = ProcessManager.create()
            for window in pm.get_open_windows():
                if self.is_test_app(window.name):
                    self.assertProperty(window, is_maximized=True)

Note

:ref:```assertProperties`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.assertProperties>`
is a synonym for this method.

Note

The process manager is only available on environments that use bamf,
i.e. desktop running Unity 7. There is currently no process manager for
any other platform.

:ref:```autopilot.testcase.AutopilotTestCase.assertProperties`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.assertProperties>`

See
`*autopilot.testcase.AutopilotTestCase.assertProperty* </sdk/autopilot/python/tutorial-advanced_autopilot/#custom-assertions-assertproperty>`_ .

Note

:ref:```assertProperty`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.assertProperty>`
is a synonym for this method.

.. rubric:: Platform Selection\ ` <#platform-selection>`_ 
   :name: platform-selection

Autopilot provides functionality that allows the test author to
determine which platform a test is running on so that they may either
change behaviour within the test or skipping the test all together.

For examples and API documentaion please see ``autopilot.platform``.

.. rubric:: Gestures and Multi-touch\ ` <#gestures-and-multi-touch>`_ 
   :name: gestures-and-multi-touch

Autopilot provides API support for both
`*single-touch* </sdk/autopilot/python/tutorial-advanced_autopilot/#single-touch>`_ 
and
`*multi-touch* </sdk/autopilot/python/tutorial-advanced_autopilot/#multi-touch>`_ 
gestures which can be used to simulate user input required to drive an
application or system under test. These APIs should be used in
conjunction with `*Platform
Selection* </sdk/autopilot/python/tutorial-advanced_autopilot/#platform-selection>`_ 
to detect platform capabilities and ensure the correct input API is
being used.

.. rubric:: Single-Touch\ ` <#single-touch>`_ 
   :name: single-touch

``autopilot.input.Touch`` provides single-touch input gestures, which
includes:

-  ``tap`` which can be used to tap a specified [x,y] point on the
   screen
-  ``drag`` which will drag between 2 [x,y] points and can be customised
   by altering the speed of the action
-  ``press``, ``release`` and ``move`` operations which can be combined
   to create custom gestures
-  ``tap_object`` can be used to tap the center point of a given
   introspection object, where the screen co-ordinates are taken from
   one of several properties of the object

Autopilot additionally provides the class ``autopilot.input.Pointer`` as
a means to provide a single unified API that can be used with both
``Mouse`` input and ``Touch`` input . See the ``documentation`` for this
class for further details of this, as not all operations can be
performed on both of these input types.

This example demonstrates swiping from the center of the screen to the
left edge, which could for example be used in `Ubuntu
Touch <http://www.ubuntu.com/phone/features>`_  to swipe a new scope
into view.

#. First calculate the center point of the screen (see: `*Display
   Information* </sdk/autopilot/python/tutorial-advanced_autopilot/#display-information>`_ ):

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       >>> from autopilot.display import Display
       >>> display = Display.create()
       >>> center_x = display.get_screen_width() // 2
       >>> center_y = display.get_screen_height() // 2

   .. raw:: html

      </div>

   .. raw:: html

      </div>

#. Then perform the swipe operation from the center of the screen to the
   left edge, using ``autopilot.input.Pointer.drag``:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       >>> from autopilot.input import Touch, Pointer
       >>> pointer = Pointer(Touch.create())
       >>> pointer.drag(center_x, center_y, 0, center_y)

   .. raw:: html

      </div>

   .. raw:: html

      </div>

.. rubric:: Multi-Touch\ ` <#multi-touch>`_ 
   :name: multi-touch

``autopilot.gestures`` provides support for multi-touch input which
includes:

-  ``autopilot.gestures.pinch`` provides a 2-finger pinch gesture
   centered around an [x,y] point on the screen

This example demonstrates how to use the pinch gesture, which for
example could be used on `Ubuntu
Touch <http://www.ubuntu.com/phone/features>`_  web-browser, or gallery
application to zoom in or out of currently displayed content.

#. To zoom in, pinch vertically outwards from the center point by 100
   pixels:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       >>> from autopilot import gestures
       >>> gestures.pinch([center_x, center_y], [0, 0], [0, 100])

   .. raw:: html

      </div>

   .. raw:: html

      </div>

#. To zoom back out, pinch vertically 100 pixels back towards the center
   point:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       >>> gestures.pinch([center_x, center_y], [0, 100], [0, 0])

   .. raw:: html

      </div>

   .. raw:: html

      </div>

Note

The multi-touch ``pinch`` method is intended for use on a touch enabled
device. However, if run on a desktop environment it will behave as if
the mouse select button is pressed whilst moving the mouse pointer. For
example to select some text in a document.

.. rubric:: Advanced Backend Picking\ ` <#advanced-backend-picking>`_ 
   :name: advanced-backend-picking

Several features in autopilot are provided by more than one backend. For
example, the ``autopilot.input`` module contains the ``Keyboard``,
``Mouse`` and ``Touch`` classes, each of which can use more than one
implementation depending on the platform the tests are being run on.

For example, when running autopilot on a traditional ubuntu desktop
platform, ``Keyboard`` input events are probably created using the X11
client libraries. On a phone platform, X11 is not present, so autopilot
will instead choose to generate events using the kernel UInput device
driver instead.

Other autopilot systems that make use of multiple backends include the
``autopilot.display`` and ``autopilot.process`` modules. Every class in
these modules follows the same construction pattern:

.. rubric:: Default Creation\ ` <#default-creation>`_ 
   :name: default-creation

By default, calling the ``create()`` method with no arguments will
return an instance of the class that is appropriate to the current
platform. For example::
    .. raw:: html

       <div class="first last highlight-python">

    .. raw:: html

       <div class="highlight">

    ::

        >>> from autopilot.input import Keyboard
        >>> kbd = Keyboard.create()

    .. raw:: html

       </div>

    .. raw:: html

       </div>

The code snippet above will create an instance of the Keyboard class
that uses X11 on Desktop systems, and UInput on other systems. On the
rare occaison when test authors need to construct these objects
themselves, we expect that the default creation pattern to be used.

.. rubric:: Picking a Backend\ ` <#picking-a-backend>`_ 
   :name: picking-a-backend

Test authors may sometimes want to pick a specific backend. The possible
backends are documented in the API documentation for each class. For
example, the documentation for the ``autopilot.input.Keyboard.create``
method says there are three backends available: the ``X11`` backend, the
``UInput`` backend, and the ``OSK`` backend. These backends can be
specified in the create method. For example, to specify that you want a
Keyboard that uses X11 to generate it’s input events:

::

    >>> from autopilot.input import Keyboard
    >>> kbd = Keyboard.create("X11")

Similarly, to specify that a UInput keyboard should be created:

::

    >>> from autopilot.input import Keyboard
    >>> kbd = Keyboard.create("UInput")

Finally, for the Onscreen Keyboard:

::

    >>> from autopilot.input import Keyboard
    >>> kbd = Keyboard.create("OSK")

Warning

Care must be taken when specifying specific backends. There is no
guarantee that the backend you ask for is going to be available across
all platforms. For that reason, using the default creation method is
encouraged.

Warning

The **OSK** backend has some known implementation limitations, please
see ``autopilot.input.Keyboard.create`` method documenation for further
details.

.. rubric:: Possible Errors when Creating
   Backends\ ` <#possible-errors-when-creating-backends>`_ 
   :name: possible-errors-when-creating-backends

Lots of things can go wrong when creating backends with the ``create``
method.

If autopilot is unable to create any backends for your current platform,
a ``RuntimeError`` exception will be raised. It’s ``message`` attribute
will contain the error message from each backend that autopilot tried to
create.

If a preferred backend was specified, but that backend doesn’t exist
(probably the test author mis-spelled it), a ``RuntimeError`` will be
raised:

::

    >>> from autopilot.input import Keyboard
    >>> try:
    ...     kbd = Keyboard.create("uinput")
    ... except RuntimeError as e:
    ...     print("Unable to create keyboard: " + str(e))
    ...
    Unable to create keyboard: Unknown backend 'uinput'

In this example, ``uinput`` was mis-spelled (backend names are case
sensitive). Specifying the correct backend name works as expected:

::

    >>> from autopilot.input import Keyboard
    >>> kbd = Keyboard.create("UInput")

Finally, if the test author specifies a preferred backend, but that
backend could not be created, a ``autopilot.BackendException`` will be
raised. This is an important distinction to understand: While calling
``create()`` with no arguments will try more than one backend,
specifying a backend to create will only try and create that one backend
type. The BackendException instance will contain the original exception
raised by the backed in it’s ``original_exception`` attribute. In this
example, we try and create a UInput keyboard, which fails because we
don’t have the correct permissions (this is something that autopilot
usually handles for you):

::

    >>> from autopilot.input import Keyboard
    >>> from autopilot import BackendException
    >>> try:
    ...     kbd = Keyboard.create("UInput")
    ... except BackendException as e:
    ...     repr(e.original_exception)
    ...     repr(e)
    ...
    'UInputError(\'"/dev/uinput" cannot be opened for writing\',)'
    'BackendException(\'Error while initialising backend. Original exception was: "/dev/uinput" cannot be opened for writing\',)'

.. rubric:: Keyboard Backends\ ` <#keyboard-backends>`_ 
   :name: keyboard-backends

   class="section">

.. rubric:: A quick introduction to the Keyboard
   backends\ ` <#a-quick-introduction-to-the-keyboard-backends>`_ 
   :name: a-quick-introduction-to-the-keyboard-backends

Each backend has a different method of operating behind the scenes to
provide the Keyboard interface.

Here is a quick overview of how each backend works.

+------------+---------------------------------------------------------------+
| Backend    | Description                                                   |
+============+===============================================================+
| X11        | The X11 backend generates X11 events using a mock input       |
|            | device which it then syncs with X to actually action the      |
|            | input.                                                        |
+------------+---------------------------------------------------------------+
| Uinput     | The UInput backend injects events directly in to the kernel   |
|            | using the UInput device driver to produce input.              |
+------------+---------------------------------------------------------------+
| OSK        | The Onscreen Keyboard backend uses the GUI pop-up keyboard to |
|            | enter input. Using a pointer object it taps on the required   |
|            | keys to get the expected output.                              |
+------------+---------------------------------------------------------------+

   class="section">

.. rubric:: Limitations of the different Keyboard
   backends\ ` <#limitations-of-the-different-keyboard-backends>`_ 
   :name: limitations-of-the-different-keyboard-backends

While every effort has been made so that the Keyboard devices act the
same regardless of which backend or platform is in use, the simple fact
is that there can be some technical limitations for some backends.

Some of these limitations are hidden when using the “create” method and
won’t cause any concern (e.g. X11 backend on desktop, UInput on an
Ubuntu Touch device.) while others will raise exceptions (that are fully
documented in the API docs).

Here is a list of known limitations:

**X11**

-  Only available on desktop platforms

   -  X11 isn’t available on Ubuntu Touch devices

**UInput**

-  Requires correct device access permissions

   -  The user (or group) that are running the autopilot tests need
      read/write access to the UInput device (usually /dev/uinput).

-  Specific kernel support is required

   -  The kernel on the system running the tests must be running a
      kernel that includes UInput support (as well as have the module
      loaded.

**OSK**

-  Currently only available on Ubuntu Touch devices

   -  At the time of writing this the OSK/Ubuntu Keyboard is only
      supported/available on the Ubuntu Touch devices. It is possible
      that it will be available on the desktop in the near future.

-  Unable to type ‘special’ keys e.g. Alt

   -  This shouldn’t be an issue as applications running on Ubuntu Touch
      devices will be using the expected patterns of use on these
      platforms.

-  The following methods have limitations or are not implemented:

   -  ``autopilot.input.Keyboard.press``: Raises NotImplementedError if
      called.
   -  ``autopilot.input.Keyboard.release``: Raises NotImplementedError
      if called.
   -  ``autopilot.input.Keyboard.press_and_release``: can can only
      handle single keys/characters. Raises either ValueError if passed
      more than a single character key or UnsupportedKey if passed a key
      that is not supported by the OSK backend (or the current language
      layout).

.. rubric:: Process Control\ ` <#process-control>`_ 
   :name: process-control

The ``autopilot.process`` module provides the ``ProcessManager`` class
to provide a high-level interface for managing applications and windows
during testing. Features of the ``ProcessManager`` allow the user to
start and stop applications easily and to query the current state of an
application and its windows. It also provides automatic cleanup for apps
that have been launched during testing.

Note

:ref:```ProcessManager`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager>`
is not intended for introspecting an application’s object tree, for this
see `*Launching
Applications* </sdk/autopilot/python/tutorial-advanced_autopilot/#launching-applications>`_ .
Also it does not provide a method for interacting with an application’s
UI or specific features.

Properties of an application and its windows can be accessed using the
classes
:ref:```Application`` <sdk_autopilot_process_application#autopilot.process.Application>`
and
:ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>`,
which also allows the window instance to be focused and closed.

A list of known applications is defined in
:ref:```KNOWN_APPS`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.KNOWN_APPS>`
and these can easily be referenced by name. This list can also be
updated using
:ref:```register_known_application`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.register_known_application>`
and
:ref:```unregister_known_application`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.unregister_known_application>`
for easier use during the test.

To use the
:ref:```ProcessManager`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager>`
the static
:ref:```create`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.create>`
method should be called, which returns an initialised object instance.

A simple example to launch the gedit text editor and check it is in
focus:

::

    from autopilot.process import ProcessManager
    from autopilot.testcase import AutopilotTestCase

    class ProcessManagerTestCase(AutopilotTestCase):

        def test_launch_app(self):
            pm = ProcessManager.create()
            app_window = pm.start_app_window('Text Editor')
            app_window.set_focus()
            self.assertTrue(app_window.is_focused)

Note

:ref:```ProcessManager`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager>`
is only available on environments that use bamf, i.e. desktop running
Unity 7. There is currently no process manager for any other platform.

.. rubric:: Display Information\ ` <#display-information>`_ 
   :name: display-information

Autopilot provides the ``autopilot.display`` module to get information
about the displays currently being used. This information can be used in
tests to implement gestures or input events that are specific to the
current test environment. For example a test could be run on a desktop
environment with multiple screens, or on a variety of touch devices that
have different screen sizes.

The user must call the static
:ref:```create`` <sdk_autopilot_display_display#autopilot.display.Display.create>`
method to get an instance of the
:ref:```Display`` <sdk_autopilot_display_display#autopilot.display.Display>`
class.

This example shows how to get the size of each available screen, which
could be used to calculate coordinates for a swipe or input event (See
the ``autopilot.input`` module for more details about generating input
events).:

::

    from autopilot.display import Display

    display = Display.create()
    for screen in range(0, display.get_num_screens()):
        width = display.get_screen_width(screen)
        height = display.get_screen_height(screen)
        print('screen {0}: {1}x{2}'.format(screen, width, height))

.. rubric:: Writing Custom Proxy
   Classes\ ` <#writing-custom-proxy-classes>`_ 
   :name: writing-custom-proxy-classes

By default, autopilot will generate an object for every introspectable
item in your application under test. These are generated on the fly, and
derive from
:ref:```ProxyBase`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase>`.
This gives you the usual methods of selecting other nodes in the object
tree, as well the the means to inspect all the properties in that class.

However, sometimes you want to customize the class used to create these
objects. The most common reason to want to do this is to provide methods
that make it easier to inspect or interact with these objects. Autopilot
allows test authors to provide their own custom classes, through a
couple of simple steps:

#. First, you must define your own base class, to be used by all custom
   proxy objects in your test suite. This base class can be empty, but
   must derive from
   :ref:```ProxyBase`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase>`.
   An example class might look like this:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       from autopilot.introspection import ProxyBase

       class CustomProxyObjectBase(ProxyBase):
           """A base class for all custom proxy objects within this test suite."""

   .. raw:: html

      </div>

   .. raw:: html

      </div>

For Ubuntu applications using Ubuntu UI Toolkit objects, you should
derive your custom proxy object from
UbuntuUIToolkitCustomProxyObjectBase. This base class is also derived
from
:ref:```ProxyBase`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase>`
and is used for all Ubuntu UI Toolkit custom proxy objects. So if you
are introspecting objects from Ubuntu UI Toolkit then this is the base
class to use.

2. Define the classes you want autopilot to use, instead of the default.
   The simplest method is to give the class the same name as the type
   you wish to override. For example, if you want to define your own
   custom class to be used every time autopilot generates an instance of
   a ‘QLabel’ object, the class definition would look like this:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       class QLabel(CustomProxyObjectBase):

           # Add custom methods here...

   .. raw:: html

      </div>

   .. raw:: html

      </div>

If you wish to implement more specific selection criteria, your class
can override the validate\_dbus\_object method, which takes as arguments
the dbus path and state. For example:

::

    class SpecificQLabel(CustomProxyObjectBase):

        def validate_dbus_object(path, state):
            return (path.endswith('object_we_want') or
                    state['some_property'] == 'desired_value')

This method should return True if the object matches this custom proxy
class, and False otherwise. If more than one custom proxy class matches
an object, a ``ValueError`` will be raised at runtime.

An example using Ubuntu UI Toolkit which would be used to swipe up a
PageWithBottomEdge object to reveal it’s bottom edge menu could look
like this:

::

    import ubuntuuitoolkit

    class PageWithBottomEdge(ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase):
        """An emulator class that makes it easy to interact with the bottom edge
           swipe page"""

        def reveal_bottom_edge_page(self):
            """Swipe up from the bottom edge of the Page
               to reveal it's bottom edge menu."""

3. Pass the custom proxy base class as an argument to the
   launch\_test\_application method on your test class. This base class
   should be the same base class that is used to write all of your
   custom proxy objects:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       from autopilot.testcase import AutopilotTestCase

       class TestCase(AutopilotTestCase):

           def setUp(self):
               super().setUp()
               self.app = self.launch_test_application(
                   '/path/to/the/application',
                   emulator_base=CustomProxyObjectBase)

   .. raw:: html

      </div>

   .. raw:: html

      </div>

For applications using objects from Ubuntu UI Toolkit, the
emulator\_base parameter should be:

::

    emulator_base=ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase

4. You can pass the custom proxy class to methods like
   :ref:```select_single`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase.select_single>`
   instead of a string. So, for example, the following is a valid way of
   selecting the QLabel instances in an application:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       # Get all QLabels in the applicaton:
       labels = self.app.select_many(QLabel)

   .. raw:: html

      </div>

   .. raw:: html

      </div>

If you are introspecting an application that already has a custom proxy
base class defined, then this class can simply be imported and passed to
the appropriate application launcher method. See `*launching
applications* </sdk/autopilot/python/tutorial-advanced_autopilot/#launching-applications>`_ 
for more details on launching an application for introspection. This
will allow you to call all of the public methods of the application’s
proxy base class directly in your test.

This example will run on desktop and uses the webbrowser application to
navigate to a url using the base class go\_to\_url() method:

::

    from autopilot.testcase import AutopilotTestCase
    from webbrowser_app.emulators import browser

    class ClickAppTestCase(AutopilotTestCase):

        def test_go_to_url(self):
            app = self.launch_test_application(
                'webbrowser-app',
                emulator_base=browser.Webbrowser)
            # main_window is a property of the Webbrowser class
            app.main_window.go_to_url('http://www.ubuntu.com')

.. rubric:: Launching Applications\ ` <#launching-applications>`_ 
   :name: launching-applications

Applications can be launched inside of a testcase using the application
launcher methods from the
:ref:```AutopilotTestCase`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase>`
class. The exact method required will depend upon the type of
application being launched:

-  :ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`
   is used to launch regular executables
-  :ref:```launch_upstart_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_upstart_application>`
   is used to launch upstart-based applications
-  :ref:```launch_click_package`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_click_package>`
   is used to launch applications inside a `click
   package <https://click.readthedocs.org/en/latest/>`_ 

This example shows how to launch an installed click application from
within a test case:

::

    from autopilot.testcase import AutopilotTestCase

    class ClickAppTestCase(AutopilotTestCase):

        def test_something(self):
            app_proxy = self.launch_click_package('com.ubuntu.calculator')

Outside of testcase classes, the
:ref:```NormalApplicationLauncher`` <sdk_autopilot_application_normalapplicationlauncher#autopilot.application.NormalApplicationLauncher>`,
:ref:```UpstartApplicationLauncher`` <sdk_autopilot_application_upstartapplicationlauncher#autopilot.application.UpstartApplicationLauncher>`,
and
:ref:```ClickApplicationLauncher`` <sdk_autopilot_application_clickapplicationlauncher#autopilot.application.ClickApplicationLauncher>`
fixtures can be used, e.g.:

::

    from autopilot.application import NormalApplicationLauncher

    with NormalApplicationLauncher() as launcher:
        launcher.launch('gedit')

or a similar example for an installed click package:

::

    from autopilot.application import ClickApplicationLauncher

    with ClickApplicationLauncher() as launcher:
        app_proxy = launcher.launch('com.ubuntu.calculator')

Within a fixture or a testcase, ``self.useFixture`` can be used:

::

    launcher = self.useFixture(NormalApplicationLauncher())
    launcher.launch('gedit', ['--new-window', '/path/to/file'])

or for an installed click package:

::

    launcher = self.useFixture(ClickApplicationLauncher())
    app_proxy = launcher.launch('com.ubuntu.calculator')

Additional options can also be specified to set a custom addDetail
method, a custom proxy base, or a custom dbus bus with which to patch
the environment:

::

    launcher = self.useFixture(NormalApplicationLauncher(
        case_addDetail=self.addDetail,
        dbus_bus='some_other_bus',
        proxy_base=my_proxy_class,
    ))

Note

You must pass the test case’s ‘addDetail’ method to these application
launch fixtures if you want application logs to be attached to the test
result. This is due to the way fixtures are cleaned up, and is
unavoidable.

The main qml file of some click applications can also be launched
directly from source. This can be done using the
`qmlscene <https://developer.ubuntu.com/sdk/qml/sdk-1.0/QtQuick/qtquick-qmlscene/>`_ 
application directly on the target application’s main qml file. This
example uses
:ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`
method from within a test case:

::

    app_proxy = self.launch_test_application('qmlscene', 'application.qml', app_type='qt')

However, using this method it will not be possible to return an
application specific custom proxy object, see `*Writing Custom Proxy
Classes* </sdk/autopilot/python/tutorial-advanced_autopilot/#custom-proxy-classes>`_ .

