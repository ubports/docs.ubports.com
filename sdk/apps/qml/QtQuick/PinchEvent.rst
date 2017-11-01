For specifying information about a pinch event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`accepted </sdk/apps/qml/QtQuick/PinchEvent#accepted-prop>`__****
   : bool
-  ****`angle </sdk/apps/qml/QtQuick/PinchEvent#angle-prop>`__**** :
   real
-  ****`center </sdk/apps/qml/QtQuick/PinchEvent#center-prop>`__**** :
   QPointF
-  ****`point1 </sdk/apps/qml/QtQuick/PinchEvent#point1-prop>`__**** :
   QPointF
-  ****`point2 </sdk/apps/qml/QtQuick/PinchEvent#point2-prop>`__**** :
   QPointF
-  ****`pointCount </sdk/apps/qml/QtQuick/PinchEvent#pointCount-prop>`__****
   : int
-  ****`previousAngle </sdk/apps/qml/QtQuick/PinchEvent#previousAngle-prop>`__****
   : real
-  ****`previousCenter </sdk/apps/qml/QtQuick/PinchEvent#previousCenter-prop>`__****
   : QPointF
-  ****`previousScale </sdk/apps/qml/QtQuick/PinchEvent#previousScale-prop>`__****
   : real
-  ****`rotation </sdk/apps/qml/QtQuick/PinchEvent#rotation-prop>`__****
   : real
-  ****`scale </sdk/apps/qml/QtQuick/PinchEvent#scale-prop>`__**** :
   real
-  ****`startCenter </sdk/apps/qml/QtQuick/PinchEvent#startCenter-prop>`__****
   : QPointF
-  ****`startPoint1 </sdk/apps/qml/QtQuick/PinchEvent#startPoint1-prop>`__****
   : QPointF
-  ****`startPoint2 </sdk/apps/qml/QtQuick/PinchEvent#startPoint2-prop>`__****
   : QPointF

Detailed Description
--------------------

**The PinchEvent type was added in QtQuick 1.1**

The ``center``, ``startCenter``, ``previousCenter`` properties provide
the center position between the two touch points.

The ``scale`` and ``previousScale`` properties provide the scale factor.

The ``angle``, ``previousAngle`` and ``rotation`` properties provide the
angle between the two points and the amount of rotation.

The ``point1``, ``point2``, ``startPoint1``, ``startPoint2`` properties
provide the positions of the touch points.

The ``accepted`` property may be set to false in the ``onPinchStarted``
handler if the gesture should not be handled.

**See also** `PinchArea </sdk/apps/qml/QtQuick/PinchArea/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

Setting this property to false in the ``PinchArea::onPinchStarted``
handler will result in no further pinch events being generated, and the
gesture ignored.

| 

+--------------------------------------------------------------------------+
|        \ angle : real                                                    |
+--------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range
   -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

| 

+--------------------------------------------------------------------------+
|        \ center : QPointF                                                |
+--------------------------------------------------------------------------+

These properties hold the position of the center point between the two
touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

| 

+--------------------------------------------------------------------------+
|        \ point1 : QPointF                                                |
+--------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points
   when the second point was touched.

| 

+--------------------------------------------------------------------------+
|        \ point2 : QPointF                                                |
+--------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points
   when the second point was touched.

| 

+--------------------------------------------------------------------------+
|        \ pointCount : int                                                |
+--------------------------------------------------------------------------+

Holds the number of points currently touched. The
`PinchArea </sdk/apps/qml/QtQuick/PinchArea/>`__ will not react until
two touch points have initited a gesture, but will remain active until
all touch points have been released.

| 

+--------------------------------------------------------------------------+
|        \ previousAngle : real                                            |
+--------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range
   -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

| 

+--------------------------------------------------------------------------+
|        \ previousCenter : QPointF                                        |
+--------------------------------------------------------------------------+

These properties hold the position of the center point between the two
touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

| 

+--------------------------------------------------------------------------+
|        \ previousScale : real                                            |
+--------------------------------------------------------------------------+

These properties hold the scale factor determined by the change in
distance between the two touch points.

-  ``scale`` is the current scale factor.
-  ``previousScale`` is the scale factor of the previous event.

When a pinch gesture is started, the scale is ``1.0``.

| 

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

These properties hold the angle between the two touch points.

-  ``angle`` is the current angle between the two points in the range
   -180 to 180.
-  ``previousAngle`` is the angle of the previous event.
-  ``rotation`` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is ``0.0``.

| 

+--------------------------------------------------------------------------+
|        \ scale : real                                                    |
+--------------------------------------------------------------------------+

These properties hold the scale factor determined by the change in
distance between the two touch points.

-  ``scale`` is the current scale factor.
-  ``previousScale`` is the scale factor of the previous event.

When a pinch gesture is started, the scale is ``1.0``.

| 

+--------------------------------------------------------------------------+
|        \ startCenter : QPointF                                           |
+--------------------------------------------------------------------------+

These properties hold the position of the center point between the two
touch points.

-  ``center`` is the current center point
-  ``previousCenter`` is the center point of the previous event.
-  ``startCenter`` is the center point when the gesture began

| 

+--------------------------------------------------------------------------+
|        \ startPoint1 : QPointF                                           |
+--------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points
   when the second point was touched.

| 

+--------------------------------------------------------------------------+
|        \ startPoint2 : QPointF                                           |
+--------------------------------------------------------------------------+

These properties provide the actual touch points generating the pinch.

-  ``point1`` and ``point2`` hold the current positions of the points.
-  ``startPoint1`` and ``startPoint2`` hold the positions of the points
   when the second point was touched.

| 
