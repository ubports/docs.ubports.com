.. _sdk_qtquick_pincharea:

QtQuick PinchArea
=================

Enables simple pinch gesture handling

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`enabled <sdk_qtquick_pincharea_enabled>` : bool
-  :ref:`pinch <sdk_qtquick_pincharea_pinch>`

   -  :ref:`pinch.target <sdk_qtquick_pincharea_pinch_target>` : Item
   -  :ref:`pinch.active <sdk_qtquick_pincharea_pinch_active>` : bool
   -  :ref:`pinch.minimumScale <sdk_qtquick_pincharea_pinch_minimumScale>` : real
   -  :ref:`pinch.maximumScale <sdk_qtquick_pincharea_pinch_maximumScale>` : real
   -  :ref:`pinch.minimumRotation <sdk_qtquick_pincharea_pinch_minimumRotation>` : real
   -  :ref:`pinch.maximumRotation <sdk_qtquick_pincharea_pinch_maximumRotation>` : real
   -  :ref:`pinch.dragAxis <sdk_qtquick_pincharea_pinch_dragAxis>` : enumeration
   -  :ref:`pinch.minimumX <sdk_qtquick_pincharea_pinch_minimumX>` : real
   -  :ref:`pinch.maximumX <sdk_qtquick_pincharea_pinch_maximumX>` : real
   -  :ref:`pinch.minimumY <sdk_qtquick_pincharea_pinch_minimumY>` : real
   -  :ref:`pinch.maximumY <sdk_qtquick_pincharea_pinch_maximumY>` : real

Signals
-------

-  :ref:`pinchFinished <sdk_qtquick_pincharea_pinchFinished>`\ ()
-  :ref:`pinchStarted <sdk_qtquick_pincharea_pinchStarted>`\ ()
-  :ref:`pinchUpdated <sdk_qtquick_pincharea_pinchUpdated>`\ ()

Detailed Description
--------------------

**The PinchArea type was added in QtQuick 1.1**

A :ref:`PinchArea <sdk_qtquick_pincharea>` is an invisible item that is typically used in conjunction with a visible item in order to provide pinch gesture handling for that item.

The :ref:`enabled <sdk_qtquick_pincharea_enabled>` property is used to enable and disable pinch handling for the proxied item. When disabled, the pinch area becomes transparent to mouse/touch events.

:ref:`PinchArea <sdk_qtquick_pincharea>` can be used in two ways:

-  setting a ``pinch.target`` to provide automatic interaction with an item
-  using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

**See also** :ref:`PinchEvent <sdk_qtquick_pinchevent>`.

Property Documentation
----------------------

.. _sdk_qtquick_pincharea_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item accepts pinch gestures.

This property defaults to true.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **pinch group**                                                                                                                                                                                                                                                                                                 |
+=================================================================================================================================================================================================================================================================================================================+
| pinch.target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.active : bool                                                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.minimumScale : real                                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.maximumScale : real                                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.minimumRotation : real                                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.maximumRotation : real                                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.dragAxis : enumeration                                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.minimumX : real                                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.maximumX : real                                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.minimumY : real                                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinch.maximumY : real                                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

``pinch`` provides a convenient way to make an item react to pinch gestures.

-  ``pinch.target`` specifies the id of the item to drag.
-  ``pinch.active`` specifies if the target item is currently being dragged.
-  ``pinch.minimumScale`` and ``pinch.maximumScale`` limit the range of the Item.scale property, but not the ``PinchEvent`` :ref:`scale <sdk_qtquick_pinchevent>` property.
-  ``pinch.minimumRotation`` and ``pinch.maximumRotation`` limit the range of the Item.rotation property, but not the ``PinchEvent`` :ref:`rotation <sdk_qtquick_pinchevent>` property.
-  ``pinch.dragAxis`` specifies whether dragging in not allowed (``Pinch.NoDrag``), can be done horizontally (``Pinch.XAxis``), vertically (``Pinch.YAxis``), or both (``Pinch.XAndYAxis``)
-  ``pinch.minimum`` and ``pinch.maximum`` limit how far the target can be dragged along the corresponding axes.

Signal Documentation
--------------------

.. _sdk_qtquick_pincharea_pinchFinished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinchFinished()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture has finished.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter (not the same as the :ref:`pinch <sdk_qtquick_pincharea>` property) provides information about the pinch gesture, including the scale, center and angle of the pinch.

The corresponding handler is ``onPinchFinished``.

.. _sdk_qtquick_pincharea_pinchStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinchStarted()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture has started: two touch points (fingers) have been detected, and they have moved beyond the startDragDistance threshold for the gesture to begin.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter (not the same as the :ref:`pinch <sdk_qtquick_pincharea>` property) provides information about the pinch gesture, including the scale, center and angle of the pinch. At the time of the ``pinchStarted`` signal, these values are reset to the default values, regardless of the results from previous gestures: pinch.scale will be ``1.0`` and pinch.rotation will be ``0.0``. As the gesture progresses, :ref:`pinchUpdated <sdk_qtquick_pincharea_pinchUpdated>` will report the deviation from those defaults.

To ignore this gesture set the ``pinch.accepted`` property to false. The gesture will be canceled and no further events will be sent.

The corresponding handler is ``onPinchStarted``.

.. _sdk_qtquick_pincharea_pinchUpdated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pinchUpdated()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture has changed.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter provides information about the pinch gesture, including the scale, center and angle of the pinch. These values reflect changes only since the beginning of the current gesture, and therefore are not limited by the minimum and maximum limits in the :ref:`pinch <sdk_qtquick_pincharea>` property.

The corresponding handler is ``onPinchUpdated``.

