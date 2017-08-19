faq-faq
=======

.. raw:: html

   <p class="topic-title first">

Contents

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Frequently Asked Questions

.. raw:: html

   <ul>

.. raw:: html

   <li>

Autopilot: The Project

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. Where can I get help / support?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. Which version of autopilot should I install?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. Should I write my tests in python2 or python3?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q: Should I convert my existing tests to python3?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. Where can I report a bug?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. What type of applications can autopilot test?

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Autopilot Tests

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. Autopilot tests often include multiple assertions. Isn’t this bad
practise?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I write a test that uses either a Mouse or a Touch device
interchangeably?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I use the Onscreen Keyboard (OSK) to input text in my test?

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Autopilot Tests and Launching Applications

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. How do I launch a Click application from within a test so I can
introspect it?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I access an already running application so that I can
test/introspect it?

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Autopilot Qt & Gtk Support

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. How do I launch my application so that I can explore it with the vis
tool?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. What is the impact on memory of adding objectNames to QML items?

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2>

Autopilot: The Project

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. Where can I get help / support?

.. raw:: html

   </h3>

.. raw:: html

   <p>

The developers hang out in the #ubuntu-autopilot IRC channel on
irc.freenode.net.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. Which version of autopilot should I install?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Ideally you should adopt and utilize the latest version of autopilot. If
your testcase requires you to utilize an older version of autopilot for
reasons other than Porting Autopilot Tests, please file a bug and let
the development team know about your issue.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. Should I write my tests in python2 or python3?

.. raw:: html

   </h3>

.. raw:: html

   <p>

As Autopilot fully supports python3 (see Python 3), you should seek to
use python3 for new tests. Before making a decision, you should also
ensure any 3rd party modules your test may depend on also support
python3.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q: Should I convert my existing tests to python3?

.. raw:: html

   </h3>

.. raw:: html

   <p>

See above. In a word, yes. Converting python2 to python3 (see Python 3)
is generally straightforward and converting a testcase is likely much
easier than a full python application. You can also consider retaining
python2 compatibility upon conversion.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. Where can I report a bug?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Autopilot is hosted on launchpad - bugs can be reported on the launchpad
bug page for autopilot (this requires a launchpad account).

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. What type of applications can autopilot test?

.. raw:: html

   </h3>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

Autopilot works with severall different types of applications,
including:

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

The Unity desktop shell.

.. raw:: html

   </li>

.. raw:: html

   <li>

Gtk 2 & 3 applications.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt4, Qt5, and Qml applications.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <p>

Autopilot is designed to work across all the form factors Ubuntu runs
on, including the phone and tablet.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Autopilot Tests

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. Autopilot tests often include multiple assertions. Isn’t this bad
practise?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Maybe. But probably not.

.. raw:: html

   </p>

.. raw:: html

   <p>

Unit tests should test a single unit of code, and ideally be written
such that they can fail in exactly a single way. Therefore, unit tests
should have a single assertion that determines whether the test passes
or fails.

.. raw:: html

   </p>

.. raw:: html

   <p>

However, autopilot tests are not unit tests, they are functional tests.
Functional test suites tests features, not units of code, so there’s
several very good reasons to have more than assertion in a single test:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Some features require several assertions to prove that the feature is
working correctly. For example, you may wish to verify that the ‘Save’
dialog box opens correctly, using the following code:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Save Document&quot;</span><span class="p">)))</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">))</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">has_focus</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">))</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Some tests need to wait for the application to respond to user input
before the test continues. The easiest way to do this is to use the
Eventually matcher in the middle of your interaction with the
application. For example, if testing the Firefox browsers ability to
print a certain web comic, we might produce a test that looks similar to
this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_firefox_can_print_xkcd</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Firefox must be able to print xkcd.com.&quot;&quot;&quot;</span>
   <span class="c"># Put keyboard focus in URL bar:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Ctrl+l&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&#39;http://xkcd.com&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Enter&#39;</span><span class="p">)</span>
   <span class="c"># wait for page to load:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">loading</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
   <span class="c"># open print dialog:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Ctrl+p&#39;</span><span class="p">)</span>
   <span class="c"># wait for dialog to open:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">print_dialog</span><span class="o">.</span><span class="n">open</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">)))</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Enter&#39;</span><span class="p">)</span>
   <span class="c"># ensure something was sent to our faked printer:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">fake_printer</span><span class="o">.</span><span class="n">documents_printed</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">1</span><span class="p">))</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In general, autopilot tests are more relaxed about the ‘one assertion
per test’ rule. However, care should still be taken to produce tests
that are as small and understandable as possible.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. How do I write a test that uses either a Mouse or a Touch device
interchangeably?

.. raw:: html

   </h3>

.. raw:: html

   <p>

The autopilot.input.Pointer class is a simple wrapper that unifies some
of the differences between the Touch and Mouse classes. To use it, pass
in the device you want to use under the hood, like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">pointer1</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
   <span class="n">pointer2</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
   <span class="c"># pointer1 and pointer2 now have identical APIs</span>
   </pre>

.. raw:: html

   <p>

Combined with test scenarios, this can be used to write tests that are
run twice - once with a mouse device and once with a touch device:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Mouse</span><span class="p">,</span> <span class="n">Touch</span><span class="p">,</span> <span class="n">Pointer</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">TestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="n">scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;with mouse&#39;</span><span class="p">,</span> <span class="nb">dict</span><span class="p">(</span><span class="n">pointer</span><span class="o">=</span><span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">()))),</span>
   <span class="p">(</span><span class="s">&#39;with touch&#39;</span><span class="p">,</span> <span class="nb">dict</span><span class="p">(</span><span class="n">pointer</span><span class="o">=</span><span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">()))),</span>
   <span class="p">]</span>
   <span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Click the pointer at 100,100.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">pointer</span><span class="o">.</span><span class="n">move</span><span class="p">(</span><span class="mi">100</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">pointer</span><span class="o">.</span><span class="n">click</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p>

If you only want to use the mouse on certain platforms, use the
autopilot.platform module to determine the current platform at runtime.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. How do I use the Onscreen Keyboard (OSK) to input text in my test?

.. raw:: html

   </h3>

.. raw:: html

   <p>

The OSK is an backend option for the autopilot.input.Keyboard.create
method (see this Advanced Autopilot section for details regarding
backend selection.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Unlike the other backends (X11, UInput) the OSK has a GUI presence and
thus can be displayed on the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

The autopilot.input.Keyboard class provides a context manager that
handles any cleanup required when dealing with the input backends.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example in the instance when the backend is the OSK, when leaving
the scope of the context manager the OSK will be dismissed with a swipe:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="n">text_area</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_launch_test_input_area</span><span class="p">()</span>
   <span class="n">keyboard</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&#39;OSK&#39;</span><span class="p">)</span>
   <span class="k">with</span> <span class="n">keyboard</span><span class="o">.</span><span class="n">focused_type</span><span class="p">(</span><span class="n">text_area</span><span class="p">)</span> <span class="k">as</span> <span class="n">kb</span><span class="p">:</span>
   <span class="n">kb</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&quot;Hello World.&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">text_area</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
   <span class="c"># At this point now the OSK has been swiped away.</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">()</span>
   </pre>

.. raw:: html

   <h2>

Autopilot Tests and Launching Applications

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. How do I launch a Click application from within a test so I can
introspect it?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Launching a Click application is similar to launching a traditional
application and is as easy as using launch\_click\_package:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span>
   <span class="s">&quot;com.ubuntu.dropping-letters&quot;</span>
   <span class="p">)</span>
   </pre>

.. raw:: html

   <h3>

Q. How do I access an already running application so that I can
test/introspect it?

.. raw:: html

   </h3>

.. raw:: html

   <p>

In instances where it’s impossible to launch the application-under-test
from within the testsuite use get\_proxy\_object\_for\_existing\_process
to get a proxy object for the running application. In all other cases
the recommended way to launch and retrieve a proxy object for an
application is by calling either launch\_test\_application or
launch\_click\_package

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, to access a long running process that is running before
your test starts:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">application_pid</span> <span class="o">=</span> <span class="n">get_long_running_processes_pid</span><span class="p">()</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span><span class="n">pid</span><span class="o">=</span><span class="n">application_pid</span><span class="p">)</span>
   </pre>

.. raw:: html

   <h2>

Autopilot Qt & Gtk Support

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. How do I launch my application so that I can explore it with the vis
tool?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Autopilot can launch applications with Autopilot support enabled
allowing you to explore and introspect the application using the vis
tool

.. raw:: html

   </p>

.. raw:: html

   <p>

For instance launching gedit is as easy as:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 launch gedit
   </pre>

.. raw:: html

   <p>

Autopilot launch attempts to detect if you are launching either a Gtk or
Qt application so that it can enable the correct libraries. If is is
unable to determine this you will need to specify the type of
application it is by using the -i argument.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, in our previous example Autopilot was able to automatically
determine that gedit is a Gtk application and thus no further arguments
were required.

.. raw:: html

   </p>

.. raw:: html

   <p>

If we want to use the vis tool to introspect something like the
testapp.py script from an earlier tutorial we will need to inform
autopilot that it is a Qt application so that it can enable the correct
support:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 launch -i Qt testapp.py
   </pre>

.. raw:: html

   <p>

Now that it has been launched with Autopilot support we can introspect
and explore out application using the vis tool.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. What is the impact on memory of adding objectNames to QML items?

.. raw:: html

   </h3>

.. raw:: html

   <p>

The objectName is a QString property of QObject which defaults to an
empty QString. QString is UTF-16 representation and because it uses some
general purpose optimisations it usually allocates twice the space it
needs to be able to grow fast. It also uses implicit sharing with
copy-on-write and other similar tricks to increase performance again.
These properties makes the used memory not straightforward to predict.
For example, copying an object with an objectName, shares the memory
between both as long as they are not changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

When measuring memory consumption, things like memory alignment come
into play. Due to the fact that QML is interpreted by a JavaScript
engine, we are working in levels where lots of abstraction layers are in
between the code and the hardware and we have no chance to exactly
measure consumption of a single objectName property. Therefore the taken
approach is to measure lots of items and calculate the average
consumption.

.. raw:: html

   </p>

.. raw:: html

   <table border="1">

.. raw:: html

   <caption>

Measurement of memory consumption of 10000 Items

.. raw:: html

   </caption>

.. raw:: html

   <colgroup>

.. raw:: html

   <col width="30%" />

.. raw:: html

   <col width="37%" />

.. raw:: html

   <col width="33%" />

.. raw:: html

   </colgroup>

.. raw:: html

   <thead valign="bottom">

.. raw:: html

   <tr class="row-odd">

.. raw:: html

   <th class="head">

Without objectName

.. raw:: html

   </th>

.. raw:: html

   <th class="head">

With unique objectName

.. raw:: html

   </th>

.. raw:: html

   <th class="head">

With same objectName

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="row-even">

.. raw:: html

   <td>

65292 kB

.. raw:: html

   </td>

.. raw:: html

   <td>

66628 kB

.. raw:: html

   </td>

.. raw:: html

   <td>

66480 kB

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p>

=> With 10000 different objectNames 1336 kB of memory are consumed which
is around 127 Bytes per Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Indeed, this is more than only the string. Some of the memory is
certainly lost due to memory alignment where certain areas are just not
perfectly filled in but left empty. However, certainly not all of the
overhead can be blamed on that. Additional memory is used by the QObject
meta object information that is needed to do signal/slot connections.
Also, QML does some optimisations: It does not connect signals/slots
when not needed. So the fact that the object name is set could trigger
some more connections.

.. raw:: html

   </p>

.. raw:: html

   <p>

Even if more than the actual string size is used and QString uses a
large representation, this is very little compared to the rest. A
qmlscene with just the item is 27MB. One full screen image in the Nexus
10 tablet can easily consume around 30MB of memory. So objectNames are
definitely not the first places where to search for optimisations.

.. raw:: html

   </p>

.. raw:: html

   <p>

Writing the test code snippets, one interesting thing came up
frequently: Just modifying the code around to set the objectName often
influences the results more than the actual string. For example, having
a javascript function that assigns the objectName definitely uses much
more memory than the objectName itself. Unless it makes sense from a
performance point of view (frequently changing bindings can be slow),
objectNames should be added by directly binding the value to the
property instead using helper code to assign it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Conclusion: If an objectName is needed for testing, this is definitely
worth it. objectName’s should obviously not be added when not needed.
When adding them, the general QML guidelines for performance should be
followed.

.. raw:: html

   </p>
