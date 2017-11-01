Defines a cubic Bezier curve with two control points

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`control1X </sdk/apps/qml/QtQuick/PathCubic#control1X-prop>`__****
   : real
-  ****`control1Y </sdk/apps/qml/QtQuick/PathCubic#control1Y-prop>`__****
   : real
-  ****`control2X </sdk/apps/qml/QtQuick/PathCubic#control2X-prop>`__****
   : real
-  ****`control2Y </sdk/apps/qml/QtQuick/PathCubic#control2Y-prop>`__****
   : real
-  ****`relativeControl1X </sdk/apps/qml/QtQuick/PathCubic#relativeControl1X-prop>`__****
   : real
-  ****`relativeControl1Y </sdk/apps/qml/QtQuick/PathCubic#relativeControl1Y-prop>`__****
   : real
-  ****`relativeControl2X </sdk/apps/qml/QtQuick/PathCubic#relativeControl2X-prop>`__****
   : real
-  ****`relativeControl2Y </sdk/apps/qml/QtQuick/PathCubic#relativeControl2Y-prop>`__****
   : real
-  ****`relativeX </sdk/apps/qml/QtQuick/PathCubic#relativeX-prop>`__****
   : real
-  ****`relativeY </sdk/apps/qml/QtQuick/PathCubic#relativeY-prop>`__****
   : real
-  ****`x </sdk/apps/qml/QtQuick/PathCubic#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/PathCubic#y-prop>`__**** : real

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

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ control1X : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the first control point.

| 

+--------------------------------------------------------------------------+
|        \ control1Y : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the first control point.

| 

+--------------------------------------------------------------------------+
|        \ control2X : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the second control point.

| 

+--------------------------------------------------------------------------+
|        \ control2Y : real                                                |
+--------------------------------------------------------------------------+

Defines the position of the second control point.

| 

+--------------------------------------------------------------------------+
|        \ relativeControl1X : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also**
`control1X </sdk/apps/qml/QtQuick/PathCubic#control1X-prop>`__,
`control1Y </sdk/apps/qml/QtQuick/PathCubic#control1Y-prop>`__,
`control2X </sdk/apps/qml/QtQuick/PathCubic#control2X-prop>`__, and
`control2Y </sdk/apps/qml/QtQuick/PathCubic#control2Y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeControl1Y : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also**
`control1X </sdk/apps/qml/QtQuick/PathCubic#control1X-prop>`__,
`control1Y </sdk/apps/qml/QtQuick/PathCubic#control1Y-prop>`__,
`control2X </sdk/apps/qml/QtQuick/PathCubic#control2X-prop>`__, and
`control2Y </sdk/apps/qml/QtQuick/PathCubic#control2Y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeControl2X : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also**
`control1X </sdk/apps/qml/QtQuick/PathCubic#control1X-prop>`__,
`control1Y </sdk/apps/qml/QtQuick/PathCubic#control1Y-prop>`__,
`control2X </sdk/apps/qml/QtQuick/PathCubic#control2X-prop>`__, and
`control2Y </sdk/apps/qml/QtQuick/PathCubic#control2Y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeControl2Y : real                                        |
+--------------------------------------------------------------------------+

Defines the positions of the control points relative to the curve's
start.

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

**See also**
`control1X </sdk/apps/qml/QtQuick/PathCubic#control1X-prop>`__,
`control1Y </sdk/apps/qml/QtQuick/PathCubic#control1Y-prop>`__,
`control2X </sdk/apps/qml/QtQuick/PathCubic#control2X-prop>`__, and
`control2Y </sdk/apps/qml/QtQuick/PathCubic#control2Y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathCubic#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathCubic#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathCubic#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathCubic#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathCubic#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathCubic#relativeY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathCubic#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathCubic#relativeY-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathCubic/images/declarative-pathcubic.png

