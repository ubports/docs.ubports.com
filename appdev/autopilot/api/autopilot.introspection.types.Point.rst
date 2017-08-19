autopilot.introspection.types.Point
===================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.Point">

class autopilot.introspection.types.Point(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The Point class represents a 2D point in cartesian space.

.. raw:: html

   </p>

.. raw:: html

   <p>

To construct a Point, pass in the x, y parameters to the class
constructor:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">=</span> <span class="n">Point</span><span class="p">(</span><span class="mi">50</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

These attributes can be accessed either using named attributes, or via
sequence indexes:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span><span class="o">.</span><span class="n">x</span> <span class="o">==</span> <span class="n">my_point</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">50</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span><span class="o">.</span><span class="n">y</span> <span class="o">==</span> <span class="n">my_point</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Point instances can be compared using == and !=, either to another Point
instance, or to any mutable sequence type with the correct number of
items:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">==</span> <span class="p">[</span><span class="mi">50</span><span class="p">,</span> <span class="mi">100</span><span class="p">]</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">!=</span> <span class="n">Point</span><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">10</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
