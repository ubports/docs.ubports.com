QtQuick.KeyEvent
================

.. raw:: html

   <p>

Provides information about a key event More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@KeyEvent -->

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isAutoRepeat : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

key : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modifiers : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nativeScanCode : quint32

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

bool matches(StandardKey key)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$KeyEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following changes the Item's state property when the
Enter key is pressed:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: { <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Enter</span>) <span class="name">state</span> <span class="operator">=</span> <span class="string">'ShowDetails'</span>; }
   }</pre>

.. raw:: html

   <!-- @@@KeyEvent -->

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

Setting accepted to true prevents the key event from being propagated to
the item's parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

Generally, if the item acts on the key event then it should be accepted
so that ancestor items do not also respond to the same event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

This property holds the number of keys involved in this event. If
KeyEvent::text is not empty, this is simply the length of the string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isAutoRepeat-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

isAutoRepeat : bool

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

This property holds whether this event comes from an auto-repeating key.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isAutoRepeat -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="key-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

key : int

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

This property holds the code of the key that was pressed or released.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Qt.Key for the list of keyboard codes. These codes are independent
of the underlying window system. Note that this function does not
distinguish between capital and non-capital letters; use the text
property for this purpose.

.. raw:: html

   </p>

.. raw:: html

   <p>

A value of either 0 or Qt.Key\_Unknown means that the event is not the
result of a known key; for example, it may be the result of a compose
sequence, a keyboard macro, or due to key event compression.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@key -->

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

For example, to react to a Shift key + Enter key combination:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> ((<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Enter</span>) <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
   <span class="name">doSomething</span>();
   }
   }</pre>

.. raw:: html

   <!-- @@@modifiers -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nativeScanCode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nativeScanCode : quint32

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

This property contains the native scan code of the key that was pressed.
It is passed through from QKeyEvent unchanged.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QKeyEvent::nativeScanCode().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nativeScanCode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

This property holds the Unicode text that the key generated. The text
returned can be an empty string in cases where modifier keys, such as
Shift, Control, Alt, and Meta, are being pressed or released. In such
cases key will contain a valid value

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$matches -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="matches-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool matches(StandardKey key)

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

Returns true if the key event matches the given standard key; otherwise
returns false.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">matches</span>(<span class="name">StandardKey</span>.<span class="name">Undo</span>))
   <span class="name">myModel</span>.<span class="name">undo</span>();
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">matches</span>(<span class="name">StandardKey</span>.<span class="name">Redo</span>))
   <span class="name">myModel</span>.<span class="name">redo</span>();
   }
   }</pre>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QKeySequence::StandardKey.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@matches -->


