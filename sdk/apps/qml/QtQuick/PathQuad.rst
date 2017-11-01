Defines a quadratic Bezier curve with a control point

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`controlX </sdk/apps/qml/QtQuick/PathQuad#controlX-prop>`__**** :
   real
-  ****`controlY </sdk/apps/qml/QtQuick/PathQuad#controlY-prop>`__**** :
   real
-  ****`relativeControlX </sdk/apps/qml/QtQuick/PathQuad#relativeControlX-prop>`__****
   : real
-  ****`relativeControlY </sdk/apps/qml/QtQuick/PathQuad#relativeControlY-prop>`__****
   : real
-  ****`relativeX </sdk/apps/qml/QtQuick/PathQuad#relativeX-prop>`__****
   : real
-  ****`relativeY </sdk/apps/qml/QtQuick/PathQuad#relativeY-prop>`__****
   : real
-  ****`x </sdk/apps/qml/QtQuick/PathQuad#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/PathQuad#y-prop>`__**** : real

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

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ controlX : real                                                 |
+--------------------------------------------------------------------------+

Defines the position of the control point.

| 

+--------------------------------------------------------------------------+
|        \ controlY : real                                                 |
+--------------------------------------------------------------------------+

Defines the position of the control point.

| 

+--------------------------------------------------------------------------+
|        \ relativeControlX : real                                         |
+--------------------------------------------------------------------------+

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

**See also** `controlX </sdk/apps/qml/QtQuick/PathQuad#controlX-prop>`__
and `controlY </sdk/apps/qml/QtQuick/PathQuad#controlY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeControlY : real                                         |
+--------------------------------------------------------------------------+

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

**See also** `controlX </sdk/apps/qml/QtQuick/PathQuad#controlX-prop>`__
and `controlY </sdk/apps/qml/QtQuick/PathQuad#controlY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathQuad#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathQuad#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathQuad#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathQuad#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathQuad#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathQuad#relativeY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathQuad#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathQuad#relativeY-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathQuad/images/declarative-pathquad.png

