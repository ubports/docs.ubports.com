.. _sdk_qtquick_yanimator:

QtQuick YAnimator
=================

The YAnimator type animates the y position of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of :ref:`Item::y <sdk_qtquick_item_y>` is updated after the animation has finished.

The following snippet shows how to use a :ref:`YAnimator <sdk_qtquick_yanimator>` together with a Rectangle item.

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

It is also possible to use the ``on`` keyword to tie the :ref:`YAnimator <sdk_qtquick_yanimator>` directly to an Item instance.

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
