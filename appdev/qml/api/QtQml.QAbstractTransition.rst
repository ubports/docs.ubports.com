QtQml.QAbstractTransition
=========================

.. raw:: html

   <p>

The QAbstractTransition type is the base type of transitions between
QAbstractState objects. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QAbstractTransition -->

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

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

QSignalTransition.

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

sourceState : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targetState : QAbstractState

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targetStates : list<QAbstractState>

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

triggered()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$QAbstractTransition-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QAbstractTransition type is the abstract base type of transitions
between states (QAbstractState objects) of a StateMachine.
QAbstractTransition is part of The Declarative State Machine Framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

The sourceState() property has the source of the transition. The
targetState and targetStates properties return the target(s) of the
transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

The triggered() signal is emitted when the transition has been
triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Do not use QAbstractTransition directly; use SignalTransition or
TimeoutTransition instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SignalTransition and TimeoutTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QAbstractTransition -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$sourceState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] sourceState : bool

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

The source state (parent) of this transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targetState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targetState : QAbstractState

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

The target state of this transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a transition has no target state, the transition may still be
triggered, but this will not cause the state machine's configuration to
change (i.e. the current state will not be exited and re-entered).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targetState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targetStates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targetStates : list<QAbstractState>

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

The target states of this transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

If multiple states are specified, they all must be descendants of the
same parallel group state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targetStates -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$triggered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

triggered()

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

This signal is emitted when the transition has been triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onTriggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggered -->


