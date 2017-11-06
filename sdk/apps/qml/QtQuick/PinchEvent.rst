.. _sdk_qtquick_pinchevent:

QtQuick PinchEvent
==================

For specifying information about a pinch event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`accepted <sdk_qtquick_pinchevent_accepted>` : bool
-  :ref:`angle <sdk_qtquick_pinchevent_angle>` : real
-  :ref:`center <sdk_qtquick_pinchevent_center>` : QPointF
-  :ref:`point1 <sdk_qtquick_pinchevent_point1>` : QPointF
-  :ref:`point2 <sdk_qtquick_pinchevent_point2>` : QPointF
-  :ref:`pointCount <sdk_qtquick_pinchevent_pointCount>` : int
-  :ref:`previousAngle <sdk_qtquick_pinchevent_previousAngle>` : real
-  :ref:`previousCenter <sdk_qtquick_pinchevent_previousCenter>` : QPointF
-  :ref:`previousScale <sdk_qtquick_pinchevent_previousScale>` : real
-  :ref:`rotation <sdk_qtquick_pinchevent_rotation>` : real
-  :ref:`scale <sdk_qtquick_pinchevent_scale>` : real
-  :ref:`startCenter <sdk_qtquick_pinchevent_startCenter>` : QPointF
-  :ref:`startPoint1 <sdk_qtquick_pinchevent_startPoint1>` : QPointF
-  :ref:`startPoint2 <sdk_qtquick_pinchevent_startPoint2>` : QPointF

Detailed Description
--------------------

**The PinchEvent type was added in QtQuick 1.1**

The ``center``, ``startCenter``, ``previousCenter`` properties provide the center position between the two touch points.

The ``scale`` and ``previousScale`` properties provide the scale factor.

The ``angle``, ``previousAngle`` and ``rotation`` properties provide the angle between the two points and the amount of rotation.

The ``point1``, ``point2``, ``startPoint1``, ``startPoint2`` properties provide the positions of the touch points.

The ``accepted`` property may be set to false in the ``onPinchStarted`` handler if the gesture should not be handled.

**See also** :ref:`PinchArea <sdk_qtquick_pincharea>`.

Property Documentation
----------------------

.. _sdk_qtquick_pinchevent_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Setting this property to false in the ``PinchArea::onPinchStarted`` handler will result in no further pinch events being generated, and the gesture ignored.

.. _sdk_qtquick_pinchevent_angle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angle : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

.. _sdk_qtquick_pinchevent_center:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| center : QPointF                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the position of the center point between the two touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

.. _sdk_qtquick_pinchevent_point1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| point1 : QPointF                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points when the second point was touched.

.. _sdk_qtquick_pinchevent_point2:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| point2 : QPointF                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points when the second point was touched.

.. _sdk_qtquick_pinchevent_pointCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pointCount : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the number of points currently touched. The :ref:`PinchArea <sdk_qtquick_pincharea>` will not react until two touch points have initited a gesture, but will remain active until all touch points have been released.

.. _sdk_qtquick_pinchevent_previousAngle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| previousAngle : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

.. _sdk_qtquick_pinchevent_previousCenter:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| previousCenter : QPointF                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the position of the center point between the two touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

.. _sdk_qtquick_pinchevent_previousScale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| previousScale : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the scale factor determined by the change in distance between the two touch points.

-  ``scale`` is the current scale factor.
-  ``previousScale`` is the scale factor of the previous event.

When a pinch gesture is started, the scale is ``1.0``.

.. _sdk_qtquick_pinchevent_rotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotation : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

.. _sdk_qtquick_pinchevent_scale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| scale : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the scale factor determined by the change in distance between the two touch points.

-  ``scale`` is the current scale factor.
-  ``previousScale`` is the scale factor of the previous event.

When a pinch gesture is started, the scale is ``1.0``.

.. _sdk_qtquick_pinchevent_startCenter:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startCenter : QPointF                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the position of the center point between the two touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

.. _sdk_qtquick_pinchevent_startPoint1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startPoint1 : QPointF                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points when the second point was touched.

.. _sdk_qtquick_pinchevent_startPoint2:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startPoint2 : QPointF                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points when the second point was touched.

