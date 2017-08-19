QtQuick.Behavior
================

.. raw:: html

   <p>

Defines a default animation for a property change More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Behavior -->

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

animation : Animation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Behavior-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Behavior defines the default animation to be applied whenever a
particular property value changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following Behavior defines a NumberAnimation to be run
whenever the Rectangle's width value changes. When the MouseArea is
clicked, the width is changed, triggering the behavior's animation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   Behavior on <span class="name">width</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">width</span> <span class="operator">=</span> <span class="number">50</span>
   }
   }</pre>

.. raw:: html

   <p>

Note that a property cannot have more than one assigned Behavior. To
provide multiple animations within a Behavior, use ParallelAnimation or
SequentialAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a state change has a Transition that matches the same property as a
Behavior, the Transition animation overrides the Behavior for that state
change. For general advice on using Behaviors to animate state changes,
see Using Qt Quick Behaviors with States.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick, Behavior example, and Qt
QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Behavior -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$animation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] animation : Animation

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

This property holds the animation to run when the behavior is triggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This property holds whether the behavior will be triggered when the
tracked property changes value.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default a Behavior is enabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->


