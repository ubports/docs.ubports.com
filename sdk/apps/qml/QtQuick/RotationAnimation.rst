Animates changes in rotation values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PropertyAnimation </sdk/apps/qml/Qt |
|                                      | Quick/PropertyAnimation/>`__         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtQuick/RotationAnimation#direction-prop>`__****
   : enumeration
-  ****`from </sdk/apps/qml/QtQuick/RotationAnimation#from-prop>`__****
   : real
-  ****`to </sdk/apps/qml/QtQuick/RotationAnimation#to-prop>`__**** :
   real

Detailed Description
--------------------

`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ is a
specialized
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
that gives control over the direction of rotation during an animation.

By default, it rotates in the direction of the numerical change; a
rotation from 0 to 240 will rotate 240 degrees clockwise, while a
rotation from 240 to 0 will rotate 240 degrees counterclockwise. The
`direction </sdk/apps/qml/QtQuick/RotationAnimation#direction-prop>`__
property can be set to specify the direction in which the rotation
should occur.

In the following example we use
`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ to
animate the rotation between states via the shortest path:

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

Notice the
`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ did not
need to set a ``target`` value. As a convenience, when used in a
transition,
`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ will
rotate all properties named "rotation" or "angle". You can override this
by providing your own properties via
`properties </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
or `property </sdk/apps/qml/QtQuick/PropertyAnimation#property-prop>`__.

Also, note the `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ will be
rotated around its default
`transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__
(which is ``Item.Center``). To use a different transform origin, set the
origin in the
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ object and
apply the change at the start of the animation using
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__. See the
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ documentation
for more details.

Like any other animation type, a
`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ can be
applied in a number of ways, including transitions, behaviors and
property value sources. The `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
documentation shows a variety of methods for creating animations.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the direction of the rotation.

Possible values are:

-  `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__.Numerical
   (default) - Rotate by linearly interpolating between the two numbers.
   A rotation from 10 to 350 will rotate 340 degrees clockwise.
-  `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__.Clockwise
   - Rotate clockwise between the two values
-  `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__.Counterclockwise
   - Rotate counterclockwise between the two values
-  `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__.Shortest
   - Rotate in the direction that produces the shortest animation path.
   A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

| 

+--------------------------------------------------------------------------+
|        \ from : real                                                     |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

For example, the following animation is not applied until the ``angle``
value has reached 100:

.. code:: qml

    Item {
        states: [
            // ...
        ]
        transition: Transition {
            RotationAnimation { properties: "angle"; from: 100; duration: 2000 }
        }
    }

If the `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__
is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the starting state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the current value of the property at the moment the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__ is triggered.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

+--------------------------------------------------------------------------+
|        \ to : real                                                       |
+--------------------------------------------------------------------------+

This property holds the end value for the animation..

If the `RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__
is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the value of the property change that triggered the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 
