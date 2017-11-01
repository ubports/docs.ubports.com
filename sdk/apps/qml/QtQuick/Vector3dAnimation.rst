Animates changes in QVector3d values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PropertyAnimation </sdk/apps/qml/Qt |
|                                      | Quick/PropertyAnimation/>`__         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`from </sdk/apps/qml/QtQuick/Vector3dAnimation#from-prop>`__****
   : real
-  ****`to </sdk/apps/qml/QtQuick/Vector3dAnimation#to-prop>`__**** :
   real

Detailed Description
--------------------

`Vector3dAnimation </sdk/apps/qml/QtQuick/Vector3dAnimation/>`__ is a
specialized
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
that defines an animation to be applied when a Vector3d value changes.

Like any other animation type, a
`Vector3dAnimation </sdk/apps/qml/QtQuick/Vector3dAnimation/>`__ can be
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
|        \ from : real                                                     |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

If the `Vector3dAnimation </sdk/apps/qml/QtQuick/Vector3dAnimation/>`__
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

This property holds the end value for the animation.

If the `Vector3dAnimation </sdk/apps/qml/QtQuick/Vector3dAnimation/>`__
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
