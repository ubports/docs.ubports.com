.. _sdk_qtquick_pathcubic:

QtQuick PathCubic
=================

Defines a cubic Bezier curve with two control points

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`control1X <sdk_qtquick_pathcubic_control1X>` : real
-  :ref:`control1Y <sdk_qtquick_pathcubic_control1Y>` : real
-  :ref:`control2X <sdk_qtquick_pathcubic_control2X>` : real
-  :ref:`control2Y <sdk_qtquick_pathcubic_control2Y>` : real
-  :ref:`relativeControl1X <sdk_qtquick_pathcubic_relativeControl1X>` : real
-  :ref:`relativeControl1Y <sdk_qtquick_pathcubic_relativeControl1Y>` : real
-  :ref:`relativeControl2X <sdk_qtquick_pathcubic_relativeControl2X>` : real
-  :ref:`relativeControl2Y <sdk_qtquick_pathcubic_relativeControl2Y>` : real
-  :ref:`relativeX <sdk_qtquick_pathcubic_relativeX>` : real
-  :ref:`relativeY <sdk_qtquick_pathcubic_relativeY>` : real
-  :ref:`x <sdk_qtquick_pathcubic_x>` : real
-  :ref:`y <sdk_qtquick_pathcubic_y>` : real

Detailed Description
--------------------

The following QML produces the path shown below:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Path {                                                                                                                                             |
|                                                                                                                                                        |         startX: 20; startY: 0                                                                                                                          |
|                                                                                                                                                        |         PathCubic {                                                                                                                                    |
|                                                                                                                                                        |             x: 180; y: 0                                                                                                                               |
|                                                                                                                                                        |             control1X: -10; control1Y: 90                                                                                                              |
|                                                                                                                                                        |             control2X: 210; control2Y: 90                                                                                                              |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`Path <sdk_qtquick_path>`, :ref:`PathQuad <sdk_qtquick_pathquad>`, :ref:`PathLine <sdk_qtquick_pathline>`, :ref:`PathArc <sdk_qtquick_patharc>`, :ref:`PathCurve <sdk_qtquick_pathcurve>`, and :ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathcubic_control1X:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control1X : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the position of the first control point.

.. _sdk_qtquick_pathcubic_control1Y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control1Y : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the position of the first control point.

.. _sdk_qtquick_pathcubic_control2X:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control2X : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the position of the second control point.

.. _sdk_qtquick_pathcubic_control2Y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control2Y : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the position of the second control point.

.. _sdk_qtquick_pathcubic_relativeControl1X:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeControl1X : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic_control1X>`, :ref:`control1Y <sdk_qtquick_pathcubic_control1Y>`, :ref:`control2X <sdk_qtquick_pathcubic_control2X>`, and :ref:`control2Y <sdk_qtquick_pathcubic_control2Y>`.

.. _sdk_qtquick_pathcubic_relativeControl1Y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeControl1Y : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic_control1X>`, :ref:`control1Y <sdk_qtquick_pathcubic_control1Y>`, :ref:`control2X <sdk_qtquick_pathcubic_control2X>`, and :ref:`control2Y <sdk_qtquick_pathcubic_control2Y>`.

.. _sdk_qtquick_pathcubic_relativeControl2X:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeControl2X : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic_control1X>`, :ref:`control1Y <sdk_qtquick_pathcubic_control1Y>`, :ref:`control2X <sdk_qtquick_pathcubic_control2X>`, and :ref:`control2Y <sdk_qtquick_pathcubic_control2Y>`.

.. _sdk_qtquick_pathcubic_relativeControl2Y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeControl2Y : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic_control1X>`, :ref:`control1Y <sdk_qtquick_pathcubic_control1Y>`, :ref:`control2X <sdk_qtquick_pathcubic_control2X>`, and :ref:`control2Y <sdk_qtquick_pathcubic_control2Y>`.

.. _sdk_qtquick_pathcubic_relativeX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeX : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcubic_x>` and :ref:`y <sdk_qtquick_pathcubic_y>`.

.. _sdk_qtquick_pathcubic_relativeY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeY : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcubic_x>` and :ref:`y <sdk_qtquick_pathcubic_y>`.

.. _sdk_qtquick_pathcubic_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcubic_relativeX>` and :ref:`relativeY <sdk_qtquick_pathcubic_relativeY>`.

.. _sdk_qtquick_pathcubic_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcubic_relativeX>` and :ref:`relativeY <sdk_qtquick_pathcubic_relativeY>`.

