guides-page\_object
===================

.. raw:: html

   <p class="topic-title first">

Contents

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Page Object Pattern

.. raw:: html

   <ul>

.. raw:: html

   <li>

Introducing the Page Object Pattern

.. raw:: html

   <ul>

.. raw:: html

   <li>

1. The public methods represent the services that the page offers.

.. raw:: html

   </li>

.. raw:: html

   <li>

2. Try not to expose the internals of the page.

.. raw:: html

   </li>

.. raw:: html

   <li>

3. Methods return other PageObjects

.. raw:: html

   </li>

.. raw:: html

   <li>

4. Assertions should exist only in tests

.. raw:: html

   </li>

.. raw:: html

   <li>

5. Need not represent an entire page

.. raw:: html

   </li>

.. raw:: html

   <li>

6. Actions which produce multiple results should have a test for each
result

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

Introducing the Page Object Pattern

.. raw:: html

   </h2>

.. raw:: html

   <p>

Automated testing of an application through the Graphical User Interface
(GUI) is inherently fragile. These tests require regular review and
attention during the development cycle. This is known as Interface
Sensitivity (“even minor changes to the interface can cause tests to
fail”). Utilizing the page-object pattern, alleviates some of the
problems stemming from this fragility, allowing us to do automated user
acceptance testing (UAT) in a sustainable manner.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Page Object Pattern comes from the Selenium community and is the
best way to turn a flaky and unmaintainable user acceptance test into a
stable and useful part of your release process. A page is what’s visible
on the screen at a single moment. A user story consists of a user
jumping from page to page until they achieve their goal. Thus pages are
modeled as objects following these guidelines:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic simple">

.. raw:: html

   <li>

The public methods represent the services that the page offers.

.. raw:: html

   </li>

.. raw:: html

   <li>

Try not to expose the internals of the page.

.. raw:: html

   </li>

.. raw:: html

   <li>

Methods return other PageObjects.

.. raw:: html

   </li>

.. raw:: html

   <li>

Assertions should exist only in tests

.. raw:: html

   </li>

.. raw:: html

   <li>

Objects need not represent the entire page.

.. raw:: html

   </li>

.. raw:: html

   <li>

Actions which produce multiple results should have a test for each
result

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

Lets take the page objects of the Ubuntu Clock App as an example, with
some simplifications. This application is written in QML and Javascript
using the Ubuntu SDK.

.. raw:: html

   </p>

.. raw:: html

   <h3>

1. The public methods represent the services that the page offers.

.. raw:: html

   </h3>

.. raw:: html

   <p>

This application has a stopwatch page that lets users measure elapsed
time. It offers services to start, stop and reset the watch, so we start
by defining the stop watch page object as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">Stopwatch</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">start</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
   <span class="k">def</span> <span class="nf">stop</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
   <span class="k">def</span> <span class="nf">reset</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
   </pre>

.. raw:: html

   <h3>

2. Try not to expose the internals of the page.

.. raw:: html

   </h3>

.. raw:: html

   <p>

The internals of the page are more likely to change than the services it
offers. A stopwatch will keep the same three services we defined above
even if the whole design changes. In this case, we reset the stop watch
by clicking a button on the bottom-left of the window, but we hide that
as an implementation detail behind the public methods. In Python, we can
indicate that a method is for internal use only by adding a single
leading underscore to its name. So, lets implement the reset\_stopwatch
method:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">reset</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">_click_reset_button</span><span class="p">()</span>
   <span class="k">def</span> <span class="nf">_click_reset_button</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">reset_button</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
   <span class="s">&#39;ImageButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;resetButton&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">pointing_device</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">reset_button</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Now if the designers go crazy and decide that it’s better to reset the
stop watch in a different way, we will have to make the change only in
one place to keep all the tests working. Remember that this type of
tests has Interface Sensitivity, that’s unavoidable; but we can reduce
the impact of interface changes with proper encapsulation and turn these
tests into a useful way to verify that a change in the GUI didn’t
introduce any regressions.

.. raw:: html

   </p>

.. raw:: html

   <h3>

3. Methods return other PageObjects

.. raw:: html

   </h3>

.. raw:: html

   <p>

An UAT checks a user story. It will involve the journey of the user
through the system, so he will move from one page to another. Lets take
a look at how a journey to reset the stop watch will look like:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">stopwatch</span> <span class="o">=</span> <span class="n">clock_page</span><span class="o">.</span><span class="n">open_stopwatch</span><span class="p">()</span>
   <span class="n">stopwatch</span><span class="o">.</span><span class="n">start</span><span class="p">()</span>
   <span class="n">stopwatch</span><span class="o">.</span><span class="n">reset</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p>

In our sample application, the first page that the user will encounter
is the Clock. One of the things the user can do from this page is to
open the stopwatch page, so we model that as a service that the Clock
page provides. Then return the new page object that will be visible to
the user after completing that step.

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">Clock</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
   <span class="o">...</span>
   <span class="k">def</span> <span class="nf">open_stopwatch</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">_switch_to_tab</span><span class="p">(</span><span class="s">&#39;StopwatchTab&#39;</span><span class="p">)</span>
   <span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="n">Stopwatch</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Now the return value of open\_stopwatch will make available to the
caller all the available services that the stopwatch exposes to the
user. Thus it can be chained as a user journey from one page to the
other.

.. raw:: html

   </p>

.. raw:: html

   <h3>

4. Assertions should exist only in tests

.. raw:: html

   </h3>

.. raw:: html

   <p>

A well written UAT consists of a sequence of steps or user actions and
ends with one single assertion that verifies that the user achieved its
goal. The page objects are the helpers for the user actions part of the
test, so it’s better to leave the check for success out of them. With
that in mind, a test for the reset of the stopwatch would look like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_restart_button_must_restart_stopwatch_time</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="c"># Set up.</span>
   <span class="n">stopwatch</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">clock_page</span><span class="o">.</span><span class="n">open_stopwatch</span><span class="p">()</span>
   <span class="n">stopwatch</span><span class="o">.</span><span class="n">start</span><span class="p">()</span>
   <span class="n">stopwatch</span><span class="o">.</span><span class="n">reset_stopwatch</span><span class="p">()</span>
   <span class="c"># Check that the stopwatch has been reset.</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span>
   <span class="n">stopwatch</span><span class="o">.</span><span class="n">get_time</span><span class="p">,</span>
   <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;00:00.0&#39;</span><span class="p">)))</span>
   </pre>

.. raw:: html

   <p>

We have to add a new method to the stopwatch page object: get\_time. But
it only returns the state of the GUI as the user sees it. We leave in
the test method the assertion that checks it’s the expected value.

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">Stopwatch</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
   <span class="o">...</span>
   <span class="k">def</span> <span class="nf">get_time</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
   <span class="s">&#39;Label&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;time&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">text</span>
   </pre>

.. raw:: html

   <h3>

5. Need not represent an entire page

.. raw:: html

   </h3>

.. raw:: html

   <p>

The objects we are modeling here can just represent a part of the page.
Then we build the entire page that the user is seeing by composition of
page parts. This way we can reuse test code for parts of the GUI that
are reused in the application or between different applications. As an
example, take the \_switch\_to\_tab(‘StopwatchTab’) method that we are
using to open the stopwatch page. The Clock application is using the
Header component provided by the Ubuntu SDK, as all the other Ubuntu
applications are doing too. So, the Ubuntu SDK also provides helpers to
make it easier the user acceptance testing of the applications, and you
will find an object like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">class</span> <span class="nc">Header</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">switch_to_tab</span><span class="p">(</span><span class="n">tab_object_name</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Open a tab.</span>
   <span class="sd">        :parameter tab_object_name: The QML objectName property of the tab.</span>
   <span class="sd">        :return: The newly opened tab.</span>
   <span class="sd">        :raise ToolkitException: If there is no tab with that object</span>
   <span class="sd">            name.</span>
   <span class="sd">        &quot;&quot;&quot;</span>
   <span class="o">...</span>
   </pre>

.. raw:: html

   <p>

This object just represents the header of the page, and inside the
object we define the services that the header provides to the users. If
you dig into the full implementation of the Clock test class you will
find that in order to open the stopwatch page we end up calling Header
methods.

.. raw:: html

   </p>

.. raw:: html

   <h3>

6. Actions which produce multiple results should have a test for each
result

.. raw:: html

   </h3>

.. raw:: html

   <p>

According to the guideline 3. Methods return other PageObjects, we are
returning page objects every time that a user action opens the option
for new actions to execute. Sometimes the same action has different
results depending on the context or the values used for the action. For
example, the Clock app has an Alarm page. In this page you can add new
alarms, but if you try to add an alarm for sometime in the past, it will
result in an error. So, we will have two different tests that will look
something like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">test_add_alarm_for_tomorrow_must_add_to_alarm_list</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">tomorrow</span> <span class="o">=</span> <span class="o">...</span>
   <span class="n">test_alarm_name</span> <span class="o">=</span> <span class="s">&#39;Test alarm for tomorrow&#39;</span>
   <span class="n">alarm_page</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">alarm_page</span><span class="o">.</span><span class="n">add_alarm</span><span class="p">(</span>
   <span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">tomorrow</span><span class="p">)</span>
   <span class="n">saved_alarms</span> <span class="o">=</span> <span class="n">alarm_page</span><span class="o">.</span><span class="n">get_saved_alarms</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertIn</span><span class="p">(</span>
   <span class="p">(</span><span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">tomorrow</span><span class="p">),</span>
   <span class="n">saved_alarms</span><span class="p">)</span>
   <span class="k">def</span> <span class="nf">test_add_alarm_for_earlier_today_must_display_error</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="n">earlier_today</span> <span class="o">=</span> <span class="o">...</span>
   <span class="n">test_alarm_name</span> <span class="o">=</span> <span class="s">&#39;Test alarm for earlier_today&#39;</span>
   <span class="n">error_dialog</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">alarm_page</span><span class="o">.</span><span class="n">add_alarm_with_error</span><span class="p">(</span>
   <span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">earlier_today</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertEqual</span><span class="p">(</span>
   <span class="n">error_dialog</span><span class="o">.</span><span class="n">text</span><span class="p">,</span>
   <span class="s">&#39;Please select a time in the future.&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Take a look at the methods add\_alarm and add\_alarm\_with\_error. The
first one returns the Alarm page again, where the user can continue his
journey or finish the test checking the result. The second one returns
the error dialog that’s expected when you try to add an alarm with the
wrong values.

.. raw:: html

   </p>
