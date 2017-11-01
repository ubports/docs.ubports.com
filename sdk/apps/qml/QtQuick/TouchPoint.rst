Describes a touch point in a MultiPointTouchArea

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`area </sdk/apps/qml/QtQuick/TouchPoint#area-prop>`__**** :
   rectangle
-  ****`pointId </sdk/apps/qml/QtQuick/TouchPoint#pointId-prop>`__**** :
   int
-  ****`pressed </sdk/apps/qml/QtQuick/TouchPoint#pressed-prop>`__**** :
   bool
-  ****`pressure </sdk/apps/qml/QtQuick/TouchPoint#pressure-prop>`__****
   : real
-  ****`previousX </sdk/apps/qml/QtQuick/TouchPoint#previousX-prop>`__****
   : real
-  ****`previousY </sdk/apps/qml/QtQuick/TouchPoint#previousY-prop>`__****
   : real
-  ****`sceneX </sdk/apps/qml/QtQuick/TouchPoint#sceneX-prop>`__**** :
   real
-  ****`sceneY </sdk/apps/qml/QtQuick/TouchPoint#sceneY-prop>`__**** :
   real
-  ****`startX </sdk/apps/qml/QtQuick/TouchPoint#startX-prop>`__**** :
   real
-  ****`startY </sdk/apps/qml/QtQuick/TouchPoint#startY-prop>`__**** :
   real
-  ****`velocity </sdk/apps/qml/QtQuick/TouchPoint#velocity-prop>`__****
   : vector2d
-  ****`x </sdk/apps/qml/QtQuick/TouchPoint#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/TouchPoint#y-prop>`__**** : real

Detailed Description
--------------------

The `TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__ type contains
information about a touch point, such as the current position, pressure,
and area.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ area : rectangle                                                |
+--------------------------------------------------------------------------+

These properties hold additional information about the current state of
the touch point.

-  ``pressure`` is a value in the range of 0.0 to 1.0.
-  ``velocity`` is a vector with magnitude reported in pixels per
   second.
-  ``area`` is a rectangle covering the area of the touch point,
   centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

| 

+--------------------------------------------------------------------------+
|        \ pointId : int                                                   |
+--------------------------------------------------------------------------+

This property holds the point id of the touch point.

Each touch point within a
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
will have a unique id.

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the touch point is currently pressed.

| 

+--------------------------------------------------------------------------+
|        \ pressure : real                                                 |
+--------------------------------------------------------------------------+

These properties hold additional information about the current state of
the touch point.

-  ``pressure`` is a value in the range of 0.0 to 1.0.
-  ``velocity`` is a vector with magnitude reported in pixels per
   second.
-  ``area`` is a rectangle covering the area of the touch point,
   centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

| 

+--------------------------------------------------------------------------+
|        \ previousX : real                                                |
+--------------------------------------------------------------------------+

These properties hold the previous position of the touch point.

| 

+--------------------------------------------------------------------------+
|        \ previousY : real                                                |
+--------------------------------------------------------------------------+

These properties hold the previous position of the touch point.

| 

+--------------------------------------------------------------------------+
|        \ sceneX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point in scene
coordinates.

| 

+--------------------------------------------------------------------------+
|        \ sceneY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point in scene
coordinates.

| 

+--------------------------------------------------------------------------+
|        \ startX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the touch point.

| 

+--------------------------------------------------------------------------+
|        \ startY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the touch point.

| 

+--------------------------------------------------------------------------+
|        \ velocity : vector2d                                             |
+--------------------------------------------------------------------------+

These properties hold additional information about the current state of
the touch point.

-  ``pressure`` is a value in the range of 0.0 to 1.0.
-  ``velocity`` is a vector with magnitude reported in pixels per
   second.
-  ``area`` is a rectangle covering the area of the touch point,
   centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point.

| 
