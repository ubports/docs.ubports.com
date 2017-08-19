QtLocation.MapGestureArea
=========================

.. raw:: html

   <p>

The MapGestureArea type provides Map gesture interaction. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapGestureArea -->

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

import QtLocation 5.3

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

Qt Location 5.0

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

activeGestures : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickDeceleration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isPanActive : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isPinchActive : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumZoomLevelChange : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

panEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchEnabled : bool

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

flickFinished()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

panFinished()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

panStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchFinished(PinchEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchStarted(PinchEvent event)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pinchUpdated(PinchEvent event)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapGestureArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

MapGestureArea objects are used as part of a Map, to provide for
panning, flicking and pinch-to-zoom gesture used on touch displays.

.. raw:: html

   </p>

.. raw:: html

   <p>

A MapGestureArea, and once created this way cannot be destroyed without
its parent Map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The two most commonly used properties of the flickDeceleration property
controls how quickly the map pan slows after contact is released while
panning the map.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

The MapGestureArea, when enabled, must process all incoming touch events
in order to track the shape and size of the "pinch". The overhead added
on touch events can be considered constant time.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following example enables the zoom and pan gestures on the map, but
not flicking. So the map scrolling will halt immediately on releasing
the mouse button / touch.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
   gesture<span class="operator">.</span>activeGestures: MapGestureArea<span class="operator">.</span>ZoomGesture <span class="operator">|</span> MapGestureArea<span class="operator">.</span>PanGesture
   }</pre>

.. raw:: html

   <!-- @@@MapGestureArea -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeGestures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeGestures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

activeGestures : enumeration

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

This property holds the gestures that will be active. By default the
zoom, pan and flick gestures are enabled.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MapGestureArea.NoGesture - Don't support any additional gestures (value:
0x0000).

.. raw:: html

   </li>

.. raw:: html

   <li>

MapGestureArea.ZoomGesture - Support the map zoom gesture (value:
0x0001).

.. raw:: html

   </li>

.. raw:: html

   <li>

MapGestureArea.PanGesture - Support the map pan gesture (value: 0x0002).

.. raw:: html

   </li>

.. raw:: html

   <li>

MapGestureArea.FlickGesture - Support the map flick gesture (value:
0x0004).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: For the time being, only MapGestureArea.ZoomGesture is supported.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeGestures -->

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

This property holds whether the gestures are enabled. Note: disabling
gestures during an active gesture does not have effect on the
potentially active current gesture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickDeceleration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickDeceleration : real

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

This property holds the rate at which a flick will decelerate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 2500.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickDeceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isPanActive-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

isPanActive : bool

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

This read-only property holds whether any pan gesture (panning or
flicking) is active.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isPanActive -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isPinchActive-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

isPinchActive : bool

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

This read-only property holds whether any pinch gesture is active.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isPinchActive -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumZoomLevelChange-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumZoomLevelChange : real

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

This property holds the maximum zoom level change per pinch, essentially
meant to be used for setting the zoom sensitivity.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is an indicative measure calculated from the dimensions of the map
area, roughly corresponding how much zoom level could change with
maximum pinch zoom. Default value is 2.0, maximum value is 10.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumZoomLevelChange -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="panEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

panEnabled : bool

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

This property holds whether the pan gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@panEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinchEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pinchEnabled : bool

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

This property holds whether the pinch gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pinchEnabled -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$flickFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flickFinished()

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

This signal is emitted when the view stops moving due to a flick. The
order of panFinished() and flickFinished() is not specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFlickFinished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flickStarted()

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

This signal is emitted when the view is flicked. A flick starts from the
point that the mouse or touch is released, while still in motion.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFlichStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="panFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

panFinished()

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

This signal is emitted when the view stops moving due to user
interaction. If a flick was generated, this signal is emitted when the
flick stops. If a flick was not generated, this signal is emitted when
the user stops dragging - that is a mouse or touch release.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPanFinished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@panFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="panStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

panStarted()

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

This signal is emitted when the view begins moving due to user
interaction. Typically this means that the user is dragging a finger -
or a mouse with one of more mouse buttons pressed - on the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPanStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@panStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pinchFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pinchFinished(PinchEvent event)

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

This signal is emitted at the end of a pinch gesture.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchFinished.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pinchUpdated.

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

pinchStarted(PinchEvent event)

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

This signal is emitted when a pinch gesture is started.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchStarted.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pinchFinished.

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

pinchUpdated(PinchEvent event)

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

This signal is emitted as the user's fingers move across the map, after
the pinchStarted signal is emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPinchUpdated.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pinchFinished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pinchUpdated -->


