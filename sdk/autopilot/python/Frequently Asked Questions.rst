.. _sdk_frequently_asked_questions:
Frequently Asked Questions
==========================


Contents

-  `Frequently Asked
   Questions </sdk/autopilot/python/faq-faq/#frequently-asked-questions>`_ 

   -  `Autopilot: The
      Project </sdk/autopilot/python/faq-faq/#autopilot-the-project>`_ 

      -  `Q. Where can I get help /
         support? </sdk/autopilot/python/faq-faq/#q-where-can-i-get-help-support>`_ 
      -  `Q. Which version of autopilot should I
         install? </sdk/autopilot/python/faq-faq/#q-which-version-of-autopilot-should-i-install>`_ 
      -  `Q. Should I write my tests in python2 or
         python3? </sdk/autopilot/python/faq-faq/#q-should-i-write-my-tests-in-python2-or-python3>`_ 
      -  `Q: Should I convert my existing tests to
         python3? </sdk/autopilot/python/faq-faq/#q-should-i-convert-my-existing-tests-to-python3>`_ 
      -  `Q. Where can I report a
         bug? </sdk/autopilot/python/faq-faq/#q-where-can-i-report-a-bug>`_ 
      -  `Q. What type of applications can autopilot
         test? </sdk/autopilot/python/faq-faq/#q-what-type-of-applications-can-autopilot-test>`_ 

   -  `Autopilot
      Tests </sdk/autopilot/python/faq-faq/#autopilot-tests>`_ 

      -  `Q. Autopilot tests often include multiple assertions. Isn’t
         this bad
         practise? </sdk/autopilot/python/faq-faq/#q-autopilot-tests-often-include-multiple-assertions-isn-t-this-bad-practise>`_ 
      -  `Q. How do I write a test that uses either a Mouse or a Touch
         device
         interchangeably? </sdk/autopilot/python/faq-faq/#q-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably>`_ 
      -  `Q. How do I use the Onscreen Keyboard (OSK) to input text in
         my
         test? </sdk/autopilot/python/faq-faq/#q-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test>`_ 

   -  `Autopilot Tests and Launching
      Applications </sdk/autopilot/python/faq-faq/#autopilot-tests-and-launching-applications>`_ 

      -  `Q. How do I launch a Click application from within a test so I
         can introspect
         it? </sdk/autopilot/python/faq-faq/#q-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it>`_ 
      -  `Q. How do I access an already running application so that I
         can test/introspect
         it? </sdk/autopilot/python/faq-faq/#q-how-do-i-access-an-already-running-application-so-that-i-can-test-introspect-it>`_ 

   -  `Autopilot Qt & Gtk
      Support </sdk/autopilot/python/faq-faq/#autopilot-qt-gtk-support>`_ 

      -  `Q. How do I launch my application so that I can explore it
         with the vis
         tool? </sdk/autopilot/python/faq-faq/#q-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool>`_ 
      -  `Q. What is the impact on memory of adding objectNames to QML
         items? </sdk/autopilot/python/faq-faq/#q-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items>`_ 

.. rubric:: `Autopilot: The
   Project </sdk/autopilot/python/faq-faq/#id2>`_ \ ` <#autopilot-the-project>`_ 
   :name: autopilot-the-project

.. rubric:: `Q. Where can I get help /
   support? </sdk/autopilot/python/faq-faq/#id3>`_ \ ` <#q-where-can-i-get-help-support>`_ 
   :name: q.-where-can-i-get-help-support

The developers hang out in the #ubuntu-autopilot IRC channel on
irc.freenode.net.

   class="section">

.. rubric:: `Q. Which version of autopilot should I
   install? </sdk/autopilot/python/faq-faq/#id4>`_ \ ` <#q-which-version-of-autopilot-should-i-install>`_ 
   :name: q.-which-version-of-autopilot-should-i-install

Ideally you should adopt and utilize the latest version of autopilot. If
your testcase requires you to utilize an older version of autopilot for
reasons other than `*Porting Autopilot
Tests* </sdk/autopilot/python/porting-porting/#porting>`_ , please `file
a bug <https://bugs.launchpad.net/autopilot/+filebug>`_  and let the
development team know about your issue.

   class="section">

.. rubric:: `Q. Should I write my tests in python2 or
   python3? </sdk/autopilot/python/faq-faq/#id5>`_ \ ` <#q-should-i-write-my-tests-in-python2-or-python3>`_ 
   :name: q.-should-i-write-my-tests-in-python2-or-python3

As Autopilot fully supports python3 (see `*Python
3* </sdk/autopilot/python/porting-porting/#python3-support>`_ ), you
should seek to use python3 for new tests. Before making a decision, you
should also ensure any 3rd party modules your test may depend on also
support python3.

   class="section">

.. rubric:: `Q: Should I convert my existing tests to
   python3? </sdk/autopilot/python/faq-faq/#id6>`_ \ ` <#q-should-i-convert-my-existing-tests-to-python3>`_ 
   :name: q-should-i-convert-my-existing-tests-to-python3

See above. In a word, yes. Converting python2 to python3 (see `*Python
3* </sdk/autopilot/python/porting-porting/#python3-support>`_ ) is
generally straightforward and converting a testcase is likely much
easier than a full python application. You can also consider retaining
python2 compatibility upon conversion.

.. rubric:: `Q. Where can I report a
   bug? </sdk/autopilot/python/faq-faq/#id7>`_ \ ` <#q-where-can-i-report-a-bug>`_ 
   :name: q.-where-can-i-report-a-bug

Autopilot is hosted on launchpad - bugs can be reported on the
`launchpad bug page for
autopilot <https://bugs.launchpad.net/autopilot/+filebug>`_  (this
requires a launchpad account).

   class="section">

.. rubric:: `Q. What type of applications can autopilot
   test? </sdk/autopilot/python/faq-faq/#id8>`_ \ ` <#q-what-type-of-applications-can-autopilot-test>`_ 
   :name: q.-what-type-of-applications-can-autopilot-test

Autopilot works with severall different types of applications,
including:
    -  The Unity desktop shell.
    -  Gtk 2 & 3 applications.
    -  Qt4, Qt5, and Qml applications.

Autopilot is designed to work across all the form factors Ubuntu runs
on, including the phone and tablet.

.. rubric:: `Autopilot
   Tests </sdk/autopilot/python/faq-faq/#id9>`_ \ ` <#autopilot-tests>`_ 
   :name: autopilot-tests

   id="q-autopilot-tests-often-include-multiple-assertions-isn-t-this-bad-practise"
   class="section">

.. rubric:: `Q. Autopilot tests often include multiple assertions. Isn’t
   this bad
   practise? </sdk/autopilot/python/faq-faq/#id10>`_ \ ` <#q-autopilot-tests-often-include-multiple-assertions-isn-t-this-bad-practise>`_ 
   :name: q.-autopilot-tests-often-include-multiple-assertions.-isnt-this-bad-practise

Maybe. But probably not.

Unit tests should test a single unit of code, and ideally be written
such that they can fail in exactly a single way. Therefore, unit tests
should have a single assertion that determines whether the test passes
or fails.

However, autopilot tests are not unit tests, they are functional tests.
Functional test suites tests features, not units of code, so there’s
several very good reasons to have more than assertion in a single test:

-  Some features require several assertions to prove that the feature is
   working correctly. For example, you may wish to verify that the
   ‘Save’ dialog box opens correctly, using the following code:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       self.assertThat(save_win.title, Eventually(Equals("Save Document")))
       self.assertThat(save_win.visible, Equals(True))
       self.assertThat(save_win.has_focus, Equals(True))

   .. raw:: html

      </div>

   .. raw:: html

      </div>

-  Some tests need to wait for the application to respond to user input
   before the test continues. The easiest way to do this is to use the
   :ref:```Eventually`` <sdk_autopilot_matchers_eventually#autopilot.matchers.Eventually>`
   matcher in the middle of your interaction with the application. For
   example, if testing the `Firefox <http://www.mozilla.org/en-US/>`_ 
   browsers ability to print a certain web comic, we might produce a
   test that looks similar to this:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       def test_firefox_can_print_xkcd(self):
           """Firefox must be able to print xkcd.com."""
           # Put keyboard focus in URL bar:
           self.keyboard.press_and_release('Ctrl+l')
           self.keyboard.type('http://xkcd.com')
           self.keyboard.press_and_release('Enter')
           # wait for page to load:
           self.assertThat(self.app.loading, Eventually(Equals(False)))
           # open print dialog:
           self.keyboard.press_and_release('Ctrl+p')
           # wait for dialog to open:
           self.assertThat(self.app.print_dialog.open, Eventually(Equals(True)))
           self.keyboard.press_and_release('Enter')
           # ensure something was sent to our faked printer:
           self.assertThat(self.fake_printer.documents_printed, Equals(1))

   .. raw:: html

      </div>

   .. raw:: html

      </div>

In general, autopilot tests are more relaxed about the ‘one assertion
per test’ rule. However, care should still be taken to produce tests
that are as small and understandable as possible.

   id="q-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably"
   class="section">

.. rubric:: `Q. How do I write a test that uses either a Mouse or a
   Touch device
   interchangeably? </sdk/autopilot/python/faq-faq/#id11>`_ \ ` <#q-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably>`_ 
   :name: q.-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably

The ``autopilot.input.Pointer`` class is a simple wrapper that unifies
some of the differences between the ``Touch`` and ``Mouse`` classes. To
use it, pass in the device you want to use under the hood, like so:

::

    pointer1 = Pointer(Touch.create())
    pointer2 = Pointer(Mouse.create())
    # pointer1 and pointer2 now have identical APIs

Combined with test scenarios, this can be used to write tests that are
run twice - once with a mouse device and once with a touch device:

::

    from autopilot.input import Mouse, Touch, Pointer
    from autopilot.testcase import AutopilotTestCase

    class TestCase(AutopilotTestCase):

        scenarios = [
            ('with mouse', dict(pointer=Pointer(Mouse.create()))),
            ('with touch', dict(pointer=Pointer(Touch.create()))),
            ]

        def test_something(self):
            """Click the pointer at 100,100."""
            self.pointer.move(100,100)
            self.pointer.click()

If you only want to use the mouse on certain platforms, use the
``autopilot.platform`` module to determine the current platform at
runtime.

   id="q-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test"
   class="section">

.. rubric:: `Q. How do I use the Onscreen Keyboard (OSK) to input text
   in my
   test? </sdk/autopilot/python/faq-faq/#id12>`_ \ ` <#q-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test>`_ 
   :name: q.-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test

The OSK is an backend option for the ``autopilot.input.Keyboard.create``
method (see this `*Advanced
Autopilot* </sdk/autopilot/python/tutorial-advanced_autopilot/#adv-picking-backend>`_ 
section for details regarding backend selection.)

Unlike the other backends (X11, UInput) the OSK has a GUI presence and
thus can be displayed on the screen.

The ``autopilot.input.Keyboard`` class provides a context manager that
handles any cleanup required when dealing with the input backends.

For example in the instance when the backend is the OSK, when leaving
the scope of the context manager the OSK will be dismissed with a swipe:

::

    from autopilot.input import Keyboard

    text_area = self._launch_test_input_area()
    keyboard = Keyboard.create('OSK')
    with keyboard.focused_type(text_area) as kb:
        kb.type("Hello World.")
        self.assertThat(text_area.text, Equals("Hello World"))
    # At this point now the OSK has been swiped away.
    self.assertThat()

.. rubric:: `Autopilot Tests and Launching
   Applications </sdk/autopilot/python/faq-faq/#id13>`_ \ ` <#autopilot-tests-and-launching-applications>`_ 
   :name: autopilot-tests-and-launching-applications

   id="q-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it"
   class="section">

.. rubric:: `Q. How do I launch a Click application from within a test
   so I can introspect
   it? </sdk/autopilot/python/faq-faq/#id14>`_ \ ` <#q-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it>`_ 
   :name: q.-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it

Launching a Click application is similar to launching a traditional
application and is as easy as using
:ref:```launch_click_package`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_click_package>`:

::

    app_proxy = self.launch_click_package(
        "com.ubuntu.dropping-letters"
    )

   id="q-how-do-i-access-an-already-running-application-so-that-i-can-test-introspect-it"
   class="section">

.. rubric:: `Q. How do I access an already running application so that I
   can test/introspect
   it? </sdk/autopilot/python/faq-faq/#id15>`_ \ ` <#q-how-do-i-access-an-already-running-application-so-that-i-can-test-introspect-it>`_ 
   :name: q.-how-do-i-access-an-already-running-application-so-that-i-can-testintrospect-it

In instances where it’s impossible to launch the application-under-test
from within the testsuite use ``get_proxy_object_for_existing_process``
to get a proxy object for the running application. In all other cases
the recommended way to launch and retrieve a proxy object for an
application is by calling either
:ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`
or
:ref:```launch_click_package`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_click_package>`

For example, to access a long running process that is running before
your test starts:

::

    application_pid = get_long_running_processes_pid()
    app_proxy = get_proxy_object_for_existing_process(pid=application_pid)

.. rubric:: `Autopilot Qt & Gtk
   Support </sdk/autopilot/python/faq-faq/#id16>`_ \ ` <#autopilot-qt-gtk-support>`_ 
   :name: autopilot-qt-gtk-support

   id="q-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool"
   class="section">

.. rubric:: `Q. How do I launch my application so that I can explore it
   with the vis
   tool? </sdk/autopilot/python/faq-faq/#id17>`_ \ ` <#q-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool>`_ 
   :name: q.-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool

Autopilot can launch applications with Autopilot support enabled
allowing you to explore and introspect the application using the `*vis
tool* <../../guides/running_ap/#visualise-introspection-tree>`_ 

For instance launching gedit is as easy as:

::

    $ autopilot3 launch gedit

*Autopilot launch* attempts to detect if you are launching either a Gtk
or Qt application so that it can enable the correct libraries. If is is
unable to determine this you will need to specify the type of
application it is by using the **-i** argument.

For example, in our previous example Autopilot was able to automatically
determine that gedit is a Gtk application and thus no further arguments
were required.

If we want to use the vis tool to introspect something like the
`*testapp.py
script* <../../tutorial/getting_started/#tut-test-with-interaction>`_ 
from an earlier tutorial we will need to inform autopilot that it is a
Qt application so that it can enable the correct support:

::

    $ autopilot3 launch -i Qt testapp.py

Now that it has been launched with Autopilot support we can introspect
and explore out application using the `*vis
tool* </sdk/autopilot/python/guides-running_ap/#visualise-introspection-tree>`_ .

   id="q-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items"
   class="section">

.. rubric:: `Q. What is the impact on memory of adding objectNames to
   QML
   items? </sdk/autopilot/python/faq-faq/#id18>`_ \ ` <#q-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items>`_ 
   :name: q.-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items

The objectName is a QString property of QObject which defaults to an
empty QString. QString is UTF-16 representation and because it uses some
general purpose optimisations it usually allocates twice the space it
needs to be able to grow fast. It also uses implicit sharing with
copy-on-write and other similar tricks to increase performance again.
These properties makes the used memory not straightforward to predict.
For example, copying an object with an objectName, shares the memory
between both as long as they are not changed.

When measuring memory consumption, things like memory alignment come
into play. Due to the fact that QML is interpreted by a JavaScript
engine, we are working in levels where lots of abstraction layers are in
between the code and the hardware and we have no chance to exactly
measure consumption of a single objectName property. Therefore the taken
approach is to measure lots of items and calculate the average
consumption.

+-----------------------+----------------------------+-------------------------+
| Without objectName    | With unique objectName     | With same objectName    |
+=======================+============================+=========================+
| 65292 kB              | 66628 kB                   | 66480 kB                |
+-----------------------+----------------------------+-------------------------+

Table: Measurement of memory consumption of 10000 Items

=> With 10000 different objectNames 1336 kB of memory are consumed which
is around 127 Bytes per Item.

Indeed, this is more than only the string. Some of the memory is
certainly lost due to memory alignment where certain areas are just not
perfectly filled in but left empty. However, certainly not all of the
overhead can be blamed on that. Additional memory is used by the QObject
meta object information that is needed to do signal/slot connections.
Also, QML does some optimisations: It does not connect signals/slots
when not needed. So the fact that the object name is set could trigger
some more connections.

Even if more than the actual string size is used and QString uses a
large representation, this is very little compared to the rest. A
qmlscene with just the item is 27MB. One full screen image in the Nexus
10 tablet can easily consume around 30MB of memory. So objectNames are
definitely not the first places where to search for optimisations.

Writing the test code snippets, one interesting thing came up
frequently: Just modifying the code around to set the objectName often
influences the results more than the actual string. For example, having
a javascript function that assigns the objectName definitely uses much
more memory than the objectName itself. Unless it makes sense from a
performance point of view (frequently changing bindings can be slow),
objectNames should be added by directly binding the value to the
property instead using helper code to assign it.

Conclusion: If an objectName is needed for testing, this is definitely
worth it. objectName’s should obviously not be added when not needed.
When adding them, the `general QML guidelines for performance should be
followed. <http://qt-project.org/doc/qt-5.0/qtquick/qtquick-performance.html>`_ 

