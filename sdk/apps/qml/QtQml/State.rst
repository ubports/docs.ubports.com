Provides a general-purpose state for StateMachine.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QAbstractState </sdk/apps/qml/QtQml |
|                                      | /QAbstractState/>`__                 |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `StateMachine </sdk/apps/qml/QtQml/S |
|                                      | tateMachine/>`__.                    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`childMode </sdk/apps/qml/QtQml/State#childMode-prop>`__**** :
   enumeration
-  ****`errorState </sdk/apps/qml/QtQml/State#errorState-prop>`__**** :
   QAbstractState
-  ****`initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__****
   : QAbstractState

Signals
-------

-  ****`finished </sdk/apps/qml/QtQml/State#finished-signal>`__****\ ()

Detailed Description
--------------------

State objects can have child states as well as transitions to other
states. State is part of `The Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

States with Child States
------------------------

The `childMode </sdk/apps/qml/QtQml/State#childMode-prop>`__ property
determines how child states are treated. For non-parallel state groups,
the `initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__
property must be used to set the initial state. The child states are
mutually exclusive states, and the state machine needs to know which
child state to enter when the parent state is the target of a
transition.

The state emits the State::finished() signal when a final child state
(`FinalState </sdk/apps/qml/QtQml/FinalState/>`__) is entered.

The `errorState </sdk/apps/qml/QtQml/State#errorState-prop>`__ sets the
state's error state. The error state is the state that the state machine
will transition to if an error is detected when attempting to enter the
state (e.g. because no initial state has been set).

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

| 

**See also** `StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ and
`FinalState </sdk/apps/qml/QtQml/FinalState/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ childMode : enumeration                                         |
+--------------------------------------------------------------------------+

The child mode of this state

The default value of this property is QState.ExclusiveStates.

This enum specifies how a state's child states are treated:

-  QState.ExclusiveStates The child states are mutually exclusive and an
   initial state must be set by setting
   `initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__
   property.
-  QState.ParallelStates The child states are parallel. When the parent
   state is entered, all its child states are entered in parallel.

| 

+--------------------------------------------------------------------------+
|        \ errorState :                                                    |
| `QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__                 |
+--------------------------------------------------------------------------+

The error state of this state.

| 

+--------------------------------------------------------------------------+
|        \ initialState :                                                  |
| `QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__                 |
+--------------------------------------------------------------------------+

The initial state of this state (one of its child states).

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ finished()                                                      |
+--------------------------------------------------------------------------+

This signal is emitted when a final child state of this state is
entered.

The corresponding handler is ``onFinished``.

**See also**
`QAbstractState::active </sdk/apps/qml/QtQml/QAbstractState#active-prop>`__,
`QAbstractState::entered </sdk/apps/qml/QtQml/QAbstractState#entered-signal>`__,
and
`QAbstractState::exited </sdk/apps/qml/QtQml/QAbstractState#exited-signal>`__.

| 
