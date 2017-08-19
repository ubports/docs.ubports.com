QtQuick.MouseEvent
==================

.. raw:: html

   <p>

Provides information about a mouse event More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MouseEvent -->

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

button : enumeration

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

wasHeld : bool

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

   <!-- $$$MouseEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The position of the mouse can be found via the x and y properties. The
button that caused the event is available via the button property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MouseEvent -->

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

Setting accepted to true prevents the mouse event from being propagated
to items below this item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Generally, if the item acts on the mouse event then it should be
accepted so that items lower in the stacking order do not also respond
to the same event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="button-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

button : enumeration

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

This property holds the button that caused the event. It can be one of:

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

   <!-- @@@button -->

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

This property holds the mouse buttons pressed when the event was
generated. For mouse move events, this is all buttons that are pressed
down. For mouse press and double click events this includes the button
that caused the event. For mouse release events this excludes the button
that caused the event.

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

For example, to react to a Shift key + Left mouse button click:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> ((<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">LeftButton</span>) <span class="operator">&amp;&amp;</span> (<span class="name">mouse</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">doSomething</span>();
   }
   }</pre>

.. raw:: html

   <!-- @@@modifiers -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wasHeld-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

wasHeld : bool

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

This property is true if the mouse button has been held pressed longer
the threshold (800ms).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wasHeld -->

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
mouse event.

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
mouse event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


