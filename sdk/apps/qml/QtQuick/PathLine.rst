Defines a straight line

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`relativeX </sdk/apps/qml/QtQuick/PathLine#relativeX-prop>`__****
   : real
-  ****`relativeY </sdk/apps/qml/QtQuick/PathLine#relativeY-prop>`__****
   : real
-  ****`x </sdk/apps/qml/QtQuick/PathLine#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/PathLine#y-prop>`__**** : real

Detailed Description
--------------------

The example below creates a path consisting of a straight line from
0,100 to 200,100:

.. code:: qml

    Path {
        startX: 0; startY: 100
        PathLine { x: 200; y: 100 }
    }

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the line relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathLine#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathLine#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the line relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathLine#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathLine#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the line.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathLine#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathLine#relativeY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the line.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathLine#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathLine#relativeY-prop>`__.

| 
