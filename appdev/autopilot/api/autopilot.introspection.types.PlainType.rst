autopilot.introspection.types.PlainType
=======================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.introspection.types.PlainType">

class autopilot.introspection.types.PlainType

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Plain type support in autopilot proxy objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Instances of this class will be used for all plain attrubites. The word
“plain” in this context means anything that’s marshalled as a string,
boolean or integer type across dbus.

.. raw:: html

   </p>

.. raw:: html

   <p>

Instances of these classes can be used just like the underlying type.
For example, given an object property called ‘length’ that is marshalled
over dbus as an integer value, the following will be true:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">,</span> <span class="n">PlainType</span><span class="p">)</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">,</span> <span class="nb">int</span><span class="p">)</span>
   <span class="go">True</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="k">print</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">)</span>
   <span class="go">123</span>
   <span class="gp">&gt;&gt;&gt; </span><span class="k">print</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span> <span class="o">+</span> <span class="mi">32</span><span class="p">)</span>
   <span class="go">155</span>
   </pre>

.. raw:: html

   <p>

However, a special case exists for boolean values: because you cannot
subclass from the ‘bool’ type, the following check will fail (
object.visible is a boolean property):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="nb">bool</span><span class="p">)</span>
   <span class="go">False</span>
   </pre>

.. raw:: html

   <p>

However boolean values will behave exactly as you expect them to.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
