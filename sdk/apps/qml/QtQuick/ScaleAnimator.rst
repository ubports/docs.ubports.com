.. _sdk_qtquick_scaleanimator:

QtQuick ScaleAnimator
=====================

The ScaleAnimator type animates the scale factor of an Item.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Detailed Description
--------------------

:ref:`Animator <sdk_qtquick_animator>` types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of :ref:`Item::scale <sdk_qtquick_item_scale>` is updated after the animation has finished.

The following snippet shows how to use a :ref:`ScaleAnimator <sdk_qtquick_scaleanimator>` together with a Rectangle item.

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

It is also possible to use the ``on`` keyword to tie the :ref:`ScaleAnimator <sdk_qtquick_scaleanimator>` directly to an Item instance.

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

**See also** :ref:`Item::transformOrigin <sdk_qtquick_item_transformOrigin>` and :ref:`RotationAnimator <sdk_qtquick_rotationanimator>`.
