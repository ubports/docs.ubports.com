.. _sdk_qtquick_rotationanimator:

QtQuick RotationAnimator
========================

The RotationAnimator type animates the rotation of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Properties
----------

-  :ref:`direction <sdk_qtquick_rotationanimator_direction>` : enumeration

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of :ref:`Item::rotation <sdk_qtquick_item_rotation>` is updated after the animation has finished.

The following snippet shows how to use a :ref:`RotationAnimator <sdk_qtquick_rotationanimator>` together with a Rectangle item.

.. code:: qml

    Rectangle {
        id: rotatingBox
        width: 50
        height: 50
        color: "lightsteelblue"
        RotationAnimator {
            target: rotatingBox;
            from: 0;
            to: 360;
            duration: 1000
            running: true
        }
    }

It is also possible to use the ``on`` keyword to tie the :ref:`RotationAnimator <sdk_qtquick_rotationanimator>` directly to the ``rotation`` property of an Item instance.

.. code:: qml

    Rectangle {
        width: 50
        height: 50
        color: "lightsteelblue"
        RotationAnimator on rotation {
            from: 0;
            to: 360;
            duration: 1000
        }
    }

**See also** :ref:`Item::transformOrigin <sdk_qtquick_item_transformOrigin>` and :ref:`ScaleAnimator <sdk_qtquick_scaleanimator>`.

Property Documentation
----------------------

.. _sdk_qtquick_rotationanimator_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the direction of the rotation.

Possible values are:

-  :ref:`RotationAnimator <sdk_qtquick_rotationanimator>`.Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.
-  :ref:`RotationAnimator <sdk_qtquick_rotationanimator>`.Clockwise - Rotate clockwise between the two values
-  :ref:`RotationAnimator <sdk_qtquick_rotationanimator>`.Counterclockwise - Rotate counterclockwise between the two values
-  :ref:`RotationAnimator <sdk_qtquick_rotationanimator>`.Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

