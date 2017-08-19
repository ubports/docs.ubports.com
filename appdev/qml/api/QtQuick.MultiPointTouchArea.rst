QtQuick.MultiPointTouchArea
===========================

.. raw:: html

   <p>

Enables handling of multiple touch points More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MultiPointTouchArea -->

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

maximumTouchPoints : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumTouchPoints : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchPoints : list<TouchPoint>

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

canceled(list<TouchPoint> touchPoints)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gestureStarted(GestureEvent gesture)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed(list<TouchPoint> touchPoints)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

released(list<TouchPoint> touchPoints)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchUpdated(list<TouchPoint> touchPoints)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

updated(list<TouchPoint> touchPoints)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MultiPointTouchArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A MultiPointTouchArea is an invisible item that is used to track
multiple touch points.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Item::enabled property is used to enable and disable touch handling.
When disabled, the touch area becomes transparent to mouse and touch
events.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the mouse will be handled the same way as a single touch
point, and items under the touch area will not receive mouse events
because the touch area is handling them. But if the mouseEnabled
property is set to false, it becomes transparent to mouse events so that
another mouse-sensitive Item (such as a MouseArea) can be used to handle
mouse interaction separately.

.. raw:: html

   </p>

.. raw:: html

   <p>

MultiPointTouchArea can be used in two ways:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

setting touchPoints to provide touch point objects with properties that
can be bound to

.. raw:: html

   </li>

.. raw:: html

   <li>

using the onTouchUpdated or onPressed, onUpdated and onReleased handlers

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

While a MultiPointTouchArea can take exclusive ownership of certain
touch points, it is also possible to have multiple MultiPointTouchAreas
active at the same time, each operating on a different set of touch
points.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also TouchPoint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MultiPointTouchArea -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$maximumTouchPoints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumTouchPoints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumTouchPoints : int

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

These properties hold the range of touch points to be handled by the
touch area.

.. raw:: html

   </p>

.. raw:: html

   <p>

These are convenience that allow you to, for example, have nested
MultiPointTouchAreas, one handling two finger touches, and another
handling three finger touches.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, all touch points within the touch area are handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

If mouseEnabled is true, the mouse acts as a touch point, so it is also
subject to these constraints: for example if maximumTouchPoints is two,
you can use the mouse as one touch point and a finger as another touch
point for a total of two.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumTouchPoints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumTouchPoints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumTouchPoints : int

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

These properties hold the range of touch points to be handled by the
touch area.

.. raw:: html

   </p>

.. raw:: html

   <p>

These are convenience that allow you to, for example, have nested
MultiPointTouchAreas, one handling two finger touches, and another
handling three finger touches.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, all touch points within the touch area are handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

If mouseEnabled is true, the mouse acts as a touch point, so it is also
subject to these constraints: for example if maximumTouchPoints is two,
you can use the mouse as one touch point and a finger as another touch
point for a total of two.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumTouchPoints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mouseEnabled : bool

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

This property controls whether the MultiPointTouchArea will handle mouse
events too. If it is true (the default), the touch area will treat the
mouse the same as a single touch point; if it is false, the touch area
will ignore mouse events and allow them to "pass through" so that they
can be handled by other items underneath.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchPoints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

touchPoints : list<TouchPoint>

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

This property holds a set of user-defined touch point objects that can
be bound to.

.. raw:: html

   </p>

.. raw:: html

   <p>

If mouseEnabled is true (the default) and the left mouse button is
pressed while the mouse is over the touch area, the current mouse
position will be one of these touch points.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, we have two small rectangles that follow our
touch points.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="index.html">MultiPointTouchArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">touchPoints</span>: [
   <span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">point1</span> },
   <span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">point2</span> }
   ]
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">30</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">x</span>: <span class="name">point1</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">point1</span>.<span class="name">y</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">30</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="name">x</span>: <span class="name">point2</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">point2</span>.<span class="name">y</span>
   }
   }</pre>

.. raw:: html

   <p>

By default this property holds an empty list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also TouchPoint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchPoints -->

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

canceled(list<TouchPoint> touchPoints)

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

This signal is emitted when new touch events have been canceled because
another item stole the touch event handling.

.. raw:: html

   </p>

.. raw:: html

   <p>

This signal is for advanced use: it is useful when there is more than
one MultiPointTouchArea that is handling input, or when there is a
MultiPointTouchArea inside a Flickable. In the latter case, if you
execute some logic in the onPressed signal handler and then start
dragging, the Flickable may steal the touch handling from the
MultiPointTouchArea. In these cases, to reset the logic when the
MultiPointTouchArea has lost the touch handling to the Flickable,
canceled should be handled in addition to released.

.. raw:: html

   </p>

.. raw:: html

   <p>

touchPoints is the list of canceled points.

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

   <tr valign="top" id="gestureStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

gestureStarted(GestureEvent gesture)

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

This signal is emitted when the global drag threshold has been reached.

.. raw:: html

   </p>

.. raw:: html

   <p>

This signal is typically used when a MultiPointTouchArea has been nested
in a Flickable or another MultiPointTouchArea. When the threshold has
been reached and the signal is handled, you can determine whether or not
the touch area should grab the current touch points. By default they
will not be grabbed; to grab them call gesture.grab(). If the gesture is
not grabbed, the nesting Flickable, for example, would also have an
opportunity to grab.

.. raw:: html

   </p>

.. raw:: html

   <p>

The gesture object also includes information on the current set of
touchPoints and the dragThreshold.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onGestureStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gestureStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressed(list<TouchPoint> touchPoints)

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

This signal is emitted when new touch points are added. touchPoints is a
list of these new points.

.. raw:: html

   </p>

.. raw:: html

   <p>

If minimumTouchPoints is set to a value greater than one, this signal
will not be emitted until the minimum number of required touch points
has been reached.

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

released(list<TouchPoint> touchPoints)

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

This signal is emitted when existing touch points are removed.
touchPoints is a list of these removed points.

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

   <tr valign="top" id="touchUpdated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchUpdated(list<TouchPoint> touchPoints)

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

This signal is emitted when the touch points handled by the
MultiPointTouchArea change. This includes adding new touch points,
removing or canceling previous touch points, as well as updating current
touch point data. touchPoints is the list of all current touch points.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onTouchUpdated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchUpdated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

updated(list<TouchPoint> touchPoints)

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

This signal is emitted when existing touch points are updated.
touchPoints is a list of these updated points.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onUpdated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updated -->


