Defines a point on a Catmull-Rom curve

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`relativeX </sdk/apps/qml/QtQuick/PathCurve#relativeX-prop>`__****
   : real
-  ****`relativeY </sdk/apps/qml/QtQuick/PathCurve#relativeY-prop>`__****
   : real
-  ****`x </sdk/apps/qml/QtQuick/PathCurve#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/PathCurve#y-prop>`__**** : real

Detailed Description
--------------------

`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__ provides an easy way to
specify a curve passing directly through a set of points. Typically
multiple PathCurves are used in a series, as the following example
demonstrates:

.. code:: qml

    import QtQuick 2.0
    Canvas {
        width: 400; height: 200
        contextType: "2d"
        Path {
            id: myPath
            startX: 0; startY: 100
            PathCurve { x: 75; y: 75 }
            PathCurve { x: 200; y: 150 }
            PathCurve { x: 325; y: 25 }
            PathCurve { x: 400; y: 100 }
        }
        onPaint: {
            context.strokeStyle = Qt.rgba(.4,.6,.8);
            context.path = myPath;
            context.stroke();
        }
    }

This example produces the following path (with the starting point and
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__ points highlighted in
red):

|image0|

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathCurve#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathCurve#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathCurve#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathCurve#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathCurve#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathCurve#relativeY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathCurve#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathCurve#relativeY-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathCurve/images/declarative-pathcurve.png

