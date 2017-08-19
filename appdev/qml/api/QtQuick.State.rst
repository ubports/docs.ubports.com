QtQuick.State
=============

.. raw:: html

   <p>

Defines configurations of objects and properties More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@State -->

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

changes : list<Change>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extend : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

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

   <!-- $$$State-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A state is a set of batched changes from the default configuration.

.. raw:: html

   </p>

.. raw:: html

   <p>

All items have a default state that defines the default configuration of
objects and property values. New states can be defined by adding State
items to the states property to allow items to switch between different
configurations. These configurations can, for example, be used to apply
different sets of property values or execute different scripts.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example displays a single Rectangle. In the default state,
the rectangle is colored black. In the "clicked" state, a
PropertyChanges object changes the rectangle's color to red. Clicking
within the MouseArea toggles the rectangle's state between the default
state and the "clicked" state, thus toggling the color of the rectangle
between black and red.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">myRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">'clicked'</span> ? <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span> : <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'clicked'</span>;
   }
   <span class="name">states</span>: [
   <span class="type"><a href="index.html">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;clicked&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   }
   ]
   }</pre>

.. raw:: html

   <p>

Notice the default state is referred to using an empty string ("").

.. raw:: html

   </p>

.. raw:: html

   <p>

States are commonly used together with Transitions to provide animations
when state changes occur.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting the state of an object from within another state of the
same object is not allowed.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also States example, Qt Quick States, Transitions, and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@State -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$changes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="changes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] changes : list<Change>

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

This property holds the changes to apply for this state

.. raw:: html

   </p>

.. raw:: html

   <p>

By default these changes are applied against the default state. If the
state extends another state, then the changes are applied against the
state being extended.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@changes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extend-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extend : string

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

This property holds the state that this state extends.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a state extends another state, it inherits all the changes of that
state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The state being extended is treated as the base state in regards to the
changes specified by the extending state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extend -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of the state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each state should have a unique name within its item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

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

This property holds when the state should be applied.

.. raw:: html

   </p>

.. raw:: html

   <p>

This should be set to an expression that evaluates to true when you want
the state to be applied. For example, the following Rectangle changes in
and out of the "hidden" state when the MouseArea is pressed:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">myRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;hidden&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">opacity</span>: <span class="number">0</span> }
   }
   }</pre>

.. raw:: html

   <p>

If multiple states in a group have when clauses that evaluate to true at
the same time, the first matching state will be applied. For example, in
the following snippet state1 will always be selected rather than state2
when sharedCondition becomes true.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">states</span>: [
   <span class="type"><a href="index.html">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>; <span class="name">when</span>: <span class="name">sharedCondition</span> },
   <span class="type"><a href="index.html">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state2&quot;</span>; <span class="name">when</span>: <span class="name">sharedCondition</span> }
   ]
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <!-- @@@when -->


