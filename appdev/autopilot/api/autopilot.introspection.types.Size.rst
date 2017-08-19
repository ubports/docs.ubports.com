autopilot.introspection.types.Size
==================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.Size">

class autopilot.introspection.types.Size(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The Size class represents a 2D size in cartesian space.

.. raw:: html

   </p>

.. raw:: html

   <p>

To construct a Size, pass in the width, height parameters to the class
constructor:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">=</span> <span class="n">Size</span><span class="p">(</span><span class="mi">50</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

These attributes can be accessed either using named attributes, or via
sequence indexes:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span><span class="o">.</span><span class="n">width</span> <span class="o">==</span> <span class="n">my_size</span><span class="o">.</span><span class="n">w</span> <span class="o">==</span> <span class="n">my_size</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">50</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span><span class="o">.</span><span class="n">height</span> <span class="o">==</span> <span class="n">my_size</span><span class="o">.</span><span class="n">h</span> <span class="o">==</span> <span class="n">my_size</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   <p>

Size instances can be compared using == and !=, either to another Size
instance, or to any mutable sequence type with the correct number of
items:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">==</span> <span class="p">[</span><span class="mi">50</span><span class="p">,</span> <span class="mi">100</span><span class="p">]</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">!=</span> <span class="n">Size</span><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">10</span><span class="p">)</span>
   <span class="go">True</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
