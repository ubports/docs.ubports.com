QtQuick.Keys
============

.. raw:: html

   <p>

Provides key handling to Items More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Keys -->

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

forwardTo : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

priority : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

asteriskPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backtabPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

callPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cancelPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context1Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context2Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context3Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context4Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

deletePressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit0Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit1Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit2Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit3Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit4Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit5Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit6Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit7Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit8Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digit9Pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enterPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

escapePressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flipPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hangupPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

leftPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

menuPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

noPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

released(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

returnPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rightPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacePressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tabPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

upPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

volumeDownPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

volumeUpPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

yesPressed(KeyEvent event)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Keys-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

All visual primitives support key handling via the Keys attached
property. Keys can be handled via the onPressed and onReleased signal
properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The signal properties have a KeyEvent parameter, named event which
contains details of the event. If a key is handled event.accepted should
be set to true to prevent the event from propagating up the item
hierarchy.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how the general onPressed handler can be
used to test for a certain key; in this case, the left cursor key:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>);
   <span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Some keys may alternatively be handled via specific signal properties,
for example onSelectPressed. These handlers automatically set
event.accepted to true.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onLeftPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>)
   }</pre>

.. raw:: html

   <p>

See Qt.Key for the list of keyboard codes.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="key-handling-priorities">

Key Handling Priorities

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Keys attached property can be configured to handle key events before
or after the item it is attached to. This makes it possible to intercept
events in order to override an item's default behavior, or act as a
fallback for keys not handled by the item.

.. raw:: html

   </p>

.. raw:: html

   <p>

If priority is Keys.BeforeItem (default) the order of key event
processing is:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Items specified in forwardTo

.. raw:: html

   </li>

.. raw:: html

   <li>

specific key handlers, e.g. onReturnPressed

.. raw:: html

   </li>

.. raw:: html

   <li>

onPressed, onReleased handlers

.. raw:: html

   </li>

.. raw:: html

   <li>

Item specific key handling, e.g. TextInput key handling

.. raw:: html

   </li>

.. raw:: html

   <li>

parent item

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

If priority is Keys.AfterItem the order of key event processing is:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Item specific key handling, e.g. TextInput key handling

.. raw:: html

   </li>

.. raw:: html

   <li>

Items specified in forwardTo

.. raw:: html

   </li>

.. raw:: html

   <li>

specific key handlers, e.g. onReturnPressed

.. raw:: html

   </li>

.. raw:: html

   <li>

onPressed, onReleased handlers

.. raw:: html

   </li>

.. raw:: html

   <li>

parent item

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

If the event is accepted during any of the above steps, key propagation
stops.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also KeyEvent and KeyNavigation attached property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Keys -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$enabled -->

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

This flags enables key handling if true (default); otherwise no key
handlers will be called.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="forwardTo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

forwardTo : list<Object>

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

This property provides a way to forward key presses, key releases, and
keyboard input coming from input methods to other items. This can be
useful when you want one item to handle some keys (e.g. the up and down
arrow keys), and another item to handle other keys (e.g. the left and
right arrow keys). Once an item that has been forwarded keys accepts the
event it is no longer forwarded to items later in the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example forwards key events to two lists:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">list1</span>
   <span class="comment">// ...</span>
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">list2</span>
   <span class="comment">// ...</span>
   }
   <span class="name">Keys</span>.forwardTo: [<span class="name">list1</span>, <span class="name">list2</span>]
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

To see the order in which events are received when using forwardTo, see
Key Handling Priorities.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@forwardTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="priority-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

priority : enumeration

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

This property determines whether the keys are processed before or after
the attached item's own key handling.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Keys.BeforeItem (default) - process the key events before normal item
key processing. If the event is accepted it will not be passed on to the
item.

.. raw:: html

   </li>

.. raw:: html

   <li>

Keys.AfterItem - process the key events after normal item key handling.
If the item accepts the key event it will not be handled by the Keys
attached property handler.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Key Handling Priorities.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@priority -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$asteriskPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asteriskPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

asteriskPressed(KeyEvent event)

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

This signal is emitted when the Asterisk '\*' has been pressed. The
event parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onAsteriskPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asteriskPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

backPressed(KeyEvent event)

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

This signal is emitted when the Back key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onBackPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backtabPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

backtabPressed(KeyEvent event)

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

This signal is emitted when the Shift+Tab key combination (Backtab) has
been pressed. The event parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onBacktabPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backtabPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="callPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

callPressed(KeyEvent event)

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

This signal is emitted when the Call key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCallPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@callPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelPressed(KeyEvent event)

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

This signal is emitted when the Cancel key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCancelPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context1Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

context1Pressed(KeyEvent event)

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

This signal is emitted when the Context1 key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onContext1Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context1Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context2Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

context2Pressed(KeyEvent event)

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

This signal is emitted when the Context2 key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onContext2Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context2Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context3Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

context3Pressed(KeyEvent event)

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

This signal is emitted when the Context3 key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onContext3Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context3Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context4Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

context4Pressed(KeyEvent event)

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

This signal is emitted when the Context4 key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onContext4Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context4Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="deletePressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

deletePressed(KeyEvent event)

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

This signal is emitted when the Delete key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDeletePressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@deletePressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit0Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit0Pressed(KeyEvent event)

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

This signal is emitted when the digit '0' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit0Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit0Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit1Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit1Pressed(KeyEvent event)

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

This signal is emitted when the digit '1' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit1Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit1Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit2Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit2Pressed(KeyEvent event)

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

This signal is emitted when the digit '2' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit2Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit2Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit3Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit3Pressed(KeyEvent event)

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

This signal is emitted when the digit '3' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit3Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit3Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit4Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit4Pressed(KeyEvent event)

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

This signal is emitted when the digit '4' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit4Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit4Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit5Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit5Pressed(KeyEvent event)

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

This signal is emitted when the digit '5' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit5Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit5Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit6Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit6Pressed(KeyEvent event)

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

This signal is emitted when the digit '6' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit6Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit6Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit7Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit7Pressed(KeyEvent event)

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

This signal is emitted when the digit '7' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit7Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit7Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit8Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit8Pressed(KeyEvent event)

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

This signal is emitted when the digit '8' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit8Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit8Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digit9Pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digit9Pressed(KeyEvent event)

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

This signal is emitted when the digit '9' has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigit9Pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digit9Pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

downPressed(KeyEvent event)

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

This signal is emitted when the Down arrow has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDownPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enterPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

enterPressed(KeyEvent event)

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

This signal is emitted when the Enter key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEnterPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enterPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="escapePressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

escapePressed(KeyEvent event)

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

This signal is emitted when the Escape key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEscapePressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@escapePressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flipPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flipPressed(KeyEvent event)

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

This signal is emitted when the Flip key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFlipPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flipPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hangupPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

hangupPressed(KeyEvent event)

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

This signal is emitted when the Hangup key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onHangupPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hangupPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="leftPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

leftPressed(KeyEvent event)

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

This signal is emitted when the Left arrow has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLeftPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@leftPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="menuPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

menuPressed(KeyEvent event)

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

This signal is emitted when the Menu key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMenuPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@menuPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="noPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

noPressed(KeyEvent event)

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

This signal is emitted when the No key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onNoPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@noPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressed(KeyEvent event)

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

This signal is emitted when a key has been pressed. The event parameter
provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="released-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

released(KeyEvent event)

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

This signal is emitted when a key has been released. The event parameter
provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onReleased.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@released -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="returnPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

returnPressed(KeyEvent event)

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

This signal is emitted when the Return key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onReturnPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@returnPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rightPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rightPressed(KeyEvent event)

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

This signal is emitted when the Right arrow has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onRightPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rightPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

selectPressed(KeyEvent event)

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

This signal is emitted when the Select key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onSelectPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spacePressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

spacePressed(KeyEvent event)

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

This signal is emitted when the Space key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onSpacePressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacePressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tabPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

tabPressed(KeyEvent event)

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

This signal is emitted when the Tab key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onTabPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tabPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="upPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

upPressed(KeyEvent event)

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

This signal is emitted when the Up arrow has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onUpPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@upPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="volumeDownPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

volumeDownPressed(KeyEvent event)

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

This signal is emitted when the VolumeDown key has been pressed. The
event parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onVolumeDownPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volumeDownPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="volumeUpPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

volumeUpPressed(KeyEvent event)

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

This signal is emitted when the VolumeUp key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onVolumeUpPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volumeUpPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="yesPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

yesPressed(KeyEvent event)

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

This signal is emitted when the Yes key has been pressed. The event
parameter provides information about the event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onYesPressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@yesPressed -->


