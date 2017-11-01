Provides a hierarchical finite state machine.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `State </sdk/apps/qml/QtQml/State/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`errorString </sdk/apps/qml/QtQml/StateMachine#errorString-prop>`__****
   : string
-  ****`globalRestorePolicy </sdk/apps/qml/QtQml/StateMachine#globalRestorePolicy-prop>`__****
   : enumeration
-  ****`running </sdk/apps/qml/QtQml/StateMachine#running-prop>`__**** :
   bool

Signals
-------

-  ****`started </sdk/apps/qml/QtQml/StateMachine#started-signal>`__****\ ()
-  ****`stopped </sdk/apps/qml/QtQml/StateMachine#stopped-signal>`__****\ ()

Methods
-------

-  ****`start </sdk/apps/qml/QtQml/StateMachine#start-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtQml/StateMachine#stop-method>`__****\ ()

Detailed Description
--------------------

`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ is based on the
concepts and notation of
`Statecharts <http://www.wisdom.weizmann.ac.il/~dharel/SCANNED.PAPERS/Statecharts.pdf>`__.
`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ is part of `The
Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

A state machine manages a set of states and transitions between those
states; these states and transitions define a state graph. Once a state
graph has been built, the state machine can execute it.
`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__'s execution
algorithm is based on the `State Chart XML
(SCXML) <http://www.w3.org/TR/scxml/>`__ algorithm. The framework's
`overview </sdk/apps/qml/QtQml/qmlstatemachine/>`__ gives several state
graphs and the code to build them.

Before the machine can be started, the
`initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__ must be
set. The initial state is the state that the machine enters when
started. You can then set running property to true or
`start() </sdk/apps/qml/QtQml/StateMachine#start-method>`__ the state
machine. The started signal is emitted when the initial state is
entered.

The state machine processes events and takes transitions until a
top-level final state is entered; the state machine then emits the
finished() signal. You can also
`stop() </sdk/apps/qml/QtQml/StateMachine#stop-method>`__ the state
machine explicitly (you can also set running property to false). The
stopped signal is emitted in this case.

Example Usage
-------------

The following snippet shows a state machine that will finish when a
button is clicked:

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

If an error is encountered, the machine will look for an
`errorState </sdk/apps/qml/QtQml/State#errorState-prop>`__, and if one
is available, it will enter this state. After the error state is
entered, the type of the error can be retrieved with error(). The
execution of the state graph will not stop when the error state is
entered. If no error state applies to the erroneous state, the machine
will stop executing and an error message will be printed to the console.

| 

**See also** `QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__,
`State </sdk/apps/qml/QtQml/State/>`__,
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__,
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__,
`HistoryState </sdk/apps/qml/QtQml/HistoryState/>`__, and `The
Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] errorString : string                                |
+--------------------------------------------------------------------------+

The error string of this state machine.

| 

+--------------------------------------------------------------------------+
|        \ globalRestorePolicy : enumeration                               |
+--------------------------------------------------------------------------+

The restore policy for states of this state machine.

The default value of this property is QState.DontRestoreProperties.

This enum specifies the restore policy type. The restore policy takes
effect when the machine enters a state which sets one or more
properties. If the restore policy is set to QState.RestoreProperties,
the state machine will save the original value of the property before
the new value is set.

Later, when the machine either enters a state which does not set a value
for the given property, the property will automatically be restored to
its initial value.

Only one initial value will be saved for any given property. If a value
for a property has already been saved by the state machine, it will not
be overwritten until the property has been successfully restored.

-  QState.DontRestoreProperties The state machine should not save the
   initial values of properties and restore them later.
-  QState.RestoreProperties The state machine should save the initial
   values of properties and restore them later.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

The running state of this state machine.

**See also** `start() </sdk/apps/qml/QtQml/StateMachine#start-method>`__
and `stop() </sdk/apps/qml/QtQml/StateMachine#stop-method>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ started()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the state machine has entered its initial
state
(`State::initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__).

The corresponding handler is ``onStarted``.

**See also**
`running </sdk/apps/qml/QtQml/StateMachine#running-prop>`__,
`start() </sdk/apps/qml/QtQml/StateMachine#start-method>`__, and
`State::finished </sdk/apps/qml/QtQml/State#finished-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ stopped()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the state machine has stopped.

The corresponding handler is ``onStopped``.

**See also**
`running </sdk/apps/qml/QtQml/StateMachine#running-prop>`__,
`stop() </sdk/apps/qml/QtQml/StateMachine#stop-method>`__, and
`State::finished </sdk/apps/qml/QtQml/State#finished-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts this state machine. The machine will reset its configuration and
transition to the initial state. When a final top-level state
(`FinalState </sdk/apps/qml/QtQml/FinalState/>`__) is entered, the
machine will emit the finished() signal.

**Note:** A state machine will not run without a running event loop,
such as the main application event loop started with
QCoreApplication::exec() or QApplication::exec().

**See also**
`started </sdk/apps/qml/QtQml/StateMachine#started-signal>`__,
`State::finished </sdk/apps/qml/QtQml/State#finished-signal>`__,
`stop() </sdk/apps/qml/QtQml/StateMachine#stop-method>`__,
`State::initialState </sdk/apps/qml/QtQml/State#initialState-prop>`__,
and `running </sdk/apps/qml/QtQml/StateMachine#running-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops this state machine. The state machine will stop processing events
and then emit the stopped signal.

**See also**
`stopped </sdk/apps/qml/QtQml/StateMachine#stopped-signal>`__,
`start() </sdk/apps/qml/QtQml/StateMachine#start-method>`__, and
`running </sdk/apps/qml/QtQml/StateMachine#running-prop>`__.

| 
