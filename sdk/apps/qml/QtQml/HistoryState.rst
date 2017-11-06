.. _sdk_qtqml_historystate:

QtQml HistoryState
==================

The HistoryState type provides a means of returning to a previously active substate.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`defaultState <sdk_qtqml_historystate_defaultState>` : QAbstractState
-  :ref:`historyType <sdk_qtqml_historystate_historyType>` : enumeration

Detailed Description
--------------------

A history state is a pseudo-state that represents the child state that the parent state was in the last time the parent state was exited. A transition with a history state as its target is in fact a transition to one of the other child states of the parent state. :ref:`HistoryState <sdk_qtqml_historystate>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

Use the :ref:`defaultState <sdk_qtqml_historystate_defaultState>` property to set the state that should be entered if the parent state has never been entered.

Example Usage
-------------

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        Button {
            anchors.fill: parent
            id: button
            text: "Press me"
            DSM.StateMachine {
                id: stateMachine
                initialState: parentState
                running: true
                DSM.State {
                    id: parentState
                    initialState: child2
                    onEntered: console.log("parentState entered")
                    onExited: console.log("parentState exited")
                    DSM.State {
                        id: child1
                        onEntered: console.log("child1 entered")
                        onExited: console.log("child1 exited")
                    }
                    DSM.State {
                        id: child2
                        onEntered: console.log("child2 entered")
                        onExited: console.log("child2 exited")
                    }
                    DSM.HistoryState {
                        id: historyState
                        defaultState: child1
                    }
                    DSM.SignalTransition {
                        targetState: historyState
                        // Clicking the button will cause the state machine to enter the child state
                        // that parentState was in the last time parentState was exited, or the history state's default
                        // state if parentState has never been entered.
                        signal: button.clicked
                    }
                }
            }
        }
    }

By default, a history state is shallow, meaning that it will not remember nested states. This can be configured through the :ref:`historyType <sdk_qtqml_historystate_historyType>` property.

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>` and :ref:`State <sdk_qtqml_state>`.

Property Documentation
----------------------

.. _sdk_qtqml_historystate_defaultState:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| defaultState : :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The default state of this history state.

The default state indicates the state to transition to if the parent state has never been entered before.

.. _sdk_qtqml_historystate_historyType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| historyType : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The type of history that this history state records.

The default value of this property is QHistoryState.ShallowHistory.

This enum specifies the type of history that a QHistoryState records.

-  QHistoryState.ShallowHistory Only the immediate child states of the parent state are recorded. In this case, a transition with the history state as its target will end up in the immediate child state that the parent was in the last time it was exited. This is the default.
-  QHistoryState.DeepHistory Nested states are recorded. In this case a transition with the history state as its target will end up in the most deeply nested descendant state the parent was in the last time it was exited.

