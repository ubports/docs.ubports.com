guides-good\_tests
==================

.. raw:: html

   <p>

This document is an introduction to writing good autopilot tests. This
should be treated as additional material on top of all the things you’d
normally do to write good code. Put another way: test code follows all
the same rules as production code - it must follow the coding standards,
and be of a professional quality.

.. raw:: html

   </p>

.. raw:: html

   <p>

Several points in this document are written with respect to the unity
autopilot test suite. This is incidental, and doesn’t mean that these
points do not apply to other test suites!

.. raw:: html

   </p>

.. raw:: html

   <h2>

Write Expressive Tests

.. raw:: html

   </h2>

.. raw:: html

   <p>

Unit tests are often used as a reference for how your public API should
be used. Functional (Autopilot) tests are no different: they can be used
to figure out how your application should work from a functional
standpoint. However, this only works if your tests are written in a
clear, concise, and most importantly expressive style. There are many
things you can do to make your tests easier to read:

.. raw:: html

   </p>

.. raw:: html

   <p>

Pick Good Test Case Class Names

.. raw:: html

   </p>

.. raw:: html

   <p>

Pick a name that encapsulates all the tests in the class, but is as
specific as possible. If necessary, break your tests into several
classes, so your class names can be more specific. This is important
because when a test fails, the test id is the primary means of
identifying the failure. The more descriptive the test id is, the easier
it is to find the fault and fix the test.

.. raw:: html

   </p>

.. raw:: html

   <p>

Pick Good Test Case Method Names

.. raw:: html

   </p>

.. raw:: html

   <p>

Similar to picking good test case class names, picking good method names
makes your test id more descriptive. We recommend writing very long test
method names, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="c"># bad example:</span>
   <span class="k">def</span> <span class="nf">test_save_dialog</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="c"># test goes here</span>
   <span class="c"># better example:</span>
   <span class="k">def</span> <span class="nf">test_save_dialog_can_cancel</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="c"># test goes here</span>
   <span class="c"># best example:</span>
   <span class="k">def</span> <span class="nf">test_save_dialog_cancels_on_escape_key</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="c"># test goes here</span>
   </pre>

.. raw:: html

   <p>

Write Docstrings

.. raw:: html

   </p>

.. raw:: html

   <p>

You should write docstrings for your tests. Often the test method is
enough to describe what the test does, but an English description is
still useful when reading the test code. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_save_dialog_cancels_on_escape_key</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;The Save dialog box must cancel when the escape key is pressed.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   <p>

We recommend following PEP 257 when writing all docstrings.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Test One Thing Only

.. raw:: html

   </h2>

.. raw:: html

   <p>

Tests should test one thing, and one thing only. Since we’re not writing
unit tests, it’s fine to have more than one assert statement in a test,
but the test should test one feature only. How do you tell if you’re
testing more than one thing? There’s two primary ways:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Can you describe the test in a single sentence without using words like
‘and’, ‘also’, etc? If not, you should consider splitting your tests
into multiple smaller tests.

.. raw:: html

   </li>

.. raw:: html

   <li>

Tests usually follow a simple pattern:

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Set up the test environment.

.. raw:: html

   </li>

.. raw:: html

   <li>

Perform some action.

.. raw:: html

   </li>

.. raw:: html

   <li>

Test things with assert statements.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

If you feel you’re repeating steps ‘b’ and ‘c’ you’re likely testing
more than one thing, and should consider splitting your tests up.

.. raw:: html

   </p>

.. raw:: html

   </blockquote>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_alt_f4_close_dash</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Dash must close on alt+F4.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">ensure_visible</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&quot;Alt+F4&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

This test tests one thing only. Its three lines match perfectly with the
typical three stages of a test (see above), and it only tests for things
that it’s supposed to. Remember that it’s fine to assume that other
parts of unity work as expected, as long as they’re covered by an
autopilot test somewhere else - that’s why we don’t need to verify that
the dash really did open when we called self.dash.ensure\_visible().

.. raw:: html

   </p>

.. raw:: html

   <h2>

Fail Well

.. raw:: html

   </h2>

.. raw:: html

   <p>

Make sure your tests test what they’re supposed to. It’s very easy to
write a test that passes. It’s much more difficult to write a test that
only passes when the feature it’s testing is working correctly, and
fails otherwise. There are two main ways to achieve this:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Write the test first. This is easy to do if you’re trying to fix a bug
in Unity. In fact, having a test that’s exploitable via an autopilot
test will help you fix the bug as well. Once you think you have fixed
the bug, make sure the autopilot test you wrote now passed. The general
workflow will be:

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Branch unity trunk.

.. raw:: html

   </li>

.. raw:: html

   <li>

Write autopilot test that reproduces the bug.

.. raw:: html

   </li>

.. raw:: html

   <li>

Commit.

.. raw:: html

   </li>

.. raw:: html

   <li>

Write code that fixes the bug.

.. raw:: html

   </li>

.. raw:: html

   <li>

Verify that the test now passes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Commit. Push. Merge.

.. raw:: html

   </li>

.. raw:: html

   <li>

Celebrate!

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </blockquote>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

If you’re writing tests for a bug-fix that’s already been written but is
waiting on tests before it can be merged, the workflow is similar but
slightly different:

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Branch unity trunk.

.. raw:: html

   </li>

.. raw:: html

   <li>

Write autopilot test that reproduces the bug.

.. raw:: html

   </li>

.. raw:: html

   <li>

Commit.

.. raw:: html

   </li>

.. raw:: html

   <li>

Merge code that supposedly fixes the bug.

.. raw:: html

   </li>

.. raw:: html

   <li>

Verify that the test now passes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Commit. Push. Superseed original merge proposal with your branch.

.. raw:: html

   </li>

.. raw:: html

   <li>

Celebrate!

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </blockquote>

.. raw:: html

   <h2>

Think about design

.. raw:: html

   </h2>

.. raw:: html

   <p>

Much in the same way you might choose a functional or objective-oriented
paradigm for a piece of code, a testsuite can benefit from choosing a
good design pattern. One such design pattern is the page object model.
The page object model can reduce testcase complexity and allow the
testcase to grow and easily adapt to changes within the underlying
application. Check out Page Object Pattern.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Test Length

.. raw:: html

   </h2>

.. raw:: html

   <p>

Tests should be short - as short as possible while maintaining
readability. Longer tests are harder to read, harder to understand, and
harder to debug. Long tests are often symptomatic of several possible
problems:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Your test requires complicated setup that should be encapsulated in a
method or function.

.. raw:: html

   </li>

.. raw:: html

   <li>

Your test is actually several tests all jammed into one large test.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_panel_title_switching_active_window</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Tests the title shown in the panel with a maximized application.&quot;&quot;&quot;</span>
   <span class="c"># Locked Launchers on all monitors</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">set_unity_option</span><span class="p">(</span><span class="s">&#39;num_launchers&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">set_unity_option</span><span class="p">(</span><span class="s">&#39;launcher_hide_mode&#39;</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span>
   <span class="n">text_win</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">open_new_application_window</span><span class="p">(</span><span class="s">&quot;Text Editor&quot;</span><span class="p">,</span> <span class="n">maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">is_maximized</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">title</span><span class="p">))</span>
   <span class="n">sleep</span><span class="p">(</span><span class="o">.</span><span class="mi">25</span><span class="p">)</span>
   <span class="n">calc_win</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">open_new_application_window</span><span class="p">(</span><span class="s">&quot;Calculator&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="n">calc_win</span><span class="o">.</span><span class="n">application</span><span class="o">.</span><span class="n">name</span><span class="p">))</span>
   <span class="n">icon</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">model</span><span class="o">.</span><span class="n">get_icon_by_desktop_id</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">application</span><span class="o">.</span><span class="n">desktop_file</span><span class="p">)</span>
   <span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">get_launcher_for_monitor</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel_monitor</span><span class="p">)</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">click_launcher_icon</span><span class="p">(</span><span class="n">icon</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">is_focused</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">title</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

This test can be simplified into the following:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_panel_title_switching_active_window</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Tests the title shown in the panel with a maximized application.&quot;&quot;&quot;</span>
   <span class="n">text_win</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">open_new_application_window</span><span class="p">(</span><span class="s">&quot;Text Editor&quot;</span><span class="p">,</span> <span class="n">maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">open_new_application_window</span><span class="p">(</span><span class="s">&quot;Calculator&quot;</span><span class="p">)</span>
   <span class="n">icon</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">model</span><span class="o">.</span><span class="n">get_icon_by_desktop_id</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">application</span><span class="o">.</span><span class="n">desktop_file</span><span class="p">)</span>
   <span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">get_launcher_for_monitor</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel_monitor</span><span class="p">)</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">click_launcher_icon</span><span class="p">(</span><span class="n">icon</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">is_focused</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">panel</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="n">text_win</span><span class="o">.</span><span class="n">title</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

Here’s what we changed:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Removed the set\_unity\_option lines, as they didn’t affect the test
results at all.

.. raw:: html

   </li>

.. raw:: html

   <li>

Removed assertions that were duplicated from other tests. For example,
there’s already an autopilot test that ensures that new applications
have their title displayed on the panel.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

With a bit of refactoring, this test could be even smaller (the launcher
proxy classes could have a method to click an icon given a desktop id),
but this is now perfectly readable and understandable within a few
seconds of reading.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Good docstrings

.. raw:: html

   </h2>

.. raw:: html

   <p>

Test docstrings are used to communicate to other developers what the
test is supposed to be testing. Test Docstrings must:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Conform to PEP8 and PEP257 guidelines.

.. raw:: html

   </li>

.. raw:: html

   <li>

Avoid words like “should” in favor of stronger words like “must”.

.. raw:: html

   </li>

.. raw:: html

   <li>

Contain a one-line summary of the test.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </blockquote>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

Additionally, they should:

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ol class="first last arabic simple">

.. raw:: html

   <li>

Include the launchpad bug number (if applicable).

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_launcher_switcher_next_keeps_shortcuts</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Launcher switcher next action must keep shortcuts after they&#39;ve been shown.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   <p>

Within the context of the test case, the docstring is able to explain
exactly what the test does, without any ambiguity. In contrast, here’s a
poorer example:

.. raw:: html

   </p>

.. raw:: html

   <p>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_switcher_all_mode_shows_all_apps</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Test switcher &#39;show_all&#39; mode shows apps from all workspaces.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   <p>

The docstring explains what the desired outcome is, but without how
we’re testing it. This style of sentence assumes test success, which is
not what we want! A better version of this code might look like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_switcher_all_mode_shows_all_apps</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Switcher &#39;show all&#39; mode must show apps from all workspaces.&quot;&quot;&quot;</span>
   </pre>

.. raw:: html

   <p>

The difference between these two are subtle, but important.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Test Readability

.. raw:: html

   </h2>

.. raw:: html

   <p>

The most important attribute for a test is that it is correct - it must
test what’s it’s supposed to test. The second most important attribute
is that it is readable. Tests should be able to be examined by
themselves by someone other than the test author without any undue
hardship. There are several things you can do to improve test
readability:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic simple">

.. raw:: html

   <li>

Don’t abuse the setUp() method. It’s tempting to put code that’s common
to every test in a class into the setUp method, but it leads to tests
that are not readable by themselves. For example, this test uses the
setUp method to start the launcher switcher, and tearDown to cancel it:

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_launcher_switcher_next</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Moving to the next launcher item while switcher is activated must work.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launcher_instance</span><span class="o">.</span><span class="n">switcher_next</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">key_nav_selection</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">GreaterThan</span><span class="p">(</span><span class="mi">0</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

This leads to a shorter test (which we’ve already said is a good thing),
but the test itself is incomplete. Without scrolling up to the setUp and
tearDown methods, it’s hard to tell how the launcher switcher is
started. The situation gets even worse when test classes derive from
each other, since the code that starts the launcher switcher may not
even be in the same class!

.. raw:: html

   </p>

.. raw:: html

   <p>

A much better solution in this example is to initiate the switcher
explicitly, and use addCleanup() to cancel it when the test ends, like
this:

.. raw:: html

   </p>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_launcher_switcher_next</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Moving to the next launcher item while switcher is activated must work.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launcher_instance</span><span class="o">.</span><span class="n">switcher_start</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher_instance</span><span class="o">.</span><span class="n">switcher_cancel</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launcher_instance</span><span class="o">.</span><span class="n">switcher_next</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">key_nav_selection</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">GreaterThan</span><span class="p">(</span><span class="mi">0</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

The code is longer, but it’s still very readable. It also follows the
setup/action/test convention discussed above.

.. raw:: html

   </p>

.. raw:: html

   <p>

Appropriate uses of the setUp() method include:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Initialising test class member variables.

.. raw:: html

   </li>

.. raw:: html

   <li>

Setting unity options that are required for the test. For example, many
of the switcher autopilot tests set a unity option to prevent the
switcher going into details mode after a timeout. This isn’t part of the
test, but makes the test easier to write.

.. raw:: html

   </li>

.. raw:: html

   <li>

Setting unity log levels. The unity log is captured after each test.
Some tests may adjust the verbosity of different parts of the Unity
logging tree.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <ol class="arabic simple" start="2">

.. raw:: html

   <li>

Put common setup code into well-named methods. If the “setup” phase of a
test is more than a few lines long, it makes sense to put this code into
it’s own method. Pay particular attention to the name of the method you
use. You need to make sure that the method name is explicit enough to
keep the test readable. Here’s an example of a test that doesn’t do
this:

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_showdesktop_hides_apps</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Show Desktop keyboard shortcut must hide applications.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">start_app</span><span class="p">(</span><span class="s">&#39;Character Map&#39;</span><span class="p">,</span> <span class="n">locale</span><span class="o">=</span><span class="s">&#39;C&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">start_app</span><span class="p">(</span><span class="s">&#39;Calculator&#39;</span><span class="p">,</span> <span class="n">locale</span><span class="o">=</span><span class="s">&#39;C&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">start_app</span><span class="p">(</span><span class="s">&#39;Text Editor&#39;</span><span class="p">,</span> <span class="n">locale</span><span class="o">=</span><span class="s">&#39;C&#39;</span><span class="p">)</span>
   <span class="c"># show desktop, verify all windows are hidden:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keybinding</span><span class="p">(</span><span class="s">&quot;window/show_desktop&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">keybinding</span><span class="p">,</span> <span class="s">&quot;window/show_desktop&quot;</span><span class="p">)</span>
   <span class="n">open_wins</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">bamf</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">()</span>
   <span class="k">for</span> <span class="n">win</span> <span class="ow">in</span> <span class="n">open_wins</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">win</span><span class="o">.</span><span class="n">is_hidden</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

In contrast, we can refactor the test to look a lot nicer:

.. raw:: html

   </p>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_showdesktop_hides_apps</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Show Desktop keyboard shortcut must hide applications.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_apps</span><span class="p">()</span>
   <span class="c"># show desktop, verify all windows are hidden:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keybinding</span><span class="p">(</span><span class="s">&quot;window/show_desktop&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">keybinding</span><span class="p">,</span> <span class="s">&quot;window/show_desktop&quot;</span><span class="p">)</span>
   <span class="n">open_wins</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">bamf</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">()</span>
   <span class="k">for</span> <span class="n">win</span> <span class="ow">in</span> <span class="n">open_wins</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">win</span><span class="o">.</span><span class="n">is_hidden</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

The test is now shorter, and the launch\_test\_apps method can be
re-used elsewhere. Importantly - even though I’ve hidden the
implementation of the launch\_test\_apps method, the test still makes
sense.

.. raw:: html

   </p>

.. raw:: html

   </blockquote>

.. raw:: html

   <ol class="arabic simple" start="3">

.. raw:: html

   <li>

Hide complicated assertions behind custom assertXXX methods or custom
matchers. If you find that you frequently need to use a complicated
assertion pattern, it may make sense to either:

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Write a custom matcher. As long as you follow the protocol laid down by
the testtools.matchers.Matcher class, you can use a hand-written Matcher
just like you would use an ordinary one. Matchers should be written in
the autopilot.matchers module if they’re likely to be reusable outside
of a single test, or as local classes if they’re specific to one test.

.. raw:: html

   </li>

.. raw:: html

   <li>

Write custom assertion methods. For example:

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <blockquote>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_multi_key_copyright</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Pressing the sequences &#39;Multi_key&#39; + &#39;c&#39; + &#39;o&#39; must produce &#39;?&#39;.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">reveal_application_lens</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Multi_key&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&quot;oc&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertSearchText</span><span class="p">(</span><span class="s">&quot;?&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This test uses a custom method named assertSearchText that hides the
complexity involved in getting the dash search text and comparing it to
the given parameter.

.. raw:: html

   </p>

.. raw:: html

   </blockquote>

.. raw:: html

   </blockquote>

.. raw:: html

   <h2>

Prefer wait\_for and Eventually to sleep

.. raw:: html

   </h2>

.. raw:: html

   <p>

Early autopilot tests relied on extensive use of the python sleep call
to halt tests long enough for unity to change its state before the test
continued. Previously, an autopilot test might have looked like this:

.. raw:: html

   </p>

.. raw:: html

   <p>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_alt_f4_close_dash</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Dash must close on alt+F4.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">ensure_visible</span><span class="p">()</span>
   <span class="n">sleep</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&quot;Alt+F4&quot;</span><span class="p">)</span>
   <span class="n">sleep</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">))</span>
   </pre>

.. raw:: html

   <p>

This test uses two sleep calls. The first makes sure the dash has had
time to open before the test continues, and the second makes sure that
the dash has had time to respond to our key presses before we start
testing things.

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

There are several issues with this approach:

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ol class="first last arabic simple">

.. raw:: html

   <li>

On slow machines (like a jenkins instance running on a virtual machine),
we may not be sleeping long enough. This can lead to tests failing on
jenkins that pass on developers machines.

.. raw:: html

   </li>

.. raw:: html

   <li>

On fast machines, we may be sleeping too long. This won’t cause the test
to fail, but it does make running the test suite longer than it has to
be.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <p>

There are two solutions to this problem:

.. raw:: html

   </p>

.. raw:: html

   <h3>

In Tests

.. raw:: html

   </h3>

.. raw:: html

   <p>

Tests should use the Eventually matcher. This can be imported as
follows:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.matchers</span> <span class="kn">import</span> <span class="n">Eventually</span>
   </pre>

.. raw:: html

   <p>

The Eventually matcher works on all attributes in a proxy class that
derives from UnityIntrospectableObject (at the time of writing that is
almost all the autopilot unity proxy classes).

.. raw:: html

   </p>

.. raw:: html

   <p>

The Eventually matcher takes a single argument, which is another
testtools matcher instance. For example, the bad assertion from the
example above could be rewritten like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

Since we can use any testtools matcher, we can also write code like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">key_nav_selection</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">GreaterThan</span><span class="p">(</span><span class="n">prev_icon</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

Note that you can pass any object that follows the testtools matcher
protocol (so you can write your own matchers, if you like).

.. raw:: html

   </p>

.. raw:: html

   <h3>

In Proxy Classes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Proxy classes are not test cases, and do not have access to the
self.assertThat method. However, we want proxy class methods to block
until unity has had time to process the commands given. For example, the
ensure\_visible method on the Dash controller should block until the
dash really is visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

To achieve this goal, all attributes on unity proxy classes have been
patched with a wait\_for method that takes a testtools matcher (just
like Eventually - in fact, the Eventually matcher just calls wait\_for
under the hood). For example, previously the ensure\_visible method on
the Dash controller might have looked like this:

.. raw:: html

   </p>

.. raw:: html

   <p>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">ensure_visible</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Ensures the dash is visible.&quot;&quot;&quot;</span>
   <span class="k">if</span> <span class="ow">not</span> <span class="bp">self</span><span class="o">.</span><span class="n">visible</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">toggle_reveal</span><span class="p">()</span>
   <span class="n">sleep</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

In this example we’re assuming that two seconds is long enough for the
dash to open. To use the wait\_for feature, the code looks like this:

.. raw:: html

   </p>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">ensure_visible</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Ensures the dash is visible.&quot;&quot;&quot;</span>
   <span class="k">if</span> <span class="ow">not</span> <span class="bp">self</span><span class="o">.</span><span class="n">visible</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">toggle_reveal</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">visible</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Note that wait\_for assumes you want to use the Equals matcher if you
don’t specify one. Here’s another example where we’re using it with a
testtools matcher:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">key_nav_selection</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="n">NotEquals</span><span class="p">(</span><span class="n">old_selection</span><span class="p">))</span>
   </pre>

.. raw:: html

   <h2>

Scenarios

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot uses the python-testscenarios package to run a test multiple
times in different scenarios. A good example of scenarios in use is the
launcher keyboard navigation tests: each test is run once with the
launcher hide mode set to ‘always show launcher’, and again with it set
to ‘autohide launcher’. This allows test authors to write their test
once and have it execute in multiple environments.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to use test scenarios, the test author must create a list of
scenarios and assign them to the test case’s scenarios class attribute.
The autopilot ibus test case classes use scenarios in a very simple
fashion:

.. raw:: html

   </p>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">IBusTestsPinyin</span><span class="p">(</span><span class="n">IBusTests</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Tests for the Pinyin(Chinese) input engine.&quot;&quot;&quot;</span>
   <span class="n">scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;basic&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&#39;abc1&#39;</span><span class="p">,</span> <span class="s">&#39;result&#39;</span><span class="p">:</span> <span class="s">u&#39;</span><span class="se">\u963f\u5e03\u4ece</span><span class="s">&#39;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;photo&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&#39;zhaopian &#39;</span><span class="p">,</span> <span class="s">&#39;result&#39;</span><span class="p">:</span> <span class="s">u&#39;</span><span class="se">\u7167\u7247</span><span class="s">&#39;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;internet&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&#39;hulianwang &#39;</span><span class="p">,</span> <span class="s">&#39;result&#39;</span><span class="p">:</span> <span class="s">u&#39;</span><span class="se">\u4e92\u8054\u7f51</span><span class="s">&#39;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;disk&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&#39;cipan &#39;</span><span class="p">,</span> <span class="s">&#39;result&#39;</span><span class="p">:</span> <span class="s">u&#39;</span><span class="se">\u78c1\u76d8</span><span class="s">&#39;</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;disk_management&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&#39;cipan guanli &#39;</span><span class="p">,</span> <span class="s">&#39;result&#39;</span><span class="p">:</span> <span class="s">u&#39;</span><span class="se">\u78c1\u76d8\u7ba1\u7406</span><span class="s">&#39;</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="k">def</span> <span class="nf">test_simple_input_dash</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">ensure_visible</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">ensure_hidden</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">activate_ibus</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">searchbar</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">input</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">deactivate_ibus</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">searchbar</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dash</span><span class="o">.</span><span class="n">search_string</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">result</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

This is a simplified version of the IBus tests. In this case, the
test\_simple\_input\_dash test will be called 5 times. Each time, the
self.input and self.result attribute will be set to the values in the
scenario list. The first part of the scenario tuple is the scenario name
- this is appended to the test id, and can be whatever you want.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Important

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

It is important to notice that the test does not change its behavior
depending on the scenario it is run under. Exactly the same steps are
taken - the only difference in this case is what gets typed on the
keyboard, and what result is expected.

.. raw:: html

   </p>

.. raw:: html

   <p>

Scenarios are applied before the test’s setUp or tearDown methods are
called, so it’s safe (and indeed encouraged) to set up the test
environment based on these attributes. For example, you may wish to set
certain unity options for the duration of the test based on a scenario
parameter.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Multiplying Scenarios

.. raw:: html

   </h3>

.. raw:: html

   <p>

Scenarios are very helpful, but only represent a single-dimension of
parameters. For example, consider the launcher keyboard navigation
tests. We may want several different scenarios to come into play:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

A scenario that controls whether the launcher is set to ‘autohide’ or
‘always visible’.

.. raw:: html

   </li>

.. raw:: html

   <li>

A scenario that controls which monitor the test is run on (in case we
have multiple monitors configured).

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

We can generate two separate scenario lists to represent these two
scenario axis, and then produce the dot-product of thw two lists like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.tests</span> <span class="kn">import</span> <span class="n">multiply_scenarios</span>
   <span class="k">class</span> <span class="nc">LauncherKeynavTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="n">hide_mode_scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;autohide&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;hide_mode&#39;</span><span class="p">:</span> <span class="mi">1</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;neverhide&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;hide_mode&#39;</span><span class="p">:</span> <span class="mi">0</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="n">monitor_scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;monitor_0&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;launcher_monitor&#39;</span><span class="p">:</span> <span class="mi">0</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;monitor_1&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;launcher_monitor&#39;</span><span class="p">:</span> <span class="mi">1</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="n">scenarios</span> <span class="o">=</span> <span class="n">multiply_scenarios</span><span class="p">(</span><span class="n">hide_mode_scenarios</span><span class="p">,</span> <span class="n">monitor_scenarios</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

(please ignore the fact that we’re assuming that we always have two
monitors!)

.. raw:: html

   </p>

.. raw:: html

   <p>

In the test classes setUp method, we can then set the appropriate unity
option and make sure we’re using the correct launcher:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">set_unity_option</span><span class="p">(</span><span class="s">&#39;launcher_hide_mode&#39;</span><span class="p">,</span> <span class="bp">self</span><span class="o">.</span><span class="n">hide_mode</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launcher_instance</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">get_launcher_for_monitor</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher_monitor</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Which allows us to write tests that work automatically in all the
scenarios:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_keynav_initiates</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Launcher must start keyboard navigation mode.&quot;&quot;&quot;</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">keynav_start</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">launcher</span><span class="o">.</span><span class="n">kaynav_mode</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

This works fine. So far we’ve not done anything to cause undue pain....
until we decide that we want to extend the scenarios with an additional
axis:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.tests</span> <span class="kn">import</span> <span class="n">multiply_scenarios</span>
   <span class="k">class</span> <span class="nc">LauncherKeynavTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="n">hide_mode_scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;autohide&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;hide_mode&#39;</span><span class="p">:</span> <span class="mi">1</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;neverhide&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;hide_mode&#39;</span><span class="p">:</span> <span class="mi">0</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="n">monitor_scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;monitor_0&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;launcher_monitor&#39;</span><span class="p">:</span> <span class="mi">0</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;monitor_1&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;launcher_monitor&#39;</span><span class="p">:</span> <span class="mi">1</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="n">launcher_monitor_scenarios</span> <span class="o">=</span> <span class="p">[</span>
   <span class="p">(</span><span class="s">&#39;launcher on all monitors&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;monitor_mode&#39;</span><span class="p">:</span> <span class="mi">0</span><span class="p">}),</span>
   <span class="p">(</span><span class="s">&#39;launcher on primary monitor only&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;monitor_mode&#39;</span><span class="p">:</span> <span class="mi">1</span><span class="p">}),</span>
   <span class="p">]</span>
   <span class="n">scenarios</span> <span class="o">=</span> <span class="n">multiply_scenarios</span><span class="p">(</span><span class="n">hide_mode_scenarios</span><span class="p">,</span> <span class="n">monitor_scenarios</span><span class="p">,</span> <span class="n">launcher_monitor_scenarios</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Now we have a problem: Some of the generated scenarios won’t make any
sense. For example, one such scenario will be (autohide, monitor\_1,
launcher on primary monitor only). If monitor 0 is the primary monitor,
this will leave us running launcher tests on a monitor that doesn’t
contain a launcher!

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways to get around this problem, and they both lead to
terrible tests:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

Detect these situations and skip the test. This is bad for several
reasons - first, skipped tests should be viewed with the same level of
suspicion as commented out code. Test skips should only be used in
exceptional circumstances. A test skip in the test results is just as
serious as a test failure.

.. raw:: html

   </li>

.. raw:: html

   <li>

Detect the situation in the test, and run different code using an if
statement. For example, we might decode to do this:

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="c"># ... setup code here ...</span>
   <span class="k">if</span> <span class="bp">self</span><span class="o">.</span><span class="n">monitor_mode</span> <span class="o">==</span> <span class="mi">1</span> <span class="ow">and</span> <span class="bp">self</span><span class="o">.</span><span class="n">launcher_monitor</span> <span class="o">==</span> <span class="mi">1</span><span class="p">:</span>
   <span class="c"># test something else</span>
   <span class="k">else</span><span class="p">:</span>
   <span class="c"># test the original thing.</span>
   </pre>

.. raw:: html

   <p>

As a general rule, tests shouldn’t have assert statements inside an if
statement unless there’s a very good reason for doing so.

.. raw:: html

   </p>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

Scenarios can be useful, but we must be careful not to abuse them. It is
far better to spend more time typing and end up with clear, readable
tests than it is to end up with fewer, less readable tests. Like all
code, tests are read far more often than they’re written.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Do Not Depend on Object Ordering

.. raw:: html

   </h2>

.. raw:: html

   <p>

Calls such as select\_many return several objects at once. These objects
are explicitly unordered, and test authors must take care not to make
assumptions about their order.

.. raw:: html

   </p>

.. raw:: html

   <p>

Bad Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">buttons</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">)</span>
   <span class="n">save_button</span> <span class="o">=</span> <span class="n">buttons</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span>
   <span class="n">print_button</span> <span class="o">=</span> <span class="n">buttons</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span>
   </pre>

.. raw:: html

   <p>

This code may work initially, but there’s absolutely no guarantee that
the order of objects won’t change in the future. A better approach is to
select the individual components you need:

.. raw:: html

   </p>

.. raw:: html

   <p>

Good Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">save_button</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;btnSave&#39;</span><span class="p">)</span>
   <span class="n">print_button</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;btnPrint&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This code will continue to work in the future.

.. raw:: html

   </p>
