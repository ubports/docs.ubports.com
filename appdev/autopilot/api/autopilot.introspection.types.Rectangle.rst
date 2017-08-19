autopilot.introspection.types.Rectangle
=======================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.Rectangle">

class autopilot.introspection.types.Rectangle(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The RectangleType class represents a rectangle in cartesian space.

.. raw:: html

   </p>

.. raw:: html

   <p>

To construct a rectangle, pass the x, y, width and height parameters in
to the class constructor:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">my_rect</span> <span class="o">=</span> <span class="n">Rectangle</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="mi">13</span><span class="p">,</span><span class="mi">100</span><span class="p">,</span><span class="mi">150</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

These attributes can be accessed either using named attributes, or via
sequence indexes:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="go">&gt;&gt;&gt;my_rect = Rectangle(12,13,100,150)</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">x</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">12</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">y</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">13</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">w</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">2</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">h</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">3</span><span class="p">]</span> <span class="o">==</span> <span class="mi">150</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

You may also access the width and height values using the width and
height properties:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">width</span> <span class="o">==</span> <span class="n">my_rect</span><span class="o">.</span><span class="n">w</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">height</span> <span class="o">==</span> <span class="n">my_rect</span><span class="o">.</span><span class="n">h</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Rectangles can be compared using == and !=, either to another Rectangle
instance, or to any mutable sequence type:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span> <span class="o">==</span> <span class="p">[</span><span class="mi">12</span><span class="p">,</span> <span class="mi">13</span><span class="p">,</span> <span class="mi">100</span><span class="p">,</span> <span class="mi">150</span><span class="p">]</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span> <span class="o">!=</span> <span class="n">Rectangle</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="mi">4</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
