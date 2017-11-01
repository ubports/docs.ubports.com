Allows a property to track a value in a spring-like motion

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `NumberAnimation </sdk/apps/qml/QtQu |
|                                      | ick/NumberAnimation/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`damping </sdk/apps/qml/QtQuick/SpringAnimation#damping-prop>`__****
   : real
-  ****`epsilon </sdk/apps/qml/QtQuick/SpringAnimation#epsilon-prop>`__****
   : real
-  ****`mass </sdk/apps/qml/QtQuick/SpringAnimation#mass-prop>`__**** :
   real
-  ****`modulus </sdk/apps/qml/QtQuick/SpringAnimation#modulus-prop>`__****
   : real
-  ****`spring </sdk/apps/qml/QtQuick/SpringAnimation#spring-prop>`__****
   : real
-  ****`velocity </sdk/apps/qml/QtQuick/SpringAnimation#velocity-prop>`__****
   : real

Detailed Description
--------------------

`SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__ mimics the
oscillatory behavior of a spring, with the appropriate
`spring </sdk/apps/qml/QtQuick/SpringAnimation#spring-prop>`__ constant
to control the acceleration and the
`damping </sdk/apps/qml/QtQuick/SpringAnimation#damping-prop>`__ to
control how quickly the effect dies away.

You can also limit the maximum
`velocity </sdk/apps/qml/QtQuick/SpringAnimation#velocity-prop>`__ of
the animation.

The following `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ moves to
the position of the mouse using a
`SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__ when the
mouse is clicked. The use of the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__ on the ``x`` and ``y``
values indicates that whenever these values are changed, a
`SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__ should be
applied.

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

Like any other animation type, a
`SpringAnimation </sdk/apps/qml/QtQuick/SpringAnimation/>`__ can be
applied in a number of ways, including transitions, behaviors and
property value sources. The `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
documentation shows a variety of methods for creating animations.

**See also**
`SmoothedAnimation </sdk/apps/qml/QtQuick/SmoothedAnimation/>`__,
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
`Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`__,
and `Qt Quick Demo - Clocks </sdk/apps/qml/QtQuick/demos-clocks/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ damping : real                                                  |
+--------------------------------------------------------------------------+

This property holds the spring damping value.

This value describes how quickly the spring-like motion comes to rest.
The default value is 0.

The useful value range is 0 - 1.0. The lower the value, the faster it
comes to rest.

| 

+--------------------------------------------------------------------------+
|        \ epsilon : real                                                  |
+--------------------------------------------------------------------------+

This property holds the spring epsilon.

The epsilon is the rate and amount of change in the value which is close
enough to 0 to be considered equal to zero. This will depend on the
usage of the value. For pixel positions, 0.25 would suffice. For scale,
0.005 will suffice.

The default is 0.01. Tuning this value can provide small performance
improvements.

| 

+--------------------------------------------------------------------------+
|        \ mass : real                                                     |
+--------------------------------------------------------------------------+

This property holds the "mass" of the property being moved.

The value is 1.0 by default.

A greater mass causes slower movement and a greater spring-like motion
when an item comes to rest.

| 

+--------------------------------------------------------------------------+
|        \ modulus : real                                                  |
+--------------------------------------------------------------------------+

This property holds the modulus value. The default value is 0.

Setting a *modulus* forces the target value to "wrap around" at the
modulus. For example, setting the modulus to 360 will cause a value of
370 to wrap around to 10.

| 

+--------------------------------------------------------------------------+
|        \ spring : real                                                   |
+--------------------------------------------------------------------------+

This property describes how strongly the target is pulled towards the
source. The default value is 0 (that is, the spring-like motion is
disabled).

The useful value range is 0 - 5.0.

When this property is set and the
`velocity </sdk/apps/qml/QtQuick/SpringAnimation#velocity-prop>`__ value
is greater than 0, the
`velocity </sdk/apps/qml/QtQuick/SpringAnimation#velocity-prop>`__
limits the maximum speed.

| 

+--------------------------------------------------------------------------+
|        \ velocity : real                                                 |
+--------------------------------------------------------------------------+

This property holds the maximum velocity allowed when tracking the
source.

The default value is 0 (no maximum velocity).

| 
