Provides built-in state support for non-Item types

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`state </sdk/apps/qml/QtQuick/StateGroup#state-prop>`__**** :
   string
-  ****`states </sdk/apps/qml/QtQuick/StateGroup#states-prop>`__**** :
   list<State>
-  ****`transitions </sdk/apps/qml/QtQuick/StateGroup#transitions-prop>`__****
   : list<Transition>

Detailed Description
--------------------

Item (and all derived types) provides built in support for states and
transitions via its `state </sdk/apps/qml/QtQuick/Item#state-prop>`__,
`states </sdk/apps/qml/QtQuick/Item#states-prop>`__ and
`transitions </sdk/apps/qml/QtQuick/Item#transitions-prop>`__
properties. `StateGroup </sdk/apps/qml/QtQuick/StateGroup/>`__ provides
an easy way to use this support in other (non-Item-derived) types.

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
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__,
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
and Qt QML.

Property Documentation
----------------------

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
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__.

| 

+--------------------------------------------------------------------------+
|        \ states : list<`State </sdk/apps/qml/QtQuick/State/>`__>         |
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
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__.

| 

+--------------------------------------------------------------------------+
|        \ transitions :                                                   |
| list<`Transition </sdk/apps/qml/QtQuick/Transition/>`__>                 |
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
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 
