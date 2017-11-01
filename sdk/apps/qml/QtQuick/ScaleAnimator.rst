The ScaleAnimator type animates the scale factor of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Detailed Description
--------------------

`Animator </sdk/apps/qml/QtQuick/Animator/>`__ types are different from
normal Animation types. When using an Animator, the animation can be run
in the render thread and the property value will jump to the end when
the animation is complete.

The value of `Item::scale </sdk/apps/qml/QtQuick/Item#scale-prop>`__ is
updated after the animation has finished.

The following snippet shows how to use a
`ScaleAnimator </sdk/apps/qml/QtQuick/ScaleAnimator/>`__ together with a
Rectangle item.

.. code:: qml

    Rectangle {
        id: scalingBox
        width: 50
        height: 50
        color: "lightsteelblue"
        ScaleAnimator {
            target: scalingBox;
            from: 0.5;
            to: 1;
            duration: 1000
            running: true
        }
    }

It is also possible to use the ``on`` keyword to tie the
`ScaleAnimator </sdk/apps/qml/QtQuick/ScaleAnimator/>`__ directly to an
Item instance.

.. code:: qml

    Rectangle {
        width: 50
        height: 50
        color: "lightsteelblue"
        ScaleAnimator on scale {
            from: 0.5;
            to: 1;
            duration: 1000
        }
    }

**See also**
`Item::transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__
and `RotationAnimator </sdk/apps/qml/QtQuick/RotationAnimator/>`__.
