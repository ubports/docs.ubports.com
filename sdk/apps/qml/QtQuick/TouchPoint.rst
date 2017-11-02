.. _sdk_qtquick_touchpoint:
QtQuick TouchPoint
==================

Describes a touch point in a MultiPointTouchArea

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`area <sdk_qtquick_touchpoint_area-prop>` : rectangle
-  :ref:`pointId <sdk_qtquick_touchpoint_pointId-prop>` : int
-  :ref:`pressed <sdk_qtquick_touchpoint_pressed-prop>` : bool
-  :ref:`pressure <sdk_qtquick_touchpoint_pressure-prop>` : real
-  :ref:`previousX <sdk_qtquick_touchpoint_previousX-prop>` : real
-  :ref:`previousY <sdk_qtquick_touchpoint_previousY-prop>` : real
-  :ref:`sceneX <sdk_qtquick_touchpoint_sceneX-prop>` : real
-  :ref:`sceneY <sdk_qtquick_touchpoint_sceneY-prop>` : real
-  :ref:`startX <sdk_qtquick_touchpoint_startX-prop>` : real
-  :ref:`startY <sdk_qtquick_touchpoint_startY-prop>` : real
-  :ref:`velocity <sdk_qtquick_touchpoint_velocity-prop>` :
   vector2d
-  :ref:`x <sdk_qtquick_touchpoint_x-prop>` : real
-  :ref:`y <sdk_qtquick_touchpoint_y-prop>` : real

Detailed Description
--------------------

The :ref:`TouchPoint <sdk_qtquick_touchpoint>` type contains information
about a touch point, such as the current position, pressure, and area.

Property Documentation
----------------------

.. _sdk_qtquick_touchpoint_area-prop:

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

.. _sdk_qtquick_touchpoint_pointId-prop:

+--------------------------------------------------------------------------+
|        \ pointId : int                                                   |
+--------------------------------------------------------------------------+

This property holds the point id of the touch point.

Each touch point within a
:ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` will have a
unique id.

| 

.. _sdk_qtquick_touchpoint_pressed-prop:

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the touch point is currently pressed.

| 

.. _sdk_qtquick_touchpoint_pressure-prop:

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

.. _sdk_qtquick_touchpoint_previousX-prop:

+--------------------------------------------------------------------------+
|        \ previousX : real                                                |
+--------------------------------------------------------------------------+

These properties hold the previous position of the touch point.

| 

.. _sdk_qtquick_touchpoint_previousY-prop:

+--------------------------------------------------------------------------+
|        \ previousY : real                                                |
+--------------------------------------------------------------------------+

These properties hold the previous position of the touch point.

| 

.. _sdk_qtquick_touchpoint_sceneX-prop:

+--------------------------------------------------------------------------+
|        \ sceneX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point in scene
coordinates.

| 

.. _sdk_qtquick_touchpoint_sceneY-prop:

+--------------------------------------------------------------------------+
|        \ sceneY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the current position of the touch point in scene
coordinates.

| 

.. _sdk_qtquick_touchpoint_startX-prop:

+--------------------------------------------------------------------------+
|        \ startX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the touch point.

| 

.. _sdk_qtquick_touchpoint_startY-prop:

+--------------------------------------------------------------------------+
|        \ startY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the touch point.

| 

.. _sdk_qtquick_touchpoint_velocity-prop:

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

.. _sdk_qtquick_touchpoint_x-prop:

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
