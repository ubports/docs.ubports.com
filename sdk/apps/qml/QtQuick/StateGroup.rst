.. _sdk_qtquick_stategroup:

QtQuick StateGroup
==================

Provides built-in state support for non-Item types

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`state <sdk_qtquick_stategroup_state>` : string
-  :ref:`states <sdk_qtquick_stategroup_states>` : list<State>
-  :ref:`transitions <sdk_qtquick_stategroup_transitions>` : list<Transition>

Detailed Description
--------------------

Item (and all derived types) provides built in support for states and transitions via its :ref:`state <sdk_qtquick_item_state>`, :ref:`states <sdk_qtquick_item_states>` and :ref:`transitions <sdk_qtquick_item_transitions>` properties. :ref:`StateGroup <sdk_qtquick_stategroup>` provides an easy way to use this support in other (non-Item-derived) types.

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

**See also** `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ , `Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , and Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_stategroup_state:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the current state of the state group.

This property is often used in scripts to change between states. For example:

.. code:: js

    function toggle() {
        if (button.state == 'On')
            button.state = 'Off';
        else
            button.state = 'On';
    }

If the state group is in its base state (i.e. no explicit state has been set), ``state`` will be a blank string. Likewise, you can return a state group to its base state by setting its current state to ``''``.

**See also** `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

.. _sdk_qtquick_stategroup_states:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| states : list<:ref:`State <sdk_qtquick_state>`>                                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

**See also** `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

.. _sdk_qtquick_stategroup_transitions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| transitions : list<:ref:`Transition <sdk_qtquick_transition>`>                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

**See also** `Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

