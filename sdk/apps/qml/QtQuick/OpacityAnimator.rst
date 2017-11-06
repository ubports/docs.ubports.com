.. _sdk_qtquick_opacityanimator:

QtQuick OpacityAnimator
=======================

The OpacityAnimator type animates the opacity of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of :ref:`Item::opacity <sdk_qtquick_item_opacity>` is updated after the animation has finished.

The following snippet shows how to use a :ref:`OpacityAnimator <sdk_qtquick_opacityanimator>` together with a Rectangle item.

.. code:: qml

    Rectangle {
        id: opacityBox
        width: 50
        height: 50
        color: "lightsteelblue"
        OpacityAnimator {
            target: opacityBox;
            from: 0;
            to: 1;
            duration: 1000
            running: true
        }
    }

It is also possible to use the ``on`` keyword to tie the :ref:`OpacityAnimator <sdk_qtquick_opacityanimator>` directly to an Item instance.

.. code:: qml

    Rectangle {
        width: 50
        height: 50
        color: "lightsteelblue"
        OpacityAnimator on opacity{
            from: 0;
            to: 1;
            duration: 1000
        }
    }
