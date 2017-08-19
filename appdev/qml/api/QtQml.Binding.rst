QtQml.Binding
=============

.. raw:: html

   <p>

Enables the arbitrary creation of property bindings More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Binding -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml 2.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

property : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : any

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

when : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Binding-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <h2 id="binding-to-an-inaccessible-property">

Binding to an Inaccessible Property

.. raw:: html

   </h2>

.. raw:: html

   <p>

Sometimes it is necessary to bind to a property of an object that wasn't
directly instantiated by QML - generally a property of a class exported
to QML by C++. In these cases, regular property binding doesn't work.
Binding allows you to bind any value to any property.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, imagine a C++ application that maps an "app.enteredText"
property into QML. You could use Binding to update the enteredText
property like this.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TextEdit { id: myTextField; text: <span class="string">&quot;Please type here...&quot;</span> }
   Binding { target: app; property: <span class="string">&quot;enteredText&quot;</span>; value: myTextField<span class="operator">.</span>text }</pre>

.. raw:: html

   <p>

Whenever the text in the TextEdit is updated, the C++ property will be
updated also.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="single-branch-conditional-binding">

"Single-branch" conditional binding

.. raw:: html

   </h2>

.. raw:: html

   <p>

In some circumstances you may want to control the value of a property
only when a certain condition is true (and relinquish control in all
other circumstances). This often isn't possible to accomplish with a
direct binding, as you need to supply values for all possible branches.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// produces warning: &quot;Unable to assign [undefined] to double value&quot;</span>
   value: <span class="keyword">if</span> (mouse<span class="operator">.</span>pressed) mouse<span class="operator">.</span>mouseX</pre>

.. raw:: html

   <p>

The above example will produce a warning whenever we release the mouse,
as the value of the binding is undefined when the mouse isn't pressed.
We can use the Binding type to rewrite the above code and avoid the
warning.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Binding on value {
   when: mouse<span class="operator">.</span>pressed
   value: mouse<span class="operator">.</span>mouseX
   }</pre>

.. raw:: html

   <p>

The Binding type will also restore any previously set direct bindings on
the property. In that sense, it functions much like a simplified State.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// this is equivalent to the above Binding</span>
   <span class="type"><a href="QtQml.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;pressed&quot;</span>
   <span class="name">when</span>: <span class="name">mouse</span>.<span class="name">pressed</span>
   <span class="type">PropertyChanges</span> {
   <span class="name">target</span>: <span class="name">obj</span>
   <span class="name">value</span>: <span class="name">mouse</span>.<span class="name">mouseX</span>
   }
   }</pre>

.. raw:: html

   <p>

If the binding target or binding property is changed, the bound value is
immediately pushed onto the new target.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Binding -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$property -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

property : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property to be updated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@property -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Object

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The object to be updated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : any

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The value to be set on the target object and property. This can be a
constant (which isn't very useful), or a bound expression.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="when-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

when : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds when the binding is active. This should be set to an
expression that evaluates to true when you want the binding to be
active.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Binding {
   target: contactName; property: <span class="char">'text'</span>
   value: name; when: list<span class="operator">.</span>ListView<span class="operator">.</span>isCurrentItem
   }</pre>

.. raw:: html

   <p>

When the binding becomes inactive again, any direct bindings that were
previously set on the property will be restored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@when -->


