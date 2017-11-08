.. _sdk_qtqml_statemachine:

QtQml StateMachine
==================

Provides a hierarchical finite state machine.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`State <sdk_qtqml_state>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`errorString <sdk_qtqml_statemachine_errorString>` : string
-  :ref:`globalRestorePolicy <sdk_qtqml_statemachine_globalRestorePolicy>` : enumeration
-  :ref:`running <sdk_qtqml_statemachine_running>` : bool

Signals
-------

-  :ref:`started <sdk_qtqml_statemachine_started>`\ ()
-  :ref:`stopped <sdk_qtqml_statemachine_stopped>`\ ()

Methods
-------

-  :ref:`start <sdk_qtqml_statemachine_start>`\ ()
-  :ref:`stop <sdk_qtqml_statemachine_stop>`\ ()

Detailed Description
--------------------

:ref:`StateMachine <sdk_qtqml_statemachine>` is based on the concepts and notation of `Statecharts <http://www.wisdom.weizmann.ac.il/~dharel/SCANNED.PAPERS/Statecharts.pdf>`_ . :ref:`StateMachine <sdk_qtqml_statemachine>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

A state machine manages a set of states and transitions between those states; these states and transitions define a state graph. Once a state graph has been built, the state machine can execute it. :ref:`StateMachine <sdk_qtqml_statemachine>`'s execution algorithm is based on the `State Chart XML (SCXML) <http://www.w3.org/TR/scxml/>`_  algorithm. The framework's `overview </sdk/apps/qml/QtQml/qmlstatemachine/>`_  gives several state graphs and the code to build them.

Before the machine can be started, the :ref:`initialState <sdk_qtqml_state_initialState>` must be set. The initial state is the state that the machine enters when started. You can then set running property to true or :ref:`start() <sdk_qtqml_statemachine_start>` the state machine. The started signal is emitted when the initial state is entered.

The state machine processes events and takes transitions until a top-level final state is entered; the state machine then emits the finished() signal. You can also :ref:`stop() <sdk_qtqml_statemachine_stop>` the state machine explicitly (you can also set running property to false). The stopped signal is emitted in this case.

Example Usage
-------------

The following snippet shows a state machine that will finish when a button is clicked:

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        Button {
            anchors.fill: parent
            id: button
            text: "Finish state"
            DSM.StateMachine {
                id: stateMachine
                initialState: state
                running: true
                DSM.State {
                    id: state
                    DSM.SignalTransition {
                        targetState: finalState
                        signal: button.clicked
                    }
                }
                DSM.FinalState {
                    id: finalState
                }
                onFinished: Qt.quit()
            }
        }
    }

If an error is encountered, the machine will look for an :ref:`errorState <sdk_qtqml_state_errorState>`, and if one is available, it will enter this state. After the error state is entered, the type of the error can be retrieved with error(). The execution of the state graph will not stop when the error state is entered. If no error state applies to the erroneous state, the machine will stop executing and an error message will be printed to the console.

**See also** :ref:`QAbstractState <sdk_qtqml_qabstractstate>`, :ref:`State <sdk_qtqml_state>`, :ref:`SignalTransition <sdk_qtqml_signaltransition>`, :ref:`TimeoutTransition <sdk_qtqml_timeouttransition>`, :ref:`HistoryState <sdk_qtqml_historystate>`, and `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

Property Documentation
----------------------

.. _sdk_qtqml_statemachine_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] errorString : string                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The error string of this state machine.

.. _sdk_qtqml_statemachine_globalRestorePolicy:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| globalRestorePolicy : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The restore policy for states of this state machine.

The default value of this property is QState.DontRestoreProperties.

This enum specifies the restore policy type. The restore policy takes effect when the machine enters a state which sets one or more properties. If the restore policy is set to QState.RestoreProperties, the state machine will save the original value of the property before the new value is set.

Later, when the machine either enters a state which does not set a value for the given property, the property will automatically be restored to its initial value.

Only one initial value will be saved for any given property. If a value for a property has already been saved by the state machine, it will not be overwritten until the property has been successfully restored.

-  QState.DontRestoreProperties The state machine should not save the initial values of properties and restore them later.
-  QState.RestoreProperties The state machine should save the initial values of properties and restore them later.

.. _sdk_qtqml_statemachine_running:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| running : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The running state of this state machine.

**See also** :ref:`start() <sdk_qtqml_statemachine_start>` and :ref:`stop() <sdk_qtqml_statemachine_stop>`.

Signal Documentation
--------------------

.. _sdk_qtqml_statemachine_started:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| started()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the state machine has entered its initial state (:ref:`State::initialState <sdk_qtqml_state_initialState>`).

The corresponding handler is ``onStarted``.

**See also** :ref:`running <sdk_qtqml_statemachine_running>`, :ref:`start() <sdk_qtqml_statemachine_start>`, and :ref:`State::finished <sdk_qtqml_state_finished>`.

.. _sdk_qtqml_statemachine_stopped:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stopped()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the state machine has stopped.

The corresponding handler is ``onStopped``.

**See also** :ref:`running <sdk_qtqml_statemachine_running>`, :ref:`stop() <sdk_qtqml_statemachine_stop>`, and :ref:`State::finished <sdk_qtqml_state_finished>`.

Method Documentation
--------------------

.. _sdk_qtqml_statemachine_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts this state machine. The machine will reset its configuration and transition to the initial state. When a final top-level state (:ref:`FinalState <sdk_qtqml_finalstate>`) is entered, the machine will emit the finished() signal.

**Note:** A state machine will not run without a running event loop, such as the main application event loop started with QCoreApplication::exec() or QApplication::exec().

**See also** :ref:`started <sdk_qtqml_statemachine_started>`, :ref:`State::finished <sdk_qtqml_state_finished>`, :ref:`stop() <sdk_qtqml_statemachine_stop>`, :ref:`State::initialState <sdk_qtqml_state_initialState>`, and :ref:`running <sdk_qtqml_statemachine_running>`.

.. _sdk_qtqml_statemachine_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops this state machine. The state machine will stop processing events and then emit the stopped signal.

**See also** :ref:`stopped <sdk_qtqml_statemachine_stopped>`, :ref:`start() <sdk_qtqml_statemachine_start>`, and :ref:`running <sdk_qtqml_statemachine_running>`.

