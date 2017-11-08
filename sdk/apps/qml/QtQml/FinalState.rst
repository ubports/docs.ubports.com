.. _sdk_qtqml_finalstate:

QtQml FinalState
================

Provides a final state.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

A final state is used to communicate that (part of) a :ref:`StateMachine <sdk_qtqml_statemachine>` has finished its work. When a final top-level state is entered, the state machine's :ref:`finished <sdk_qtqml_state_finished>`\ () signal is emitted. In general, when a final substate (a child of a State) is entered, the parent state's :ref:`finished <sdk_qtqml_state_finished>`\ () signal is emitted. :ref:`FinalState <sdk_qtqml_finalstate>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

To use a final state, you create a :ref:`FinalState <sdk_qtqml_finalstate>` object and add a transition to it from another state.

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

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>` and :ref:`State <sdk_qtqml_state>`.
