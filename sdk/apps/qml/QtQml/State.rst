.. _sdk_qtqml_state:

QtQml State
===========

Provides a general-purpose state for StateMachine.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`StateMachine <sdk_qtqml_statemachine>`.                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`childMode <sdk_qtqml_state_childMode>` : enumeration
-  :ref:`errorState <sdk_qtqml_state_errorState>` : QAbstractState
-  :ref:`initialState <sdk_qtqml_state_initialState>` : QAbstractState

Signals
-------

-  :ref:`finished <sdk_qtqml_state_finished>`\ ()

Detailed Description
--------------------

State objects can have child states as well as transitions to other states. State is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

States with Child States
------------------------

The :ref:`childMode <sdk_qtqml_state_childMode>` property determines how child states are treated. For non-parallel state groups, the :ref:`initialState <sdk_qtqml_state_initialState>` property must be used to set the initial state. The child states are mutually exclusive states, and the state machine needs to know which child state to enter when the parent state is the target of a transition.

The state emits the State::finished() signal when a final child state (:ref:`FinalState <sdk_qtqml_finalstate>`) is entered.

The :ref:`errorState <sdk_qtqml_state_errorState>` sets the state's error state. The error state is the state that the state machine will transition to if an error is detected when attempting to enter the state (e.g. because no initial state has been set).

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
            }
        }
    }

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>` and :ref:`FinalState <sdk_qtqml_finalstate>`.

Property Documentation
----------------------

.. _sdk_qtqml_state_childMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childMode : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The child mode of this state

The default value of this property is QState.ExclusiveStates.

This enum specifies how a state's child states are treated:

-  QState.ExclusiveStates The child states are mutually exclusive and an initial state must be set by setting :ref:`initialState <sdk_qtqml_state_initialState>` property.
-  QState.ParallelStates The child states are parallel. When the parent state is entered, all its child states are entered in parallel.

.. _sdk_qtqml_state_errorState:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorState : :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The error state of this state.

.. _sdk_qtqml_state_initialState:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| initialState : :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The initial state of this state (one of its child states).

Signal Documentation
--------------------

.. _sdk_qtqml_state_finished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finished()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a final child state of this state is entered.

The corresponding handler is ``onFinished``.

**See also** :ref:`QAbstractState::active <sdk_qtqml_qabstractstate_active>`, :ref:`QAbstractState::entered <sdk_qtqml_qabstractstate_entered>`, and :ref:`QAbstractState::exited <sdk_qtqml_qabstractstate_exited>`.

