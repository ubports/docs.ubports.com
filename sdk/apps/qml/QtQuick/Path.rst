.. _sdk_qtquick_path:

QtQuick Path
============

Defines a path for use by PathView

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`closed <sdk_qtquick_path_closed>` : bool
-  :ref:`pathElements <sdk_qtquick_path_pathElements>` : list<PathElement>
-  :ref:`startX <sdk_qtquick_path_startX>` : real
-  :ref:`startY <sdk_qtquick_path_startY>` : real

Detailed Description
--------------------

A Path is composed of one or more path segments - :ref:`PathLine <sdk_qtquick_pathline>`, :ref:`PathQuad <sdk_qtquick_pathquad>`, :ref:`PathCubic <sdk_qtquick_pathcubic>`, :ref:`PathArc <sdk_qtquick_patharc>`, :ref:`PathCurve <sdk_qtquick_pathcurve>`, :ref:`PathSvg <sdk_qtquick_pathsvg>`.

The spacing of the items along the Path can be adjusted via a :ref:`PathPercent <sdk_qtquick_pathpercent>` object.

:ref:`PathAttribute <sdk_qtquick_pathattribute>` allows named attributes with values to be defined along the path.

**See also** :ref:`PathView <sdk_qtquick_pathview>`, :ref:`PathAttribute <sdk_qtquick_pathattribute>`, :ref:`PathPercent <sdk_qtquick_pathpercent>`, :ref:`PathLine <sdk_qtquick_pathline>`, :ref:`PathQuad <sdk_qtquick_pathquad>`, :ref:`PathCubic <sdk_qtquick_pathcubic>`, :ref:`PathArc <sdk_qtquick_patharc>`, :ref:`PathCurve <sdk_qtquick_pathcurve>`, and :ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_path_closed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| closed : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the start and end of the path are identical.

.. _sdk_qtquick_path_pathElements:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] pathElements : list<:ref:`PathElement <sdk_qtquick_pathelement>`>                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the objects composing the path.

A path can contain the following path objects:

-  :ref:`PathLine <sdk_qtquick_pathline>` - a straight line to a given position.
-  :ref:`PathQuad <sdk_qtquick_pathquad>` - a quadratic Bezier curve to a given position with a control point.
-  :ref:`PathCubic <sdk_qtquick_pathcubic>` - a cubic Bezier curve to a given position with two control points.
-  :ref:`PathArc <sdk_qtquick_patharc>` - an arc to a given position with a radius.
-  :ref:`PathSvg <sdk_qtquick_pathsvg>` - a path specified as an SVG path data string.
-  :ref:`PathCurve <sdk_qtquick_pathcurve>` - a point on a Catmull-Rom curve.
-  :ref:`PathAttribute <sdk_qtquick_pathattribute>` - an attribute at a given position in the path.
-  :ref:`PathPercent <sdk_qtquick_pathpercent>` - a way to spread out items along various segments of the path.

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

.. _sdk_qtquick_path_startX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startX : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the starting position of the path.

.. _sdk_qtquick_path_startY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startY : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the starting position of the path.

