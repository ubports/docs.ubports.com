Ubuntu.Components.Mouse
=======================

.. raw:: html

   <p>

Attached property filtering mouse events occured inside the owner.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Mouse -->

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

import Ubuntu.Components 1.3

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

clickAndHoldThreshold : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

forwardTo : list<Item>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hoverEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ignoreSynthesizedEvents : bool

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

onClicked(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onDoubleClicked(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onEntered(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onExited(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onPositionChanged(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onPressAndHold(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onPressed(MouseEvent event, Item host)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onReleased(MouseEvent event)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Mouse-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Sometimes we need to provide additional functionality on mouse events
beside a QML element's default behavior. Placing a MouseArea over a
component however will grab the mouse events from the component
underneath, no matter if we set preventStealing to false or not. Setting
mouse.accepted to false in onPressed would result in having the event
forwarded to the MouseArea's parent, however MouseArea will no longer
receive other mouse events.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">20</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">preventStealing</span>: <span class="number">false</span>
   <span class="comment">// do not accept event so it gets propagated to the parent item</span>
   <span class="name">onPressed</span>: <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">onReleased</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;this will not be printed&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Ubuntu UI Toolkit declares filter components similar to Keys, which can
be attached to any visual primitve. Mouse filter however will have
effect only when attached to items handling mouse events. Events are
handled through signals, where the event data is presented through the
mouse parameter. Events should be accepted if the propagation of those
to the owner is not wanted. This is not valid to onClicked,
onPressAndHold composed events.

.. raw:: html

   </p>

.. raw:: html

   <p>

The previous code sample using Mouse filter, which will print the
pressed and released mouse buttons would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">20</span>
   <span class="comment">// do not accept event so it gets propagated to the parent item</span>
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse button pressed: &quot;</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">button</span>)
   <span class="name">Mouse</span>.onReleased: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse button released: &quot;</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">button</span>)
   }</pre>

.. raw:: html

   <p>

The event details are reported in the mouse parameter, of MouseEvent
type, which extends QtQuick's MouseEvent with additional properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The filter will accept the same mouse buttons the owner accepts, and
will accept hover events if the owner does. However it is not possible
to alter these settings through the filter. If button handling other
than the default ones specified for the primitive is required,
MouseAreas can be declared to handle those events.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of handling right button clicks over a TextInput:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">20</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">RightButton</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;right button clicked&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

In this example left and middle mouse button clicks will reach TextInput
as MouseArea only grabs right button events.

.. raw:: html

   </p>

.. raw:: html

   <p>

Mouse filter can be used in combination with MouseArea, where the filter
brings additional functionality on top of existing primitive
functionality, and MouseArea add new functionality to the primitive.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">20</span>
   <span class="comment">// do not accept event so it gets propagated to the parent item</span>
   <span class="name">Mouse</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">===</span> <span class="name">Qt</span>.<span class="name">LeftButton</span>) {
   <span class="comment">// do something</span>
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">RightButton</span>
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;right button clicked&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

As mentioned, mouse filters can be attached to any visual item.
Attaching it to items that do not handle any mouse events will not have
any effect. However child items which handle mouse events can forward
the events they handle to their parent. In this way mouse events will
land in these items too, and mouse filter attached to those can also
handle the event. This is useful when creating custom types where the
mouse handling item is nested into a non-mouse handling one, and we want
to provide additional filtering possibility to the user. These type of
items are called proxy handlers.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">top</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse received from input&quot;</span>)
   <span class="type">TextItem</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">Mouse</span>.forvardTo: [<span class="name">top</span>]
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;pressed over input&quot;</span>)
   <span class="name">Mouse</span>.onPressAndHold: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;longpress handled here&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

In this example the mouse press is first handled by the mouse filter
attached to TextInput, then it is forwarded to the top item and finally
to the TextInput. Accepting the mouse event will stop propagation to the
top item as well as to the TextInput. The topmost item itself does not
handle mouse events, therefore it will be a sinple proxy handler item.
However, proxies can themself handle mouse events. Therefore each mouse
event signal has the host parameter specifying the sender of the mouse
event reported.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The forwarded events are handled in the proxy handlers only if the
mouse position points inside their area. If the forwarded mouse position
falls outside the target area, the event will not be reported, however
will be forwarded further to the items in the list. In the following
example the mouse press in red rectangle will be printed as well as the
proxied mouse press from the main item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">main</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;got the mouse press forwarded by &quot;</span> <span class="operator">+</span> <span class="name">host</span>.<span class="name">objectName</span>)
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">blueRect</span>
   <span class="name">objectName</span>: <span class="string">&quot;BlueRect&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">Mouse</span>.forwardTo: [<span class="name">main</span>]
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This should not be printed&quot;</span>)
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">objectName</span>: <span class="string">&quot;RedRect&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">Mouse</span>.forwardTo: [<span class="name">blueRect</span>]
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Pressed in &quot;</span> <span class="operator">+</span> <span class="name">host</span>.<span class="name">objectName</span>)
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

An interesting feature that can be achieved using Mouse filter is the
event "transparency" towards the MouseArea lying behind the items which
handle mouse events. This means for example that by forwarding mouse
events occurred on a TextInput to a MouseArea that stays behind it in
the item hierarchy, the MouseArea will also get all the events occurred
on the area covered by the TextInput, acting like it would be above the
TextInput. However, due to the nature of the MouseArea event acceptance
policy (all events are accepted by default) TextInput will not get these
mouse events unless we set the accepted field of the mouse event to
false in MouseArea. This normally leads to the MouseArea no longer
getting further mouse events. However, Mouse filter will continue to
forward other mouse events to the MouseArea, so setting accepted to
false in onPressed, onReleased will not have the default effect. This is
only valid to press and release events, double-click or mouse position
change will be blocked by the MouseArea still.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">topArea</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   <span class="name">onPressed</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;forwarded pressed&quot;</span>)
   <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
   }
   <span class="name">onReleased</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;released&quot;</span>)
   <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
   }
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">Mouse</span>.forwardTo: [<span class="name">topArea</span>]
   <span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;input pressed&quot;</span>)
   <span class="name">Mouse</span>.onReleased: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;input released&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Mouse filter provides ability to control the order of the event
dispatching. The filter can receive the events prior the owner or after
the owner. This can be controlled through the priority property. In the
following example we make sure the TextInput always receives the events
before the filter:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">id</span>: <span class="name">input</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">activeFocusOnPress</span>: <span class="number">true</span>
   <span class="name">Mouse</span>.prority: <span class="name">Mouse</span>.<span class="name">AfterItem</span>
   <span class="name">Mouse</span>.onPressed: <span class="keyword">if</span> (<span class="name">input</span>.<span class="name">activeFocus</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Text input already handled it&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Another feature of the mouse filters is the ability to restrict when the
composed events like onClicked and onPressAndHold should be triggered.
By default these events are triggered no matter what is the distance
between the mouse pressed position and the current position after a
certain timeout (for onPressAndHold) or upon mouse release (for
onClicked). In this way the onClicked will be emitted even if the user
presses the mouse at the left-top edge of the component, then moves it
to the right-bottom corner and releases it. This may not be the
preferred behavior on certain components (like TextInput). Therefore
MouseFilter provides a property which can alter this behavior, the
clickAndHoldThreshold. This property specifies the radius of the area
the up-mentioned composed events are emitted during a mouse move.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">activeFocusOnPress</span>: <span class="number">true</span>
   <span class="name">selectByMouse</span>: <span class="number">true</span>
   <span class="comment">// emit composed events only if the mouse moves within 2 GU radius area</span>
   <span class="name">Mouse</span>.clickAndHoldThreshold: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">Mouse</span>.onClicked: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;click happened within threshold value&quot;</span>)
   <span class="name">Mouse</span>.onPressAndHold: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;pressAndHold happened within threshold value&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Similar functionality for the case when the mouse event occurs outside
of the owner is brought by the InverseMouse attached property.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="mouse-events-synthesis">

Mouse events synthesis

.. raw:: html

   </h2>

.. raw:: html

   <p>

QtQuick automatically creates artificial mouse events whenever a scene
receives touch events that are not consumed by any item (either by using
MultiPointTouchArea or a custom C++ item). The Mouse filter provides the
possibility to ignore synthesized mouse events by enabling the
ignoreSynthesizedEvents property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is really useful when, while developing a convergent application,
the app developer wants to avoid triggering the hovering logic using a
touchscreen, but still be able to handle the hover events when using a
mouse, and at the same time doesn't want to stop the mouse and touch
events from propagating to items underneath the MouseArea which handles
the hovering. The following is an example of how that functionaly can be
implemented:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"> <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">proximityArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">propagateComposedEvents</span>: <span class="number">true</span>
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   <span class="comment">//We use a separate variable to detect whether the area contains</span>
   <span class="comment">//a mouse, because MouseArea's containsMouse is true even when</span>
   <span class="comment">//tapping on it using a touchscreen (due to the touch events being</span>
   <span class="comment">//converted to mouse events if no item consumes them).</span>
   property <span class="type">bool</span> <span class="name">containsPointerDevice</span>: <span class="number">false</span>
   <span class="comment">//handle hover events using the Mouse filter instead of MouseArea, so that</span>
   <span class="comment">//we can ignore synthesized mouse events and not trigger hover logic when the</span>
   <span class="comment">//user is interacting with the app using a touch device.</span>
   <span class="name">Mouse</span>.ignoreSynthesizedEvents: <span class="number">true</span>
   <span class="name">Mouse</span>.onEntered: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;ONLY A MOUSE CAN TRIGGER THIS SLOT&quot;</span>)
   <span class="name">proximityArea</span>.<span class="name">containsPointerDevice</span> <span class="operator">=</span> <span class="number">true</span>
   }
   <span class="name">Mouse</span>.onExited: <span class="name">proximityArea</span>.<span class="name">containsPointerDevice</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="comment">//let mouse and touch events propagate underneath the mouse area</span>
   <span class="name">onPressed</span>: <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
   }</pre>

.. raw:: html

   <!-- @@@Mouse -->

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

[read-only] acceptedButtons : Qt::MouseButtons

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

The property holds the accepted mouse buttons of the owner.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceptedButtons -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clickAndHoldThreshold-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

clickAndHoldThreshold : int

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

The property holds the radius of the tolerance area the mouse can move
in both x and y axis when the mouse is pressed, during which the
composed events such as onClicked and onPressAndHold will still be
emitted. If the mouse is moved out of this area while the button is
pressed, no composed events will be emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

When this value is 0, the signals will be emitted as in MouseArea,
meaning the composed events will come until the mouse is moved inside
the owner's area.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The value has no effect for the forwarded events. The threshold is
only valid when the host handles mouse events.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clickAndHoldThreshold -->

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

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="forwardTo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

forwardTo : list<Item>

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

The property provides a way to forward mouse presses, releases, moves
and double click events to other items. This can be useful when you want
other items to handle different parts of the same mouse event or to
handle other mouse events.

.. raw:: html

   </p>

.. raw:: html

   <p>

The items listed will receive the event only if the mouse event falls
into their area. Once an item that has forwarded mouse events accepts
the event, that will no longer be delivered to the rest of the items in
the list. This rule is also applied on the owner when the priority is
set to BeforeItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@forwardTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hoverEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] hoverEnabled : bool

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

The property reports whether the owner accepts hover events or not. When
events are accepted onEntered, onPositionChanged and onExited signals
containing the mouse cursor position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hoverEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ignoreSynthesizedEvents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ignoreSynthesizedEvents : bool

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

This property controls how the filter handles the mouse events
synthesized by Qt (e.g. the artificial mouse events created when an
original touch event is not consumed by any Item in the scene).

.. raw:: html

   </p>

.. raw:: html

   <p>

If the value is true, the filter will ignore the synthesized mouse
events.

.. raw:: html

   </p>

.. raw:: html

   <p>

More info at Mouse events synthesis.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ignoreSynthesizedEvents -->

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

The property specifies the event dispach relation between the filter,
the elements the event is forwarded to and the owner. Similar to Keys'
priority property, the event dispach is performed in two ways: berfore
(BeforeItem) or after (AfterItem) the owner receives the events.

.. raw:: html

   </p>

.. raw:: html

   <p>

When BeforeItem is set the event dispach happens based as follows:

.. raw:: html

   </p>

.. raw:: html

   <ol class="i">

.. raw:: html

   <li>

the event is handled by the mouse filter

.. raw:: html

   </li>

.. raw:: html

   <li>

if there are items listed in forwardTo property, the event will be
forwarded to those items

.. raw:: html

   </li>

.. raw:: html

   <li>

the event is handed over the owner.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

When AfterItem is set the event dispach happens based as follows:

.. raw:: html

   </p>

.. raw:: html

   <ol class="i">

.. raw:: html

   <li>

the event is handed over the owner;

.. raw:: html

   </li>

.. raw:: html

   <li>

the event is handled by the mouse filter;

.. raw:: html

   </li>

.. raw:: html

   <li>

if there are items listed in forwardTo property, the event will be
forwarded to those items.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

The default value is BeforeItem.

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

   <!-- $$$onClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onClicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onClicked(MouseEvent event)

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

The signal reports the mouse click. The signal is not emitted if the
onPressAndHold got triggered or if onDoubleClicked is handled (a slot is
connected to it). The host specifies the item that triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onDoubleClicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onDoubleClicked(MouseEvent event)

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

The signal reports mouse double click. The host specifies the item that
triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onDoubleClicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onEntered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onEntered(MouseEvent event)

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

The signal reports that the mouse has entered into the area. The signal
is emitted when the hover events are enabled and the mouse enters the
area or when one of the accepted mouse button is pressed. The host
specifies the item that triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onEntered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onExited-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onExited(MouseEvent event)

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

The signal reports that the mouse has left the area. The signal is
emitted when the hover events are enabled for the owner or if not, when
one of the accepted button is released. The host specifies the item that
triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onExited -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onPositionChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onPositionChanged(MouseEvent event)

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

The signal reports the mouse pointer position change. If the hover
events are enabled for the owner, the signal will come continuously.
Otherwise the position chanes are reported when one of the accepted
mouse buttons are being kept pressed. The host specifies the item that
triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onPositionChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onPressAndHold-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onPressAndHold(MouseEvent event)

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

The signal reports the mouse press and hold. The host specifies the item
that triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onPressAndHold -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onPressed(MouseEvent event, Item host)

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

The signal reports the mouse press. The host specifies the item that
triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onReleased-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onReleased(MouseEvent event)

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

The signal reports the mouse release. The host specifies the item that
triggered the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onReleased -->


