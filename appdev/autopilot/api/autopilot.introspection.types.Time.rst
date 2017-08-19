autopilot.introspection.types.Time
==================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.Time">

class autopilot.introspection.types.Time(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The Time class represents a time, without a date component.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can construct a Time instnace by passing the hours, minutes,
seconds, and milliseconds to the class constructor:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">=</span> <span class="n">Time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

The values passed in must be valid for their positions (ie..- 0-23 for
hours, 0-59 for minutes and seconds, and 0-999 for milliseconds).
Passing invalid values will cause a ValueError to be raised.

.. raw:: html

   </p>

.. raw:: html

   <p>

The hours, minutes, seconds, and milliseconds can be accessed using
either index access or named properties:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">hours</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">12</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">minutes</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">34</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">seconds</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">2</span><span class="p">]</span> <span class="o">==</span> <span class="mo">01</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">milliseconds</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">3</span><span class="p">]</span> <span class="o">==</span> <span class="mi">23</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Time instances can be compared to other time instances, any mutable
sequence containing four integers, or datetime.time instances:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">Time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">)</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">Time</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="mi">4</span><span class="p">)</span>
   <span class="go">False</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="p">[</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">]</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">datetime</span><span class="o">.</span><span class="n">time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23000</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Note that the Time class stores milliseconds, while the datettime.time
class stores microseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finally, you can get a datetime.time instance from a Time instance:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="n">my_time</span><span class="o">.</span><span class="n">time</span><span class="p">,</span> <span class="n">datetime</span><span class="o">.</span><span class="n">time</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
