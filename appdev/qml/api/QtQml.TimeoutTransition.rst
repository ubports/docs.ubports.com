QtQml.TimeoutTransition
=======================

.. raw:: html

   <p>

The TimeoutTransition type provides a transition based on a timer.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TimeoutTransition -->

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

QSignalTransition

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

timeout : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TimeoutTransition-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Timer type can be combined with SignalTransition to enact more complex
timeout based transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

TimeoutTransition is part of The Declarative State Machine Framework.

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
   <span class="type">Button</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
   <span class="name">enabled</span>: !<span class="name">stateMachine</span>.<span class="name">running</span>
   <span class="name">onClicked</span>: <span class="name">stateMachine</span>.<span class="name">running</span> <span class="operator">=</span> <span class="number">true</span>
   <span class="type">DSM</span>.StateMachine {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="name">initialState</span>: <span class="name">state</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">state</span>
   <span class="type">DSM</span>.TimeoutTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">timeout</span>: <span class="number">1000</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See also StateMachine, SignalTransition, FinalState, and HistoryState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TimeoutTransition -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$timeout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timeout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

timeout : int

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

The timeout interval in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@timeout -->


