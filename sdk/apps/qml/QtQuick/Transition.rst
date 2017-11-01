Defines animated transitions that occur on state changes

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`animations </sdk/apps/qml/QtQuick/Transition#animations-prop>`__****
   : list<Animation>
-  ****`enabled </sdk/apps/qml/QtQuick/Transition#enabled-prop>`__**** :
   bool
-  ****`from </sdk/apps/qml/QtQuick/Transition#from-prop>`__**** :
   string
-  ****`reversible </sdk/apps/qml/QtQuick/Transition#reversible-prop>`__****
   : bool
-  ****`running </sdk/apps/qml/QtQuick/Transition#running-prop>`__**** :
   bool
-  ****`to </sdk/apps/qml/QtQuick/Transition#to-prop>`__**** : string

Detailed Description
--------------------

A Transition defines the animations to be applied when a
`State </sdk/apps/qml/QtQuick/State/>`__ change occurs.

For example, the following
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ has two states: the
default state, and an added "moved" state. In the "moved state, the
rectangle's position changes to (50, 50). The added Transition specifies
that when the rectangle changes between the default and the "moved"
state, any changes to the ``x`` and ``y`` properties should be animated,
using an ``Easing.InOutQuad``.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
        states: State {
            name: "moved"; when: mouseArea.pressed
            PropertyChanges { target: rect; x: 50; y: 50 }
        }
        transitions: Transition {
            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
        }
    }

Notice the example does not require
`to </sdk/apps/qml/QtQuick/PropertyAnimation#to-prop>`__ and
`from </sdk/apps/qml/QtQuick/PropertyAnimation#from-prop>`__ values for
the `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__. As a
convenience, these properties are automatically set to the values of
``x`` and ``y`` before and after the state change; the ``from`` values
are provided by the current values of ``x`` and ``y``, and the ``to``
values are provided by the
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ object. If
you wish, you can provide
`to </sdk/apps/qml/QtQuick/PropertyAnimation#to-prop>`__ and
`from </sdk/apps/qml/QtQuick/PropertyAnimation#from-prop>`__ values
anyway to override the default values.

By default, a Transition's animations are applied for any state change
in the parent item. The Transition
`from </sdk/apps/qml/QtQuick/Transition#from-prop>`__ and
`to </sdk/apps/qml/QtQuick/Transition#to-prop>`__ values can be set to
restrict the animations to only be applied when changing from one
particular state to another.

To define multiple transitions, specify
`Item::transitions </sdk/apps/qml/QtQuick/Item#transitions-prop>`__ as a
list:

.. code:: qml

    transitions: [
      Transition {
          from: "stop"; to: "go"
          PropertyAnimation { target: stopLight
                              properties: "color"; duration: 1000 }
      },
      Transition {
          from: "go"; to: "stop"
          PropertyAnimation { target: goLight
                              properties: "color"; duration: 1000 }
      } ]

If multiple Transitions are specified, only a single (best-matching)
Transition will be applied for any particular state change. In the
example above, when changing to ``state1``, the first transition will be
used, rather than the more generic second transition.

If a state change has a Transition that matches the same property as a
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, the Transition animation
overrides the `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__ for that
state change.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
`States example </sdk/apps/qml/QtQuick/animation#states>`__, `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__, and
Qt QML.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] animations :                                          |
| list<`Animation </sdk/apps/qml/QtQuick/Animation/>`__>                   |
+--------------------------------------------------------------------------+

This property holds a list of the animations to be run for this
transition.

.. code:: qml

The top-level animations are run in parallel. To run them sequentially,
define them within a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__:

.. code:: qml

    transitions: Transition {
        SequentialAnimation {
            PropertyAnimation { property: "x"; duration: 1000 }
            ColorAnimation { duration: 1000 }
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the Transition will be run when moving from
the ``from`` state to the ``to`` state.

By default a Transition is enabled.

Note that in some circumstances disabling a Transition may cause an
alternative Transition to be used in its place. In the following
example, although the first Transition has been set to animate changes
from "state1" to "state2", this transition has been disabled by setting
``enabled`` to ``false``, so any such state change will actually be
animated by the second Transition instead.

.. code:: qml

    Item {
        states: [
            State { name: "state1" },
            State { name: "state2" }
        ]
        transitions: [
            Transition { from: "state1"; to: "state2"; enabled: false },
            Transition {
                // ...
            }
        ]
    }

| 

+--------------------------------------------------------------------------+
|        \ from : string                                                   |
+--------------------------------------------------------------------------+

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the ``to`` and
``from`` properties, so the animation is always applied when changing
between the two states (i.e. when the mouse is pressed and released).

.. code:: qml

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea { id: mouseArea; anchors.fill: parent }
        states: State {
            name: "brighter"; when: mouseArea.pressed
            PropertyChanges { target: rect; color: "yellow" }
        }
        transitions: Transition {
            ColorAnimation { duration: 1000 }
        }
    }

If the transition was changed to this:

.. code:: qml

    transitions: Transition {
        to: "brighter"
        ColorAnimation { duration: 1000 }
    }

The animation would only be applied when changing from the default state
to the "brighter" state (i.e. when the mouse is pressed, but not on
release).

Multiple ``to`` and ``from`` values can be set by using a
comma-separated string.

**See also**
`reversible </sdk/apps/qml/QtQuick/Transition#reversible-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ reversible : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether the transition should be automatically
reversed when the conditions that triggered this transition are
reversed.

The default value is false.

By default, transitions run in parallel and are applied to all state
changes if the `from </sdk/apps/qml/QtQuick/Transition#from-prop>`__ and
`to </sdk/apps/qml/QtQuick/Transition#to-prop>`__ states have not been
set. In this situation, the transition is automatically applied when a
state change is reversed, and it is not necessary to set this property
to reverse the transition.

However, if a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ is
used, or if the `from </sdk/apps/qml/QtQuick/Transition#from-prop>`__ or
`to </sdk/apps/qml/QtQuick/Transition#to-prop>`__ properties have been
set, this property will need to be set to reverse a transition when a
state change is reverted. For example, the following transition applies
a sequential animation when the mouse is pressed, and reverses the
sequence of the animation when the mouse is released:

.. code:: qml

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea { id: mouseArea; anchors.fill: parent }
        states: State {
            name: "brighter"
            when: mouseArea.pressed
            PropertyChanges { target: rect; color: "yellow"; x: 50 }
        }
        transitions: Transition {
            SequentialAnimation {
                PropertyAnimation { property: "x"; duration: 1000 }
                ColorAnimation { duration: 1000 }
            }
        }
    }

If the transition did not set the ``to`` and ``reversible`` values, then
on the mouse release, the transition would play the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
before the
`ColorAnimation </sdk/apps/qml/QtQuick/animation#coloranimation>`__
instead of reversing the sequence.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the transition is currently running.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ to : string                                                     |
+--------------------------------------------------------------------------+

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the ``to`` and
``from`` properties, so the animation is always applied when changing
between the two states (i.e. when the mouse is pressed and released).

.. code:: qml

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea { id: mouseArea; anchors.fill: parent }
        states: State {
            name: "brighter"; when: mouseArea.pressed
            PropertyChanges { target: rect; color: "yellow" }
        }
        transitions: Transition {
            ColorAnimation { duration: 1000 }
        }
    }

If the transition was changed to this:

.. code:: qml

    transitions: Transition {
        to: "brighter"
        ColorAnimation { duration: 1000 }
    }

The animation would only be applied when changing from the default state
to the "brighter" state (i.e. when the mouse is pressed, but not on
release).

Multiple ``to`` and ``from`` values can be set by using a
comma-separated string.

**See also**
`reversible </sdk/apps/qml/QtQuick/Transition#reversible-prop>`__.

| 
