tutorial-advanced\_autopilot
============================

.. raw:: html

   <p>

This document covers advanced features in autopilot.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Cleaning Up

.. raw:: html

   </h2>

.. raw:: html

   <p>

It is vitally important that every test you run leaves the system in
exactly the same state as it found it. This means that:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Any files written to disk need to be removed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Any environment variables set during the test run need to be un-set.

.. raw:: html

   </li>

.. raw:: html

   <li>

Any applications opened during the test run need to be closed again.

.. raw:: html

   </li>

.. raw:: html

   <li>

Any Keyboard keys pressed during the test need to be released again.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

All of the methods on AutopilotTestCase that alter the system state will
automatically revert those changes at the end of the test. Similarly,
the various input devices will release any buttons or keys that were
pressed during the test. However, for all other changes, it is the
responsibility of the test author to clean up those changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, a test might require that a file with certain content be
written to disk at the start of the test. The test case might look
something like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">make_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">open</span><span class="p">(</span><span class="s">&#39;/tmp/datafile&#39;</span><span class="p">,</span> <span class="s">&#39;w&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">write</span><span class="p">(</span><span class="s">&quot;Some data...&quot;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">test_application_opens_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Our application must be able to open a data file from disk.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">make_data_file</span><span class="p">()</span>
   <span class="c"># rest of the test code goes here</span>
   </pre>

.. raw:: html

   <p>

However this will leave the /tmp/datafile on disk after the test has
finished. To combat this, use the addCleanup method. The arguments to
addCleanup are a callable, and then zero or more positional or keyword
arguments. The Callable will be called with the positional and keyword
arguments after the test has ended.

.. raw:: html

   </p>

.. raw:: html

   <p>

Cleanup actions are called in the reverse order in which they are added,
and are called regardless of whether the test passed, failed, or raised
an uncaught exception. To fix the above test, we might write something
similar to:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">import</span> <span class="nn">os</span>
   <span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">make_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">open</span><span class="p">(</span><span class="s">&#39;/tmp/datafile&#39;</span><span class="p">,</span> <span class="s">&#39;w&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">write</span><span class="p">(</span><span class="s">&quot;Some data...&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="n">os</span><span class="o">.</span><span class="n">remove</span><span class="p">,</span> <span class="s">&#39;/tmp/datafile&#39;</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">test_application_opens_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Our application must be able to open a data file from disk.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">make_data_file</span><span class="p">()</span>
   <span class="c"># rest of the test code goes here</span>
   </pre>

.. raw:: html

   <p>

Note that by having the code to generate the /tmp/datafile file on disk
in a separate method, the test itself can ignore the fact that these
resources need to be cleaned up. This makes the tests cleaner and easier
to read.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Test Scenarios

.. raw:: html

   </h2>

.. raw:: html

   <p>

Occasionally test authors will find themselves writing multiple tests
that differ in one or two subtle ways. For example, imagine a
hypothetical test case that tests a dictionary application. The author
wants to test that certain words return no results. Without using test
scenarios, there are two basic approaches to this problem. The first is
to create many test cases, one for each specific scenario (don’t do
this):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_empty_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   <span class="k">def</span> <span class="nf">test_whitespace_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   <span class="k">def</span> <span class="nf">test_punctuation_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   <span class="k">def</span> <span class="nf">test_garbage_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

The main problem here is that there’s a lot of typing in order to change
exactly one thing (and this hypothetical test is deliberately short, to
ease clarity. Imagine a 100 line test case!). Another approach is to
make the entire thing one large test (don’t do this either):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_bad_strings_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">bad_strings</span> <span class="o">=</span> <span class="p">(</span><span class="s">&quot;&quot;</span><span class="p">,</span>
   <span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">,</span>
   <span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">,</span>
   <span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">,</span>
   <span class="p">)</span>
   <span class="k">for</span> <span class="nb">input</span> <span class="ow">in</span> <span class="n">bad_strings</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="nb">input</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

This approach makes it easier to add new input strings, but what happens
when just one of the input strings stops working? It becomes very hard
to find out which input string is broken, and the first string that
breaks will prevent the rest of the test from running, since tests stop
running when the first assertion fails.

.. raw:: html

   </p>

.. raw:: html

   <p>

The solution is to use test scenarios. A scenario is a class attribute
that specifies one or more scenarios to run on each of the tests. This
is best demonstrated with an example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="n">scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;empty string&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;&quot;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;whitespace&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;punctuation&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;garbage&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="k">def</span> <span class="nf">test_bad_strings_return_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">input</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

Autopilot will run the test\_bad\_strings\_return\_no\_results once for
each scenario. On each test, the values from the scenario dictionary
will be mapped to attributes of the test case class. In this example,
that means that the ‘input’ dictionary item will be mapped to
self.input. Using scenarios has several benefits over either of the
other strategies outlined above:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Tests that use strategies will appear as separate tests in the test
output. The test id will be the normal test id, followed by the strategy
name in parenthesis. So in the example above, the list of test ids will
be:

.. raw:: html

   </p>

.. raw:: html

   <pre>DictionaryResultsTests.test_bad_strings_return_no_results(empty string)
   DictionaryResultsTests.test_bad_strings_return_no_results(whitespace)
   DictionaryResultsTests.test_bad_strings_return_no_results(punctuation)
   DictionaryResultsTests.test_bad_strings_return_no_results(garbage)
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Since scenarios are treated as separate tests, it’s easier to debug
which scenario has broken, and re-run just that one scenario.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Scenarios get applied before the setUp method, which means you can use
scenario values in the setUp and tearDown methods. This makes them more
flexible than either of the approaches listed above.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2>

Test Logging

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot integrates the python logging framework into the
AutopilotTestCase class. Various autopilot components write log messages
to the logging framework, and all these log messages are attached to
each test result when the test completes. By default, these log messages
are shown when a test fails, or if autopilot is run with the -v option.

.. raw:: html

   </p>

.. raw:: html

   <p>

Test authors are encouraged to write to the python logging framework
whenever doing so would make failing tests clearer. To do this, there
are a few simple steps to follow:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Import the logging module:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">import</span> <span class="nn">logging</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Create a logger object. You can either do this at the file level scope,
or within a test case class:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">logger</span> <span class="o">=</span> <span class="n">logging</span><span class="o">.</span><span class="n">getLogger</span><span class="p">(</span><span class="n">__name__</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Log some messages. You may choose which level the messages should be
logged at. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">logger</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;This is debug information, not shown by default.&quot;</span><span class="p">)</span>
   <span class="n">logger</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;This is some information&quot;</span><span class="p">)</span>
   <span class="n">logger</span><span class="o">.</span><span class="n">warning</span><span class="p">(</span><span class="s">&quot;This is a warning&quot;</span><span class="p">)</span>
   <span class="n">logger</span><span class="o">.</span><span class="n">error</span><span class="p">(</span><span class="s">&quot;This is an error&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

To view log messages when using debug level of logging pass -vv when
running autopilot.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on the various logging levels, see the python
documentation on Logger objects. All messages logged in this way will be
picked up by the autopilot test runner. This is a valuable tool when
debugging failing tests.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Environment Patching

.. raw:: html

   </h2>

.. raw:: html

   <p>

Sometimes you need to change the value of an environment variable for
the duration of a single test. It is important that the variable is
changed back to it’s original value when the test has ended, so future
tests are run in a pristine environment. The fixtures module includes a
fixtures.EnvironmentVariable fixture which takes care of this for you.
For example, to set the FOO environment variable to "Hello World" for
the duration of a single test, the code would look something like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">fixtures</span> <span class="kn">import</span> <span class="n">EnvironmentVariable</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_that_needs_custom_environment</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">EnvironmentVariable</span><span class="p">(</span><span class="s">&quot;FOO&quot;</span><span class="p">,</span> <span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
   <span class="c"># Test code goes here.</span>
   </pre>

.. raw:: html

   <p>

The fixtures.EnvironmentVariable fixture will revert the value of the
environment variable to it’s initial value, or will delete it altogether
if the environment variable did not exist when
fixtures.EnvironmentVariable was instantiated. This happens in the
cleanup phase of the test execution.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Custom Assertions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot provides additional custom assertion methods within the
AutopilotTestCase base class. These assertion methods can be used for
validating the visible window stack and also properties on objects whose
attributes do not have the wait\_for method, such as Window objects (See
In Proxy Classes for more information about wait\_for).

.. raw:: html

   </p>

.. raw:: html

   <p>

autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack

.. raw:: html

   </p>

.. raw:: html

   <p>

This assertion allows the test to check the start of the visible window
stack by passing an iterable item of Window instances. Minimised windows
will be ignored:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">WindowTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_window_stack</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launch_some_test_apps</span><span class="p">()</span>
   <span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="n">test_app_windows</span> <span class="o">=</span> <span class="p">[]</span>
   <span class="k">for</span> <span class="n">window</span> <span class="ow">in</span> <span class="n">pm</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">():</span>
   <span class="k">if</span> <span class="bp">self</span><span class="o">.</span><span class="n">is_test_app</span><span class="p">(</span><span class="n">window</span><span class="o">.</span><span class="n">name</span><span class="p">):</span>
   <span class="n">test_app_windows</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">window</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertVisibleWindowStack</span><span class="p">(</span><span class="n">test_app_windows</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The process manager is only available on environments that use bamf,
i.e. desktop running Unity 7. There is currently no process manager for
any other platform.

.. raw:: html

   </p>

.. raw:: html

   <p id="custom-assertions-assertproperty">

autopilot.testcase.AutopilotTestCase.assertProperty

.. raw:: html

   </p>

.. raw:: html

   <p>

This assertion allows the test to check properties of an object that
does not have a wait\_for method (i.e.- objects that do not come from
the autopilot DBus interface). For example the Window object:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">WindowTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_window_stack</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launch_some_test_apps</span><span class="p">()</span>
   <span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="k">for</span> <span class="n">window</span> <span class="ow">in</span> <span class="n">pm</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">():</span>
   <span class="k">if</span> <span class="bp">self</span><span class="o">.</span><span class="n">is_test_app</span><span class="p">(</span><span class="n">window</span><span class="o">.</span><span class="n">name</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

assertProperties is a synonym for this method.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The process manager is only available on environments that use bamf,
i.e. desktop running Unity 7. There is currently no process manager for
any other platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

autopilot.testcase.AutopilotTestCase.assertProperties

.. raw:: html

   </p>

.. raw:: html

   <p>

See autopilot.testcase.AutopilotTestCase.assertProperty.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

assertProperty is a synonym for this method.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Platform Selection

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot provides functionality that allows the test author to
determine which platform a test is running on so that they may either
change behaviour within the test or skipping the test all together.

.. raw:: html

   </p>

.. raw:: html

   <p>

For examples and API documentaion please see autopilot.platform.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Gestures and Multi-touch

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot provides API support for both single-touch and multi-touch
gestures which can be used to simulate user input required to drive an
application or system under test. These APIs should be used in
conjunction with Platform Selection to detect platform capabilities and
ensure the correct input API is being used.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Single-Touch

.. raw:: html

   </h3>

.. raw:: html

   <p>

autopilot.input.Touch provides single-touch input gestures, which
includes:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

tap which can be used to tap a specified [x,y] point on the screen

.. raw:: html

   </li>

.. raw:: html

   <li>

drag which will drag between 2 [x,y] points and can be customised by
altering the speed of the action

.. raw:: html

   </li>

.. raw:: html

   <li>

press, release and move operations which can be combined to create
custom gestures

.. raw:: html

   </li>

.. raw:: html

   <li>

tap\_object can be used to tap the center point of a given introspection
object, where the screen co-ordinates are taken from one of several
properties of the object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Autopilot additionally provides the class autopilot.input.Pointer as a
means to provide a single unified API that can be used with both Mouse
input and Touch input . See the documentation for this class for further
details of this, as not all operations can be performed on both of these
input types.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example demonstrates swiping from the center of the screen to the
left edge, which could for example be used in Ubuntu Touch to swipe a
new scope into view.

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

First calculate the center point of the screen (see: Display
Information):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.display</span> <span class="kn">import</span> <span class="n">Display</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">display</span> <span class="o">=</span> <span class="n">Display</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">center_x</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_width</span><span class="p">()</span> <span class="o">//</span> <span class="mi">2</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">center_y</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_height</span><span class="p">()</span> <span class="o">//</span> <span class="mi">2</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Then perform the swipe operation from the center of the screen to the
left edge, using autopilot.input.Pointer.drag:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Touch</span><span class="p">,</span> <span class="n">Pointer</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">pointer</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">pointer</span><span class="o">.</span><span class="n">drag</span><span class="p">(</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="n">center_y</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <h3>

Multi-Touch

.. raw:: html

   </h3>

.. raw:: html

   <p>

autopilot.gestures provides support for multi-touch input which
includes:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

autopilot.gestures.pinch provides a 2-finger pinch gesture centered
around an [x,y] point on the screen

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This example demonstrates how to use the pinch gesture, which for
example could be used on Ubuntu Touch web-browser, or gallery
application to zoom in or out of currently displayed content.

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

To zoom in, pinch vertically outwards from the center point by 100
pixels:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">gestures</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">gestures</span><span class="o">.</span><span class="n">pinch</span><span class="p">([</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">100</span><span class="p">])</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

To zoom back out, pinch vertically 100 pixels back towards the center
point:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">gestures</span><span class="o">.</span><span class="n">pinch</span><span class="p">([</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">100</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">])</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The multi-touch pinch method is intended for use on a touch enabled
device. However, if run on a desktop environment it will behave as if
the mouse select button is pressed whilst moving the mouse pointer. For
example to select some text in a document.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Advanced Backend Picking

.. raw:: html

   </h2>

.. raw:: html

   <p>

Several features in autopilot are provided by more than one backend. For
example, the autopilot.input module contains the Keyboard, Mouse and
Touch classes, each of which can use more than one implementation
depending on the platform the tests are being run on.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, when running autopilot on a traditional ubuntu desktop
platform, Keyboard input events are probably created using the X11
client libraries. On a phone platform, X11 is not present, so autopilot
will instead choose to generate events using the kernel UInput device
driver instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Other autopilot systems that make use of multiple backends include the
autopilot.display and autopilot.process modules. Every class in these
modules follows the same construction pattern:

.. raw:: html

   </p>

.. raw:: html

   <h3>

Default Creation

.. raw:: html

   </h3>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

By default, calling the create() method with no arguments will return an
instance of the class that is appropriate to the current platform. For
example::

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <p>

The code snippet above will create an instance of the Keyboard class
that uses X11 on Desktop systems, and UInput on other systems. On the
rare occaison when test authors need to construct these objects
themselves, we expect that the default creation pattern to be used.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Picking a Backend

.. raw:: html

   </h3>

.. raw:: html

   <p>

Test authors may sometimes want to pick a specific backend. The possible
backends are documented in the API documentation for each class. For
example, the documentation for the autopilot.input.Keyboard.create
method says there are three backends available: the X11 backend, the
UInput backend, and the OSK backend. These backends can be specified in
the create method. For example, to specify that you want a Keyboard that
uses X11 to generate it’s input events:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;X11&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Similarly, to specify that a UInput keyboard should be created:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Finally, for the Onscreen Keyboard:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;OSK&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Care must be taken when specifying specific backends. There is no
guarantee that the backend you ask for is going to be available across
all platforms. For that reason, using the default creation method is
encouraged.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The OSK backend has some known implementation limitations, please see
autopilot.input.Keyboard.create method documenation for further details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Possible Errors when Creating Backends

.. raw:: html

   </h3>

.. raw:: html

   <p>

Lots of things can go wrong when creating backends with the create
method.

.. raw:: html

   </p>

.. raw:: html

   <p>

If autopilot is unable to create any backends for your current platform,
a RuntimeError exception will be raised. It’s message attribute will
contain the error message from each backend that autopilot tried to
create.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a preferred backend was specified, but that backend doesn’t exist
(probably the test author mis-spelled it), a RuntimeError will be
raised:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="k">try</span><span class="p">:</span>
   <span class="gp">... </span>    <span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;uinput&quot;</span><span class="p">)</span>
   <span class="gp">... </span><span class="k">except</span> <span class="ne">RuntimeError</span> <span class="k">as</span> <span class="n">e</span><span class="p">:</span>
   <span class="gp">... </span>    <span class="k">print</span><span class="p">(</span><span class="s">&quot;Unable to create keyboard: &quot;</span> <span class="o">+</span> <span class="nb">str</span><span class="p">(</span><span class="n">e</span><span class="p">))</span>
   <span class="gp">...</span>
   <span class="go">Unable to create keyboard: Unknown backend &#39;uinput&#39;</span>
   </pre>

.. raw:: html

   <p>

In this example, uinput was mis-spelled (backend names are case
sensitive). Specifying the correct backend name works as expected:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Finally, if the test author specifies a preferred backend, but that
backend could not be created, a autopilot.BackendException will be
raised. This is an important distinction to understand: While calling
create() with no arguments will try more than one backend, specifying a
backend to create will only try and create that one backend type. The
BackendException instance will contain the original exception raised by
the backed in it’s original\_exception attribute. In this example, we
try and create a UInput keyboard, which fails because we don’t have the
correct permissions (this is something that autopilot usually handles
for you):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">BackendException</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="k">try</span><span class="p">:</span>
   <span class="gp">... </span>    <span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
   <span class="gp">... </span><span class="k">except</span> <span class="n">BackendException</span> <span class="k">as</span> <span class="n">e</span><span class="p">:</span>
   <span class="gp">... </span>    <span class="nb">repr</span><span class="p">(</span><span class="n">e</span><span class="o">.</span><span class="n">original_exception</span><span class="p">)</span>
   <span class="gp">... </span>    <span class="nb">repr</span><span class="p">(</span><span class="n">e</span><span class="p">)</span>
   <span class="gp">...</span>
   <span class="go">&#39;UInputError(\&#39;&quot;/dev/uinput&quot; cannot be opened for writing\&#39;,)&#39;</span>
   <span class="go">&#39;BackendException(\&#39;Error while initialising backend. Original exception was: &quot;/dev/uinput&quot; cannot be opened for writing\&#39;,)&#39;</span>
   </pre>

.. raw:: html

   <h2>

Keyboard Backends

.. raw:: html

   </h2>

.. raw:: html

   <h3>

A quick introduction to the Keyboard backends

.. raw:: html

   </h3>

.. raw:: html

   <p>

Each backend has a different method of operating behind the scenes to
provide the Keyboard interface.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a quick overview of how each backend works.

.. raw:: html

   </p>

.. raw:: html

   <table border="1">

.. raw:: html

   <colgroup>

.. raw:: html

   <col width="15%" />

.. raw:: html

   <col width="85%" />

.. raw:: html

   </colgroup>

.. raw:: html

   <thead valign="bottom">

.. raw:: html

   <tr class="row-odd">

.. raw:: html

   <th class="head">

Backend

.. raw:: html

   </th>

.. raw:: html

   <th class="head">

Description

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

X11

.. raw:: html

   </td>

.. raw:: html

   <td>

The X11 backend generates X11 events using a mock input device which it
then syncs with X to actually action the input.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="row-odd">

.. raw:: html

   <td>

Uinput

.. raw:: html

   </td>

.. raw:: html

   <td>

The UInput backend injects events directly in to the kernel using the
UInput device driver to produce input.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="row-even">

.. raw:: html

   <td>

OSK

.. raw:: html

   </td>

.. raw:: html

   <td>

The Onscreen Keyboard backend uses the GUI pop-up keyboard to enter
input. Using a pointer object it taps on the required keys to get the
expected output.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Limitations of the different Keyboard backends

.. raw:: html

   </h3>

.. raw:: html

   <p>

While every effort has been made so that the Keyboard devices act the
same regardless of which backend or platform is in use, the simple fact
is that there can be some technical limitations for some backends.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some of these limitations are hidden when using the “create” method and
won’t cause any concern (e.g. X11 backend on desktop, UInput on an
Ubuntu Touch device.) while others will raise exceptions (that are fully
documented in the API docs).

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a list of known limitations:

.. raw:: html

   </p>

.. raw:: html

   <p>

X11

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Only available on desktop platforms

.. raw:: html

   <ul>

.. raw:: html

   <li>

X11 isn’t available on Ubuntu Touch devices

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

UInput

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Requires correct device access permissions

.. raw:: html

   <ul>

.. raw:: html

   <li>

The user (or group) that are running the autopilot tests need read/write
access to the UInput device (usually /dev/uinput).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Specific kernel support is required

.. raw:: html

   <ul>

.. raw:: html

   <li>

The kernel on the system running the tests must be running a kernel that
includes UInput support (as well as have the module loaded.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

OSK

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Currently only available on Ubuntu Touch devices

.. raw:: html

   <ul>

.. raw:: html

   <li>

At the time of writing this the OSK/Ubuntu Keyboard is only
supported/available on the Ubuntu Touch devices. It is possible that it
will be available on the desktop in the near future.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Unable to type ‘special’ keys e.g. Alt

.. raw:: html

   <ul>

.. raw:: html

   <li>

This shouldn’t be an issue as applications running on Ubuntu Touch
devices will be using the expected patterns of use on these platforms.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

The following methods have limitations or are not implemented:

.. raw:: html

   <ul>

.. raw:: html

   <li>

autopilot.input.Keyboard.press: Raises NotImplementedError if called.

.. raw:: html

   </li>

.. raw:: html

   <li>

autopilot.input.Keyboard.release: Raises NotImplementedError if called.

.. raw:: html

   </li>

.. raw:: html

   <li>

autopilot.input.Keyboard.press\_and\_release: can can only handle single
keys/characters. Raises either ValueError if passed more than a single
character key or UnsupportedKey if passed a key that is not supported by
the OSK backend (or the current language layout).

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

Process Control

.. raw:: html

   </h2>

.. raw:: html

   <p>

The autopilot.process module provides the ProcessManager class to
provide a high-level interface for managing applications and windows
during testing. Features of the ProcessManager allow the user to start
and stop applications easily and to query the current state of an
application and its windows. It also provides automatic cleanup for apps
that have been launched during testing.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

ProcessManager is not intended for introspecting an application’s object
tree, for this see Launching Applications. Also it does not provide a
method for interacting with an application’s UI or specific features.

.. raw:: html

   </p>

.. raw:: html

   <p>

Properties of an application and its windows can be accessed using the
classes Application and Window, which also allows the window instance to
be focused and closed.

.. raw:: html

   </p>

.. raw:: html

   <p>

A list of known applications is defined in KNOWN\_APPS and these can
easily be referenced by name. This list can also be updated using
register\_known\_application and unregister\_known\_application for
easier use during the test.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use the ProcessManager the static create method should be called,
which returns an initialised object instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

A simple example to launch the gedit text editor and check it is in
focus:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">ProcessManagerTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_launch_app</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="n">app_window</span> <span class="o">=</span> <span class="n">pm</span><span class="o">.</span><span class="n">start_app_window</span><span class="p">(</span><span class="s">&#39;Text Editor&#39;</span><span class="p">)</span>
   <span class="n">app_window</span><span class="o">.</span><span class="n">set_focus</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">app_window</span><span class="o">.</span><span class="n">is_focused</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

ProcessManager is only available on environments that use bamf, i.e.
desktop running Unity 7. There is currently no process manager for any
other platform.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Display Information

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot provides the autopilot.display module to get information about
the displays currently being used. This information can be used in tests
to implement gestures or input events that are specific to the current
test environment. For example a test could be run on a desktop
environment with multiple screens, or on a variety of touch devices that
have different screen sizes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The user must call the static create method to get an instance of the
Display class.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example shows how to get the size of each available screen, which
could be used to calculate coordinates for a swipe or input event (See
the autopilot.input module for more details about generating input
events).:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.display</span> <span class="kn">import</span> <span class="n">Display</span>
   <span class="n">display</span> <span class="o">=</span> <span class="n">Display</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="k">for</span> <span class="n">screen</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span> <span class="n">display</span><span class="o">.</span><span class="n">get_num_screens</span><span class="p">()):</span>
   <span class="n">width</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_width</span><span class="p">(</span><span class="n">screen</span><span class="p">)</span>
   <span class="n">height</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_height</span><span class="p">(</span><span class="n">screen</span><span class="p">)</span>
   <span class="k">print</span><span class="p">(</span><span class="s">&#39;screen {0}: {1}x{2}&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">screen</span><span class="p">,</span> <span class="n">width</span><span class="p">,</span> <span class="n">height</span><span class="p">))</span>
   </pre>

.. raw:: html

   <h2>

Writing Custom Proxy Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

By default, autopilot will generate an object for every introspectable
item in your application under test. These are generated on the fly, and
derive from ProxyBase. This gives you the usual methods of selecting
other nodes in the object tree, as well the the means to inspect all the
properties in that class.

.. raw:: html

   </p>

.. raw:: html

   <p>

However, sometimes you want to customize the class used to create these
objects. The most common reason to want to do this is to provide methods
that make it easier to inspect or interact with these objects. Autopilot
allows test authors to provide their own custom classes, through a
couple of simple steps:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

First, you must define your own base class, to be used by all custom
proxy objects in your test suite. This base class can be empty, but must
derive from ProxyBase. An example class might look like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.introspection</span> <span class="kn">import</span> <span class="n">ProxyBase</span>
   <span class="k">class</span> <span class="nc">CustomProxyObjectBase</span><span class="p">(</span><span class="n">ProxyBase</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;A base class for all custom proxy objects within this test suite.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

For Ubuntu applications using Ubuntu UI Toolkit objects, you should
derive your custom proxy object from
UbuntuUIToolkitCustomProxyObjectBase. This base class is also derived
from ProxyBase and is used for all Ubuntu UI Toolkit custom proxy
objects. So if you are introspecting objects from Ubuntu UI Toolkit then
this is the base class to use.

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic" start="2">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Define the classes you want autopilot to use, instead of the default.
The simplest method is to give the class the same name as the type you
wish to override. For example, if you want to define your own custom
class to be used every time autopilot generates an instance of a
‘QLabel’ object, the class definition would look like this:

.. raw:: html

   </p>

.. raw:: html

   <pre>class QLabel(CustomProxyObjectBase):
   # Add custom methods here...
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

If you wish to implement more specific selection criteria, your class
can override the validate\_dbus\_object method, which takes as arguments
the dbus path and state. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">SpecificQLabel</span><span class="p">(</span><span class="n">CustomProxyObjectBase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">validate_dbus_object</span><span class="p">(</span><span class="n">path</span><span class="p">,</span> <span class="n">state</span><span class="p">):</span>
   <span class="k">return</span> <span class="p">(</span><span class="n">path</span><span class="o">.</span><span class="n">endswith</span><span class="p">(</span><span class="s">&#39;object_we_want&#39;</span><span class="p">)</span> <span class="ow">or</span>
   <span class="n">state</span><span class="p">[</span><span class="s">&#39;some_property&#39;</span><span class="p">]</span> <span class="o">==</span> <span class="s">&#39;desired_value&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This method should return True if the object matches this custom proxy
class, and False otherwise. If more than one custom proxy class matches
an object, a ValueError will be raised at runtime.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example using Ubuntu UI Toolkit which would be used to swipe up a
PageWithBottomEdge object to reveal it’s bottom edge menu could look
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">import</span> <span class="nn">ubuntuuitoolkit</span>
   <span class="k">class</span> <span class="nc">PageWithBottomEdge</span><span class="p">(</span><span class="n">ubuntuuitoolkit</span><span class="o">.</span><span class="n">UbuntuUIToolkitCustomProxyObjectBase</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;An emulator class that makes it easy to interact with the bottom edge</span>
   <span class="sd">       swipe page&quot;&quot;&quot;</span>
   <span class="k">def</span> <span class="nf">reveal_bottom_edge_page</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Swipe up from the bottom edge of the Page</span>
   <span class="sd">           to reveal it&#39;s bottom edge menu.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   <ol class="arabic" start="3">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Pass the custom proxy base class as an argument to the
launch\_test\_application method on your test class. This base class
should be the same base class that is used to write all of your custom
proxy objects:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">TestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">()</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;/path/to/the/application&#39;</span><span class="p">,</span>
   <span class="n">emulator_base</span><span class="o">=</span><span class="n">CustomProxyObjectBase</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

For applications using objects from Ubuntu UI Toolkit, the
emulator\_base parameter should be:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">emulator_base</span><span class="o">=</span><span class="n">ubuntuuitoolkit</span><span class="o">.</span><span class="n">UbuntuUIToolkitCustomProxyObjectBase</span>
   </pre>

.. raw:: html

   <ol class="arabic" start="4">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

You can pass the custom proxy class to methods like select\_single
instead of a string. So, for example, the following is a valid way of
selecting the QLabel instances in an application:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="c"># Get all QLabels in the applicaton:</span>
   <span class="n">labels</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="n">QLabel</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

If you are introspecting an application that already has a custom proxy
base class defined, then this class can simply be imported and passed to
the appropriate application launcher method. See launching applications
for more details on launching an application for introspection. This
will allow you to call all of the public methods of the application’s
proxy base class directly in your test.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example will run on desktop and uses the webbrowser application to
navigate to a url using the base class go\_to\_url() method:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="kn">from</span> <span class="nn">webbrowser_app.emulators</span> <span class="kn">import</span> <span class="n">browser</span>
   <span class="k">class</span> <span class="nc">ClickAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_go_to_url</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;webbrowser-app&#39;</span><span class="p">,</span>
   <span class="n">emulator_base</span><span class="o">=</span><span class="n">browser</span><span class="o">.</span><span class="n">Webbrowser</span><span class="p">)</span>
   <span class="c"># main_window is a property of the Webbrowser class</span>
   <span class="n">app</span><span class="o">.</span><span class="n">main_window</span><span class="o">.</span><span class="n">go_to_url</span><span class="p">(</span><span class="s">&#39;http://www.ubuntu.com&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <h2>

Launching Applications

.. raw:: html

   </h2>

.. raw:: html

   <p>

Applications can be launched inside of a testcase using the application
launcher methods from the AutopilotTestCase class. The exact method
required will depend upon the type of application being launched:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

launch\_test\_application is used to launch regular executables

.. raw:: html

   </li>

.. raw:: html

   <li>

launch\_upstart\_application is used to launch upstart-based
applications

.. raw:: html

   </li>

.. raw:: html

   <li>

launch\_click\_package is used to launch applications inside a click
package

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This example shows how to launch an installed click application from
within a test case:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">ClickAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Outside of testcase classes, the NormalApplicationLauncher,
UpstartApplicationLauncher, and ClickApplicationLauncher fixtures can be
used, e.g.:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">NormalApplicationLauncher</span>
   <span class="k">with</span> <span class="n">NormalApplicationLauncher</span><span class="p">()</span> <span class="k">as</span> <span class="n">launcher</span><span class="p">:</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

or a similar example for an installed click package:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">ClickApplicationLauncher</span>
   <span class="k">with</span> <span class="n">ClickApplicationLauncher</span><span class="p">()</span> <span class="k">as</span> <span class="n">launcher</span><span class="p">:</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Within a fixture or a testcase, self.useFixture can be used:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">NormalApplicationLauncher</span><span class="p">())</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="p">[</span><span class="s">&#39;--new-window&#39;</span><span class="p">,</span> <span class="s">&#39;/path/to/file&#39;</span><span class="p">])</span>
   </pre>

.. raw:: html

   <p>

or for an installed click package:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">ClickApplicationLauncher</span><span class="p">())</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Additional options can also be specified to set a custom addDetail
method, a custom proxy base, or a custom dbus bus with which to patch
the environment:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">NormalApplicationLauncher</span><span class="p">(</span>
   <span class="n">case_addDetail</span><span class="o">=</span><span class="bp">self</span><span class="o">.</span><span class="n">addDetail</span><span class="p">,</span>
   <span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;some_other_bus&#39;</span><span class="p">,</span>
   <span class="n">proxy_base</span><span class="o">=</span><span class="n">my_proxy_class</span><span class="p">,</span>
   <span class="p">))</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

You must pass the test case’s ‘addDetail’ method to these application
launch fixtures if you want application logs to be attached to the test
result. This is due to the way fixtures are cleaned up, and is
unavoidable.

.. raw:: html

   </p>

.. raw:: html

   <p>

The main qml file of some click applications can also be launched
directly from source. This can be done using the qmlscene application
directly on the target application’s main qml file. This example uses
launch\_test\_application method from within a test case:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="s">&#39;application.qml&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

However, using this method it will not be possible to return an
application specific custom proxy object, see Writing Custom Proxy
Classes.

.. raw:: html

   </p>
