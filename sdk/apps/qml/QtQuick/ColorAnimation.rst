Animates changes in color values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PropertyAnimation </sdk/apps/qml/Qt |
|                                      | Quick/PropertyAnimation/>`__         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`from </sdk/apps/qml/QtQuick/ColorAnimation#from-prop>`__**** :
   color
-  ****`to </sdk/apps/qml/QtQuick/ColorAnimation#to-prop>`__**** : color

Detailed Description
--------------------

`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__ is a
specialized
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
that defines an animation to be applied when a color value changes.

Here is a
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__
applied to the ``color`` property of a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ as a property value
source. It animates the ``color`` property's value from its current
value to a value of "red", over 1000 milliseconds:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        ColorAnimation on color { to: "yellow"; duration: 1000 }
    }

Like any other animation type, a
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__ can
be applied in a number of ways, including transitions, behaviors and
property value sources. The `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
documentation shows a variety of methods for creating animations.

For convenience, when a
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__ is
used in a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
it will animate any ``color`` properties that have been modified during
the state change. If a
`property </sdk/apps/qml/QtQuick/PropertyAnimation#property-prop>`__ or
`properties </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
are explicitly set for the animation, then those are used instead.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ from : color                                                    |
+--------------------------------------------------------------------------+

This property holds the color value at which the animation should begin.

For example, the following animation is not applied until a color value
has reached "#c0c0c0":

.. code:: qml

    Item {
        states: [
            // States are defined here...
        ]
        transition: Transition {
            ColorAnimation { from: "#c0c0c0"; duration: 2000 }
        }
    }

If the
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__ is
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
|        \ to : color                                                      |
+--------------------------------------------------------------------------+

This property holds the color value at which the animation should end.

If the
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__ is
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
