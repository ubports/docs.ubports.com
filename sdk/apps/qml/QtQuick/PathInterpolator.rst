.. _sdk_qtquick_pathinterpolator:

QtQuick PathInterpolator
========================

Specifies how to manually animate along a path

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`angle <sdk_qtquick_pathinterpolator_angle>` : real
-  :ref:`path <sdk_qtquick_pathinterpolator_path>` : Path
-  :ref:`progress <sdk_qtquick_pathinterpolator_progress>` : real
-  :ref:`x <sdk_qtquick_pathinterpolator_x>` : real
-  :ref:`y <sdk_qtquick_pathinterpolator_y>` : real

Detailed Description
--------------------

`PathInterpolator </sdk/apps/qml/QtQuick/animation/#pathinterpolator>`_  provides ``x``, ``y``, and ``angle`` information for a particular ``progress`` along a path.

In the following example, we animate a green rectangle along a bezier path.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400
        height: 400
        PathInterpolator {
            id: motionPath
            path: Path {
                startX: 0; startY: 0
                PathCubic {
                    x: 350; y: 350
                    control1X: 350; control1Y: 0
                    control2X: 0; control2Y: 350
                }
            }
            NumberAnimation on progress { from: 0; to: 1; duration: 2000 }
        }
        Rectangle {
            width: 50; height: 50
            color: "green"
            //bind our attributes to follow the path as progress changes
            x: motionPath.x
            y: motionPath.y
            rotation: motionPath.angle
        }
    }

Property Documentation
----------------------

.. _sdk_qtquick_pathinterpolator_angle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angle : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the angle of the path tangent at :ref:`progress <sdk_qtquick_pathinterpolator_progress>`.

Angles are reported clockwise, with zero degrees at the 3 o'clock position.

.. _sdk_qtquick_pathinterpolator_path:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : :ref:`Path <sdk_qtquick_path>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the path to interpolate.

For more information on defining a path see the :ref:`Path <sdk_qtquick_path>` documentation.

.. _sdk_qtquick_pathinterpolator_progress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progress : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current progress along the path.

Typical usage of `PathInterpolator </sdk/apps/qml/QtQuick/animation/#pathinterpolator>`_  is to set the progress (often via a :ref:`NumberAnimation <sdk_qtquick_numberanimation>`), and read the corresponding values for x, y, and angle (often via bindings to these values).

Progress ranges from 0.0 to 1.0.

.. _sdk_qtquick_pathinterpolator_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the position of the path at :ref:`progress <sdk_qtquick_pathinterpolator_progress>`.

.. _sdk_qtquick_pathinterpolator_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the position of the path at :ref:`progress <sdk_qtquick_pathinterpolator_progress>`.

