.. _sdk_qtquick_pathline:

QtQuick PathLine
================

Defines a straight line

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`relativeX <sdk_qtquick_pathline_relativeX>` : real
-  :ref:`relativeY <sdk_qtquick_pathline_relativeY>` : real
-  :ref:`x <sdk_qtquick_pathline_x>` : real
-  :ref:`y <sdk_qtquick_pathline_y>` : real

Detailed Description
--------------------

The example below creates a path consisting of a straight line from 0,100 to 200,100:

.. code:: qml

    Path {
        startX: 0; startY: 100
        PathLine { x: 200; y: 100 }
    }

**See also** :ref:`Path <sdk_qtquick_path>`, :ref:`PathQuad <sdk_qtquick_pathquad>`, :ref:`PathCubic <sdk_qtquick_pathcubic>`, :ref:`PathArc <sdk_qtquick_patharc>`, :ref:`PathCurve <sdk_qtquick_pathcurve>`, and :ref:`PathSvg <sdk_qtquick_pathsvg>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathline_relativeX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeX : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the line relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathline_x>` and :ref:`y <sdk_qtquick_pathline_y>`.

.. _sdk_qtquick_pathline_relativeY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relativeY : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the line relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** :ref:`x <sdk_qtquick_pathline_x>` and :ref:`y <sdk_qtquick_pathline_y>`.

.. _sdk_qtquick_pathline_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the line.

**See also** :ref:`relativeX <sdk_qtquick_pathline_relativeX>` and :ref:`relativeY <sdk_qtquick_pathline_relativeY>`.

.. _sdk_qtquick_pathline_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the end point of the line.

**See also** :ref:`relativeX <sdk_qtquick_pathline_relativeX>` and :ref:`relativeY <sdk_qtquick_pathline_relativeY>`.

