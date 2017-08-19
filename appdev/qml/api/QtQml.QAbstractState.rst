QtQml.QAbstractState
====================

.. raw:: html

   <p>

The QAbstractState type is the base type of States of a StateMachine.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QAbstractState -->

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

FinalState, HistoryState, and State.

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

active : bool

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

entered()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exited()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$QAbstractState-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Do not use QAbstractState directly; use State, FinalState or
StateMachine instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StateMachine and State.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QAbstractState -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] active : bool

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

The active property of this state. A state is active between entered()
and exited() signals. This property is readonly.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also entered and exited.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$entered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="entered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

entered()

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

This signal is emitted when the State becomes active.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEntered.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also active and exited.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@entered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exited-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

exited()

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

This signal is emitted when the State becomes inactive.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onExited.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also active and entered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exited -->


