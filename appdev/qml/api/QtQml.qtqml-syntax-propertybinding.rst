QtQml.qtqml-syntax-propertybinding
==================================

.. raw:: html

   <p>

An object's property can be assigned a static value which stays constant
until it is explicitly assigned a new value. However, to make the
fullest use of QML and its built-in support for dynamic object
behaviors, most QML objects use property bindings.

.. raw:: html

   </p>

.. raw:: html

   <p>

Property bindings are a core feature of QML that lets developers specify
relationships between different object properties. When a property's
dependencies change in value, the property is automatically updated
according to the specified relationship.

.. raw:: html

   </p>

.. raw:: html

   <p>

Behind the scenes, the QML engine monitors the property's dependencies
(that is, the variables in the binding expression). When a change is
detected, the QML engine re-evaluates the binding expression and applies
the new result to the property.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

To create a property binding, a property is assigned a JavaScript
expression that evaluates to the desired value. At its simplest, a
binding may be a reference to another property. Take the following
example, where the blue Rectangle's height is bound to the height of its
parent:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Whenever the height of the parent rectangle changes, the height of the
blue rectangle automatically updates to be of the same value.

.. raw:: html

   </p>

.. raw:: html

   <p>

A binding can contain any valid JavaScript expression or statement, as
QML uses a standards compliant JavaScript engine. Bindings can access
object properties, call methods and use built-in JavaScript objects such
as Date and Math. Below are other possible bindings for the previous
example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">height: parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
   height: Math<span class="operator">.</span>min(parent<span class="operator">.</span>width<span class="operator">,</span> parent<span class="operator">.</span>height)
   height: parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span> <span class="operator">?</span> parent<span class="operator">.</span>height : parent<span class="operator">.</span>height<span class="operator">/</span><span class="number">2</span>
   height: {
   <span class="keyword">if</span> (parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span>)
   <span class="keyword">return</span> parent<span class="operator">.</span>height
   <span class="keyword">else</span>
   <span class="keyword">return</span> parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
   }
   height: someMethodThatReturnsHeight()</pre>

.. raw:: html

   <p>

Below is a more complex example involving more objects and types:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Column</span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">topRect</span>
   <span class="name">width</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">bottomRect</span>.<span class="name">width</span>, <span class="name">parent</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>)
   <span class="name">height</span>: (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>) <span class="operator">+</span> <span class="number">10</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="type">TextInput</span> {
   <span class="name">id</span>: <span class="name">myTextInput</span>
   <span class="name">text</span>: <span class="string">&quot;Hello QML!&quot;</span>
   }
   }
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">bottomRect</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="name">myTextInput</span>.<span class="name">text</span>.<span class="name">length</span> <span class="operator">&lt;=</span> <span class="number">10</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

In the previous example,

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

topRect.width depends on bottomRect.width and column.width

.. raw:: html

   </li>

.. raw:: html

   <li>

topRect.height depends on column.height

.. raw:: html

   </li>

.. raw:: html

   <li>

bottomRect.color depends on myTextInput.text.length

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Syntactically, bindings are allowed to be of arbitrary complexity.
However, if a binding is overly complex - such as involving multiple
lines, or imperative loops - it could indicate that the binding is being
used for more than describing property relationships. Complex bindings
can reduce code performance, readability, and maintainability. It may be
a good idea to redesign components that have complex bindings, or at
least factor the binding out into a separate function.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-property-bindings-from-javascript">

Creating Property Bindings from JavaScript

.. raw:: html

   </h2>

.. raw:: html

   <p>

A property with a binding is automatically updated as necessary.
However, if the property is later assigned a static value from a
JavaScript statement, the binding will be removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Rectangle below initially ensures that its height is
always twice its width. However, when the space key is pressed, the
current value of width\*3 will be assigned to height as a static value.
After that, the height will remain fixed at this value, even if the
width changes. The assignment of the static value removes the binding.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: {
   <span class="name">height</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span>
   }
   }</pre>

.. raw:: html

   <p>

If the intention is to give the rectangle a fixed height and stop
automatic updates, then this is not a problem. However, if the intention
is to establish a new relationship between width and height, then the
new binding expression must be wrapped in the Qt.binding() function
instead:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: {
   <span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span> })
   }
   }</pre>

.. raw:: html

   <p>

Now, after the space key is pressed, the rectangle's height will
continue auto-updating to always be three times its width.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using this with Property Binding

.. raw:: html

   </h3>

.. raw:: html

   <p>

When creating a property binding from JavaScript, the this keyword can
be used to refer to the object which receives the binding. This is
helpful for resolving ambiguities with property names.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Component.onCompleted handler below is defined within
the scope of the Item. In this scope, width refers to the Item's width,
not the Rectangle's width. To bind the Rectangle's height to its own
width, the binding expression must explicitly refer to this.width (or
alternatively, rect.width):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">500</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">rect</span>.<span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> this.<span class="name">width</span> <span class="operator">*</span> <span class="number">2</span> })
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;rect.height = &quot;</span> <span class="operator">+</span> <span class="name">rect</span>.<span class="name">height</span>) <span class="comment">// prints 200, not 1000</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: The value of this is not defined outside of property bindings. See
JavaScript Environment Restrictions for details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-syntax-propertybinding.html -->
