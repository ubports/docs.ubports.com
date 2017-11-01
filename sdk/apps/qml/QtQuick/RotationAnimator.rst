The RotationAnimator type animates the rotation of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtQuick/RotationAnimator#direction-prop>`__****
   : enumeration

Detailed Description
--------------------

`Animator </sdk/apps/qml/QtQuick/Animator/>`__ types are different from
normal Animation types. When using an Animator, the animation can be run
in the render thread and the property value will jump to the end when
the animation is complete.

The value of
`Item::rotation </sdk/apps/qml/QtQuick/Item#rotation-prop>`__ is updated
after the animation has finished.

The following snippet shows how to use a
`RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__ together
with a Rectangle item.

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

It is also possible to use the ``on`` keyword to tie the
`RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__ directly
to the ``rotation`` property of an Item instance.

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

**See also**
`Item::transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__
and `ScaleAnimator </sdk/apps/qml/QtQuick/ScaleAnimator/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the direction of the rotation.

Possible values are:

-  `RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__.Numerical
   (default) - Rotate by linearly interpolating between the two numbers.
   A rotation from 10 to 350 will rotate 340 degrees clockwise.
-  `RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__.Clockwise
   - Rotate clockwise between the two values
-  `RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__.Counterclockwise
   - Rotate counterclockwise between the two values
-  `RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__.Shortest
   - Rotate in the direction that produces the shortest animation path.
   A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

| 
