.. _sdk_qtquick_stategroup:
QtQuick StateGroup
==================

Provides built-in state support for non-Item types

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`state <sdk_qtquick_stategroup_state-prop>` : string
-  :ref:`states <sdk_qtquick_stategroup_states-prop>` : list<State>
-  :ref:`transitions <sdk_qtquick_stategroup_transitions-prop>` :
   list<Transition>

Detailed Description
--------------------

Item (and all derived types) provides built in support for states and
transitions via its :ref:`state <sdk_qtquick_item#state-prop>`,
:ref:`states <sdk_qtquick_item#states-prop>` and
:ref:`transitions <sdk_qtquick_item#transitions-prop>` properties.
:ref:`StateGroup <sdk_qtquick_stategroup>` provides an easy way to use this
support in other (non-Item-derived) types.

.. code:: qml

    MyCustomObject {
        StateGroup {
            id: myStateGroup
            states: State {
                name: "state1"
                // ...
            }
            transitions: Transition {
                // ...
            }
        }
        onSomethingHappened: myStateGroup.state = "state1";
    }

**See also** `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ ,
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ ,
and Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_stategroup_state-prop:

+--------------------------------------------------------------------------+
|        \ state : string                                                  |
+--------------------------------------------------------------------------+

This property holds the name of the current state of the state group.

This property is often used in scripts to change between states. For
example:

.. code:: js

    function toggle() {
        if (button.state == 'On')
            button.state = 'Off';
        else
            button.state = 'On';
    }

If the state group is in its base state (i.e. no explicit state has been
set), ``state`` will be a blank string. Likewise, you can return a state
group to its base state by setting its current state to ``''``.

**See also** `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

| 

.. _sdk_qtquick_stategroup_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ states : list<`State <sdk_qtquick_state>`>                    |
+--------------------------------------------------------------------------+

This property holds a list of states defined by the state group.

.. code:: qml

    StateGroup {
        states: [
            State {
                // State definition...
            },
            State {
                // ...
            }
            // Other states...
        ]
    }

**See also** `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

| 

.. _sdk_qtquick_stategroup_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ transitions : list<`Transition <sdk_qtquick_transition>`>     |
+--------------------------------------------------------------------------+

This property holds a list of transitions defined by the state group.

.. code:: qml

    StateGroup {
        transitions: [
            Transition {
              // ...
            },
            Transition {
              // ...
            }
            // ...
        ]
    }

**See also**
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 
