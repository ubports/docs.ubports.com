.. _sdk_qtquick_rotation:
QtQuick Rotation
================

Provides a way to rotate an Item

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`angle <sdk_qtquick_rotation_angle-prop>` : real
-  :ref:`axis <sdk_qtquick_rotation_axis-prop>`

   -  :ref:`axis.x <sdk_qtquick_rotation_axis.x-prop>` : real
   -  :ref:`axis.y <sdk_qtquick_rotation_axis.y-prop>` : real
   -  :ref:`axis.z <sdk_qtquick_rotation_axis.z-prop>` : real

-  :ref:`origin <sdk_qtquick_rotation_origin-prop>`

   -  :ref:`origin.x <sdk_qtquick_rotation_origin.x-prop>` : real
   -  :ref:`origin.y <sdk_qtquick_rotation_origin.y-prop>` : real

Detailed Description
--------------------

The Rotation type provides a way to rotate an
:ref:`Item <sdk_qtquick_item>` through a rotation-type transform.

It allows (z axis) rotation to be relative to an arbitrary point, and
also provides a way to specify 3D-like rotations for Items. This gives
more control over item rotation than the
:ref:`rotation <sdk_qtquick_item#rotation-prop>` property.

The following example rotates a Rectangle around its interior point (25,
25):

.. code:: qml

    Rectangle {
        width: 100; height: 100
        color: "blue"
        transform: Rotation { origin.x: 25; origin.y: 25; angle: 45}
    }

For 3D-like item rotations, you must specify the axis of rotation in
addition to the origin point. The following example shows various
3D-like rotations applied to an
`Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ .

.. code:: qml

    import QtQuick 2.0
    Row {
        x: 10; y: 10
        spacing: 10
        Image { source: "pics/qt.png" }
        Image {
            source: "pics/qt.png"
            transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 18 }
        }
        Image {
            source: "pics/qt.png"
            transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 36 }
        }
        Image {
            source: "pics/qt.png"
            transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 54 }
        }
        Image {
            source: "pics/qt.png"
            transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 72 }
        }
    }

|image0|

**See also** `Dial Control
example </sdk/apps/qml/QtQuick/customitems-dialcontrol/>`_  and `Qt
Quick Demo - Clocks </sdk/apps/qml/QtQuick/demos-clocks/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_rotation_angle-prop:

+--------------------------------------------------------------------------+
|        \ angle : real                                                    |
+--------------------------------------------------------------------------+

The angle to rotate, in degrees clockwise.

| 

.. _sdk_qtquick_rotation_**axis group**-prop:

+--------------------------------------------------------------------------+
|        \ **axis group**                                                  |
+==========================================================================+
.. _sdk_qtquick_rotation_axis.y-prop:
|        \ axis.x : real                                                   |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_rotation_axis.z-prop:
|        \ axis.y : real                                                   |
+--------------------------------------------------------------------------+
|        \ axis.z : real                                                   |
+--------------------------------------------------------------------------+

The axis to rotate around. For simple (2D) rotation around a point, you
do not need to specify an axis, as the default axis is the z axis
(``axis { x: 0; y: 0; z: 1 }``).

For a typical 3D-like rotation you will usually specify both the origin
and the axis.

|image1|

| 

.. _sdk_qtquick_rotation_**origin group**-prop:

+--------------------------------------------------------------------------+
|        \ **origin group**                                                |
+==========================================================================+
.. _sdk_qtquick_rotation_origin.y-prop:
|        \ origin.x : real                                                 |
+--------------------------------------------------------------------------+
|        \ origin.y : real                                                 |
+--------------------------------------------------------------------------+

The origin point of the rotation (i.e., the point that stays fixed
relative to the parent as the rest of the item rotates). By default the
origin is (0, 0).

| 

.. |image0| image:: /mediasdk_qtquick_rotationimages/axisrotation.png
.. |image1| image:: /mediasdk_qtquick_rotationimages/3d-rotation-axis.png

