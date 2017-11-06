.. _sdk_qtquick_smoothedanimation:

QtQuick SmoothedAnimation
=========================

Allows a property to smoothly track a value

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`NumberAnimation <sdk_qtquick_numberanimation>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`duration <sdk_qtquick_smoothedanimation_duration>` : int
-  :ref:`maximumEasingTime <sdk_qtquick_smoothedanimation_maximumEasingTime>` : int
-  :ref:`reversingMode <sdk_qtquick_smoothedanimation_reversingMode>` : enumeration
-  :ref:`velocity <sdk_qtquick_smoothedanimation_velocity>` : real

Detailed Description
--------------------

A :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` animates a property's value to a set target value using an ease in/out quad easing curve. When the target value changes, the easing curves used to animate between the old and new target values are smoothly spliced together to create a smooth movement to the new target value that maintains the current velocity.

The follow example shows one :ref:`Rectangle <sdk_qtquick_rectangle>` tracking the position of another using :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`. The green rectangle's ``x`` and ``y`` values are bound to those of the red rectangle. Whenever these values change, the green rectangle smoothly animates to its new position:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 800; height: 600
        color: "blue"
        Rectangle {
            width: 60; height: 60
            x: rect1.x - 5; y: rect1.y - 5
            color: "green"
            Behavior on x { SmoothedAnimation { velocity: 200 } }
            Behavior on y { SmoothedAnimation { velocity: 200 } }
        }
        Rectangle {
            id: rect1
            width: 50; height: 50
            color: "red"
        }
        focus: true
        Keys.onRightPressed: rect1.x = rect1.x + 100
        Keys.onLeftPressed: rect1.x = rect1.x - 100
        Keys.onUpPressed: rect1.y = rect1.y - 100
        Keys.onDownPressed: rect1.y = rect1.y + 100
    }

A :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` can be configured by setting the :ref:`velocity <sdk_qtquick_smoothedanimation_velocity>` at which the animation should occur, or the :ref:`duration <sdk_qtquick_smoothedanimation_duration>` that the animation should take. If both the :ref:`velocity <sdk_qtquick_smoothedanimation_velocity>` and :ref:`duration <sdk_qtquick_smoothedanimation_duration>` are specified, the one that results in the quickest animation is chosen for each change in the target value.

For example, animating from 0 to 800 will take 4 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 4 seconds with both a velocity of 200 and a duration of 8000 set. Animating from 0 to 20000 will take 10 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 8 seconds with both a velocity of 200 and a duration of 8000 set.

The default velocity of :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` is 200 units/second. Note that if the range of the value being animated is small, then the velocity will need to be adjusted appropriately. For example, the opacity of an item ranges from 0 - 1.0. To enable a smooth animation in this range the velocity will need to be set to a value such as 0.5 units/second. Animating from 0 to 1.0 with a velocity of 0.5 will take 2000 ms to complete.

Like any other animation type, a :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**See also** :ref:`SpringAnimation <sdk_qtquick_springanimation>`, :ref:`NumberAnimation <sdk_qtquick_numberanimation>`, `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_smoothedanimation_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the animation duration, in msecs, used when tracking the source.

Setting this to -1 (the default) disables the duration value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

.. _sdk_qtquick_smoothedanimation_maximumEasingTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumEasingTime : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the maximum time, in msecs, any "eases" during the follow should take. Setting this property causes the velocity to "level out" after at a time. Setting a negative value reverts to the normal mode of easing over the entire animation duration.

The default value is -1.

.. _sdk_qtquick_smoothedanimation_reversingMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reversingMode : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets how the :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` behaves if an animation direction is reversed.

Possible values are:

-  :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.Eased (default) - the animation will smoothly decelerate, and then reverse direction
-  :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.Immediate - the animation will immediately begin accelerating in the reverse direction, beginning with a velocity of 0
-  :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.Sync - the property is immediately set to the target value

.. _sdk_qtquick_smoothedanimation_velocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| velocity : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the average velocity allowed when tracking the 'to' value.

The default velocity of :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` is 200 units/second.

Setting this to -1 disables the velocity value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

