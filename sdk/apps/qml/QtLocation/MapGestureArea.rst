The MapGestureArea type provides Map gesture interaction.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`activeGestures </sdk/apps/qml/QtLocation/MapGestureArea#activeGestures-prop>`__****
   : enumeration
-  ****`enabled </sdk/apps/qml/QtLocation/MapGestureArea#enabled-prop>`__****
   : bool
-  ****`flickDeceleration </sdk/apps/qml/QtLocation/MapGestureArea#flickDeceleration-prop>`__****
   : real
-  ****`isPanActive </sdk/apps/qml/QtLocation/MapGestureArea#isPanActive-prop>`__****
   : bool
-  ****`isPinchActive </sdk/apps/qml/QtLocation/MapGestureArea#isPinchActive-prop>`__****
   : bool
-  ****`maximumZoomLevelChange </sdk/apps/qml/QtLocation/MapGestureArea#maximumZoomLevelChange-prop>`__****
   : real
-  ****`panEnabled </sdk/apps/qml/QtLocation/MapGestureArea#panEnabled-prop>`__****
   : bool
-  ****`pinchEnabled </sdk/apps/qml/QtLocation/MapGestureArea#pinchEnabled-prop>`__****
   : bool

Signals
-------

-  ****`flickFinished </sdk/apps/qml/QtLocation/MapGestureArea#flickFinished-signal>`__****\ ()
-  ****`flickStarted </sdk/apps/qml/QtLocation/MapGestureArea#flickStarted-signal>`__****\ ()
-  ****`panFinished </sdk/apps/qml/QtLocation/MapGestureArea#panFinished-signal>`__****\ ()
-  ****`panStarted </sdk/apps/qml/QtLocation/MapGestureArea#panStarted-signal>`__****\ ()
-  ****`pinchFinished </sdk/apps/qml/QtLocation/MapGestureArea#pinchFinished-signal>`__****\ (PinchEvent
   *event*)
-  ****`pinchStarted </sdk/apps/qml/QtLocation/MapGestureArea#pinchStarted-signal>`__****\ (PinchEvent
   *event*)
-  ****`pinchUpdated </sdk/apps/qml/QtLocation/MapGestureArea#pinchUpdated-signal>`__****\ (PinchEvent
   *event*)

Detailed Description
--------------------

`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__ objects
are used as part of a Map, to provide for panning, flicking and
pinch-to-zoom gesture used on touch displays.

A `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__ is
automatically created with a new Map and available with the
`gesture </sdk/apps/qml/QtLocation/Map#gesture-prop>`__ property. This
is the only way to create a
`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__, and once
created this way cannot be destroyed without its parent Map.

The two most commonly used properties of the
`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__ are the
`enabled </sdk/apps/qml/QtLocation/MapGestureArea#enabled-prop>`__ and
`activeGestures </sdk/apps/qml/QtLocation/MapGestureArea#activeGestures-prop>`__
properties. Both of these must be set before a
`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__ will have
any effect upon interaction with the Map. The
`flickDeceleration </sdk/apps/qml/QtLocation/MapGestureArea#flickDeceleration-prop>`__
property controls how quickly the map pan slows after contact is
released while panning the map.

Performance
~~~~~~~~~~~

The `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__, when
enabled, must process all incoming touch events in order to track the
shape and size of the "pinch". The overhead added on touch events can be
considered constant time.

Example Usage
~~~~~~~~~~~~~

The following example enables the zoom and pan gestures on the map, but
not flicking. So the map scrolling will halt immediately on releasing
the mouse button / touch.

.. code:: cpp

    Map {
        gesture.enabled: true
        gesture.activeGestures: MapGestureArea.ZoomGesture | MapGestureArea.PanGesture
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activeGestures : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the gestures that will be active. By default the
zoom, pan and flick gestures are enabled.

-  `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__.NoGesture
   - Don't support any additional gestures (value: 0x0000).
-  `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__.ZoomGesture
   - Support the map zoom gesture (value: 0x0001).
-  `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__.PanGesture
   - Support the map pan gesture (value: 0x0002).
-  `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__.FlickGesture
   - Support the map flick gesture (value: 0x0004).

**Note:** For the time being, only
`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__.ZoomGesture
is supported.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the gestures are enabled. Note: disabling
gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

+--------------------------------------------------------------------------+
|        \ flickDeceleration : real                                        |
+--------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default value is 2500.

| 

+--------------------------------------------------------------------------+
|        \ isPanActive : bool                                              |
+--------------------------------------------------------------------------+

This read-only property holds whether any pan gesture (panning or
flicking) is active.

| 

+--------------------------------------------------------------------------+
|        \ isPinchActive : bool                                            |
+--------------------------------------------------------------------------+

This read-only property holds whether any pinch gesture is active.

| 

+--------------------------------------------------------------------------+
|        \ maximumZoomLevelChange : real                                   |
+--------------------------------------------------------------------------+

This property holds the maximum zoom level change per pinch, essentially
meant to be used for setting the zoom sensitivity.

It is an indicative measure calculated from the dimensions of the map
area, roughly corresponding how much zoom level could change with
maximum pinch zoom. Default value is 2.0, maximum value is 10.0

| 

+--------------------------------------------------------------------------+
|        \ panEnabled : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether the pan gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

+--------------------------------------------------------------------------+
|        \ pinchEnabled : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether the pinch gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ flickFinished()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to a flick. The
order of panFinished() and flickFinished() is not specified.

The corresponding handler is ``onFlickFinished``.

| 

+--------------------------------------------------------------------------+
|        \ flickStarted()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the view is flicked. A flick starts from the
point that the mouse or touch is released, while still in motion.

The corresponding handler is ``onFlichStarted``.

| 

+--------------------------------------------------------------------------+
|        \ panFinished()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to user
interaction. If a flick was generated, this signal is emitted when the
flick stops. If a flick was not generated, this signal is emitted when
the user stops dragging - that is a mouse or touch release.

The corresponding handler is ``onPanFinished``.

| 

+--------------------------------------------------------------------------+
|        \ panStarted()                                                    |
+--------------------------------------------------------------------------+

This signal is emitted when the view begins moving due to user
interaction. Typically this means that the user is dragging a finger -
or a mouse with one of more mouse buttons pressed - on the map.

The corresponding handler is ``onPanStarted``.

| 

+--------------------------------------------------------------------------+
|        \ pinchFinished(PinchEvent *event*)                               |
+--------------------------------------------------------------------------+

This signal is emitted at the end of a pinch gesture.

The corresponding handler is ``onPinchFinished``.

**See also**
`pinchStarted </sdk/apps/qml/QtLocation/MapGestureArea#pinchStarted-signal>`__
and
`pinchUpdated </sdk/apps/qml/QtLocation/MapGestureArea#pinchUpdated-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ pinchStarted(PinchEvent *event*)                                |
+--------------------------------------------------------------------------+

This signal is emitted when a pinch gesture is started.

The corresponding handler is ``onPinchStarted``.

**See also**
`pinchUpdated </sdk/apps/qml/QtLocation/MapGestureArea#pinchUpdated-signal>`__
and
`pinchFinished </sdk/apps/qml/QtLocation/MapGestureArea#pinchFinished-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ pinchUpdated(PinchEvent *event*)                                |
+--------------------------------------------------------------------------+

This signal is emitted as the user's fingers move across the map, after
the
`pinchStarted </sdk/apps/qml/QtLocation/MapGestureArea#pinchStarted-signal>`__
signal is emitted.

The corresponding handler is ``onPinchUpdated``.

**See also**
`pinchStarted </sdk/apps/qml/QtLocation/MapGestureArea#pinchStarted-signal>`__
and
`pinchFinished </sdk/apps/qml/QtLocation/MapGestureArea#pinchFinished-signal>`__.

| 
