

.. rubric:: Animation and Transitions Types
   :name: animation-and-transitions-types

-  `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
   - Animates transitions during state changes
-  `SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
   - Runs animations sequentially
-  `ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ -
   Runs animations in parallel
-  `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__ - Specifies a default
   animation for property changes
-  `PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ - Sets
   immediate property changes during animation
-  `PauseAnimation </sdk/apps/qml/QtQuick/PauseAnimation/>`__ -
   Introduces a pause in an animation
-  `SmoothedAnimation </sdk/apps/qml/QtQuick/SmoothedAnimation/>`__ -
   Allows a property to smoothly track a value
-  `SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__ - Allows
   a property to track a value in a spring-like motion
-  `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ - Runs scripts
   during an animation

Types that animate properties based on data types

+--------------------------------------+--------------------------------------+
| `AnchorAnimation </sdk/apps/qml/QtQu | Animates changes in anchor values    |
| ick/AnchorAnimation/>`__             |                                      |
+--------------------------------------+--------------------------------------+
| `ColorAnimation </sdk/apps/qml/QtQui | Animates changes in color values     |
| ck/ColorAnimation/>`__               |                                      |
+--------------------------------------+--------------------------------------+
| `NumberAnimation </sdk/apps/qml/QtQu | Animates changes in qreal-type       |
| ick/NumberAnimation/>`__             | values                               |
+--------------------------------------+--------------------------------------+
| `ParentAnimation </sdk/apps/qml/QtQu | Animates changes in parent values    |
| ick/ParentAnimation/>`__             |                                      |
+--------------------------------------+--------------------------------------+
| `PathAnimation </sdk/apps/qml/QtQuic | Animates an item along a path        |
| k/PathAnimation/>`__                 |                                      |
+--------------------------------------+--------------------------------------+
| `PropertyAnimation </sdk/apps/qml/Qt | Animates changes in property values  |
| Quick/PropertyAnimation/>`__         |                                      |
+--------------------------------------+--------------------------------------+
| `RotationAnimation </sdk/apps/qml/Qt | Animates changes in rotation values  |
| Quick/RotationAnimation/>`__         |                                      |
+--------------------------------------+--------------------------------------+
| `Vector3dAnimation </sdk/apps/qml/Qt | Animates changes in QVector3d values |
| Quick/Vector3dAnimation/>`__         |                                      |
+--------------------------------------+--------------------------------------+

Animations are created by applying animation types to property values.
Animation types will interpolate property values to create smooth
transitions. As well, state transitions may assign animations to state
changes.

To create an animation, use an appropriate animation type for the type
of the property that is to be animated, and apply the animation
depending on the type of behavior that is required.

.. rubric:: Triggering Animations
   :name: triggering-animations

There are several ways of setting animation to an object.

.. rubric:: Direct Property Animation
   :name: direct-property-animation

Animations are created by applying animation objects to property values
to gradually change the properties over time. These *property
animations* apply smooth movements by interpolating values between
property value changes. Property animations provide timing controls and
allows different interpolations through `easing
curves </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations#qml-easing-animation>`__.

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

Specialized property animation types have more efficient implementations
than the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
type. They are for setting animations to different QML types such as
``int``, ``color``, and rotations. Similarly, the
`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ can animate
parent changes.

See the `Controlling
Animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations#qml-controlling-animations>`__
section for more information about the different animation properties.

.. rubric:: Using Predefined Targets and Properties
   :name: using-predefined-targets-and-properties

In the previous example, the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
and `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ objects
needed to specify particular
`target </sdk/apps/qml/QtQuick/PropertyAnimation#target-prop>`__ and
`properties </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
values to specify the objects and properties that should be animated.
This can be avoided by using the *<Animation> on <Property>* syntax,
which specifies the animation is to be applied as a *property value
source*.

Below are two
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
objects that are specified using this syntax:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        PropertyAnimation on x { to: 100 }
        PropertyAnimation on y { to: 100 }
    }

The animation starts as soon as the rectangle is loaded, and will
automatically be applied to its ``x`` and ``y`` values. Since the
*<Animation> on <Property>* syntax has been used, it is not necessary to
set the `target </sdk/apps/qml/QtQuick/PropertyAnimation#target-prop>`__
value of the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
objects to ``rect``, and neither is it necessary to set the
`property </sdk/apps/qml/QtQuick/PropertyAnimation#property-prop>`__
values to ``x`` and ``y``.

This can also be used by `grouped
animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations#playing-animations-in-parallel-or-in-sequence>`__
to ensure that all animations within a group are applied to the same
property. For example, the previous example could instead use
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ to
animate the rectangle's ``color`` first to yellow, then to blue:

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

Since the
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
object has been specified on the ``color`` property using the
*<Animation> on <Property>* syntax, its child
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__
objects are also automatically applied to this property and do not need
to specify
`target </sdk/apps/qml/QtQuick/PropertyAnimation#target-prop>`__ or
`property </sdk/apps/qml/QtQuick/PropertyAnimation#property-prop>`__
animation values.

       \        
.. rubric:: Transitions during State Changes
   :name: transitions-during-state-changes

`Qt Quick States </sdk/apps/qml/QtQuick/State/>`__ are property
configurations where a property may have different values to reflect
different states. State changes introduce abrupt property changes;
animations smooth transitions to produce visually appealing state
changes.

The
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
type can contain animation types to interpolate property changes caused
by state changes. To assign the transition to an object, bind it to the
``transitions`` property.

A button might have two states, the ``pressed`` state when the user
clicks on the button and a ``released`` state when the user releases the
button. We can assign different property configurations for each state.
A transition would animate the change from the ``pressed`` state to the
``released`` state. Likewise, there would be an animation during the
change from the ``released`` state to the ``pressed`` state.

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

Binding the ``to`` and ``from`` properties to the state's name will
assign that particular transition to the state change. For simple or
symmetric transitions, setting the to ``to`` property to the wild card
symbol, "``*``", denotes that the transition applies to any state
change.

.. code:: qml

        transitions:
            Transition {
                to: "*"
                ColorAnimation { target: button; duration: 100}
            }

.. rubric:: Default Animation as Behaviors
   :name: default-animation-as-behaviors

Default property animations are set using *behavior animations*.
Animations declared in `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__
types apply to the property and animates any property value changes.
However, Behavior types have an ``enabled`` property to purposely enable
or disable the behavior animations.

A ball component might have a behavior animation assigned to its ``x``,
``y``, and ``color`` properties. The behavior animation could be set up
to simulate an elastic effect. In effect, this behavior animation would
apply the elastic effect to the properties whenever the ball moves.

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

There are several methods of assigning behavior animations to
properties. The ``Behavior on <property>`` declaration is a convenient
way of assigning a behavior animation onto a property.

See the `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__ for a demonstration of
behavioral animations.

.. rubric:: Playing Animations in Parallel or in Sequence
   :name: playing-animations-in-parallel-or-in-sequence

Animations can run *in parallel* or *in sequence*. Parallel animations
will play a group of animations at the same time while sequential
animations play a group of animations in order: one after the other.
Grouping animations in
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ and
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ will
play the animations in sequence or in parallel.

A banner component may have several icons or slogans to display, one
after the other. The ``opacity`` property could transform to ``1.0``
denoting an opaque object. Using the
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
type, the opacity animations will play after the preceding animation
finishes. The
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ type
will play the animations at the same time.

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

Once individual animations are placed into a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ or
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__, they
can no longer be started and stopped independently. The sequential or
parallel animation must be started and stopped as a group.

The `SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
type is also useful for playing `transition
animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations#qml-transition-animations>`__
because animations are played in parallel inside transitions.

       \        
.. rubric:: Controlling Animations
   :name: controlling-animations

There are different methods to control animations.

.. rubric:: Animation Playback
   :name: animation-playback

All animation types inherit from the
`Animation </sdk/apps/qml/QtQuick/Animation/>`__ type. It is not
possible to create `Animation </sdk/apps/qml/QtQuick/Animation/>`__
objects; instead, this type provides the essential properties and
methods for animation types. Animation types have ``start()``,
``stop()``, ``resume()``, ``pause()``, ``restart()``, and ``complete()``
-- all of these methods control the execution of animations.

       \        
.. rubric:: Easing
   :name: easing

Easing curves define how the animation will interpolate between the
start value and the end value. Different easing curves might go beyond
the defined range of interpolation. The easing curves simplify the
creation of animation effects such as bounce effects, acceleration,
deceleration, and cyclical animations.

A QML object may have different easing curve for each property
animation. There are also different parameters to control the curve,
some of which are exclusive to a particular curve. For more information
about the easing curves, visit the
`easing </sdk/apps/qml/QtQuick/PropertyAnimation#easing.type-prop>`__
documentation.

The easing example visually demonstrates each of the different easing
types.

.. rubric:: Other Animation Types
   :name: other-animation-types

In addition, QML provides several other types useful for animation:

-  `PauseAnimation </sdk/apps/qml/QtQuick/PauseAnimation/>`__: enables
   pauses during animations
-  `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__: allows
   JavaScript to be executed during an animation, and can be used
   together with
   `StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__ to
   reused existing scripts
-  `PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__: changes a
   property *immediately* during an animation, without animating the
   property change

These are specialized animation types that animate different property
types

-  `SmoothedAnimation </sdk/apps/qml/QtQuick/SmoothedAnimation/>`__: a
   specialized
   `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ that
   provides smooth changes in animation when the target value changes
-  `SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__:
   provides a spring-like animation with specialized attributes such as
   `mass </sdk/apps/qml/QtQuick/SpringAnimation#mass-prop>`__,
   `damping </sdk/apps/qml/QtQuick/SpringAnimation#damping-prop>`__ and
   `epsilon </sdk/apps/qml/QtQuick/SpringAnimation#epsilon-prop>`__
-  `ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__: used
   for animating a parent change (see
   `ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__)
-  `AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__: used
   for animating an anchor change (see
   `AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__)

.. rubric:: Sharing Animation Instances
   :name: sharing-animation-instances

Sharing animation instances between Transitions or Behaviors is not
supported, and may lead to undefined behavior. In the following example,
changes to the Rectangle's position will most likely not be correctly
animated.

.. code:: qml

    Rectangle {
        // NOT SUPPORTED: this will not work correctly as both Behaviors
        // try to control a single animation instance
        NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
        Behavior on x { animation: anim }
        Behavior on y { animation: anim }
    }

The easiest fix is to repeat the
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ for both
Behaviors. If the repeated animation is rather complex, you might also
consider creating a custom animation component and assigning an instance
to each Behavior, for example:

.. code:: qml

    // MyNumberAnimation.qml
    NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }

.. code:: qml

    // main.qml
    Rectangle {
        Behavior on x { MyNumberAnimation {} }
        Behavior on y { MyNumberAnimation {} }
    }

**See also** `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.
