Porting your autopilot tests
============================

.. raw:: html

   <p>

This document contains hints as to what is required to port a test suite
from any version of autopilot to any newer version.

.. raw:: html

   </p>

.. raw:: html

   <p class="topic-title first">

Contents

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Porting Autopilot Tests

.. raw:: html

   <ul>

.. raw:: html

   <li>

A note on Versions

.. raw:: html

   </li>

.. raw:: html

   <li>

Porting to Autopilot v1.4.x

.. raw:: html

   <ul>

.. raw:: html

   <li>

Gtk Tests and Boolean Parameters

.. raw:: html

   </li>

.. raw:: html

   <li>

select\_single Changes

.. raw:: html

   </li>

.. raw:: html

   <li>

DBus backends and DBusIntrospectionObject changes

.. raw:: html

   </li>

.. raw:: html

   <li>

Python 3

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Porting to Autopilot v1.3.x

.. raw:: html

   <ul>

.. raw:: html

   <li>

QtIntrospectionTestMixin and GtkIntrospectionTestMixin no longer exist

.. raw:: html

   </li>

.. raw:: html

   <li>

autopilot.emulators namespace has been deprecated

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

A note on Versions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot releases are reasonably tightly coupled with Ubuntu releases.
However, the autopilot authors maintain separate version numbers, with
the aim of separating the autopilot release cadence from the Ubuntu
platform release cadence.

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot versions earlier than 1.2 were not publicly announced, and
were only used within Canonical. For that reason, this document assumes
that version 1.2 is the lowest version of autopilot present “in the
wild”.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Porting to Autopilot v1.4.x

.. raw:: html

   </h2>

.. raw:: html

   <p>

The 1.4 release contains several changes that required a break in the
DBus wire protocol between autopilot and the applications under test.
Most of these changes require no change to test code.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Gtk Tests and Boolean Parameters

.. raw:: html

   </h3>

.. raw:: html

   <p>

Version 1.3 of the autopilot-gtk backend contained a bug that caused all
Boolean properties to be exported as integers instead of boolean values.
This in turn meant that test code would fail to return the correct
objects when using selection criteria such as:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">visible_buttons</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&quot;GtkPushButton&quot;</span><span class="p">,</span> <span class="n">visible</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

and instead had to write something like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">visible_buttons</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&quot;GtkPushButton&quot;</span><span class="p">,</span> <span class="n">visible</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This bug has now been fixed, and using the integer selection will fail.

.. raw:: html

   </p>

.. raw:: html

   <h3>

select\_single Changes

.. raw:: html

   </h3>

.. raw:: html

   <p>

The select\_single method used to return None in the case where no
object was found that matched the search criteria. This led to rather
awkward code in places where the object you are searching for is being
created dynamically:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">10</span><span class="p">):</span>
   <span class="n">my_obj</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&quot;MyObject&quot;</span><span class="p">)</span>
   <span class="k">if</span> <span class="n">my_obj</span> <span class="ow">is</span> <span class="ow">not</span> <span class="bp">None</span><span class="p">:</span>
   <span class="k">break</span>
   <span class="n">time</span><span class="o">.</span><span class="n">sleep</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span>
   <span class="k">else</span><span class="p">:</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">fail</span><span class="p">(</span><span class="s">&quot;Object &#39;MyObject&#39; was not found within 10 seconds.&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

This makes the authors intent harder to discern. To improve this
situation, two changes have been made:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

select\_single raises a StateNotFoundError exception if the search terms
returned no values, rather than returning None.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

If the object being searched for is likely to not exist, there is a new
method: wait\_select\_single will try to retrieve an object for 10
seconds. If the object does not exist after that timeout, a
StateNotFoundError exception is raised. This means that the above code
example should now be written as:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">my_obj</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&quot;MyObject&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <h3>

DBus backends and DBusIntrospectionObject changes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Due to a change in how DBusIntrospectionObject objects store their DBus
backend a couple of classmethods have now become instance methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

These affected methods are:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

get\_all\_instances

.. raw:: html

   </li>

.. raw:: html

   <li>

get\_root\_instance

.. raw:: html

   </li>

.. raw:: html

   <li>

get\_state\_by\_path

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

For example, if your old code is something along the lines of:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">all_keys</span> <span class="o">=</span> <span class="n">KeyCustomProxy</span><span class="o">.</span><span class="n">get_all_instances</span><span class="p">()</span>
   </pre>

.. raw:: html

   <p>

You will instead need to have something like this instead:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">all_keys</span> <span class="o">=</span> <span class="n">app_proxy</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="n">KeyCustomProxy</span><span class="p">)</span>
   </pre>

.. raw:: html

   <h3>

Python 3

.. raw:: html

   </h3>

.. raw:: html

   <p>

Starting from version 1.4, autopilot supports python 3 as well as python
2. Test authors can choose to target either version of python.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Porting to Autopilot v1.3.x

.. raw:: html

   </h2>

.. raw:: html

   <p>

The 1.3 release included many API breaking changes. Earlier versions of
autopilot made several assumptions about where tests would be run, that
turned out not to be correct. Autopilot 1.3 brought several much-needed
features, including:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

A system for building pluggable implementations for several core
components. This system is used in several areas:

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

The input stack can now generate events using either the X11 client
libraries, or the UInput kernel driver. This is necessary for devices
that do not use X11.

.. raw:: html

   </li>

.. raw:: html

   <li>

The display stack can now report display information for systems that
use both X11 and the mir display server.

.. raw:: html

   </li>

.. raw:: html

   <li>

The process stack can now report details regarding running processes &
their windows on both Desktop, tablet, and phone platforms.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

A large code cleanup and reorganisation. In particular, lots of code
that came from the Unity 3D codebase has been removed if it was deemed
to not be useful to the majority of test authors. This code cleanup
includes a flattening of the autopilot namespace. Previously, many
useful classes lived under the autopilot.emulators namespace. These have
now been moved into the autopilot namespace.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

There is an API breakage in autopilot 1.3. The changes outlined under
the heading “DBus backends and DBusIntrospectionObject changes” apply to
version 1.3.1+13.10.20131003.1-0ubuntu1 and onwards .

.. raw:: html

   </p>

.. raw:: html

   <h3>

QtIntrospectionTestMixin and GtkIntrospectionTestMixin no longer exist

.. raw:: html

   </h3>

.. raw:: html

   <p>

In autopilot 1.2, tests enabled application introspection services by
inheriting from one of two mixin classes: QtIntrospectionTestMixin to
enable testing Qt4, Qt5, and Qml applications, and
GtkIntrospectionTestMixin to enable testing Gtk 2 and Gtk3 applications.
For example, a test case class in autopilot 1.2 might look like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.introspection.qt</span> <span class="kn">import</span> <span class="n">QtIntrospectionTestMixin</span>
   <span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">,</span> <span class="n">QtIntrospectionTestMixin</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

In Autopilot 1.3, the AutopilotTestCase class contains this
functionality directly, so the QtIntrospectionTestMixin and
GtkIntrospectionTestMixin classes no longer exist. The above example
becomes simpler:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Autopilot will try and determine the introspection type automatically.
If this process fails, you can specify the application type manually:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
   <span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

See also

.. raw:: html

   </p>

.. raw:: html

   <dl class="last docutils">

.. raw:: html

   <dt>

Method autopilot.testcase.AutopilotTestCase.launch\_test\_application

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Launch test applications.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <h3>

autopilot.emulators namespace has been deprecated

.. raw:: html

   </h3>

.. raw:: html

   <p>

In autopilot 1.2 and earlier, the autopilot.emulators package held
several modules and classes that were used frequently in tests. This
package has been removed, and it’s contents merged into the autopilot
package. Below is a table showing the basic translations that need to be
made:

.. raw:: html

   </p>

.. raw:: html

   <table border="1">

.. raw:: html

   <colgroup>

.. raw:: html

   <col width="45%" />

.. raw:: html

   <col width="55%" />

.. raw:: html

   </colgroup>

.. raw:: html

   <thead valign="bottom">

.. raw:: html

   <tr class="row-odd">

.. raw:: html

   <th class="head">

Old module

.. raw:: html

   </th>

.. raw:: html

   <th class="head">

New Module

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

autopilot.emulators.input

.. raw:: html

   </td>

.. raw:: html

   <td>

autopilot.input

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="row-odd">

.. raw:: html

   <td>

autopilot.emulators.X11

.. raw:: html

   </td>

.. raw:: html

   <td>

Deprecated - use autopilot.input for input and autopilot.display for
getting display information.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="row-even">

.. raw:: html

   <td>

autopilot.emulators.bamf

.. raw:: html

   </td>

.. raw:: html

   <td>

Deprecated - use autopilot.process instead.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>
