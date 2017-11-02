.. _sdk_qtquick_pathcurve:
QtQuick PathCurve
=================

Defines a point on a Catmull-Rom curve

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`relativeX <sdk_qtquick_pathcurve_relativeX-prop>` : real
-  :ref:`relativeY <sdk_qtquick_pathcurve_relativeY-prop>` : real
-  :ref:`x <sdk_qtquick_pathcurve_x-prop>` : real
-  :ref:`y <sdk_qtquick_pathcurve_y-prop>` : real

Detailed Description
--------------------

:ref:`PathCurve <sdk_qtquick_pathcurve>` provides an easy way to specify a
curve passing directly through a set of points. Typically multiple
PathCurves are used in a series, as the following example demonstrates:

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
:ref:`PathCurve <sdk_qtquick_pathcurve>` points highlighted in red):

|image0|

**See also** :ref:`Path <sdk_qtquick_path>`,
:ref:`PathLine <sdk_qtquick_pathline>`,
:ref:`PathQuad <sdk_qtquick_pathquad>`,
:ref:`PathCubic <sdk_qtquick_pathcubic>`,
:ref:`PathArc <sdk_qtquick_patharc>`, and
:ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathcurve_relativeX-prop:

+--------------------------------------------------------------------------+
|        \ relativeX : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcurve#x-prop>` and
:ref:`y <sdk_qtquick_pathcurve#y-prop>`.

| 

.. _sdk_qtquick_pathcurve_relativeY-prop:

+--------------------------------------------------------------------------+
|        \ relativeY : real                                                |
+--------------------------------------------------------------------------+

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathcurve#x-prop>` and
:ref:`y <sdk_qtquick_pathcurve#y-prop>`.

| 

.. _sdk_qtquick_pathcurve_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcurve#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathcurve#relativeY-prop>`.

| 

.. _sdk_qtquick_pathcurve_y-prop:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the end point of the curve.

**See also** :ref:`relativeX <sdk_qtquick_pathcurve#relativeX-prop>` and
:ref:`relativeY <sdk_qtquick_pathcurve#relativeY-prop>`.

| 

.. |image0| image:: /mediasdk_qtquick_pathcurveimages/declarative-pathcurve.png

