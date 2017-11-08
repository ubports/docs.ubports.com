.. _sdk_qtquick_springanimation:

QtQuick SpringAnimation
=======================

Allows a property to track a value in a spring-like motion

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`NumberAnimation <sdk_qtquick_numberanimation>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`damping <sdk_qtquick_springanimation_damping>` : real
-  :ref:`epsilon <sdk_qtquick_springanimation_epsilon>` : real
-  :ref:`mass <sdk_qtquick_springanimation_mass>` : real
-  :ref:`modulus <sdk_qtquick_springanimation_modulus>` : real
-  :ref:`spring <sdk_qtquick_springanimation_spring>` : real
-  :ref:`velocity <sdk_qtquick_springanimation_velocity>` : real

Detailed Description
--------------------

:ref:`SpringAnimation <sdk_qtquick_springanimation>` mimics the oscillatory behavior of a spring, with the appropriate :ref:`spring <sdk_qtquick_springanimation_spring>` constant to control the acceleration and the :ref:`damping <sdk_qtquick_springanimation_damping>` to control how quickly the effect dies away.

You can also limit the maximum :ref:`velocity <sdk_qtquick_springanimation_velocity>` of the animation.

The following :ref:`Rectangle <sdk_qtquick_rectangle>` moves to the position of the mouse using a :ref:`SpringAnimation <sdk_qtquick_springanimation>` when the mouse is clicked. The use of the :ref:`Behavior <sdk_qtquick_behavior>` on the ``x`` and ``y`` values indicates that whenever these values are changed, a :ref:`SpringAnimation <sdk_qtquick_springanimation>` should be applied.

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 300; height: 300
        Rectangle {
            id: rect
            width: 50; height: 50
            color: "red"
            Behavior on x { SpringAnimation { spring: 2; damping: 0.2 } }
            Behavior on y { SpringAnimation { spring: 2; damping: 0.2 } }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rect.x = mouse.x - rect.width/2
                rect.y = mouse.y - rect.height/2
            }
        }
    }

Like any other animation type, a :ref:`SpringAnimation <sdk_qtquick_springanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**See also** :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`, `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ , and `Qt Quick Demo - Clocks </sdk/apps/qml/QtQuick/demos-clocks/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_springanimation_damping:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| damping : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the spring damping value.

This value describes how quickly the spring-like motion comes to rest. The default value is 0.

The useful value range is 0 - 1.0. The lower the value, the faster it comes to rest.

.. _sdk_qtquick_springanimation_epsilon:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| epsilon : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the spring epsilon.

The epsilon is the rate and amount of change in the value which is close enough to 0 to be considered equal to zero. This will depend on the usage of the value. For pixel positions, 0.25 would suffice. For scale, 0.005 will suffice.

The default is 0.01. Tuning this value can provide small performance improvements.

.. _sdk_qtquick_springanimation_mass:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mass : real                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the "mass" of the property being moved.

The value is 1.0 by default.

A greater mass causes slower movement and a greater spring-like motion when an item comes to rest.

.. _sdk_qtquick_springanimation_modulus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| modulus : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the modulus value. The default value is 0.

Setting a *modulus* forces the target value to "wrap around" at the modulus. For example, setting the modulus to 360 will cause a value of 370 to wrap around to 10.

.. _sdk_qtquick_springanimation_spring:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spring : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property describes how strongly the target is pulled towards the source. The default value is 0 (that is, the spring-like motion is disabled).

The useful value range is 0 - 5.0.

When this property is set and the :ref:`velocity <sdk_qtquick_springanimation_velocity>` value is greater than 0, the :ref:`velocity <sdk_qtquick_springanimation_velocity>` limits the maximum speed.

.. _sdk_qtquick_springanimation_velocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| velocity : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum velocity allowed when tracking the source.

The default value is 0 (no maximum velocity).

