QtQuick.WheelEvent
==================

.. raw:: html

   <p>

Provides information about a mouse wheel event More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WheelEvent -->

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

accepted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

angleDelta : point

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

buttons : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modifiers : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pixelDelta : point

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$WheelEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The position of the mouse can be found via the x and y properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WheelEvent -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accepted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accepted : bool

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

Setting accepted to true prevents the wheel event from being propagated
to items below this item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Generally, if the item acts on the wheel event then it should be
accepted so that items lower in the stacking order do not also respond
to the same event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angleDelta-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angleDelta : point

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

This property holds the distance that the wheel is rotated in wheel
degrees. The x and y cordinate of this property holds the delta in
horizontal and vertical orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

A positive value indicates that the wheel was rotated up/right; a
negative value indicates that the wheel was rotated down/left.

.. raw:: html

   </p>

.. raw:: html

   <p>

Most mouse types work in steps of 15 degrees, in which case the delta
value is a multiple of 120; i.e., 120 units \* 1/8 = 15 degrees.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angleDelta -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="buttons-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

buttons : int

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

This property holds the mouse buttons pressed when the wheel event was
generated.

.. raw:: html

   </p>

.. raw:: html

   <p>

It contains a bitwise combination of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftButton

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightButton

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.MiddleButton

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@buttons -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modifiers-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

modifiers : int

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

This property holds the keyboard modifier flags that existed immediately
before the event occurred.

.. raw:: html

   </p>

.. raw:: html

   <p>

It contains a bitwise combination of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.NoModifier - No modifier key is pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ShiftModifier - A Shift key on the keyboard is pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ControlModifier - A Ctrl key on the keyboard is pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.AltModifier - An Alt key on the keyboard is pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.MetaModifier - A Meta key on the keyboard is pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.KeypadModifier - A keypad button is pressed.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, to react to a Control key pressed during the wheel event:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">onWheel</span>: {
   <span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ControlModifier</span>) {
   <span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">zoomIn</span>();
   <span class="keyword">else</span>
   <span class="name">zoomOut</span>();
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@modifiers -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pixelDelta-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pixelDelta : point

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

This property holds the delta in screen pixels and is available in
plataforms that have high-resolution trackpads, such as Mac OS X. The x
and y cordinate of this property holds the delta in horizontal and
vertical orientation. The value should be used directly to scroll
content on screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

For platforms without high-resolution trackpad support, pixelDelta will
always be (0,0), and angleDelta should be used instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pixelDelta -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : int

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

These properties hold the coordinates of the position supplied by the
wheel event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : int

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

These properties hold the coordinates of the position supplied by the
wheel event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


