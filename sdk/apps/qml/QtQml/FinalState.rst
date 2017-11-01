Provides a final state.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QAbstractState </sdk/apps/qml/QtQml |
|                                      | /QAbstractState/>`__                 |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

A final state is used to communicate that (part of) a
`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ has finished its
work. When a final top-level state is entered, the state machine's
`finished </sdk/apps/qml/QtQml/State#finished-signal>`__\ () signal is
emitted. In general, when a final substate (a child of a State) is
entered, the parent state's
`finished </sdk/apps/qml/QtQml/State#finished-signal>`__\ () signal is
emitted. `FinalState </sdk/apps/qml/QtQml/FinalState/>`__ is part of
`The Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

To use a final state, you create a
`FinalState </sdk/apps/qml/QtQml/FinalState/>`__ object and add a
transition to it from another state.

Example Usage
-------------

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        DSM.StateMachine {
            id: stateMachine
            initialState: state
            running: true
            DSM.State {
                id: state
                DSM.TimeoutTransition {
                    targetState: finalState
                    timeout: 200
                }
            }
            DSM.FinalState {
                id: finalState
            }
            onFinished: console.log("state finished")
        }
    }

| 

**See also** `StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ and
`State </sdk/apps/qml/QtQml/State/>`__.
