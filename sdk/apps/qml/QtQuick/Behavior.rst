Defines a default animation for a property change

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`animation </sdk/apps/qml/QtQuick/Behavior#animation-prop>`__****
   : Animation
-  ****`enabled </sdk/apps/qml/QtQuick/Behavior#enabled-prop>`__**** :
   bool

Detailed Description
--------------------

A Behavior defines the default animation to be applied whenever a
particular property value changes.

For example, the following Behavior defines a
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ to be run
whenever the `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__'s
``width`` value changes. When the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ is clicked, the
``width`` is changed, triggering the behavior's animation:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        Behavior on width {
            NumberAnimation { duration: 1000 }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: rect.width = 50
        }
    }

Note that a property cannot have more than one assigned Behavior. To
provide multiple animations within a Behavior, use
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ or
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__.

If a `state
change </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__ has a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
that matches the same property as a Behavior, the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
animation overrides the Behavior for that state change. For general
advice on using Behaviors to animate state changes, see `Using Qt Quick
Behaviors with
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-behaviors/>`__.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
`Behavior example </sdk/apps/qml/QtQuick/animation#behaviors>`__, and Qt
QML.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] animation :                                           |
| `Animation </sdk/apps/qml/QtQuick/Animation/>`__                         |
+--------------------------------------------------------------------------+

This property holds the animation to run when the behavior is triggered.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the behavior will be triggered when the
tracked property changes value.

By default a Behavior is enabled.

| 
