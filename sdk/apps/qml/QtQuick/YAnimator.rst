The YAnimator type animates the y position of an Item.

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

The value of `Item::y </sdk/apps/qml/QtQuick/Item#y-prop>`__ is updated
after the animation has finished.

The following snippet shows how to use a
`YAnimator </sdk/apps/qml/QtQuick/YAnimator/>`__ together with a
Rectangle item.

.. code:: qml

    Rectangle {
        id: ymovingBox
        width: 50
        height: 50
        color: "lightsteelblue"
        YAnimator {
            target: ymovingBox;
            from: 10;
            to: 0;
            duration: 1000
            running: true
        }
    }

It is also possible to use the ``on`` keyword to tie the
`YAnimator </sdk/apps/qml/QtQuick/YAnimator/>`__ directly to an Item
instance.

.. code:: qml

    Rectangle {
        width: 50
        height: 50
        color: "lightsteelblue"
        YAnimator on y {
            from: 10;
            to: 0;
            duration: 1000
        }
    }
