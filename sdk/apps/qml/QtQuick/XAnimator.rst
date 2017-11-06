.. _sdk_qtquick_xanimator:

QtQuick XAnimator
=================

The XAnimator type animates the x position of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of :ref:`Item::x <sdk_qtquick_item_x>` is updated after the animation has finished.

The following snippet shows how to use a :ref:`XAnimator <sdk_qtquick_xanimator>` together with a Rectangle item.

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

It is also possible to use the ``on`` keyword to tie the :ref:`XAnimator <sdk_qtquick_xanimator>` directly to an Item instance.

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
