QtQuick.PropertyChanges
=======================

.. raw:: html

   <p>

Describes new property bindings or values for a state More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyChanges -->

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

import QtQuick 2.4

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

explicit : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

restoreEntryValues : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PropertyChanges-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PropertyChanges is used to define the property values or bindings in a
State. This enables an item's property values to be changed when it
changes between states.

.. raw:: html

   </p>

.. raw:: html

   <p>

To create a PropertyChanges object, specify the target item whose
properties are to be modified, and define the new property values or
bindings. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;resized&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="index.html">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">height</span>: <span class="name">container</span>.<span class="name">height</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

When the mouse is pressed, the Rectangle changes to the resized state.
In this state, the PropertyChanges object sets the rectangle's color to
blue and the height value to that of container.height.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note this automatically binds rect.height to container.height in the
resized state. If a property binding should not be established, and the
height should just be set to the value of container.height at the time
of the state change, set the explicit property to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

A PropertyChanges object can also override the default signal handler
for an object to implement a signal handler specific to the new state:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">myMouseArea</span>
   <span class="name">onClicked</span>: <span class="name">doSomethingDifferent</span>()
   }</pre>

.. raw:: html

   <p>

Note: PropertyChanges can be used to change anchor margins, but not
other anchor values; use AnchorChanges for this instead. Similarly, to
change an Item's parent value, use ParentChange instead.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Resetting property values

.. raw:: html

   </h3>

.. raw:: html

   <p>

The undefined value can be used to reset the property value for a state.
In the following example, when myText changes to the widerText state,
its width property is reset, giving the text its natural width and
displaying the whole string on a single line.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">myText</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">text</span>: <span class="string">&quot;a text string that is longer than 50 pixels&quot;</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;widerText&quot;</span>
   <span class="type"><a href="index.html">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myText</span>; <span class="name">width</span>: <span class="name">undefined</span> }
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">myText</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;widerText&quot;</span>
   }
   }</pre>

.. raw:: html

   <h3>

Immediate property changes in transitions

.. raw:: html

   </h3>

.. raw:: html

   <p>

When Transitions are used to animate state changes, they animate
properties from their values in the current state to those defined in
the new state (as defined by PropertyChanges objects). However, it is
sometimes desirable to set a property value immediately during a
Transition, without animation; in these cases, the PropertyAction type
can be used to force an immediate property change.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the PropertyAction documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The visible and enabled properties of Item do not behave exactly
the same as other properties in PropertyChanges. Since these properties
can be changed implicitly through their parent's state, they should be
set explicitly in all PropertyChanges. An item will still not be
enabled/visible if one of its parents is not enabled or visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also States example, Qt Quick States, and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyChanges -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$explicit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="explicit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

explicit : bool

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

If explicit is set to true, any potential bindings will be interpreted
as once-off assignments that occur when the state is entered.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, the addition of explicit prevents myItem.width
from being bound to parent.width. Instead, it is assigned the value of
parent.width at the time of the state change.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">myItem</span>
   <span class="name">explicit</span>: <span class="number">true</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   }</pre>

.. raw:: html

   <p>

By default, explicit is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@explicit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="restoreEntryValues-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

restoreEntryValues : bool

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

This property holds whether the previous values should be restored when
leaving the state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true. Setting this value to false creates a
temporary state that has permanent effects on property values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@restoreEntryValues -->

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

This property holds the object which contains the properties to be
changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->


