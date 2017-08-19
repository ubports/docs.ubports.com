QtQuick.MouseArea
=================

.. raw:: html

   <p>

Enables simple mouse handling More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MouseArea -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

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

acceptedButtons : Qt::MouseButtons

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

containsMouse : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

containsPress : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cursorShape : Qt::CursorShape

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

drag.target : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.axis : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.minimumX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.maximumX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.minimumY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.maximumY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.filterChildren : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.threshold : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hoverEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressedButtons : MouseButtons

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preventStealing : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

propagateComposedEvents : bool

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

canceled()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clicked(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

doubleClicked(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

entered()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exited()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionChanged(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressAndHold(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

released(MouseEvent mouse)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

wheel(WheelEvent wheel)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MouseArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A MouseArea is an invisible item that is typically used in conjunction
with a visible item in order to provide mouse handling for that item. By
effectively acting as a proxy, the logic for mouse handling can be
contained within a MouseArea item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The enabled property is used to enable and disable mouse handling for
the proxied item. When disabled, the mouse area becomes transparent to
mouse events.

.. raw:: html

   </p>

.. raw:: html

   <p>

The pressed read-only property indicates whether or not the user is
holding down a mouse button over the mouse area. This property is often
used in bindings between properties in a user interface. The
containsMouse read-only property indicates the presence of the mouse
cursor over the mouse area but, by default, only when a mouse button is
held down; see the containsMouse documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Information about the mouse position and button clicks are provided via
signals for which event handler properties are defined. The most
commonly used involved handling mouse presses and clicks: onClicked,
onDoubleClicked, onPressed, onReleased and onPressAndHold. It's also
possible to handle mouse wheel events via the onWheel signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a MouseArea overlaps with the area of other MouseArea items, you can
choose to propagate clicked, doubleClicked and pressAndHold events to
these other items by setting propagateComposedEvents to true and
rejecting events that should be propagated. See the
propagateComposedEvents documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, MouseArea items only report mouse clicks and not changes to
the position of the mouse cursor. Setting the hoverEnabled property
ensures that handlers defined for onPositionChanged, onEntered and
onExited are used and that the containsMouse property is updated even
when no mouse buttons are pressed.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example uses a MouseArea in a Rectangle that changes the
Rectangle color to red when clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: { <span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'red'</span> }
   }
   }</pre>

.. raw:: html

   <p>

Many MouseArea signals pass a mouse parameter that contains additional
information about the mouse event, such as the position, button, and any
key modifiers.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an extension of the previous example that produces a different
color when the area is right clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">RightButton</span>)
   <span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'blue'</span>;
   <span class="keyword">else</span>
   <span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'red'</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

See also MouseEvent, MouseArea example, and Important Concepts In Qt
Quick - User Input.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MouseArea -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acceptedButtons -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceptedButtons-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acceptedButtons : Qt::MouseButtons

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

This property holds the mouse buttons that the mouse area reacts to.

.. raw:: html

   </p>

.. raw:: html

   <p>

To specify that the MouseArea will react to multiple buttons,
Qt::MouseButtons flag values are combined using the "\|" (or) operator:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MouseArea { acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>LeftButton <span class="operator">|</span> <span class="type">Qt</span><span class="operator">.</span>RightButton }</pre>

.. raw:: html

   <p>

To indicate that all possible mouse buttons are to be accepted, the
special value 'Qt.AllButtons' may be used:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MouseArea { acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>AllButtons }</pre>

.. raw:: html

   <p>

The default value is Qt.LeftButton.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceptedButtons -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containsMouse-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

containsMouse : bool

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

This property holds whether the mouse is currently inside the mouse
area.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: This property is not updated if the area moves under the mouse:
containsMouse will not change. In addition, if hoverEnabled is false,
containsMouse will only be valid when the mouse is pressed while the
mouse cursor is inside the MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containsMouse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containsPress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

containsPress : bool

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

This is a convenience property equivalent to pressed && containsMouse,
i.e. it holds whether any of the acceptedButtons are currently pressed
and the mouse is currently within the MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is particularly useful for highlighting an item while the
mouse is pressed within its bounds.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pressed and containsMouse.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containsPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cursorShape-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cursorShape : Qt::CursorShape

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

This property holds the cursor shape for this mouse area. Note that on
platforms that do not display a mouse cursor this may have no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The available cursor shapes are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.ArrowCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.UpArrowCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.CrossCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.WaitCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.IBeamCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SizeVerCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SizeHorCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SizeBDiagCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SizeFDiagCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SizeAllCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.BlankCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SplitVCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.SplitHCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.PointingHandCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ForbiddenCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.WhatsThisCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.BusyCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.OpenHandCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.ClosedHandCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DragCopyCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DragMoveCursor

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DragLinkCursor

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In order to only set a mouse cursor shape for a region without reacting
to mouse events set the acceptedButtons to none:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MouseArea { cursorShape: <span class="type">Qt</span><span class="operator">.</span>IBeamCursor; acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>NoButton }</pre>

.. raw:: html

   <p>

The default value is Qt.ArrowCursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt::CursorShape.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cursorShape -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drag-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

drag group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.target : Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.active : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.axis-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.axis : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.minimumX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.minimumX : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.maximumX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.maximumX : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.minimumY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.minimumY : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.maximumY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.maximumY : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.filterChildren-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.filterChildren : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.threshold-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.threshold : real

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

drag provides a convenient way to make an item draggable.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

drag.target specifies the id of the item to drag.

.. raw:: html

   </li>

.. raw:: html

   <li>

drag.active specifies if the target item is currently being dragged.

.. raw:: html

   </li>

.. raw:: html

   <li>

drag.axis specifies whether dragging can be done horizontally
(Drag.XAxis), vertically (Drag.YAxis), or both (Drag.XAndYAxis)

.. raw:: html

   </li>

.. raw:: html

   <li>

drag.minimum and drag.maximum limit how far the target can be dragged
along the corresponding axes.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The following example displays a Rectangle that can be dragged along the
X-axis. The opacity of the rectangle is reduced when it is dragged to
the right.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="name">width</span>: <span class="number">600</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">opacity</span>: (<span class="number">600.0</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">x</span>) <span class="operator">/</span> <span class="number">600</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">rect</span>
   <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAxis</span>
   <span class="name">drag</span>.minimumX: <span class="number">0</span>
   <span class="name">drag</span>.maximumX: <span class="name">container</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">width</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Items cannot be dragged if they are anchored for the requested
drag.axis. For example, if anchors.left or anchors.right was set for
rect in the above example, it cannot be dragged along the X-axis. This
can be avoided by settng the anchor value to undefined in an onPressed
handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

If drag.filterChildren is set to true, a drag can override descendant
MouseAreas. This enables a parent MouseArea to handle drags, for
example, while descendants handle clicks:

.. raw:: html

   </p>

.. raw:: html

   <p>

drag.threshold determines the threshold in pixels of when the drag
operation should start. By default this is bound to a platform dependent
value. This property was added in Qt Quick 2.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

If drag.smoothed is true, the target will be moved only after the drag
operation has started. If set to false, the target will be moved
straight to the current mouse position. By default, this property is
true. This property was added in Qt Quick 2.4

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">480</span>
   <span class="name">height</span>: <span class="number">320</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">30</span>; <span class="name">y</span>: <span class="number">30</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">240</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">parent</span>;
   <span class="name">drag</span>.axis: <span class="string">&quot;XAxis&quot;</span>
   <span class="name">drag</span>.minimumX: <span class="number">30</span>
   <span class="name">drag</span>.maximumX: <span class="number">150</span>
   <span class="name">drag</span>.filterChildren: <span class="number">true</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span> : <span class="number">50</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked&quot;</span>)
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@drag -->

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

This property holds whether the item accepts mouse events.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Due to historical reasons, this property is not equivalent to
Item.enabled. It only affects mouse events, and its effect does not
propagate to child items.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hoverEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hoverEnabled : bool

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

This property holds whether hover events are handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, mouse events are only handled in response to a button event,
or when a button is pressed. Hover enables handling of all mouse events
even when no mouse button is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property affects the containsMouse property and the onEntered,
onExited and onPositionChanged signals.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hoverEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mouseX : real

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

These properties hold the coordinates of the mouse cursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the hoverEnabled property is false then these properties will only be
valid while a button is pressed, and will remain valid as long as the
button is held down even if the mouse is moved outside the area.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If hoverEnabled is true then these properties will be valid when:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

no button is pressed, but the mouse is within the MouseArea
(containsMouse is true).

.. raw:: html

   </li>

.. raw:: html

   <li>

a button is pressed and held, even if it has since moved out of the
area.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The coordinates are relative to the MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mouseY : real

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

These properties hold the coordinates of the mouse cursor.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the hoverEnabled property is false then these properties will only be
valid while a button is pressed, and will remain valid as long as the
button is held down even if the mouse is moved outside the area.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If hoverEnabled is true then these properties will be valid when:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

no button is pressed, but the mouse is within the MouseArea
(containsMouse is true).

.. raw:: html

   </li>

.. raw:: html

   <li>

a button is pressed and held, even if it has since moved out of the
area.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The coordinates are relative to the MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressed : bool

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

This property holds whether any of the acceptedButtons are currently
pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressedButtons-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressedButtons : MouseButtons

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

This property holds the mouse buttons currently pressed.

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

   <p>

The code below displays "right" when the right mouse buttons is pressed:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">mouseArea</span>.<span class="name">pressedButtons</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">RightButton</span> ? <span class="string">&quot;right&quot;</span> : <span class="string">&quot;&quot;</span>
   <span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
   <span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: this property only handles buttons specified in acceptedButtons.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also acceptedButtons.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressedButtons -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preventStealing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preventStealing : bool

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

This property holds whether the mouse events may be stolen from this
MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a MouseArea is placed within an item that filters child mouse events,
such as Flickable, the mouse events may be stolen from the MouseArea if
a gesture is recognized by the parent item, e.g. a flick gesture. If
preventStealing is set to true, no item will steal the mouse events.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that setting preventStealing to true once an item has started
stealing events will have no effect until the next press event.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preventStealing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="propagateComposedEvents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

propagateComposedEvents : bool

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

This property holds whether composed mouse events will automatically
propagate to other MouseAreas that overlap with this MouseArea but are
lower in the visual stacking order. By default, this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

MouseArea contains several composed events: clicked, doubleClicked and
pressAndHold. These are composed of basic mouse events, like pressed,
and can be propagated differently in comparison to basic events.

.. raw:: html

   </p>

.. raw:: html

   <p>

If propagateComposedEvents is set to true, then composed events will be
automatically propagated to other MouseAreas in the same location in the
scene. Each event is propagated to the next enabled MouseArea beneath it
in the stacking order, propagating down this visual hierarchy until a
MouseArea accepts the event. Unlike pressed events, composed events will
not be automatically accepted if no handler is present.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a yellow Rectangle that contains a blue Rectangle.
The blue rectangle is the top-most item in the hierarchy of the visual
stacking order; it will visually rendered above the yellow rectangle.
Since the blue rectangle sets propagateComposedEvents to true, and also
sets MouseEvent::accepted to false for all received clicked events, any
clicked events it receives are propagated to the MouseArea of the yellow
rectangle beneath it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked yellow&quot;</span>)
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">propagateComposedEvents</span>: <span class="number">true</span>
   <span class="name">onClicked</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked blue&quot;</span>)
   <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Clicking on the blue rectangle will cause the onClicked handler of its
child MouseArea to be invoked; the event will then be propagated to the
MouseArea of the yellow rectangle, causing its own onClicked handler to
be invoked.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property greatly simplifies the usecase of when you want to have
overlapping MouseAreas handling the composed events together. For
example: if you want one MouseArea to handle clicked signals and the
other to handle pressAndHold, or if you want one MouseArea to handle
clicked most of the time, but pass it through when certain conditions
are met.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@propagateComposedEvents -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$canceled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canceled-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

canceled()

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

This signal is emitted when mouse events have been canceled, either
because an event was not accepted, or because another item stole the
mouse event handling.

.. raw:: html

   </p>

.. raw:: html

   <p>

This signal is for advanced use: it is useful when there is more than
one MouseArea that is handling input, or when there is a MouseArea
inside a Flickable. In the latter case, if you execute some logic in the
onPressed signal handler and then start dragging, the Flickable will
steal the mouse handling from the MouseArea. In these cases, to reset
the logic when the MouseArea has lost the mouse handling to the
Flickable, canceled should be handled in addition to released.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCanceled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canceled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clicked(MouseEvent mouse)

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

This signal is emitted when there is a click. A click is defined as a
press followed by a release, both inside the MouseArea (pressing, moving
outside the MouseArea, and then moving back inside and releasing is also
considered a click).

.. raw:: html

   </p>

.. raw:: html

   <p>

The mouse parameter provides information about the click, including the
x and y position of the release of the click, and whether the click was
held.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, changing the accepted property of the mouse
parameter has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onClicked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="doubleClicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

doubleClicked(MouseEvent mouse)

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

This signal is emitted when there is a double-click (a press followed by
a release followed by a press). The mouse parameter provides information
about the click, including the x and y position of the release of the
click, and whether the click was held.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, if the accepted property of the mouse
parameter is set to false, the pressed/released/clicked signals will be
emitted for the second click; otherwise they are suppressed. The
accepted property defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDoubleClicked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@doubleClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="entered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

entered()

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

This signal is emitted when the mouse enters the mouse area.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this signal is only emitted if a button is currently pressed.
Set hoverEnabled to true to emit this signal even when no mouse button
is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEntered.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also hoverEnabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@entered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exited-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

exited()

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

This signal is emitted when the mouse exits the mouse area.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this signal is only emitted if a button is currently pressed.
Set hoverEnabled to true to emit this signal even when no mouse button
is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below shows a fairly typical relationship between two
MouseAreas, with mouseArea2 on top of mouseArea1. Moving the mouse into
mouseArea2 from mouseArea1 will cause mouseArea1 to emit the exited
signal.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea1</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   }
   <span class="type"><a href="index.html">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea2</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

If instead you give the two MouseAreas a parent-child relationship,
moving the mouse into mouseArea2 from mouseArea1 will not cause
mouseArea1 to emit exited. Instead, they will both be considered to be
simultaneously hovered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onExited.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also hoverEnabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exited -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionChanged(MouseEvent mouse)

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

This signal is emitted when the mouse position changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The mouse parameter provides information about the mouse, including the
x and y position, and any buttons currently pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this signal is only emitted if a button is currently pressed.
Set hoverEnabled to true to emit this signal even when no mouse button
is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, changing the accepted property of the mouse
parameter has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPositionChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positionChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressAndHold-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressAndHold(MouseEvent mouse)

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

This signal is emitted when there is a long press (currently 800ms). The
mouse parameter provides information about the press, including the x
and y position of the press, and which button is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, changing the accepted property of the mouse
parameter has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPressAndHold.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressAndHold -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressed(MouseEvent mouse)

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

This signal is emitted when there is a press. The mouse parameter
provides information about the press, including the x and y position and
which button was pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, use the accepted property of the mouse
parameter to control whether this MouseArea handles the press and all
future mouse events until release. The default is to accept the event
and not allow other MouseAreas beneath this one to handle the event. If
accepted is set to false, no further events will be sent to this
MouseArea until the button is next pressed.

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

released(MouseEvent mouse)

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

This signal is emitted when there is a release. The mouse parameter
provides information about the click, including the x and y position of
the release of the click, and whether the click was held.

.. raw:: html

   </p>

.. raw:: html

   <p>

When handling this signal, changing the accepted property of the mouse
parameter has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onReleased.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canceled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@released -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wheel-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

wheel(WheelEvent wheel)

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

This signal is emitted in response to both mouse wheel and trackpad
scroll gestures.

.. raw:: html

   </p>

.. raw:: html

   <p>

The wheel parameter provides information about the event, including the
x and y position, any buttons currently pressed, and information about
the wheel movement, including angleDelta and pixelDelta.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onWheel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wheel -->


