The XAnimator type animates the x position of an Item.

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

The value of `Item::x </sdk/apps/qml/QtQuick/Item#x-prop>`__ is updated
after the animation has finished.

The following snippet shows how to use a
`XAnimator </sdk/apps/qml/QtQuick/XAnimator/>`__ together with a
Rectangle item.

.. code:: qml

    Rectangle {
        id: xmovingBox
        width: 50
        height: 50
        color: "lightsteelblue"
        XAnimator {
            target: xmovingBox;
            from: 10;
            to: 0;
            duration: 1000
            running: true
        }
    }

It is also possible to use the ``on`` keyword to tie the
`XAnimator </sdk/apps/qml/QtQuick/XAnimator/>`__ directly to an Item
instance.

.. code:: qml

    Rectangle {
        width: 50
        height: 50
        color: "lightsteelblue"
        XAnimator on x {
            from: 10;
            to: 0;
            duration: 1000
        }
    }
