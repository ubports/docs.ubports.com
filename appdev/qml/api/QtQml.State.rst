QtQml.State
===========

.. raw:: html

   <p>

Provides a general-purpose state for StateMachine. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@State -->

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

QAbstractState

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StateMachine.

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

childMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorState : QAbstractState

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialState : QAbstractState

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

finished()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$State-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

State objects can have child states as well as transitions to other
states. State is part of The Declarative State Machine Framework.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="states-with-child-states">

States with Child States

.. raw:: html

   </h2>

.. raw:: html

   <p>

The childMode property determines how child states are treated. For
non-parallel state groups, the initialState property must be used to set
the initial state. The child states are mutually exclusive states, and
the state machine needs to know which child state to enter when the
parent state is the target of a transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

The state emits the State::finished() signal when a final child state
(FinalState) is entered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The errorState sets the state's error state. The error state is the
state that the state machine will transition to if an error is detected
when attempting to enter the state (e.g. because no initial state has
been set).

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0 as DSM
   <span class="type">Rectangle</span> {
   <span class="type">DSM</span>.StateMachine {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="name">initialState</span>: <span class="name">state</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">state</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

See also StateMachine and FinalState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@State -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$childMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="childMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

childMode : enumeration

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

The child mode of this state

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value of this property is QState.ExclusiveStates.

.. raw:: html

   </p>

.. raw:: html

   <p>

This enum specifies how a state's child states are treated:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QState.ExclusiveStates The child states are mutually exclusive and an
initial state must be set by setting initialState property.

.. raw:: html

   </li>

.. raw:: html

   <li>

QState.ParallelStates The child states are parallel. When the parent
state is entered, all its child states are entered in parallel.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@childMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorState : QAbstractState

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

The error state of this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialState : QAbstractState

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

The initial state of this state (one of its child states).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialState -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$finished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="finished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

finished()

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

This signal is emitted when a final child state of this state is
entered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFinished.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QAbstractState::active, QAbstractState::entered, and
QAbstractState::exited.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@finished -->


