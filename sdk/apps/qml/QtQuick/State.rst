Defines configurations of objects and properties

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`changes </sdk/apps/qml/QtQuick/State#changes-prop>`__**** :
   list<Change>
-  ****`extend </sdk/apps/qml/QtQuick/State#extend-prop>`__**** : string
-  ****`name </sdk/apps/qml/QtQuick/State#name-prop>`__**** : string
-  ****`when </sdk/apps/qml/QtQuick/State#when-prop>`__**** : bool

Detailed Description
--------------------

A *state* is a set of batched changes from the default configuration.

All items have a default state that defines the default configuration of
objects and property values. New states can be defined by adding State
items to the `states </sdk/apps/qml/QtQuick/Item#states-prop>`__
property to allow items to switch between different configurations.
These configurations can, for example, be used to apply different sets
of property values or execute different scripts.

The following example displays a single
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__. In the default state,
the rectangle is colored black. In the "clicked" state, a
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ object
changes the rectangle's color to red. Clicking within the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ toggles the rectangle's
state between the default state and the "clicked" state, thus toggling
the color of the rectangle between black and red.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: myRect
        width: 100; height: 100
        color: "black"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: myRect.state == 'clicked' ? myRect.state = "" : myRect.state = 'clicked';
        }
        states: [
            State {
                name: "clicked"
                PropertyChanges { target: myRect; color: "red" }
            }
        ]
    }

Notice the default state is referred to using an empty string ("").

States are commonly used together with
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
to provide animations when state changes occur.

**Note:** Setting the state of an object from within another state of
the same object is not allowed.

**See also** `States
example </sdk/apps/qml/QtQuick/animation#states>`__, `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__,
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
and Qt QML.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] changes : list<Change>                                |
+--------------------------------------------------------------------------+

This property holds the changes to apply for this state

By default these changes are applied against the default state. If the
state extends another state, then the changes are applied against the
state being extended.

| 

+--------------------------------------------------------------------------+
|        \ extend : string                                                 |
+--------------------------------------------------------------------------+

This property holds the state that this state extends.

When a state extends another state, it inherits all the changes of that
state.

The state being extended is treated as the base state in regards to the
changes specified by the extending state.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the state.

Each state should have a unique name within its item.

| 

+--------------------------------------------------------------------------+
|        \ when : bool                                                     |
+--------------------------------------------------------------------------+

This property holds when the state should be applied.

This should be set to an expression that evaluates to ``true`` when you
want the state to be applied. For example, the following
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ changes in and out of
the "hidden" state when the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ is pressed:

.. code:: qml

    Rectangle {
        id: myRect
        width: 100; height: 100
        color: "red"
        MouseArea { id: mouseArea; anchors.fill: parent }
        states: State {
            name: "hidden"; when: mouseArea.pressed
            PropertyChanges { target: myRect; opacity: 0 }
        }
    }

If multiple states in a group have ``when`` clauses that evaluate to
``true`` at the same time, the first matching state will be applied. For
example, in the following snippet ``state1`` will always be selected
rather than ``state2`` when sharedCondition becomes ``true``.

.. code:: qml

    Item {
        states: [
            State { name: "state1"; when: sharedCondition },
            State { name: "state2"; when: sharedCondition }
        ]
        // ...
    }

| 
