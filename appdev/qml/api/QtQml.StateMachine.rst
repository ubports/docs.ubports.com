QtQml.StateMachine
==================

.. raw:: html

   <p>

Provides a hierarchical finite state machine. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateMachine -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml.StateMachine 1.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

State

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

globalRestorePolicy : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

started()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stopped()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

start()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$StateMachine-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

StateMachine is based on the concepts and notation of Statecharts.
StateMachine is part of The Declarative State Machine Framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

A state machine manages a set of states and transitions between those
states; these states and transitions define a state graph. Once a state
graph has been built, the state machine can execute it. StateMachine's
execution algorithm is based on the State Chart XML (SCXML) algorithm.
The framework's overview gives several state graphs and the code to
build them.

.. raw:: html

   </p>

.. raw:: html

   <p>

Before the machine can be started, the initialState must be set. The
initial state is the state that the machine enters when started. You can
then set running property to true or start() the state machine. The
started signal is emitted when the initial state is entered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The state machine processes events and takes transitions until a
top-level final state is entered; the state machine then emits the
finished() signal. You can also stop() the state machine explicitly (you
can also set running property to false). The stopped signal is emitted
in this case.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following snippet shows a state machine that will finish when a
button is clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0 as DSM
   <span class="type">Rectangle</span> {
   <span class="type">Button</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
   <span class="type">DSM</span>.StateMachine {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="name">initialState</span>: <span class="name">state</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">state</span>
   <span class="type">DSM</span>.SignalTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   <span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
   }
   }
   }</pre>

.. raw:: html

   <p>

If an error is encountered, the machine will look for an errorState, and
if one is available, it will enter this state. After the error state is
entered, the type of the error can be retrieved with error(). The
execution of the state graph will not stop when the error state is
entered. If no error state applies to the erroneous state, the machine
will stop executing and an error message will be printed to the console.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QAbstractState, State, SignalTransition, TimeoutTransition,
HistoryState, and The Declarative State Machine Framework.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateMachine -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] errorString : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The error string of this state machine.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="globalRestorePolicy-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

globalRestorePolicy : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The restore policy for states of this state machine.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value of this property is QState.DontRestoreProperties.

.. raw:: html

   </p>

.. raw:: html

   <p>

This enum specifies the restore policy type. The restore policy takes
effect when the machine enters a state which sets one or more
properties. If the restore policy is set to QState.RestoreProperties,
the state machine will save the original value of the property before
the new value is set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Later, when the machine either enters a state which does not set a value
for the given property, the property will automatically be restored to
its initial value.

.. raw:: html

   </p>

.. raw:: html

   <p>

Only one initial value will be saved for any given property. If a value
for a property has already been saved by the state machine, it will not
be overwritten until the property has been successfully restored.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QState.DontRestoreProperties The state machine should not save the
initial values of properties and restore them later.

.. raw:: html

   </li>

.. raw:: html

   <li>

QState.RestoreProperties The state machine should save the initial
values of properties and restore them later.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@globalRestorePolicy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="running-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

running : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The running state of this state machine.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also start() and stop().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$started -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="started-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

started()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the state machine has entered its initial
state (State::initialState).

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStarted.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also running, start(), and State::finished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@started -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stopped-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stopped()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the state machine has stopped.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStopped.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also running, stop(), and State::finished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stopped -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

start()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts this state machine. The machine will reset its configuration and
transition to the initial state. When a final top-level state
(FinalState) is entered, the machine will emit the finished() signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: A state machine will not run without a running event loop, such as
the main application event loop started with QCoreApplication::exec() or
QApplication::exec().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also started, State::finished, stop(), State::initialState, and
running.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stop()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stops this state machine. The state machine will stop processing events
and then emit the stopped signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also stopped, start(), and running.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


