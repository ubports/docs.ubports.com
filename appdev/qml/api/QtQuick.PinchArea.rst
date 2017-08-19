QtQuick.PinchArea
=================

.. raw:: html

   <p>

Enables simple pinch gesture handling More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PinchArea -->

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

pinch.target : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.minimumScale : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.maximumScale : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.minimumRotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.maximumRotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.dragAxis : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.minimumX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.maximumX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.minimumY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinch.maximumY : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

pinchFinished()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchUpdated()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PinchArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The PinchArea type was added in QtQuick 1.1

.. raw:: html

   </p>

.. raw:: html

   <p>

A PinchArea is an invisible item that is typically used in conjunction
with a visible item in order to provide pinch gesture handling for that
item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The enabled property is used to enable and disable pinch handling for
the proxied item. When disabled, the pinch area becomes transparent to
mouse/touch events.

.. raw:: html

   </p>

.. raw:: html

   <p>

PinchArea can be used in two ways:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

setting a pinch.target to provide automatic interaction with an item

.. raw:: html

   </li>

.. raw:: html

   <li>

using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also PinchEvent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PinchArea -->

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

This property holds whether the item accepts pinch gestures.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinch-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

pinch group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.target : Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.active : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.minimumScale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.minimumScale : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.maximumScale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.maximumScale : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.minimumRotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.minimumRotation : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.maximumRotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.maximumRotation : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.dragAxis-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.dragAxis : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.minimumX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.minimumX : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.maximumX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.maximumX : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.minimumY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.minimumY : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="pinch.maximumY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinch.maximumY : real

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

pinch provides a convenient way to make an item react to pinch gestures.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

pinch.target specifies the id of the item to drag.

.. raw:: html

   </li>

.. raw:: html

   <li>

pinch.active specifies if the target item is currently being dragged.

.. raw:: html

   </li>

.. raw:: html

   <li>

pinch.minimumScale and pinch.maximumScale limit the range of the
Item.scale property, but not the PinchEvent scale property.

.. raw:: html

   </li>

.. raw:: html

   <li>

pinch.minimumRotation and pinch.maximumRotation limit the range of the
Item.rotation property, but not the PinchEvent rotation property.

.. raw:: html

   </li>

.. raw:: html

   <li>

pinch.dragAxis specifies whether dragging in not allowed (Pinch.NoDrag),
can be done horizontally (Pinch.XAxis), vertically (Pinch.YAxis), or
both (Pinch.XAndYAxis)

.. raw:: html

   </li>

.. raw:: html

   <li>

pinch.minimum and pinch.maximum limit how far the target can be dragged
along the corresponding axes.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@pinch -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$pinchFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinchFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pinchFinished()

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

This signal is emitted when the pinch area detects that a pinch gesture
has finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

The pinch parameter (not the same as the pinch property) provides
information about the pinch gesture, including the scale, center and
angle of the pinch.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchFinished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pinchFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinchStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pinchStarted()

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

This signal is emitted when the pinch area detects that a pinch gesture
has started: two touch points (fingers) have been detected, and they
have moved beyond the startDragDistance threshold for the gesture to
begin.

.. raw:: html

   </p>

.. raw:: html

   <p>

The pinch parameter (not the same as the pinch property) provides
information about the pinch gesture, including the scale, center and
angle of the pinch. At the time of the pinchStarted signal, these values
are reset to the default values, regardless of the results from previous
gestures: pinch.scale will be 1.0 and pinch.rotation will be 0.0. As the
gesture progresses, pinchUpdated will report the deviation from those
defaults.

.. raw:: html

   </p>

.. raw:: html

   <p>

To ignore this gesture set the pinch.accepted property to false. The
gesture will be canceled and no further events will be sent.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pinchStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinchUpdated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pinchUpdated()

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

This signal is emitted when the pinch area detects that a pinch gesture
has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The pinch parameter provides information about the pinch gesture,
including the scale, center and angle of the pinch. These values reflect
changes only since the beginning of the current gesture, and therefore
are not limited by the minimum and maximum limits in the pinch property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchUpdated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pinchUpdated -->


