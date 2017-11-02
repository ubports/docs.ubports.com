.. _sdk_qtlocation_mapgesturearea:
QtLocation MapGestureArea
=========================

The MapGestureArea type provides Map gesture interaction.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`activeGestures <sdk_qtlocation_mapgesturearea_activeGestures-prop>`
   : enumeration
-  :ref:`enabled <sdk_qtlocation_mapgesturearea_enabled-prop>` :
   bool
-  :ref:`flickDeceleration <sdk_qtlocation_mapgesturearea_flickDeceleration-prop>`
   : real
-  :ref:`isPanActive <sdk_qtlocation_mapgesturearea_isPanActive-prop>`
   : bool
-  :ref:`isPinchActive <sdk_qtlocation_mapgesturearea_isPinchActive-prop>`
   : bool
-  :ref:`maximumZoomLevelChange <sdk_qtlocation_mapgesturearea_maximumZoomLevelChange-prop>`
   : real
-  :ref:`panEnabled <sdk_qtlocation_mapgesturearea_panEnabled-prop>`
   : bool
-  :ref:`pinchEnabled <sdk_qtlocation_mapgesturearea_pinchEnabled-prop>`
   : bool

Signals
-------

-  :ref:`flickFinished <sdk_qtlocation_mapgesturearea_flickFinished-signal>`\ ()
-  :ref:`flickStarted <sdk_qtlocation_mapgesturearea_flickStarted-signal>`\ ()
-  :ref:`panFinished <sdk_qtlocation_mapgesturearea_panFinished-signal>`\ ()
-  :ref:`panStarted <sdk_qtlocation_mapgesturearea_panStarted-signal>`\ ()
-  :ref:`pinchFinished <sdk_qtlocation_mapgesturearea_pinchFinished-signal>`\ (PinchEvent
   *event*)
-  :ref:`pinchStarted <sdk_qtlocation_mapgesturearea_pinchStarted-signal>`\ (PinchEvent
   *event*)
-  :ref:`pinchUpdated <sdk_qtlocation_mapgesturearea_pinchUpdated-signal>`\ (PinchEvent
   *event*)

Detailed Description
--------------------

:ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` objects are used as
part of a Map, to provide for panning, flicking and pinch-to-zoom
gesture used on touch displays.

A :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` is automatically
created with a new Map and available with the
:ref:`gesture <sdk_qtlocation_map#gesture-prop>` property. This is the only
way to create a :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`, and
once created this way cannot be destroyed without its parent Map.

The two most commonly used properties of the
:ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` are the
:ref:`enabled <sdk_qtlocation_mapgesturearea#enabled-prop>` and
:ref:`activeGestures <sdk_qtlocation_mapgesturearea#activeGestures-prop>`
properties. Both of these must be set before a
:ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` will have any effect
upon interaction with the Map. The
:ref:`flickDeceleration <sdk_qtlocation_mapgesturearea#flickDeceleration-prop>`
property controls how quickly the map pan slows after contact is
released while panning the map.

Performance
~~~~~~~~~~~

The :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`, when enabled,
must process all incoming touch events in order to track the shape and
size of the "pinch". The overhead added on touch events can be
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

.. _sdk_qtlocation_mapgesturearea_activeGestures-prop:

+--------------------------------------------------------------------------+
|        \ activeGestures : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the gestures that will be active. By default the
zoom, pan and flick gestures are enabled.

-  :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`.NoGesture - Don't
   support any additional gestures (value: 0x0000).
-  :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`.ZoomGesture -
   Support the map zoom gesture (value: 0x0001).
-  :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`.PanGesture -
   Support the map pan gesture (value: 0x0002).
-  :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`.FlickGesture -
   Support the map flick gesture (value: 0x0004).

**Note:** For the time being, only
:ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`.ZoomGesture is
supported.

| 

.. _sdk_qtlocation_mapgesturearea_enabled-prop:

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the gestures are enabled. Note: disabling
gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

.. _sdk_qtlocation_mapgesturearea_flickDeceleration-prop:

+--------------------------------------------------------------------------+
|        \ flickDeceleration : real                                        |
+--------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default value is 2500.

| 

.. _sdk_qtlocation_mapgesturearea_isPanActive-prop:

+--------------------------------------------------------------------------+
|        \ isPanActive : bool                                              |
+--------------------------------------------------------------------------+

This read-only property holds whether any pan gesture (panning or
flicking) is active.

| 

.. _sdk_qtlocation_mapgesturearea_isPinchActive-prop:

+--------------------------------------------------------------------------+
|        \ isPinchActive : bool                                            |
+--------------------------------------------------------------------------+

This read-only property holds whether any pinch gesture is active.

| 

.. _sdk_qtlocation_mapgesturearea_maximumZoomLevelChange-prop:

+--------------------------------------------------------------------------+
|        \ maximumZoomLevelChange : real                                   |
+--------------------------------------------------------------------------+

This property holds the maximum zoom level change per pinch, essentially
meant to be used for setting the zoom sensitivity.

It is an indicative measure calculated from the dimensions of the map
area, roughly corresponding how much zoom level could change with
maximum pinch zoom. Default value is 2.0, maximum value is 10.0

| 

.. _sdk_qtlocation_mapgesturearea_panEnabled-prop:

+--------------------------------------------------------------------------+
|        \ panEnabled : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether the pan gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

.. _sdk_qtlocation_mapgesturearea_pinchEnabled-prop:

+--------------------------------------------------------------------------+
|        \ pinchEnabled : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether the pinch gestures are enabled. Note:
disabling gestures during an active gesture does not have effect on the
potentially active current gesture.

| 

Signal Documentation
--------------------

.. _sdk_qtlocation_mapgesturearea_flickFinished()-prop:

+--------------------------------------------------------------------------+
|        \ flickFinished()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to a flick. The
order of panFinished() and flickFinished() is not specified.

The corresponding handler is ``onFlickFinished``.

| 

.. _sdk_qtlocation_mapgesturearea_flickStarted()-prop:

+--------------------------------------------------------------------------+
|        \ flickStarted()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the view is flicked. A flick starts from the
point that the mouse or touch is released, while still in motion.

The corresponding handler is ``onFlichStarted``.

| 

.. _sdk_qtlocation_mapgesturearea_panFinished()-prop:

+--------------------------------------------------------------------------+
|        \ panFinished()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to user
interaction. If a flick was generated, this signal is emitted when the
flick stops. If a flick was not generated, this signal is emitted when
the user stops dragging - that is a mouse or touch release.

The corresponding handler is ``onPanFinished``.

| 

.. _sdk_qtlocation_mapgesturearea_panStarted()-prop:

+--------------------------------------------------------------------------+
|        \ panStarted()                                                    |
+--------------------------------------------------------------------------+

This signal is emitted when the view begins moving due to user
interaction. Typically this means that the user is dragging a finger -
or a mouse with one of more mouse buttons pressed - on the map.

The corresponding handler is ``onPanStarted``.

| 

.. _sdk_qtlocation_mapgesturearea_pinchFinished(PinchEvent *event*)-prop:

+--------------------------------------------------------------------------+
|        \ pinchFinished(PinchEvent *event*)                               |
+--------------------------------------------------------------------------+

This signal is emitted at the end of a pinch gesture.

The corresponding handler is ``onPinchFinished``.

**See also**
:ref:`pinchStarted <sdk_qtlocation_mapgesturearea#pinchStarted-signal>` and
:ref:`pinchUpdated <sdk_qtlocation_mapgesturearea#pinchUpdated-signal>`.

| 

.. _sdk_qtlocation_mapgesturearea_pinchStarted(PinchEvent *event*)-prop:

+--------------------------------------------------------------------------+
|        \ pinchStarted(PinchEvent *event*)                                |
+--------------------------------------------------------------------------+

This signal is emitted when a pinch gesture is started.

The corresponding handler is ``onPinchStarted``.

**See also**
:ref:`pinchUpdated <sdk_qtlocation_mapgesturearea#pinchUpdated-signal>` and
:ref:`pinchFinished <sdk_qtlocation_mapgesturearea#pinchFinished-signal>`.

| 

.. _sdk_qtlocation_mapgesturearea_pinchUpdated(PinchEvent *event*)-prop:

+--------------------------------------------------------------------------+
|        \ pinchUpdated(PinchEvent *event*)                                |
+--------------------------------------------------------------------------+

This signal is emitted as the user's fingers move across the map, after
the :ref:`pinchStarted <sdk_qtlocation_mapgesturearea#pinchStarted-signal>`
signal is emitted.

The corresponding handler is ``onPinchUpdated``.

**See also**
:ref:`pinchStarted <sdk_qtlocation_mapgesturearea#pinchStarted-signal>` and
:ref:`pinchFinished <sdk_qtlocation_mapgesturearea#pinchFinished-signal>`.

| 
