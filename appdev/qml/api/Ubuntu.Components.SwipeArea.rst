Ubuntu.Components.SwipeArea
===========================

.. raw:: html

   <p>

An area which detects axis-aligned single-finger drag gestures. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SwipeArea -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

direction : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

distance : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragging : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

grabGesture : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

immediateRecognition : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchPosition : point

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SwipeArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component can be used to detect gestures of a certain direction, and
can grab gestures started on a component placed behind of the SwipeArea.
The gesture is detected on the SwipeArea, therefore the size must be
chosen carefully so it can properly detect the gesture.

.. raw:: html

   </p>

.. raw:: html

   <p>

The gesture direction is specified by the direction property. The
recognized and captured gesture is reported through the dragging
property, which becomes true when the gesture is detected. If there was
a component under the SwipeArea, the gesture will be cancelled on that
component.

.. raw:: html

   </p>

.. raw:: html

   <p>

The drag recognition is performed within the component area in the
specified direction. If the drag deviates too much from this,
recognition will fail, as well as if the drag or the flick is too short.
Once the drag is intercepted, the gesture will be followed even after it
leaves the detection area.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;SwipeArea sample&quot;</span>
   <span class="type"><a href="index.html">SwipeArea</a></span> {
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">direction</span>: <span class="name">SwipeArea</span>.<span class="name">Upwards</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Drag upwards&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">centerIn</span>: <span class="name">parent</span>
   <span class="name">verticalOffset</span>: <span class="name">parent</span>.<span class="name">dragging</span> ? <span class="name">parent</span>.<span class="name">distance</span> : <span class="number">0</span>
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: When used with a Flickable (or ListView, GridView) always put the
SwipeArea next to the Flickable as sibling.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SwipeArea -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : enum

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

The direction in which the gesture should move in order to be
recognized.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Direction

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Rightwards

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the positive direction of the X axis

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Leftwards

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the negative direction of the X axis

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Downwards

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the positive direction of the Y axis

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Upwards

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the negative direction of the Y axis

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Horizontal

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the X axis, in any direction

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Vertical

.. raw:: html

   </td>

.. raw:: html

   <td>

Along the Y axis, in any direction

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="distance-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] distance : real

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

The property holds the distance of the swipe from the beginning of the
gesture recognition to the current touch position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@distance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragging-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] dragging : bool

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

Reports whether a drag gesture is taking place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragging -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="grabGesture-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

grabGesture : bool

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

If true, any gestures will be grabbed and owned by the SwipeArea as
usual. If false, gestures will still be reported, but events may be
grabbed by another Qml object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to true. In most cases this should not be unset.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@grabGesture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="immediateRecognition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

immediateRecognition : bool

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

Drives whether the gesture should be recognized as soon as the touch
lands on the area. With this property set it will work the same way as a
MultiPointTouchArea,

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to false. In most cases this should not be set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@immediateRecognition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] pressed : bool

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

Reports whether the drag area is pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] touchPosition : point

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

Position of the touch point performing the drag relative to this item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchPosition -->


