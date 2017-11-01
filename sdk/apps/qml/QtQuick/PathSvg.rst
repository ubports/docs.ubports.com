Defines a path using an SVG path data string

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`path </sdk/apps/qml/QtQuick/PathSvg#path-prop>`__**** : string

Detailed Description
--------------------

The following QML produces the path shown below:

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 50; startY: 50       |
|                                      |         PathSvg { path: "L 150 50 L  |
|                                      | 100 150 z" }                         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__, and
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ path : string                                                   |
+--------------------------------------------------------------------------+

The SVG path data string specifying the path.

See `W3C SVG Path Data <http://www.w3.org/TR/SVG/paths.html#PathData>`__
for more details on this format.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathSvg/images/declarative-pathsvg.png

