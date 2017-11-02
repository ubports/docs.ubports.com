.. _sdk_qtquick_pincharea:
QtQuick PinchArea
=================

Enables simple pinch gesture handling

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`enabled <sdk_qtquick_pincharea_enabled-prop>` : bool
-  :ref:`pinch <sdk_qtquick_pincharea_pinch-prop>`

   -  :ref:`pinch.target <sdk_qtquick_pincharea_pinch.target-prop>`
      : Item
   -  :ref:`pinch.active <sdk_qtquick_pincharea_pinch.active-prop>`
      : bool
   -  :ref:`pinch.minimumScale <sdk_qtquick_pincharea_pinch.minimumScale-prop>`
      : real
   -  :ref:`pinch.maximumScale <sdk_qtquick_pincharea_pinch.maximumScale-prop>`
      : real
   -  :ref:`pinch.minimumRotation <sdk_qtquick_pincharea_pinch.minimumRotation-prop>`
      : real
   -  :ref:`pinch.maximumRotation <sdk_qtquick_pincharea_pinch.maximumRotation-prop>`
      : real
   -  :ref:`pinch.dragAxis <sdk_qtquick_pincharea_pinch.dragAxis-prop>`
      : enumeration
   -  :ref:`pinch.minimumX <sdk_qtquick_pincharea_pinch.minimumX-prop>`
      : real
   -  :ref:`pinch.maximumX <sdk_qtquick_pincharea_pinch.maximumX-prop>`
      : real
   -  :ref:`pinch.minimumY <sdk_qtquick_pincharea_pinch.minimumY-prop>`
      : real
   -  :ref:`pinch.maximumY <sdk_qtquick_pincharea_pinch.maximumY-prop>`
      : real

Signals
-------

-  :ref:`pinchFinished <sdk_qtquick_pincharea_pinchFinished-signal>`\ ()
-  :ref:`pinchStarted <sdk_qtquick_pincharea_pinchStarted-signal>`\ ()
-  :ref:`pinchUpdated <sdk_qtquick_pincharea_pinchUpdated-signal>`\ ()

Detailed Description
--------------------

**The PinchArea type was added in QtQuick 1.1**

A :ref:`PinchArea <sdk_qtquick_pincharea>` is an invisible item that is
typically used in conjunction with a visible item in order to provide
pinch gesture handling for that item.

The :ref:`enabled <sdk_qtquick_pincharea#enabled-prop>` property is used to
enable and disable pinch handling for the proxied item. When disabled,
the pinch area becomes transparent to mouse/touch events.

:ref:`PinchArea <sdk_qtquick_pincharea>` can be used in two ways:

-  setting a ``pinch.target`` to provide automatic interaction with an
   item
-  using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

**See also** :ref:`PinchEvent <sdk_qtquick_pinchevent>`.

Property Documentation
----------------------

.. _sdk_qtquick_pincharea_enabled-prop:

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the item accepts pinch gestures.

This property defaults to true.

| 

.. _sdk_qtquick_pincharea_**pinch group**-prop:

+--------------------------------------------------------------------------+
|        \ **pinch group**                                                 |
+==========================================================================+
.. _sdk_qtquick_pincharea_pinch.active-prop:
| :ref:` <>`\ pinch.target : `Item <sdk_qtquick_item>`                      |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.minimumScale-prop:
|        \ pinch.active : bool                                             |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.maximumScale-prop:
|        \ pinch.minimumScale : real                                       |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.minimumRotation-prop:
|        \ pinch.maximumScale : real                                       |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.maximumRotation-prop:
|        \ pinch.minimumRotation : real                                    |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.dragAxis-prop:
|        \ pinch.maximumRotation : real                                    |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.minimumX-prop:
|        \ pinch.dragAxis : enumeration                                    |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.maximumX-prop:
|        \ pinch.minimumX : real                                           |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.minimumY-prop:
|        \ pinch.maximumX : real                                           |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_pincharea_pinch.maximumY-prop:
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
   :ref:`scale <sdk_qtquick_pinchevent>` property.
-  ``pinch.minimumRotation`` and ``pinch.maximumRotation`` limit the
   range of the Item.rotation property, but not the ``PinchEvent``
   :ref:`rotation <sdk_qtquick_pinchevent>` property.
-  ``pinch.dragAxis`` specifies whether dragging in not allowed
   (``Pinch.NoDrag``), can be done horizontally (``Pinch.XAxis``),
   vertically (``Pinch.YAxis``), or both (``Pinch.XAndYAxis``)
-  ``pinch.minimum`` and ``pinch.maximum`` limit how far the target can
   be dragged along the corresponding axes.

| 

Signal Documentation
--------------------

.. _sdk_qtquick_pincharea_pinchFinished()-prop:

+--------------------------------------------------------------------------+
|        \ pinchFinished()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has finished.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter (not the same as the
:ref:`pinch <sdk_qtquick_pincharea>` property) provides information about
the pinch gesture, including the scale, center and angle of the pinch.

The corresponding handler is ``onPinchFinished``.

| 

.. _sdk_qtquick_pincharea_pinchStarted()-prop:

+--------------------------------------------------------------------------+
|        \ pinchStarted()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has started: two touch points (fingers) have been detected, and they
have moved beyond the startDragDistance threshold for the gesture to
begin.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter (not the same as the
:ref:`pinch <sdk_qtquick_pincharea>` property) provides information about
the pinch gesture, including the scale, center and angle of the pinch.
At the time of the ``pinchStarted`` signal, these values are reset to
the default values, regardless of the results from previous gestures:
pinch.scale will be ``1.0`` and pinch.rotation will be ``0.0``. As the
gesture progresses,
:ref:`pinchUpdated <sdk_qtquick_pincharea#pinchUpdated-signal>` will report
the deviation from those defaults.

To ignore this gesture set the ``pinch.accepted`` property to false. The
gesture will be canceled and no further events will be sent.

The corresponding handler is ``onPinchStarted``.

| 

.. _sdk_qtquick_pincharea_pinchUpdated()-prop:

+--------------------------------------------------------------------------+
|        \ pinchUpdated()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the pinch area detects that a pinch gesture
has changed.

The :ref:`pinch <sdk_qtquick_pinchevent>` parameter provides information
about the pinch gesture, including the scale, center and angle of the
pinch. These values reflect changes only since the beginning of the
current gesture, and therefore are not limited by the minimum and
maximum limits in the :ref:`pinch <sdk_qtquick_pincharea>` property.

The corresponding handler is ``onPinchUpdated``.

| 
