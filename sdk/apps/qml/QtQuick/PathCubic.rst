.. _sdk_qtquick_pathcubic:
QtQuick PathCubic
=================

Defines a cubic Bezier curve with two control points

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`control1X <sdk_qtquick_pathcubic_control1X-prop>` : real
-  :ref:`control1Y <sdk_qtquick_pathcubic_control1Y-prop>` : real
-  :ref:`control2X <sdk_qtquick_pathcubic_control2X-prop>` : real
-  :ref:`control2Y <sdk_qtquick_pathcubic_control2Y-prop>` : real
-  :ref:`relativeControl1X <sdk_qtquick_pathcubic_relativeControl1X-prop>`
   : real
-  :ref:`relativeControl1Y <sdk_qtquick_pathcubic_relativeControl1Y-prop>`
   : real
-  :ref:`relativeControl2X <sdk_qtquick_pathcubic_relativeControl2X-prop>`
   : real
-  :ref:`relativeControl2Y <sdk_qtquick_pathcubic_relativeControl2Y-prop>`
   : real
-  :ref:`relativeX <sdk_qtquick_pathcubic_relativeX-prop>` : real
-  :ref:`relativeY <sdk_qtquick_pathcubic_relativeY-prop>` : real
-  :ref:`x <sdk_qtquick_pathcubic_x-prop>` : real
-  :ref:`y <sdk_qtquick_pathcubic_y-prop>` : real

Detailed Description
--------------------

The following QML produces the path shown below:

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 20; startY: 0        |
|                                      |         PathCubic {                  |
|                                      |             x: 180; y: 0             |
|                                      |             control1X: -10; control1 |
|                                      | Y: 90                                |
|                                      |             control2X: 210; control2 |
|                                      | Y: 90                                |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** :ref:`Path <sdk_qtquick_path>`,
:ref:`PathQuad <sdk_qtquick_pathquad>`,
:ref:`PathLine <sdk_qtquick_pathline>`, `PathArc <sdk_qtquick_patharc>`,
:ref:`PathCurve <sdk_qtquick_pathcurve>`, and
:ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathcubic_control1X-prop:

+--------------------------------------------------------------------------+
|        \ control1X : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the first control point.

| 

.. _sdk_qtquick_pathcubic_control1Y-prop:

+--------------------------------------------------------------------------+
|        \ control1Y : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the first control point.

| 

.. _sdk_qtquick_pathcubic_control2X-prop:

+--------------------------------------------------------------------------+
|        \ control2X : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the second control point.

| 

.. _sdk_qtquick_pathcubic_control2Y-prop:

+--------------------------------------------------------------------------+
|        \ control2Y : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the second control point.

| 

.. _sdk_qtquick_pathcubic_relativeControl1X-prop:

+--------------------------------------------------------------------------+
|        \ relativeControl1X : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic#control1X-prop>`,
:ref:`control1Y <sdk_qtquick_pathcubic#control1Y-prop>`,
:ref:`control2X <sdk_qtquick_pathcubic#control2X-prop>`, and
:ref:`control2Y <sdk_qtquick_pathcubic#control2Y-prop>`.

| 

.. _sdk_qtquick_pathcubic_relativeControl1Y-prop:

+--------------------------------------------------------------------------+
|        \ relativeControl1Y : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic#control1X-prop>`,
:ref:`control1Y <sdk_qtquick_pathcubic#control1Y-prop>`,
:ref:`control2X <sdk_qtquick_pathcubic#control2X-prop>`, and
:ref:`control2Y <sdk_qtquick_pathcubic#control2Y-prop>`.

| 

.. _sdk_qtquick_pathcubic_relativeControl2X-prop:

+--------------------------------------------------------------------------+
|        \ relativeControl2X : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic#control1X-prop>`,
:ref:`control1Y <sdk_qtquick_pathcubic#control1Y-prop>`,
:ref:`control2X <sdk_qtquick_pathcubic#control2X-prop>`, and
:ref:`control2Y <sdk_qtquick_pathcubic#control2Y-prop>`.

| 

.. _sdk_qtquick_pathcubic_relativeControl2Y-prop:

+--------------------------------------------------------------------------+
|        \ relativeControl2Y : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also** :ref:`control1X <sdk_qtquick_pathcubic#control1X-prop>`,
:ref:`control1Y <sdk_qtquick_pathcubic#control1Y-prop>`,
:ref:`control2X <sdk_qtquick_pathcubic#control2X-prop>`, and
:ref:`control2Y <sdk_qtquick_pathcubic#control2Y-prop>`.

| 

.. _sdk_qtquick_pathcubic_relativeX-prop:

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcubic#x-prop>` and
:ref:`y <sdk_qtquick_pathcubic#y-prop>`.

| 

.. _sdk_qtquick_pathcubic_relativeY-prop:

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcubic#x-prop>` and
:ref:`y <sdk_qtquick_pathcubic#y-prop>`.

| 

.. _sdk_qtquick_pathcubic_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcubic#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathcubic#relativeY-prop>`.

| 

.. _sdk_qtquick_pathcubic_y-prop:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcubic#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathcubic#relativeY-prop>`.

| 

.. |image0| image:: /mediasdk_qtquick_pathcubicimages/declarative-pathcubic.png

