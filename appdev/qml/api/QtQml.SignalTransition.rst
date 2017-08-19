QtQml.SignalTransition
======================

.. raw:: html

   <p>

The SignalTransition type provides a transition based on a Qt signal.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SignalTransition -->

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

guard : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

signal : signal

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SignalTransition-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SignalTransition is part of The Declarative State Machine Framework.

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
   <span class="type">DSM</span>.SignalTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   <span class="name">guard</span>: <span class="name">guardButton</span>.<span class="name">checked</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   <span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
   }
   <span class="type">Row</span> {
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">guardButton</span>
   <span class="name">checkable</span>: <span class="number">true</span>
   <span class="name">text</span>: <span class="name">checked</span> ? <span class="string">&quot;Press to block the SignalTransition&quot;</span> : <span class="string">&quot;Press to unblock the SignalTransition&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

See also StateMachine, FinalState, and TimeoutTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SignalTransition -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$guard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="guard-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

guard : bool

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

Guard conditions affect the behavior of a state machine by enabling
transitions only when they evaluate to true and disabling them when they
evaluate to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the signal associated with this signal transition is emitted the
guard condition is evaluated. In the guard condition the arguments of
the signal can be used as demonstrated in the example below.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0 as DSM
   <span class="type">Rectangle</span> {
   <span class="type">Button</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="type">DSM</span>.StateMachine {
   <span class="type">DSM</span>.State {
   <span class="type">DSM</span>.SignalTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">mysignal</span>
   <span class="comment">// the guard condition uses the mystr string argument from mysignal</span>
   <span class="name">guard</span>: <span class="name">mystr</span> <span class="operator">==</span> <span class="string">&quot;test&quot;</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   }
   <span class="comment">// define the signal the SignalTransition is connected with</span>
   signal <span class="type">mysignal</span>(string mystr)
   <span class="comment">// on clicking the button emit the signal with a single string argument</span>
   <span class="name">onClicked</span>: <span class="name">button</span>.<span class="name">mysignal</span>(<span class="string">&quot;test&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

See also signal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@guard -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="signal-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

signal : signal

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

The signal which is associated with this signal transition.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQml.StateMachine 1.0 as DSM
   <span class="type">Rectangle</span> {
   <span class="type">Button</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="type">DSM</span>.StateMachine {
   <span class="type">DSM</span>.State {
   <span class="type">DSM</span>.SignalTransition {
   <span class="name">targetState</span>: <span class="name">finalState</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   }
   <span class="type">DSM</span>.FinalState {
   <span class="name">id</span>: <span class="name">finalState</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@signal -->


