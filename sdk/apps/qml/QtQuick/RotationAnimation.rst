.. _sdk_qtquick_rotationanimation:

QtQuick RotationAnimation
=========================

Animates changes in rotation values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`direction <sdk_qtquick_rotationanimation_direction>` : enumeration
-  :ref:`from <sdk_qtquick_rotationanimation_from>` : real
-  :ref:`to <sdk_qtquick_rotationanimation_to>` : real

Detailed Description
--------------------

:ref:`RotationAnimation <sdk_qtquick_rotationanimation>` is a specialized `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  that gives control over the direction of rotation during an animation.

By default, it rotates in the direction of the numerical change; a rotation from 0 to 240 will rotate 240 degrees clockwise, while a rotation from 240 to 0 will rotate 240 degrees counterclockwise. The :ref:`direction <sdk_qtquick_rotationanimation_direction>` property can be set to specify the direction in which the rotation should occur.

In the following example we use :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` to animate the rotation between states via the shortest path:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 300; height: 300
        Rectangle {
            id: rect
            width: 150; height: 100; anchors.centerIn: parent
            color: "red"
            antialiasing: true
            states: State {
                name: "rotated"
                PropertyChanges { target: rect; rotation: 180 }
            }
            transitions: Transition {
                RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
            }
        }
        MouseArea { anchors.fill: parent; onClicked: rect.state = "rotated" }
    }

Notice the :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` did not need to set a ``target`` value. As a convenience, when used in a transition, :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` will rotate all properties named "rotation" or "angle". You can override this by providing your own properties via :ref:`properties <sdk_qtquick_propertyanimation_properties>` or :ref:`property <sdk_qtquick_propertyanimation_property>`.

Also, note the :ref:`Rectangle <sdk_qtquick_rectangle>` will be rotated around its default :ref:`transformOrigin <sdk_qtquick_item_transformOrigin>` (which is ``Item.Center``). To use a different transform origin, set the origin in the :ref:`PropertyChanges <sdk_qtquick_propertychanges>` object and apply the change at the start of the animation using :ref:`PropertyAction <sdk_qtquick_propertyaction>`. See the :ref:`PropertyAction <sdk_qtquick_propertyaction>` documentation for more details.

Like any other animation type, a :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_rotationanimation_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the direction of the rotation.

Possible values are:

-  :ref:`RotationAnimation <sdk_qtquick_rotationanimation>`.Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.
-  :ref:`RotationAnimation <sdk_qtquick_rotationanimation>`.Clockwise - Rotate clockwise between the two values
-  :ref:`RotationAnimation <sdk_qtquick_rotationanimation>`.Counterclockwise - Rotate counterclockwise between the two values
-  :ref:`RotationAnimation <sdk_qtquick_rotationanimation>`.Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

.. _sdk_qtquick_rotationanimation_from:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| from : real                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the starting value for the animation.

For example, the following animation is not applied until the ``angle`` value has reached 100:

.. code:: qml

    Item {
        states: [
            // ...
        ]
        transition: Transition {
            RotationAnimation { properties: "angle"; from: 100; duration: 2000 }
        }
    }

If the :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the starting state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the current value of the property at the moment the :ref:`Behavior <sdk_qtquick_behavior>` is triggered.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

.. _sdk_qtquick_rotationanimation_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : real                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end value for the animation..

If the :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the value of the property change that triggered the :ref:`Behavior <sdk_qtquick_behavior>`.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

