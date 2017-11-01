Enables simple pinch gesture handling

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`enabled </sdk/apps/qml/QtQuick/PinchArea#enabled-prop>`__**** :
   bool
-  ****`pinch </sdk/apps/qml/QtQuick/PinchArea#pinch-prop>`__****

   -  ****`pinch.target </sdk/apps/qml/QtQuick/PinchArea#pinch.target-prop>`__****
      : Item
   -  ****`pinch.active </sdk/apps/qml/QtQuick/PinchArea#pinch.active-prop>`__****
      : bool
   -  ****`pinch.minimumScale </sdk/apps/qml/QtQuick/PinchArea#pinch.minimumScale-prop>`__****
      : real
   -  ****`pinch.maximumScale </sdk/apps/qml/QtQuick/PinchArea#pinch.maximumScale-prop>`__****
      : real
   -  ****`pinch.minimumRotation </sdk/apps/qml/QtQuick/PinchArea#pinch.minimumRotation-prop>`__****
      : real
   -  ****`pinch.maximumRotation </sdk/apps/qml/QtQuick/PinchArea#pinch.maximumRotation-prop>`__****
      : real
   -  ****`pinch.dragAxis </sdk/apps/qml/QtQuick/PinchArea#pinch.dragAxis-prop>`__****
      : enumeration
   -  ****`pinch.minimumX </sdk/apps/qml/QtQuick/PinchArea#pinch.minimumX-prop>`__****
      : real
   -  ****`pinch.maximumX </sdk/apps/qml/QtQuick/PinchArea#pinch.maximumX-prop>`__****
      : real
   -  ****`pinch.minimumY </sdk/apps/qml/QtQuick/PinchArea#pinch.minimumY-prop>`__****
      : real
   -  ****`pinch.maximumY </sdk/apps/qml/QtQuick/PinchArea#pinch.maximumY-prop>`__****
      : real

Signals
-------

-  ****`pinchFinished </sdk/apps/qml/QtQuick/PinchArea#pinchFinished-signal>`__****\ ()
-  ****`pinchStarted </sdk/apps/qml/QtQuick/PinchArea#pinchStarted-signal>`__****\ ()
-  ****`pinchUpdated </sdk/apps/qml/QtQuick/PinchArea#pinchUpdated-signal>`__****\ ()

Detailed Description
--------------------

**The PinchArea type was added in QtQuick 1.1**

A `PinchArea </sdk/apps/qml/QtQuick/PinchArea/>`__ is an invisible item
that is typically used in conjunction with a visible item in order to
provide pinch gesture handling for that item.

The `enabled </sdk/apps/qml/QtQuick/PinchArea#enabled-prop>`__ property
is used to enable and disable pinch handling for the proxied item. When
disabled, the pinch area becomes transparent to mouse/touch events.

`PinchArea </sdk/apps/qml/QtQuick/PinchArea/>`__ can be used in two
ways:

-  setting a ``pinch.target`` to provide automatic interaction with an
   item
-  using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

**See also** `PinchEvent </sdk/apps/qml/QtQuick/PinchEvent/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the item accepts pinch gestures.

This property defaults to true.

| 

+--------------------------------------------------------------------------+
|        \ **pinch group**                                                 |
+==========================================================================+
|        \ pinch.target : `Item </sdk/apps/qml/QtQuick/Item/>`__           |
+--------------------------------------------------------------------------+
|        \ pinch.active : bool                                             |
+--------------------------------------------------------------------------+
|        \ pinch.minimumScale : real                                       |
+--------------------------------------------------------------------------+
|        \ pinch.maximumScale : real                                       |
+--------------------------------------------------------------------------+
|        \ pinch.minimumRotation : real                                    |
+--------------------------------------------------------------------------+
|        \ pinch.maximumRotation : real                                    |
+--------------------------------------------------------------------------+
|        \ pinch.dragAxis : enumeration                                    |
+--------------------------------------------------------------------------+
|        \ pinch.minimumX : real                                           |
+--------------------------------------------------------------------------+
|        \ pinch.maximumX : real                                           |
+--------------------------------------------------------------------------+
|        \ pinch.minimumY : real                                           |
+--------------------------------------------------------------------------+
|        \ pinch.maximumY : real                                           |
+--------------------------------------------------------------------------+

``pinch`` provides a convenient way to make an item react to pinch
gestures.

-  ``pinch.target`` specifies the id of the item to drag.
-  ``pinch.active`` specifies if the target item is currently being
   dragged.
-  ``pinch.minimumScale`` and ``pinch.maximumScale`` limit the range of
   the Item.scale property, but not the ``PinchEvent``
   `scale </sdk/apps/qml/QtQuick/PinchEvent/>`__ property.
-  ``pinch.minimumRotation`` and ``pinch.maximumRotation`` limit the
   range of the Item.rotation property, but not the ``PinchEvent``
   `rotation </sdk/apps/qml/QtQuick/PinchEvent/>`__ property.
-  ``pinch.dragAxis`` specifies whether dragging in not allowed
   (``Pinch.NoDrag``), can be done horizontally (``Pinch.XAxis``),
   vertically (``Pinch.YAxis``), or both (``Pinch.XAndYAxis``)
-  ``pinch.minimum`` and ``pinch.maximum`` limit how far the target can
   be dragged along the corresponding axes.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ pinchFinished()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has finished.

The `pinch </sdk/apps/qml/QtQuick/PinchEvent/>`__ parameter (not the
same as the `pinch </sdk/apps/qml/QtQuick/PinchArea/>`__ property)
provides information about the pinch gesture, including the scale,
center and angle of the pinch.

The corresponding handler is ``onPinchFinished``.

| 

+--------------------------------------------------------------------------+
|        \ pinchStarted()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has started: two touch points (fingers) have been detected, and they
have moved beyond the startDragDistance threshold for the gesture to
begin.

The `pinch </sdk/apps/qml/QtQuick/PinchEvent/>`__ parameter (not the
same as the `pinch </sdk/apps/qml/QtQuick/PinchArea/>`__ property)
provides information about the pinch gesture, including the scale,
center and angle of the pinch. At the time of the ``pinchStarted``
signal, these values are reset to the default values, regardless of the
results from previous gestures: pinch.scale will be ``1.0`` and
pinch.rotation will be ``0.0``. As the gesture progresses,
`pinchUpdated </sdk/apps/qml/QtQuick/PinchArea#pinchUpdated-signal>`__
will report the deviation from those defaults.

To ignore this gesture set the ``pinch.accepted`` property to false. The
gesture will be canceled and no further events will be sent.

The corresponding handler is ``onPinchStarted``.

| 

+--------------------------------------------------------------------------+
|        \ pinchUpdated()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has changed.

The `pinch </sdk/apps/qml/QtQuick/PinchEvent/>`__ parameter provides
information about the pinch gesture, including the scale, center and
angle of the pinch. These values reflect changes only since the
beginning of the current gesture, and therefore are not limited by the
minimum and maximum limits in the
`pinch </sdk/apps/qml/QtQuick/PinchArea/>`__ property.

The corresponding handler is ``onPinchUpdated``.

| 
