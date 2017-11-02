.. _sdk_qtquick_pathquad:
QtQuick PathQuad
================

Defines a quadratic Bezier curve with a control point

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`controlX <sdk_qtquick_pathquad_controlX-prop>` : real
-  :ref:`controlY <sdk_qtquick_pathquad_controlY-prop>` : real
-  :ref:`relativeControlX <sdk_qtquick_pathquad_relativeControlX-prop>`
   : real
-  :ref:`relativeControlY <sdk_qtquick_pathquad_relativeControlY-prop>`
   : real
-  :ref:`relativeX <sdk_qtquick_pathquad_relativeX-prop>` : real
-  :ref:`relativeY <sdk_qtquick_pathquad_relativeY-prop>` : real
-  :ref:`x <sdk_qtquick_pathquad_x-prop>` : real
-  :ref:`y <sdk_qtquick_pathquad_y-prop>` : real

Detailed Description
--------------------

The following QML produces the path shown below:

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 0; startY: 0         |
|                                      |         PathQuad { x: 200; y: 0; con |
|                                      | trolX: 100; controlY: 150 }          |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** :ref:`Path <sdk_qtquick_path>`,
:ref:`PathCubic <sdk_qtquick_pathcubic>`,
:ref:`PathLine <sdk_qtquick_pathline>`, `PathArc <sdk_qtquick_patharc>`,
:ref:`PathCurve <sdk_qtquick_pathcurve>`, and
:ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathquad_controlX-prop:

+--------------------------------------------------------------------------+
|        \ controlX : real                                                 |
+--------------------------------------------------------------------------+

Defines the position of the control point.

| 

.. _sdk_qtquick_pathquad_controlY-prop:

+--------------------------------------------------------------------------+
|        \ controlY : real                                                 |
+--------------------------------------------------------------------------+

Defines the position of the control point.

| 

.. _sdk_qtquick_pathquad_relativeControlX-prop:

+--------------------------------------------------------------------------+
|        \ relativeControlX : real                                         |
+--------------------------------------------------------------------------+

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

**See also** :ref:`controlX <sdk_qtquick_pathquad#controlX-prop>` and
:ref:`controlY <sdk_qtquick_pathquad#controlY-prop>`.

| 

.. _sdk_qtquick_pathquad_relativeControlY-prop:

+--------------------------------------------------------------------------+
|        \ relativeControlY : real                                         |
+--------------------------------------------------------------------------+

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

**See also** :ref:`controlX <sdk_qtquick_pathquad#controlX-prop>` and
:ref:`controlY <sdk_qtquick_pathquad#controlY-prop>`.

| 

.. _sdk_qtquick_pathquad_relativeX-prop:

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathquad#x-prop>` and
:ref:`y <sdk_qtquick_pathquad#y-prop>`.

| 

.. _sdk_qtquick_pathquad_relativeY-prop:

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathquad#x-prop>` and
:ref:`y <sdk_qtquick_pathquad#y-prop>`.

| 

.. _sdk_qtquick_pathquad_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathquad#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathquad#relativeY-prop>`.

| 

.. _sdk_qtquick_pathquad_y-prop:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathquad#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathquad#relativeY-prop>`.

| 

.. |image0| image:: /mediasdk_qtquick_pathquadimages/declarative-pathquad.png

