.. _sdk_writing_your_first_test:
Writing Your First Test
=======================

This document contains everything you need to know to write your first
autopilot test. It covers writing several simple tests for a sample
Qt5/Qml application. However, it’s important to note that nothing in
this tutorial is specific to Qt5/Qml, and will work equally well with
any other kind of application.

.. rubric:: Files and Directories\ ` <#files-and-directories>`_ 
   :name: files-and-directories

Your autopilot test suite will grow to several files, possibly spread
across several directories. We recommend that you follow this simple
directory layout:

::

    autopilot/
    autopilot/<projectname>/
    autopilot/<projectname>/tests/

The ``autopilot`` folder can be anywhere within your project’s source
tree. It will likely contain a
`setup.py <http://docs.python.org/3/distutils/setupscript.html>`_  file.

The ``autopilot/<projectname>/`` folder is the base package for your
autopilot tests. This folder, and all child folders, are python
packages, and so must contain an `\_\_init\_\_.py
file <http://docs.python.org/3/tutorial/modules.html#packages>`_ . If
you ever find yourself writing custom proxy classes (This is an advanced
topic, and is covered here: `*Writing Custom Proxy
Classes* </sdk/autopilot/python/tutorial-advanced_autopilot/#custom-proxy-classes>`_ ),
they should be imported from this top-level package.

Each test file should be named ``test_<component>.py``, where
*<component>* is the logical component you are testing in that file.
Test files must be written in the ``autopilot/<projectname>/tests/``
folder.

.. rubric:: A Minimal Test Case\ ` <#a-minimal-test-case>`_ 
   :name: a-minimal-test-case

Autopilot tests follow a similar pattern to other python test libraries:
you must declare a class that derives from
:ref:```AutopilotTestCase`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase>`.
A minimal test case looks like this:

::

    from autopilot.testcase import AutopilotTestCase

    class MyTests(AutopilotTestCase):

            def test_something(self):
                    """An example test case that will always pass."""
                    self.assertTrue(True)

|../../\_images/otto-64.png|

Autopilot Says

**Make your tests expressive!**

It’s important to make sure that your tests express your *intent* as
clearly as possible. We recommend choosing long, descriptive names for
test functions and classes (even breaking \ `**PEP
8** <http://www.python.org/dev/peps/pep-0008>`_ , if you need to), and
give your tests a detailed docstring explaining exactly what you are
trying to test. For more detailed advice on this point, see `*Write
Expressive
Tests* </sdk/autopilot/python/guides-good_tests/#write-expressive-tests>`_ 

.. rubric:: The Setup Phase\ ` <#the-setup-phase>`_ 
   :name: the-setup-phase

Before each test is run, the ``setUp`` method is called. Test authors
may override this method to run any setup that needs to happen before
the test is run. However, care must be taken when using the ``setUp``
method: it tends to hide code from the test case, which can make your
tests less readable. It is our recommendation, therefore, that you use
this feature sparingly. A more suitable alternative is often to put the
setup code in a separate function or method and call it from the test
function.

Should you wish to put code in a setup method, it looks like this:

::

    from autopilot.testcase import AutopilotTestCase

    class MyTests(AutopilotTestCase):

            def setUp(self):
                    super(MyTests, self).setUp()
                    # This code gets run before every test!

            def test_something(self):
                    """An example test case that will always pass."""
                    self.assertTrue(True)

Note

Any action you take in the setup phase must be undone if it alters the
system state. See `*Cleaning
Up* </sdk/autopilot/python/tutorial-advanced_autopilot/#cleaning-up>`_ 
for more details.

.. rubric:: Starting the Application\ ` <#starting-the-application>`_ 
   :name: starting-the-application

At the start of your test, you need to tell autopilot to launch your
application. To do this, call
:ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`.
The minimum required argument to this method is the application name or
path. If you pass in the application name, autopilot will look in the
current working directory, and then will search the \ ``PATH``
environment variable. Otherwise, autopilot looks for the executable at
the path specified. Positional arguments to this method are passed to
the executable being launched.

Autopilot will try and guess what type of application you are launching,
and therefore what kind of introspection libraries it should load.
Sometimes autopilot will need some assistance however. For example, at
the time of writing, autopilot cannot automatically detect the
introspection type for python / Qt4 applications. In that case, a
``RuntimeError`` will be raised. To provide autopilot with a hint as to
which introspection type to load, you can provide the ``app_type``
keyword argument. For example:

::

    class MyTests(AutopilotTestCase):

            def test_python_qt4_application(self):
                    self.app = self.launch_test_application(
                            'my-pyqt4-app',
                            app_type='qt'
                            )

See the documentation for
:ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`
for more details.

The return value from
:ref:```launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`
is a proxy object representing the root of the introspection tree of the
application you just launched.

|../../\_images/otto-64.png|

Autopilot Says

**What is a Proxy Object?**

Whenever you launch an application, autopilot gives you a “proxy
object”. These are instances of the
:ref:```ProxyBase`` <sdk_autopilot_introspection_proxybase#autopilot.introspection.ProxyBase>`
class, with all the data from your application mirrored in the proxy
object instances. For example, if you have a proxy object for a push
button class (say, ``QPushButton``, for example), the proxy object will
have attribute to match every attribute in the class within your
application. Autopilot automatically keeps the data in these instances
up to date, so you can use them in your test assertions.

User interfaces are made up of a tree of widgets, and autopilot
represents these widgets as a tree of proxy objects. Proxy objects have
a number of methods on them for selecting child objects in the
introspection tree, so test authors can easily inspect the parts of the
UI tree they care about.

.. rubric:: A Simple Test\ ` <#a-simple-test>`_ 
   :name: a-simple-test

To demonstrate the material covered so far, this selection will outline
a simple application, and a single test for it. Instead of testing a
third-party application, we will write the simplest possible application
in Python and Qt4. The application, named ‘testapp.py’, is listed below:

::

    #!/usr/bin/env python

    from PyQt4 import QtGui
    from sys import argv

    def main():
            app = QtGui.QApplication(argv)
            win = QtGui.QMainWindow()
            win.show()
            win.setWindowTitle("Hello World")
            app.exec_()

    if __name__ == '__main__':
            main()

As you can see, this is a trivial application, but it serves our
purpose. For the upcoming tests to run this file must be executable:

::

    $ chmod u+x testapp.py

We will write a single autopilot test that asserts that the title of the
main window is equal to the string “Hello World”. Our test file is named
“test\_window.py”, and contains the following code:

::

    from autopilot.testcase import AutopilotTestCase
    from os.path import abspath, dirname, join
    from testtools.matchers import Equals

    class MainWindowTitleTests(AutopilotTestCase):

        def launch_application(self):
            """Work out the full path to the application and launch it.

            This is necessary since our test application will not be in $PATH.

            :returns: The application proxy object.

            """
            full_path = abspath(join(dirname(__file__), '..', '..', 'testapp.py'))
            return self.launch_test_application(full_path, app_type='qt')

        def test_main_window_title_string(self):
            """The main window title must be 'Hello World'."""
            app_root = self.launch_application()
            main_window = app_root.select_single('QMainWindow')

            self.assertThat(main_window.windowTitle, Equals("Hello World"))

Note that we have made the test method as readable as possible by hiding
the complexities of finding the full path to the application we want to
test. Of course, if you can guarantee that the application is in
\ ``PATH``, then this step becomes a lot simpler.

The entire directory structure looks like this:

::

    ./example/__init__.py
    ./example/tests/__init__.py
    ./example/tests/test_window.py
    ./testapp.py

The ``_ init__.py`` files are empty, and are needed to make these
directories importable by python.

.. rubric:: Running Autopilot\ ` <#running-autopilot>`_ 
   :name: running-autopilot

From the root of this directory structure, we can ask autopilot to list
all the tests it can find:

::

    $ autopilot3 list example
    Loading tests from: /home/thomi/code/canonical/autopilot/example_test

        example.tests.test_window.MainWindowTitleTests.test_main_window_title_string

     1 total tests.

Note that on the first line, autopilot will tell you where it has loaded
the test definitions from. Autopilot will look in the current directory
for a python package that matches the package name specified on the
command line. If it does not find any suitable packages, it will look in
the standard python module search path instead.

To run our test, we use the autopilot ‘run’ command:

::

    $ autopilot3 run example
    Loading tests from: /home/thomi/code/canonical/autopilot/example_test

    Tests running...

    Ran 1 test in 2.342s
    OK

You will notice that the test application launches, and then dissapears
shortly afterwards. Since this test doesn’t manipulate the application
in any way, this is a rather boring test to look at. If you ever want
more output from the run command, you may specify the ‘-v’ flag:

::

    $ autopilot3 run -v example
    Loading tests from: /home/thomi/code/canonical/autopilot/example_test

    Tests running...
    13:41:11.614 INFO globals:49 - ******************************
    13:41:11.614 INFO globals:50 - Starting test example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
    13:41:11.693 INFO __init__:136 - Launching process: ['/home/thomi/code/canonical/autopilot/example_test/testapp.py', '-testability']
    13:41:11.699 INFO __init__:169 - Looking for autopilot interface for PID 12013 (and children)
    13:41:11.727 WARNING __init__:185 - Caught exception while searching for autopilot interface: 'DBusException("Could not get PID of name 'org.freedesktop.DBus': no such name",)'
    13:41:12.773 WARNING __init__:185 - Caught exception while searching for autopilot interface: 'DBusException("Could not get PID of name 'org.freedesktop.DBus': no such name",)'
    13:41:12.848 WARNING __init__:185 - Caught exception while searching for autopilot interface: 'RuntimeError("Could not find Autopilot interface on DBus backend '<session bus :1.5967 /com/canonical/Autopilot/Introspection>'",)'
    13:41:12.852 WARNING __init__:185 - Caught exception while searching for autopilot interface: 'RuntimeError("Could not find Autopilot interface on DBus backend '<session bus :1.5968 /com/canonical/Autopilot/Introspection>'",)'
    13:41:12.863 WARNING dbus:464 - Generating introspection instance for type 'Root' based on generic class.
    13:41:12.864 DEBUG dbus:338 - Selecting objects of type QMainWindow with attributes: {}
    13:41:12.871 WARNING dbus:464 - Generating introspection instance for type 'QMainWindow' based on generic class.
    13:41:12.886 INFO testcase:380 - waiting for process to exit.
    13:41:13.983 INFO testresult:35 - OK: example.tests.test_window.MainWindowTitleTests.test_main_window_title_string

    Ran 1 test in 2.370s
    OK

You may also specify ‘-v’ twice for even more output (this is rarely
useful for test authors however).

Both the ‘list’ and ‘run’ commands take a test id as an argument. You
may be as generic, or as specific as you like. In the examples above, we
will list and run all tests in the ‘example’ package (i.e.- all tests),
but we could specify a more specific run criteria if we only wanted to
run some of the tests. For example, to only run the single test we’ve
written, we can execute:

::

    $ autopilot3 run example.tests.test_window.MainWindowTitleTests.test_main_window_title_string

.. rubric:: A Test with Interaction\ ` <#a-test-with-interaction>`_ 
   :name: a-test-with-interaction

Now lets take a look at some simple tests with some user interaction.
First, update the test application with some input and output controls:

::

    #!/usr/bin/env python
    # File: testapp.py

    from PyQt4 import QtGui
    from sys import argv

    class AutopilotHelloWorld(QtGui.QWidget):
        def __init__(self):
            super(AutopilotHelloWorld, self).__init__()

            self.hello = QtGui.QPushButton("Hello")
            self.hello.clicked.connect(self.say_hello)

            self.goodbye = QtGui.QPushButton("Goodbye")
            self.goodbye.clicked.connect(self.say_goodbye)

            self.response = QtGui.QLabel("Response: None")

            grid = QtGui.QGridLayout()
            grid.addWidget(self.hello, 0, 0)
            grid.addWidget(self.goodbye, 0, 1)
            grid.addWidget(self.response, 1, 0, 1, 2)
            self.setLayout(grid)
            self.show()
            self.setWindowTitle("Hello World")

        def say_hello(self):
            self.response.setText('Response: Hello')

        def say_goodbye(self):
            self.response.setText('Response: Goodbye')

    def main():
        app = QtGui.QApplication(argv)
        ahw = AutopilotHelloWorld()
        app.exec_()

    if __name__ == '__main__':
            main()

We’ve reorganized the application code into a class to make the event
handling easier. Then we added two input controls, the ``hello`` and
``goodbye`` buttons and an output control, the ``response`` label.

The operation of the application is still very trivial, but now we can
test that it actually does something in response to user input. Clicking
either of the two buttons will cause the response text to change.
Clicking the ``Hello`` button should result in ``Response: Hello`` while
clicking the ``Goodbye`` button should result in ``Response: Goodbye``.

Since we’re adding a new category of tests, button response tests, we
should organize them into a new class. Our tests module now looks like:

::

    from autopilot.testcase import AutopilotTestCase
    from os.path import abspath, dirname, join
    from testtools.matchers import Equals

    from autopilot.matchers import Eventually

    class HelloWorldTestBase(AutopilotTestCase):

        def launch_application(self):
            """Work out the full path to the application and launch it.

            This is necessary since our test application will not be in $PATH.

            :returns: The application proxy object.

            """
            full_path = abspath(join(dirname(__file__), '..', '..', 'testapp.py'))
            return self.launch_test_application(full_path, app_type='qt')

    class MainWindowTitleTests(HelloWorldTestBase):

        def test_main_window_title_string(self):
            """The main window title must be 'Hello World'."""
            app_root = self.launch_application()
            main_window = app_root.select_single('AutopilotHelloWorld')

            self.assertThat(main_window.windowTitle, Equals("Hello World"))

    class ButtonResponseTests(HelloWorldTestBase):

        def test_hello_response(self):
            """The response text must be 'Response: Hello' after a Hello click."""
            app_root = self.launch_application()
            response = app_root.select_single('QLabel')
            hello = app_root.select_single('QPushButton', text='Hello')

            self.mouse.click_object(hello)

            self.assertThat(response.text, Eventually(Equals('Response: Hello')))

        def test_goodbye_response(self):
            """The response text must be 'Response: Goodbye' after a Goodbye
            click."""
            app_root = self.launch_application()
            response = app_root.select_single('QLabel')
            goodbye = app_root.select_single('QPushButton', text='Goodbye')

            self.mouse.click_object(goodbye)

            self.assertThat(response.text, Eventually(Equals('Response: Goodbye')))

In addition to the new class, ``ButtonResponseTests``, you’ll notice a
few other changes. First, two new import lines were added to support the
new tests. Next, the existing ``MainWindowTitleTests`` class was
refactored to subclass from a base class, ``HelloWorldTestBase``. The
base class contains the ``launch_application`` method which is used for
all test cases. Finally, the object type of the main window changed from
``QMainWindow`` to ``AutopilotHelloWorld``. The change in object type is
a result of our test application being refactored into a class called
``AutopilotHelloWorld``.

|../../\_images/otto-64.png|

Autopilot Says

**Be careful when identifing user interface controls**

Notice that our simple refactoring of the test application forced a
change to the test for the main window. When developing application
code, put a little extra thought into how the user interface controls
will be identified in the tests. Identify objects with attributes that
are likely to remain constant as the application code is developed.

The ``ButtonResponseTests`` class adds two new tests, one for each input
control. Each test identifies the user interface controls that need to
be used, performs a single, specific action, and then verifies the
outcome. In ``test_hello_response``, we first identify the ``QLabel``
control which contains the output we need to check. We then identify the
``Hello`` button. As the application has two ``QPushButton`` controls,
we must further refine the ``select_single`` call by specifing an
additional property. In this case, we use the button text. Next, an
input action is triggered by instructing the ``mouse`` to click the
``Hello`` button. Finally, the test asserts that the response label text
matches the expected string. The second test repeats the same process
with the ``Goodbye`` button.

.. rubric:: The Eventually Matcher\ ` <#the-eventually-matcher>`_ 
   :name: the-eventually-matcher

Notice that in the ButtonResponseTests tests above, the autopilot method
:ref:```Eventually`` <sdk_autopilot_matchers_eventually#autopilot.matchers.Eventually>`
is used in the assertion. This allows the assertion to be retried
continuously until it either becomes true, or times out (the default
timout is 10 seconds). This is necessary because the application and the
autopilot tests run in different processes. Autopilot could test the
assert before the application has completed its action. Using
:ref:```Eventually`` <sdk_autopilot_matchers_eventually#autopilot.matchers.Eventually>`
allows the application to complete its action without having to
explicitly add delays to the tests.

|../../\_images/otto-64.png|

Autopilot Says

**Use Eventually when asserting any user interface condition**

You may find that when running tests, the application is often ready
with the outcome by the time autopilot is able to test the assertion
without using
:ref:```Eventually`` <sdk_autopilot_matchers_eventually#autopilot.matchers.Eventually>`.
However, this may not always be true when running your test suite on
different hardware.

.. |../../\_images/otto-64.png| image:: ../../_images/otto-64.png

