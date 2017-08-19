tutorial-getting\_started
=========================

.. raw:: html

   <p>

This document contains everything you need to know to write your first
autopilot test. It covers writing several simple tests for a sample
Qt5/Qml application. However, it’s important to note that nothing in
this tutorial is specific to Qt5/Qml, and will work equally well with
any other kind of application.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Files and Directories

.. raw:: html

   </h2>

.. raw:: html

   <p>

Your autopilot test suite will grow to several files, possibly spread
across several directories. We recommend that you follow this simple
directory layout:

.. raw:: html

   </p>

.. raw:: html

   <pre>autopilot/
   autopilot/&lt;projectname&gt;/
   autopilot/&lt;projectname&gt;/tests/
   </pre>

.. raw:: html

   <p>

The autopilot folder can be anywhere within your project’s source tree.
It will likely contain a setup.py file.

.. raw:: html

   </p>

.. raw:: html

   <p>

The autopilot/<projectname>/ folder is the base package for your
autopilot tests. This folder, and all child folders, are python
packages, and so must contain an \ **init**.py file. If you ever find
yourself writing custom proxy classes (This is an advanced topic, and is
covered here: Writing Custom Proxy Classes), they should be imported
from this top-level package.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each test file should be named test\_<component>.py, where <component>
is the logical component you are testing in that file. Test files must
be written in the autopilot/<projectname>/tests/ folder.

.. raw:: html

   </p>

.. raw:: html

   <h3>

A Minimal Test Case

.. raw:: html

   </h3>

.. raw:: html

   <p>

Autopilot tests follow a similar pattern to other python test libraries:
you must declare a class that derives from AutopilotTestCase. A minimal
test case looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;An example test case that will always pass.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Autopilot Says

.. raw:: html

   </p>

.. raw:: html

   <p>

Make your tests expressive!

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

It’s important to make sure that your tests express your intent as
clearly as possible. We recommend choosing long, descriptive names for
test functions and classes (even breaking PEP 8, if you need to), and
give your tests a detailed docstring explaining exactly what you are
trying to test. For more detailed advice on this point, see Write
Expressive Tests

.. raw:: html

   </p>

.. raw:: html

   <h2>

The Setup Phase

.. raw:: html

   </h2>

.. raw:: html

   <p>

Before each test is run, the setUp method is called. Test authors may
override this method to run any setup that needs to happen before the
test is run. However, care must be taken when using the setUp method: it
tends to hide code from the test case, which can make your tests less
readable. It is our recommendation, therefore, that you use this feature
sparingly. A more suitable alternative is often to put the setup code in
a separate function or method and call it from the test function.

.. raw:: html

   </p>

.. raw:: html

   <p>

Should you wish to put code in a setup method, it looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">(</span><span class="n">MyTests</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="c"># This code gets run before every test!</span>
   <span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;An example test case that will always pass.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Any action you take in the setup phase must be undone if it alters the
system state. See Cleaning Up for more details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Starting the Application

.. raw:: html

   </h3>

.. raw:: html

   <p>

At the start of your test, you need to tell autopilot to launch your
application. To do this, call launch\_test\_application. The minimum
required argument to this method is the application name or path. If you
pass in the application name, autopilot will look in the current working
directory, and then will search the PATH environment variable.
Otherwise, autopilot looks for the executable at the path specified.
Positional arguments to this method are passed to the executable being
launched.

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot will try and guess what type of application you are launching,
and therefore what kind of introspection libraries it should load.
Sometimes autopilot will need some assistance however. For example, at
the time of writing, autopilot cannot automatically detect the
introspection type for python / Qt4 applications. In that case, a
RuntimeError will be raised. To provide autopilot with a hint as to
which introspection type to load, you can provide the app\_type keyword
argument. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_python_qt4_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;my-pyqt4-app&#39;</span><span class="p">,</span>
   <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span>
   <span class="p">)</span>
   </pre>

.. raw:: html

   <p>

See the documentation for launch\_test\_application for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

The return value from launch\_test\_application is a proxy object
representing the root of the introspection tree of the application you
just launched.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Autopilot Says

.. raw:: html

   </p>

.. raw:: html

   <p>

What is a Proxy Object?

.. raw:: html

   </p>

.. raw:: html

   <p>

Whenever you launch an application, autopilot gives you a “proxy
object”. These are instances of the ProxyBase class, with all the data
from your application mirrored in the proxy object instances. For
example, if you have a proxy object for a push button class (say,
QPushButton, for example), the proxy object will have attribute to match
every attribute in the class within your application. Autopilot
automatically keeps the data in these instances up to date, so you can
use them in your test assertions.

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

User interfaces are made up of a tree of widgets, and autopilot
represents these widgets as a tree of proxy objects. Proxy objects have
a number of methods on them for selecting child objects in the
introspection tree, so test authors can easily inspect the parts of the
UI tree they care about.

.. raw:: html

   </p>

.. raw:: html

   <h2>

A Simple Test

.. raw:: html

   </h2>

.. raw:: html

   <p>

To demonstrate the material covered so far, this selection will outline
a simple application, and a single test for it. Instead of testing a
third-party application, we will write the simplest possible application
in Python and Qt4. The application, named ‘testapp.py’, is listed below:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="c">#!/usr/bin/env python</span>
   <span class="kn">from</span> <span class="nn">PyQt4</span> <span class="kn">import</span> <span class="n">QtGui</span>
   <span class="kn">from</span> <span class="nn">sys</span> <span class="kn">import</span> <span class="n">argv</span>
   <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
   <span class="n">app</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QApplication</span><span class="p">(</span><span class="n">argv</span><span class="p">)</span>
   <span class="n">win</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QMainWindow</span><span class="p">()</span>
   <span class="n">win</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
   <span class="n">win</span><span class="o">.</span><span class="n">setWindowTitle</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">)</span>
   <span class="n">app</span><span class="o">.</span><span class="n">exec_</span><span class="p">()</span>
   <span class="k">if</span> <span class="n">__name__</span> <span class="o">==</span> <span class="s">&#39;__main__&#39;</span><span class="p">:</span>
   <span class="n">main</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p>

As you can see, this is a trivial application, but it serves our
purpose. For the upcoming tests to run this file must be executable:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ chmod u+x testapp.py
   </pre>

.. raw:: html

   <p>

We will write a single autopilot test that asserts that the title of the
main window is equal to the string “Hello World”. Our test file is named
“test\_window.py”, and contains the following code:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="kn">from</span> <span class="nn">os.path</span> <span class="kn">import</span> <span class="n">abspath</span><span class="p">,</span> <span class="n">dirname</span><span class="p">,</span> <span class="n">join</span>
   <span class="kn">from</span> <span class="nn">testtools.matchers</span> <span class="kn">import</span> <span class="n">Equals</span>
   <span class="k">class</span> <span class="nc">MainWindowTitleTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">launch_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Work out the full path to the application and launch it.</span>
   <span class="sd">        This is necessary since our test application will not be in $PATH.</span>
   <span class="sd">        :returns: The application proxy object.</span>
   <span class="sd">        &quot;&quot;&quot;</span>
   <span class="n">full_path</span> <span class="o">=</span> <span class="n">abspath</span><span class="p">(</span><span class="n">join</span><span class="p">(</span><span class="n">dirname</span><span class="p">(</span><span class="n">__file__</span><span class="p">),</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;testapp.py&#39;</span><span class="p">))</span>
   <span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="n">full_path</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">test_main_window_title_string</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;The main window title must be &#39;Hello World&#39;.&quot;&quot;&quot;</span>
   <span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
   <span class="n">main_window</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QMainWindow&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">main_window</span><span class="o">.</span><span class="n">windowTitle</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

Note that we have made the test method as readable as possible by hiding
the complexities of finding the full path to the application we want to
test. Of course, if you can guarantee that the application is in PATH,
then this step becomes a lot simpler.

.. raw:: html

   </p>

.. raw:: html

   <p>

The entire directory structure looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre>./example/__init__.py
   ./example/tests/__init__.py
   ./example/tests/test_window.py
   ./testapp.py
   </pre>

.. raw:: html

   <p>

The \ **init**.py\  files are empty, and are needed to make these
directories importable by python.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Running Autopilot

.. raw:: html

   </h3>

.. raw:: html

   <p>

From the root of this directory structure, we can ask autopilot to list
all the tests it can find:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 list example
   Loading tests from: /home/thomi/code/canonical/autopilot/example_test
   example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
   1 total tests.
   </pre>

.. raw:: html

   <p>

Note that on the first line, autopilot will tell you where it has loaded
the test definitions from. Autopilot will look in the current directory
for a python package that matches the package name specified on the
command line. If it does not find any suitable packages, it will look in
the standard python module search path instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

To run our test, we use the autopilot ‘run’ command:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run example
   Loading tests from: /home/thomi/code/canonical/autopilot/example_test
   Tests running...
   Ran 1 test in 2.342s
   OK
   </pre>

.. raw:: html

   <p>

You will notice that the test application launches, and then dissapears
shortly afterwards. Since this test doesn’t manipulate the application
in any way, this is a rather boring test to look at. If you ever want
more output from the run command, you may specify the ‘-v’ flag:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run -v example
   Loading tests from: /home/thomi/code/canonical/autopilot/example_test
   Tests running...
   13:41:11.614 INFO globals:49 - ************************************************************
   13:41:11.614 INFO globals:50 - Starting test example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
   13:41:11.693 INFO __init__:136 - Launching process: [&#39;/home/thomi/code/canonical/autopilot/example_test/testapp.py&#39;, &#39;-testability&#39;]
   13:41:11.699 INFO __init__:169 - Looking for autopilot interface for PID 12013 (and children)
   13:41:11.727 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;DBusException(&quot;Could not get PID of name &#39;org.freedesktop.DBus&#39;: no such name&quot;,)&#39;
   13:41:12.773 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;DBusException(&quot;Could not get PID of name &#39;org.freedesktop.DBus&#39;: no such name&quot;,)&#39;
   13:41:12.848 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;RuntimeError(&quot;Could not find Autopilot interface on DBus backend &#39;&lt;session bus :1.5967 /com/canonical/Autopilot/Introspection&gt;&#39;&quot;,)&#39;
   13:41:12.852 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;RuntimeError(&quot;Could not find Autopilot interface on DBus backend &#39;&lt;session bus :1.5968 /com/canonical/Autopilot/Introspection&gt;&#39;&quot;,)&#39;
   13:41:12.863 WARNING dbus:464 - Generating introspection instance for type &#39;Root&#39; based on generic class.
   13:41:12.864 DEBUG dbus:338 - Selecting objects of type QMainWindow with attributes: {}
   13:41:12.871 WARNING dbus:464 - Generating introspection instance for type &#39;QMainWindow&#39; based on generic class.
   13:41:12.886 INFO testcase:380 - waiting for process to exit.
   13:41:13.983 INFO testresult:35 - OK: example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
   Ran 1 test in 2.370s
   OK
   </pre>

.. raw:: html

   <p>

You may also specify ‘-v’ twice for even more output (this is rarely
useful for test authors however).

.. raw:: html

   </p>

.. raw:: html

   <p>

Both the ‘list’ and ‘run’ commands take a test id as an argument. You
may be as generic, or as specific as you like. In the examples above, we
will list and run all tests in the ‘example’ package (i.e.- all tests),
but we could specify a more specific run criteria if we only wanted to
run some of the tests. For example, to only run the single test we’ve
written, we can execute:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
   </pre>

.. raw:: html

   <h2>

A Test with Interaction

.. raw:: html

   </h2>

.. raw:: html

   <p>

Now lets take a look at some simple tests with some user interaction.
First, update the test application with some input and output controls:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="c">#!/usr/bin/env python</span>
   <span class="c"># File: testapp.py</span>
   <span class="kn">from</span> <span class="nn">PyQt4</span> <span class="kn">import</span> <span class="n">QtGui</span>
   <span class="kn">from</span> <span class="nn">sys</span> <span class="kn">import</span> <span class="n">argv</span>
   <span class="k">class</span> <span class="nc">AutopilotHelloWorld</span><span class="p">(</span><span class="n">QtGui</span><span class="o">.</span><span class="n">QWidget</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">__init__</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">(</span><span class="n">AutopilotHelloWorld</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">__init__</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">hello</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QPushButton</span><span class="p">(</span><span class="s">&quot;Hello&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">hello</span><span class="o">.</span><span class="n">clicked</span><span class="o">.</span><span class="n">connect</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">say_hello</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QPushButton</span><span class="p">(</span><span class="s">&quot;Goodbye&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span><span class="o">.</span><span class="n">clicked</span><span class="o">.</span><span class="n">connect</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">say_goodbye</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">response</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QLabel</span><span class="p">(</span><span class="s">&quot;Response: None&quot;</span><span class="p">)</span>
   <span class="n">grid</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QGridLayout</span><span class="p">()</span>
   <span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">hello</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span>
   <span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">)</span>
   <span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">setLayout</span><span class="p">(</span><span class="n">grid</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">setWindowTitle</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">say_hello</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="o">.</span><span class="n">setText</span><span class="p">(</span><span class="s">&#39;Response: Hello&#39;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">say_goodbye</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="o">.</span><span class="n">setText</span><span class="p">(</span><span class="s">&#39;Response: Goodbye&#39;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
   <span class="n">app</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QApplication</span><span class="p">(</span><span class="n">argv</span><span class="p">)</span>
   <span class="n">ahw</span> <span class="o">=</span> <span class="n">AutopilotHelloWorld</span><span class="p">()</span>
   <span class="n">app</span><span class="o">.</span><span class="n">exec_</span><span class="p">()</span>
   <span class="k">if</span> <span class="n">__name__</span> <span class="o">==</span> <span class="s">&#39;__main__&#39;</span><span class="p">:</span>
   <span class="n">main</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p>

We’ve reorganized the application code into a class to make the event
handling easier. Then we added two input controls, the hello and goodbye
buttons and an output control, the response label.

.. raw:: html

   </p>

.. raw:: html

   <p>

The operation of the application is still very trivial, but now we can
test that it actually does something in response to user input. Clicking
either of the two buttons will cause the response text to change.
Clicking the Hello button should result in Response: Hello while
clicking the Goodbye button should result in Response: Goodbye.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since we’re adding a new category of tests, button response tests, we
should organize them into a new class. Our tests module now looks like:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="kn">from</span> <span class="nn">os.path</span> <span class="kn">import</span> <span class="n">abspath</span><span class="p">,</span> <span class="n">dirname</span><span class="p">,</span> <span class="n">join</span>
   <span class="kn">from</span> <span class="nn">testtools.matchers</span> <span class="kn">import</span> <span class="n">Equals</span>
   <span class="kn">from</span> <span class="nn">autopilot.matchers</span> <span class="kn">import</span> <span class="n">Eventually</span>
   <span class="k">class</span> <span class="nc">HelloWorldTestBase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">launch_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Work out the full path to the application and launch it.</span>
   <span class="sd">        This is necessary since our test application will not be in $PATH.</span>
   <span class="sd">        :returns: The application proxy object.</span>
   <span class="sd">        &quot;&quot;&quot;</span>
   <span class="n">full_path</span> <span class="o">=</span> <span class="n">abspath</span><span class="p">(</span><span class="n">join</span><span class="p">(</span><span class="n">dirname</span><span class="p">(</span><span class="n">__file__</span><span class="p">),</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;testapp.py&#39;</span><span class="p">))</span>
   <span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="n">full_path</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   <span class="k">class</span> <span class="nc">MainWindowTitleTests</span><span class="p">(</span><span class="n">HelloWorldTestBase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_main_window_title_string</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;The main window title must be &#39;Hello World&#39;.&quot;&quot;&quot;</span>
   <span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
   <span class="n">main_window</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;AutopilotHelloWorld&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">main_window</span><span class="o">.</span><span class="n">windowTitle</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
   <span class="k">class</span> <span class="nc">ButtonResponseTests</span><span class="p">(</span><span class="n">HelloWorldTestBase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_hello_response</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;The response text must be &#39;Response: Hello&#39; after a Hello click.&quot;&quot;&quot;</span>
   <span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
   <span class="n">response</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QLabel&#39;</span><span class="p">)</span>
   <span class="n">hello</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;Hello&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">mouse</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">hello</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;Response: Hello&#39;</span><span class="p">)))</span>
   <span class="k">def</span> <span class="nf">test_goodbye_response</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;The response text must be &#39;Response: Goodbye&#39; after a Goodbye</span>
   <span class="sd">        click.&quot;&quot;&quot;</span>
   <span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
   <span class="n">response</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QLabel&#39;</span><span class="p">)</span>
   <span class="n">goodbye</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;Goodbye&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">mouse</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">goodbye</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;Response: Goodbye&#39;</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

In addition to the new class, ButtonResponseTests, you’ll notice a few
other changes. First, two new import lines were added to support the new
tests. Next, the existing MainWindowTitleTests class was refactored to
subclass from a base class, HelloWorldTestBase. The base class contains
the launch\_application method which is used for all test cases.
Finally, the object type of the main window changed from QMainWindow to
AutopilotHelloWorld. The change in object type is a result of our test
application being refactored into a class called AutopilotHelloWorld.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Autopilot Says

.. raw:: html

   </p>

.. raw:: html

   <p>

Be careful when identifing user interface controls

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Notice that our simple refactoring of the test application forced a
change to the test for the main window. When developing application
code, put a little extra thought into how the user interface controls
will be identified in the tests. Identify objects with attributes that
are likely to remain constant as the application code is developed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ButtonResponseTests class adds two new tests, one for each input
control. Each test identifies the user interface controls that need to
be used, performs a single, specific action, and then verifies the
outcome. In test\_hello\_response, we first identify the QLabel control
which contains the output we need to check. We then identify the Hello
button. As the application has two QPushButton controls, we must further
refine the select\_single call by specifing an additional property. In
this case, we use the button text. Next, an input action is triggered by
instructing the mouse to click the Hello button. Finally, the test
asserts that the response label text matches the expected string. The
second test repeats the same process with the Goodbye button.

.. raw:: html

   </p>

.. raw:: html

   <h2>

The Eventually Matcher

.. raw:: html

   </h2>

.. raw:: html

   <p>

Notice that in the ButtonResponseTests tests above, the autopilot method
Eventually is used in the assertion. This allows the assertion to be
retried continuously until it either becomes true, or times out (the
default timout is 10 seconds). This is necessary because the application
and the autopilot tests run in different processes. Autopilot could test
the assert before the application has completed its action. Using
Eventually allows the application to complete its action without having
to explicitly add delays to the tests.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Autopilot Says

.. raw:: html

   </p>

.. raw:: html

   <p>

Use Eventually when asserting any user interface condition

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

You may find that when running tests, the application is often ready
with the outcome by the time autopilot is able to test the assertion
without using Eventually. However, this may not always be true when
running your test suite on different hardware.

.. raw:: html

   </p>
