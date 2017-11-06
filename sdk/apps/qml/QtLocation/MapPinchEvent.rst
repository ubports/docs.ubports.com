.. _sdk_qtlocation_mappinchevent:

QtLocation MapPinchEvent
========================

MapPinchEvent type provides basic information about pinch event.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`accepted <sdk_qtlocation_mappinchevent_accepted>` : bool
-  :ref:`angle <sdk_qtlocation_mappinchevent_angle>` : real
-  :ref:`center <sdk_qtlocation_mappinchevent_center>` : QPoint
-  :ref:`point1 <sdk_qtlocation_mappinchevent_point1>` : QPoint
-  :ref:`point2 <sdk_qtlocation_mappinchevent_point2>` : QPoint
-  :ref:`pointCount <sdk_qtlocation_mappinchevent_pointCount>` : int

Detailed Description
--------------------

:ref:`MapPinchEvent <sdk_qtlocation_mappinchevent>` type provides basic information about pinch event. They are present in handlers of MapPinch (for example pinchStarted/pinchUpdated). Events are only guaranteed to be valid for the duration of the handler.

Except for the :ref:`accepted <sdk_qtlocation_mappinchevent_accepted>` property, all properties are read-only.

Example Usage
~~~~~~~~~~~~~

The following example enables the pinch gesture on a map and reacts to the finished event.

.. code:: cpp

    Map {
        id: map
        gesture.enabled: true
        gesture.onPinchFinished:{
            var coordinate1 = map.toCoordinate(gesture.point1)
            var coordinate2 = map.toCoordinate(gesture.point2)
            console.log("Pinch started at:")
            console.log("        Points (" + gesture.point1.x + ", " + gesture.point1.y + ") - (" + gesture.point2.x + ", " + gesture.point2.y + ")")
            console.log("   Coordinates (" + coordinate1.latitude + ", " + coordinate1.longitude + ") - (" + coordinate2.latitude + ", " + coordinate2.longitude + ")")
        }
    }

Property Documentation
----------------------

.. _sdk_qtlocation_mappinchevent_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Setting this property to false in the ``MapPinch::onPinchStarted`` handler will result in no further pinch events being generated, and the gesture ignored.

.. _sdk_qtlocation_mappinchevent_angle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angle : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the current angle between the two points in the range -180 to 180. Positive values for the angles mean counter-clockwise while negative values mean the clockwise direction. Zero degrees is at the 3 o'clock position.

.. _sdk_qtlocation_mappinchevent_center:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| center : QPoint                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the current center point.

.. _sdk_qtlocation_mappinchevent_point1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| point1 : QPoint                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

.. _sdk_qtlocation_mappinchevent_point2:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| point2 : QPoint                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

.. _sdk_qtlocation_mappinchevent_pointCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pointCount : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the number of points currently touched. The MapPinch will not react until two touch points have initiated a gesture, but will remain active until all touch points have been released.

