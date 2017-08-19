faq-troubleshooting
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

Troubleshooting

.. raw:: html

   <ul>

.. raw:: html

   <li>

General Techniques

.. raw:: html

   </li>

.. raw:: html

   <li>

Common Questions regarding Failing Tests

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. Why is my test failing? It works some of the time. What causes
“flakyness?”

.. raw:: html

   </li>

.. raw:: html

   <li>

StateNotFoundError Exception

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

General Techniques

.. raw:: html

   </h2>

.. raw:: html

   <p>

The single hardest thing to do while writing autopilot tests is to
understand the state of the application’s object tree. This is
especially important for applications that change their object tree
during the lifetime of the test. There are three techniques you can use
to discover the state of the object tree:

.. raw:: html

   </p>

.. raw:: html

   <p>

Using Autopilot Vis

.. raw:: html

   </p>

.. raw:: html

   <p>

The Autopilot vis tool is a useful tool for exploring the entire
structure of an application, and allows you to search for a particular
node in the object tree. If you want to find out what parts of the
application to select to gain access to certain information, the vis
tool is probably the best way to do that.

.. raw:: html

   </p>

.. raw:: html

   <p>

Using print\_tree

.. raw:: html

   </p>

.. raw:: html

   <p>

The print\_tree method is available on every proxy class. This method
will print every child of the proxy object recursively, either to stdout
or a file on disk. This technique can be useful when:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

The application cannot easily be put into the state required before
launching autopilot vis, so the vis tool is no longer an option.

.. raw:: html

   </li>

.. raw:: html

   <li>

The application state that has to be captured only exists for a short
amount of time.

.. raw:: html

   </li>

.. raw:: html

   <li>

The application only runs on platforms where the vis tool isn’t
available.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The print\_tree method often produces a lot of output. There are two
ways this information overload can be handled:

.. raw:: html

   </p>

.. raw:: html

   <ol class="arabic simple">

.. raw:: html

   <li>

Specify a file path to write to, so the console log doesn’t get flooded.
This log file can then be searched with tools such as grep.

.. raw:: html

   </li>

.. raw:: html

   <li>

Specify a maxdepth limit. This controls how many levels deep the
recursive search will go.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

Of course, these techniques can be used in combination.

.. raw:: html

   </p>

.. raw:: html

   <p>

Using get\_properties

.. raw:: html

   </p>

.. raw:: html

   <p>

The get\_properties method can be used on any proxy object, and will
return a python dictionary containing all the properties of that proxy
object. This is useful when you want to explore what information is
provided by a single proxy object. The information returned by this
method is exactly the same as is shown in the right-hand pane of
autopilot vis.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Common Questions regarding Failing Tests

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. Why is my test failing? It works some of the time. What causes
“flakyness?”

.. raw:: html

   </h3>

.. raw:: html

   <p>

Sometimes a tests fails because the application under tests has issues,
but what happens when the failing test can’t be reproduced manually? It
means the test itself has an issue.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a troubleshooting guide you can use with some of the common
problems that developers can overlook while writing tests.

.. raw:: html

   </p>

.. raw:: html

   <h3>

StateNotFoundError Exception

.. raw:: html

   </h3>

.. raw:: html

   <ol class="arabic" id="state-not-found">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Not waiting for an animation to finish before looking for an object. Did
you add animations to your app recently?

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

problem:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;click_this&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

solution:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">page</span><span class="o">.</span><span class="n">animationRunning</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="bp">False</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;click_this&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Not waiting for an object to become visible before trying to select it.
Is your app slower than it used to be for some reason? Does its
properties have null values? Do you see errors in stdout/stderr while
using your app, if you run it from the commandline?

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

Python code is executed in series which takes milliseconds, whereas the
actions (clicking a button etc.) will take longer as well as the dbus
query time. This is why wait\_select\_\* is useful i.e. click a button
and wait for that click to happen (including the dbus query times
taken).

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

problem:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

solution:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   </blockquote>

.. raw:: html

   <ol class="arabic" start="3">

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

Waiting for an item that is destroyed to be not visible, sometimes the
objects is destroyed before it returns false:

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ul class="first last">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

problem:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">dialogButton</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

problem:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">_get_activity_indicator</span><span class="p">()</span><span class="o">.</span><span class="n">running</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="bp">False</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

solution:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">dialogButton</span><span class="o">.</span><span class="n">wait_for_destroyed</span><span class="p">()</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

solution:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">_get_activity_indicator</span><span class="p">()</span><span class="o">.</span><span class="n">running</span><span class="o">.</span><span class="n">wait_for_destroyed</span><span class="p">()</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

Trying to use select\_many like a list. The order in which the objects
are returned are non-deterministic.

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ul class="first last">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

problem:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">get_first_photo</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Returns first photo&quot;&quot;&quot;</span>
   <span class="k">return</span> <span class="n">event</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span>
   <span class="s">&#39;OrganicItemInteraction&#39;</span><span class="p">,</span>
   <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;eventsViewPhoto&#39;</span>
   <span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

solution:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="k">def</span> <span class="nf">_get_named_photo_element</span><span class="p">(</span><span class="bp">self</span><span class="p">,</span> <span class="n">photo_name</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Return the ShapeItem container object for the named photo</span>
   <span class="sd">    This object can be clicked to enable the photo to be selected.</span>
   <span class="sd">    &quot;&quot;&quot;</span>
   <span class="n">photo_element</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">grid_view</span><span class="p">()</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
   <span class="s">&#39;QQuickImage&#39;</span><span class="p">,</span>
   <span class="n">source</span><span class="o">=</span><span class="n">photo_name</span>
   <span class="p">)</span>
   <span class="k">return</span> <span class="n">photo_element</span><span class="o">.</span><span class="n">get_parent</span><span class="p">()</span>
   <span class="k">def</span> <span class="nf">select_named_photo</span><span class="p">(</span><span class="bp">self</span><span class="p">,</span> <span class="n">photo_name</span><span class="p">):</span>
   <span class="sd">&quot;&quot;&quot;Select the named photo from the picker view.&quot;&quot;&quot;</span>
   <span class="n">photo_element</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_get_named_photo_element</span><span class="p">(</span><span class="n">photo_name</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">pointing_device</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">photo_element</span><span class="p">)</span>
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </li>

.. raw:: html

   </ol>
