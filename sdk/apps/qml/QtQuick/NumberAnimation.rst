Animates changes in qreal-type values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PropertyAnimation </sdk/apps/qml/Qt |
|                                      | Quick/PropertyAnimation/>`__         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `SmoothedAnimation </sdk/apps/qml/Qt |
|                                      | Quick/SmoothedAnimation/>`__         |
|                                      | and                                  |
|                                      | `SpringAnimation </sdk/apps/qml/QtQu |
|                                      | ick/SpringAnimation/>`__.            |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`from </sdk/apps/qml/QtQuick/NumberAnimation#from-prop>`__**** :
   real
-  ****`to </sdk/apps/qml/QtQuick/NumberAnimation#to-prop>`__**** : real

Detailed Description
--------------------

`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ is a
specialized
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
that defines an animation to be applied when a numerical value changes.

Here is a `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__
applied to the ``x`` property of a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ as a property value
source. It animates the ``x`` value from its current value to a value of
50, over 1000 milliseconds:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        NumberAnimation on x { to: 50; duration: 1000 }
    }

Like any other animation type, a
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ can be
applied in a number of ways, including transitions, behaviors and
property value sources. The `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
documentation shows a variety of methods for creating animations.

Note that `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__
may not animate smoothly if there are irregular changes in the number
value that it is tracking. If this is the case, use
`SmoothedAnimation </sdk/apps/qml/QtQuick/SmoothedAnimation/>`__
instead.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ from : real                                                     |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

For example, the following animation is not applied until the ``x``
value has reached 100:

.. code:: qml

    Item {
        states: [
            // ...
        ]
        transition: Transition {
            NumberAnimation { properties: "x"; from: 100; duration: 200 }
        }
    }

If the `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ is
defined within a
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

This property holds the end value for the animation.

If the `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ is
defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the value of the property change that triggered the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 
