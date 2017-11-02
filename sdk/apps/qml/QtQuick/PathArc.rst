.. _sdk_qtquick_patharc:
QtQuick PathArc
===============

Defines an arc with the given radius

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`direction <sdk_qtquick_patharc_direction-prop>` :
   enumeration
-  :ref:`radiusX <sdk_qtquick_patharc_radiusX-prop>` : real
-  :ref:`radiusY <sdk_qtquick_patharc_radiusY-prop>` : real
-  :ref:`relativeX <sdk_qtquick_patharc_relativeX-prop>` : real
-  :ref:`relativeY <sdk_qtquick_patharc_relativeY-prop>` : real
-  :ref:`useLargeArc <sdk_qtquick_patharc_useLargeArc-prop>` : bool
-  :ref:`x <sdk_qtquick_patharc_x-prop>` : real
-  :ref:`y <sdk_qtquick_patharc_y-prop>` : real

Detailed Description
--------------------

:ref:`PathArc <sdk_qtquick_patharc>` provides a simple way of specifying an
arc that ends at a given position and uses the specified radius. It is
modeled after the SVG elliptical arc command.

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

Note that a single :ref:`PathArc <sdk_qtquick_patharc>` cannot be used to
specify a circle. Instead, you can use two
:ref:`PathArc <sdk_qtquick_patharc>` elements, each specifying half of the
circle.

**See also** :ref:`Path <sdk_qtquick_path>`,
:ref:`PathLine <sdk_qtquick_pathline>`,
:ref:`PathQuad <sdk_qtquick_pathquad>`,
:ref:`PathCubic <sdk_qtquick_pathcubic>`,
:ref:`PathCurve <sdk_qtquick_pathcurve>`, and
:ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_patharc_direction-prop:

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

Defines the direction of the arc. Possible values are
:ref:`PathArc <sdk_qtquick_patharc>`.Clockwise (default) and
:ref:`PathArc <sdk_qtquick_patharc>`.Counterclockwise.

The following QML can produce either of the two illustrated arcs below
by changing the value of direction.

.. _sdk_qtquick_patharc_image1                              .. code-prop:

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

**See also** :ref:`useLargeArc <sdk_qtquick_patharc#useLargeArc-prop>`.

| 

.. _sdk_qtquick_patharc_radiusX-prop:

+--------------------------------------------------------------------------+
|        \ radiusX : real                                                  |
+--------------------------------------------------------------------------+

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

.. _sdk_qtquick_patharc_image2                              .. code-prop:

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

.. _sdk_qtquick_patharc_radiusY-prop:

+--------------------------------------------------------------------------+
|        \ radiusY : real                                                  |
+--------------------------------------------------------------------------+

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

.. _sdk_qtquick_patharc_image3                              .. code-prop:

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

.. _sdk_qtquick_patharc_relativeX-prop:

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_patharc#x-prop>` and
:ref:`y <sdk_qtquick_patharc#y-prop>`.

| 

.. _sdk_qtquick_patharc_relativeY-prop:

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_patharc#x-prop>` and
:ref:`y <sdk_qtquick_patharc#y-prop>`.

| 

.. _sdk_qtquick_patharc_useLargeArc-prop:

+--------------------------------------------------------------------------+
|        \ useLargeArc : bool                                              |
+--------------------------------------------------------------------------+

Whether to use a large arc as defined by the arc points.

Given fixed start and end positions, radius, and direction, there are
two possible arcs that can fit the data. useLargeArc is used to
distinguish between these. For example, the following QML can produce
either of the two illustrated arcs below by changing the value of
useLargeArc.

.. _sdk_qtquick_patharc_image4                              .. code-prop:

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

.. _sdk_qtquick_patharc_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the arc.

**See also** :ref:`relativeX <sdk_qtquick_patharc#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_patharc#relativeY-prop>`.

| 

.. _sdk_qtquick_patharc_y-prop:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the arc.

**See also** :ref:`relativeX <sdk_qtquick_patharc#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_patharc#relativeY-prop>`.

| 

.. |image0| image:: /mediasdk_qtquick_patharcimages/declarative-patharc.png
.. |image1| image:: /mediasdk_qtquick_patharcimages/declarative-arcdirection.png
.. |image2| image:: /mediasdk_qtquick_patharcimages/declarative-arcradius.png
.. |image3| image:: /mediasdk_qtquick_patharcimages/declarative-arcradius.png
.. |image4| image:: /mediasdk_qtquick_patharcimages/declarative-largearc.png

