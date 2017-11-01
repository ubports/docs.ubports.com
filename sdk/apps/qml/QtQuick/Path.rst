Defines a path for use by PathView

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`closed </sdk/apps/qml/QtQuick/Path#closed-prop>`__**** : bool
-  ****`pathElements </sdk/apps/qml/QtQuick/Path#pathElements-prop>`__****
   : list<PathElement>
-  ****`startX </sdk/apps/qml/QtQuick/Path#startX-prop>`__**** : real
-  ****`startY </sdk/apps/qml/QtQuick/Path#startY-prop>`__**** : real

Detailed Description
--------------------

A Path is composed of one or more path segments -
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__,
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

The spacing of the items along the Path can be adjusted via a
`PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__ object.

`PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__ allows named
attributes with values to be defined along the path.

**See also** `PathView </sdk/apps/qml/QtQuick/PathView/>`__,
`PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__,
`PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ closed : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the start and end of the path are identical.

| 

+--------------------------------------------------------------------------+
|        \ [default] pathElements :                                        |
| list<`PathElement </sdk/apps/qml/QtQuick/PathElement/>`__>               |
+--------------------------------------------------------------------------+

This property holds the objects composing the path.

A path can contain the following path objects:

-  `PathLine </sdk/apps/qml/QtQuick/PathLine/>`__ - a straight line to a
   given position.
-  `PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__ - a quadratic Bezier
   curve to a given position with a control point.
-  `PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__ - a cubic Bezier
   curve to a given position with two control points.
-  `PathArc </sdk/apps/qml/QtQuick/PathArc/>`__ - an arc to a given
   position with a radius.
-  `PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__ - a path specified as an
   SVG path data string.
-  `PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__ - a point on a
   Catmull-Rom curve.
-  `PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__ - an
   attribute at a given position in the path.
-  `PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__ - a way to
   spread out items along various segments of the path.

.. code:: qml

        PathView {
            anchors.fill: parent
            model: ContactModel {}
            delegate: delegate
            path: Path {
                startX: 120; startY: 100
                PathAttribute { name: "iconScale"; value: 1.0 }
                PathAttribute { name: "iconOpacity"; value: 1.0 }
                PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
                PathAttribute { name: "iconScale"; value: 0.3 }
                PathAttribute { name: "iconOpacity"; value: 0.5 }
                PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
            }
        }

| 

+--------------------------------------------------------------------------+
|        \ startX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the path.

| 

+--------------------------------------------------------------------------+
|        \ startY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the starting position of the path.

| 
