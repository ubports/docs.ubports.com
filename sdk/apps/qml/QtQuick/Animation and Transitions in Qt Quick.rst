.. _sdk_qtquick_animation_and_transitions_in_qt_quick:

QtQuick Animation and Transitions in Qt Quick
=============================================



-  `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  - Animates transitions during state changes
-  :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` - Runs animations sequentially
-  :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` - Runs animations in parallel
-  :ref:`Behavior <sdk_qtquick_behavior>` - Specifies a default animation for property changes
-  :ref:`PropertyAction <sdk_qtquick_propertyaction>` - Sets immediate property changes during animation
-  :ref:`PauseAnimation <sdk_qtquick_pauseanimation>` - Introduces a pause in an animation
-  :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` - Allows a property to smoothly track a value
-  :ref:`SpringAnimation <sdk_qtquick_springanimation>` - Allows a property to track a value in a spring-like motion
-  :ref:`ScriptAction <sdk_qtquick_scriptaction>` - Runs scripts during an animation

Types that animate properties based on data types

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>`                                                                                                      | Animates changes in anchor values                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ColorAnimation <sdk_qtquick_coloranimation>`                                                                                                        | Animates changes in color values                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`NumberAnimation <sdk_qtquick_numberanimation>`                                                                                                      | Animates changes in qreal-type values                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ParentAnimation <sdk_qtquick_parentanimation>`                                                                                                      | Animates changes in parent values                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PathAnimation <sdk_qtquick_pathanimation>`                                                                                                          | Animates an item along a path                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                  | Animates changes in property values                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RotationAnimation <sdk_qtquick_rotationanimation>`                                                                                                  | Animates changes in rotation values                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Vector3dAnimation <sdk_qtquick_vector3danimation>`                                                                                                  | Animates changes in QVector3d values                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Animations are created by applying animation types to property values. Animation types will interpolate property values to create smooth transitions. As well, state transitions may assign animations to state changes.

To create an animation, use an appropriate animation type for the type of the property that is to be animated, and apply the animation depending on the type of behavior that is required.

There are several ways of setting animation to an object.

Animations are created by applying animation objects to property values to gradually change the properties over time. These *property animations* apply smooth movements by interpolating values between property value changes. Property animations provide timing controls and allows different interpolations through `easing curves </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#qml-easing-animation>`_ .

.. code:: qml

    Rectangle {
        id: flashingblob
        width: 75; height: 75
        color: "blue"
        opacity: 1.0
        MouseArea {
            anchors.fill: parent
            onClicked: {
                animateColor.start()
                animateOpacity.start()
            }
        }
        PropertyAnimation {id: animateColor; target: flashingblob; properties: "color"; to: "green"; duration: 100}
        NumberAnimation {
            id: animateOpacity
            target: flashingblob
            properties: "opacity"
            from: 0.99
            to: 1.0
            loops: Animation.Infinite
            easing {type: Easing.OutBack; overshoot: 500}
       }
    }

Specialized property animation types have more efficient implementations than the `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  type. They are for setting animations to different QML types such as ``int``, ``color``, and rotations. Similarly, the :ref:`ParentAnimation <sdk_qtquick_parentanimation>` can animate parent changes.

See the `Controlling Animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#qml-controlling-animations>`_  section for more information about the different animation properties.

In the previous example, the `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  and :ref:`NumberAnimation <sdk_qtquick_numberanimation>` objects needed to specify particular :ref:`target <sdk_qtquick_propertyanimation_target>` and :ref:`properties <sdk_qtquick_propertyanimation_properties>` values to specify the objects and properties that should be animated. This can be avoided by using the *<Animation> on <Property>* syntax, which specifies the animation is to be applied as a *property value source*.

Below are two `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  objects that are specified using this syntax:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        PropertyAnimation on x { to: 100 }
        PropertyAnimation on y { to: 100 }
    }

The animation starts as soon as the rectangle is loaded, and will automatically be applied to its ``x`` and ``y`` values. Since the *<Animation> on <Property>* syntax has been used, it is not necessary to set the :ref:`target <sdk_qtquick_propertyanimation_target>` value of the `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  objects to ``rect``, and neither is it necessary to set the :ref:`property <sdk_qtquick_propertyanimation_property>` values to ``x`` and ``y``.

This can also be used by `grouped animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#playing-animations-in-parallel-or-in-sequence>`_  to ensure that all animations within a group are applied to the same property. For example, the previous example could instead use :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` to animate the rectangle's ``color`` first to yellow, then to blue:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        SequentialAnimation on color {
            ColorAnimation { to: "yellow"; duration: 1000 }
            ColorAnimation { to: "blue"; duration: 1000 }
        }
    }

Since the :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` object has been specified on the ``color`` property using the *<Animation> on <Property>* syntax, its child `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  objects are also automatically applied to this property and do not need to specify :ref:`target <sdk_qtquick_propertyanimation_target>` or :ref:`property <sdk_qtquick_propertyanimation_property>` animation values.

:ref:`Qt Quick States <sdk_qtquick_state>` are property configurations where a property may have different values to reflect different states. State changes introduce abrupt property changes; animations smooth transitions to produce visually appealing state changes.

The `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  type can contain animation types to interpolate property changes caused by state changes. To assign the transition to an object, bind it to the ``transitions`` property.

A button might have two states, the ``pressed`` state when the user clicks on the button and a ``released`` state when the user releases the button. We can assign different property configurations for each state. A transition would animate the change from the ``pressed`` state to the ``released`` state. Likewise, there would be an animation during the change from the ``released`` state to the ``pressed`` state.

.. code:: qml

    Rectangle {
        width: 75; height: 75
        id: button
        state: "RELEASED"
        MouseArea {
            anchors.fill: parent
            onPressed: button.state = "PRESSED"
            onReleased: button.state = "RELEASED"
        }
        states: [
            State {
                name: "PRESSED"
                PropertyChanges { target: button; color: "lightblue"}
            },
            State {
                name: "RELEASED"
                PropertyChanges { target: button; color: "lightsteelblue"}
            }
        ]
        transitions: [
            Transition {
                from: "PRESSED"
                to: "RELEASED"
                ColorAnimation { target: button; duration: 100}
            },
            Transition {
                from: "RELEASED"
                to: "PRESSED"
                ColorAnimation { target: button; duration: 100}
            }
        ]
    }

Binding the ``to`` and ``from`` properties to the state's name will assign that particular transition to the state change. For simple or symmetric transitions, setting the to ``to`` property to the wild card symbol, "``*``", denotes that the transition applies to any state change.

.. code:: qml

        transitions:
            Transition {
                to: "*"
                ColorAnimation { target: button; duration: 100}
            }

Default property animations are set using *behavior animations*. Animations declared in :ref:`Behavior <sdk_qtquick_behavior>` types apply to the property and animates any property value changes. However, Behavior types have an ``enabled`` property to purposely enable or disable the behavior animations.

A ball component might have a behavior animation assigned to its ``x``, ``y``, and ``color`` properties. The behavior animation could be set up to simulate an elastic effect. In effect, this behavior animation would apply the elastic effect to the properties whenever the ball moves.

.. code:: qml

    Rectangle {
        width: 75; height: 75; radius: width
        id: ball
        color: "salmon"
        Behavior on x {
            NumberAnimation {
                id: bouncebehavior
                easing {
                    type: Easing.OutElastic
                    amplitude: 1.0
                    period: 0.5
                }
            }
        }
        Behavior on y {
            animation: bouncebehavior
        }
        Behavior {
            ColorAnimation { target: ball; duration: 100 }
        }
    }

There are several methods of assigning behavior animations to properties. The ``Behavior on <property>`` declaration is a convenient way of assigning a behavior animation onto a property.

See the `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_  for a demonstration of behavioral animations.

Animations can run *in parallel* or *in sequence*. Parallel animations will play a group of animations at the same time while sequential animations play a group of animations in order: one after the other. Grouping animations in :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` and :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` will play the animations in sequence or in parallel.

A banner component may have several icons or slogans to display, one after the other. The ``opacity`` property could transform to ``1.0`` denoting an opaque object. Using the :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` type, the opacity animations will play after the preceding animation finishes. The :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` type will play the animations at the same time.

.. code:: qml

    Rectangle {
        id: banner
        width: 150; height: 100; border.color: "black"
        Column {
            anchors.centerIn: parent
            Text {
                id: code
                text: "Code less."
                opacity: 0.01
            }
            Text {
                id: create
                text: "Create more."
                opacity: 0.01
            }
            Text {
                id: deploy
                text: "Deploy everywhere."
                opacity: 0.01
            }
        }
        MouseArea {
            anchors.fill: parent
            onPressed: playbanner.start()
        }
        SequentialAnimation {
            id: playbanner
            running: false
            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
        }
    }

Once individual animations are placed into a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` or :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>`, they can no longer be started and stopped independently. The sequential or parallel animation must be started and stopped as a group.

The :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` type is also useful for playing `transition animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#qml-transition-animations>`_  because animations are played in parallel inside transitions.

There are different methods to control animations.

All animation types inherit from the :ref:`Animation <sdk_qtquick_animation>` type. It is not possible to create :ref:`Animation <sdk_qtquick_animation>` objects; instead, this type provides the essential properties and methods for animation types. Animation types have ``start()``, ``stop()``, ``resume()``, ``pause()``, ``restart()``, and ``complete()`` -- all of these methods control the execution of animations.

Easing curves define how the animation will interpolate between the start value and the end value. Different easing curves might go beyond the defined range of interpolation. The easing curves simplify the creation of animation effects such as bounce effects, acceleration, deceleration, and cyclical animations.

A QML object may have different easing curve for each property animation. There are also different parameters to control the curve, some of which are exclusive to a particular curve. For more information about the easing curves, visit the :ref:`easing <sdk_qtquick_propertyanimation_easing.type>` documentation.

The easing example visually demonstrates each of the different easing types.

In addition, QML provides several other types useful for animation:

-  :ref:`PauseAnimation <sdk_qtquick_pauseanimation>`: enables pauses during animations
-  :ref:`ScriptAction <sdk_qtquick_scriptaction>`: allows JavaScript to be executed during an animation, and can be used together with :ref:`StateChangeScript <sdk_qtquick_statechangescript>` to reused existing scripts
-  :ref:`PropertyAction <sdk_qtquick_propertyaction>`: changes a property *immediately* during an animation, without animating the property change

These are specialized animation types that animate different property types

-  :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`: a specialized :ref:`NumberAnimation <sdk_qtquick_numberanimation>` that provides smooth changes in animation when the target value changes
-  :ref:`SpringAnimation <sdk_qtquick_springanimation>`: provides a spring-like animation with specialized attributes such as :ref:`mass <sdk_qtquick_springanimation_mass>`, :ref:`damping <sdk_qtquick_springanimation_damping>` and :ref:`epsilon <sdk_qtquick_springanimation_epsilon>`
-  :ref:`ParentAnimation <sdk_qtquick_parentanimation>`: used for animating a parent change (see :ref:`ParentChange <sdk_qtquick_parentchange>`)
-  :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>`: used for animating an anchor change (see :ref:`AnchorChanges <sdk_qtquick_anchorchanges>`)

Sharing animation instances between Transitions or Behaviors is not supported, and may lead to undefined behavior. In the following example, changes to the Rectangle's position will most likely not be correctly animated.

.. code:: qml

    Rectangle {
        // NOT SUPPORTED: this will not work correctly as both Behaviors
        // try to control a single animation instance
        NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
        Behavior on x { animation: anim }
        Behavior on y { animation: anim }
    }

The easiest fix is to repeat the :ref:`NumberAnimation <sdk_qtquick_numberanimation>` for both Behaviors. If the repeated animation is rather complex, you might also consider creating a custom animation component and assigning an instance to each Behavior, for example:

.. code:: qml

    // MyNumberAnimation.qml
    NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }

.. code:: qml

    // main.qml
    Rectangle {
        Behavior on x { MyNumberAnimation {} }
        Behavior on y { MyNumberAnimation {} }
    }

**See also** `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .
