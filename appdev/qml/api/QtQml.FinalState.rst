QtQml.FinalState
================

.. raw:: html

   <p>

Provides a final state. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FinalState -->

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

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FinalState-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A final state is used to communicate that (part of) a StateMachine has
finished its work. When a final top-level state is entered, the state
machine's finished() signal is emitted. In general, when a final
substate (a child of a State) is entered, the parent state's finished()
signal is emitted. FinalState is part of The Declarative State Machine
Framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use a final state, you create a FinalState object and add a
transition to it from another state.

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
   <span class="type">DSM</span>.TimeoutTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">timeout</span>: <span class="number">200</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   <span class="name">onFinished</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;state finished&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

See also StateMachine and State.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FinalState -->
