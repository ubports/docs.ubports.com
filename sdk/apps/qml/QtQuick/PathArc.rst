Defines an arc with the given radius

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtQuick/PathArc#direction-prop>`__****
   : enumeration
-  ****`radiusX </sdk/apps/qml/QtQuick/PathArc#radiusX-prop>`__**** :
   real
-  ****`radiusY </sdk/apps/qml/QtQuick/PathArc#radiusY-prop>`__**** :
   real
-  ****`relativeX </sdk/apps/qml/QtQuick/PathArc#relativeX-prop>`__****
   : real
-  ****`relativeY </sdk/apps/qml/QtQuick/PathArc#relativeY-prop>`__****
   : real
-  ****`useLargeArc </sdk/apps/qml/QtQuick/PathArc#useLargeArc-prop>`__****
   : bool
-  ****`x </sdk/apps/qml/QtQuick/PathArc#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/PathArc#y-prop>`__**** : real

Detailed Description
--------------------

`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__ provides a simple way of
specifying an arc that ends at a given position and uses the specified
radius. It is modeled after the SVG elliptical arc command.

The following QML produces the path shown below:

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 100; startY: 0       |
|                                      |         PathArc {                    |
|                                      |             x: 0; y: 100             |
|                                      |             radiusX: 100; radiusY: 1 |
|                                      | 00                                   |
|                                      |             useLargeArc: true        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

Note that a single `PathArc </sdk/apps/qml/QtQuick/PathArc/>`__ cannot
be used to specify a circle. Instead, you can use two
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__ elements, each specifying
half of the circle.

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__,
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__,
`PathQuad </sdk/apps/qml/QtQuick/PathQuad/>`__,
`PathCubic </sdk/apps/qml/QtQuick/PathCubic/>`__,
`PathCurve </sdk/apps/qml/QtQuick/PathCurve/>`__, and
`PathSvg </sdk/apps/qml/QtQuick/PathSvg/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

Defines the direction of the arc. Possible values are
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__.Clockwise (default) and
`PathArc </sdk/apps/qml/QtQuick/PathArc/>`__.Counterclockwise.

The following QML can produce either of the two illustrated arcs below
by changing the value of direction.

+--------------------------------------+--------------------------------------+
| |image1|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 50; startY: 50       |
|                                      |         PathArc {                    |
|                                      |             x: 150; y: 50            |
|                                      |             radiusX: 75; radiusY: 50 |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also**
`useLargeArc </sdk/apps/qml/QtQuick/PathArc#useLargeArc-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ radiusX : real                                                  |
+--------------------------------------------------------------------------+

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

+--------------------------------------+--------------------------------------+
| |image2|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 0; startY: 100       |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 15 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 25 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 50 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 50; radiusY: 10 |
|                                      | 0                                    |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ radiusY : real                                                  |
+--------------------------------------------------------------------------+

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

+--------------------------------------+--------------------------------------+
| |image3|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 0; startY: 100       |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 15 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 25 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 25; radiusY: 50 |
|                                      |         }                            |
|                                      |         PathArc {                    |
|                                      |             relativeX: 50; y: 100    |
|                                      |             radiusX: 50; radiusY: 10 |
|                                      | 0                                    |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathArc#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathArc#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** `x </sdk/apps/qml/QtQuick/PathArc#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/PathArc#y-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ useLargeArc : bool                                              |
+--------------------------------------------------------------------------+

Whether to use a large arc as defined by the arc points.

Given fixed start and end positions, radius, and direction, there are
two possible arcs that can fit the data. useLargeArc is used to
distinguish between these. For example, the following QML can produce
either of the two illustrated arcs below by changing the value of
useLargeArc.

+--------------------------------------+--------------------------------------+
| |image4|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Path {                           |
|                                      |         startX: 0; startY: 100       |
|                                      |         PathArc {                    |
|                                      |             x: 100; y: 200           |
|                                      |             radiusX: 100; radiusY: 1 |
|                                      | 00                                   |
|                                      |             direction: PathArc.Clock |
|                                      | wise                                 |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the arc.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathArc#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathArc#relativeY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the arc.

**See also**
`relativeX </sdk/apps/qml/QtQuick/PathArc#relativeX-prop>`__ and
`relativeY </sdk/apps/qml/QtQuick/PathArc#relativeY-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathArc/images/declarative-patharc.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/PathArc/images/declarative-arcdirection.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/PathArc/images/declarative-arcradius.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/PathArc/images/declarative-arcradius.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/PathArc/images/declarative-largearc.png

