QtQml.HistoryState
==================

.. raw:: html

   <p>

The HistoryState type provides a means of returning to a previously
active substate. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@HistoryState -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

defaultState : QAbstractState

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

historyType : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$HistoryState-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A history state is a pseudo-state that represents the child state that
the parent state was in the last time the parent state was exited. A
transition with a history state as its target is in fact a transition to
one of the other child states of the parent state. HistoryState is part
of The Declarative State Machine Framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

Use the defaultState property to set the state that should be entered if
the parent state has never been entered.

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
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="type">DSM</span>.StateMachine {
   <span class="name">id</span>: <span class="name">stateMachine</span>
   <span class="name">initialState</span>: <span class="name">parentState</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">parentState</span>
   <span class="name">initialState</span>: <span class="name">child2</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;parentState entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;parentState exited&quot;</span>)
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">child1</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child1 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child1 exited&quot;</span>)
   }
   <span class="type">DSM</span>.State {
   <span class="name">id</span>: <span class="name">child2</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child2 entered&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child2 exited&quot;</span>)
   }
   <span class="type">DSM</span>.HistoryState {
   <span class="name">id</span>: <span class="name">historyState</span>
   <span class="name">defaultState</span>: <span class="name">child1</span>
   }
   <span class="type">DSM</span>.SignalTransition {
   <span class="name">targetState</span>: <span class="name">historyState</span>
   <span class="comment">// Clicking the button will cause the state machine to enter the child state</span>
   <span class="comment">// that parentState was in the last time parentState was exited, or the history state's default</span>
   <span class="comment">// state if parentState has never been entered.</span>
   <span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

By default, a history state is shallow, meaning that it will not
remember nested states. This can be configured through the historyType
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StateMachine and State.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@HistoryState -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$defaultState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultState : QAbstractState

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

The default state of this history state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default state indicates the state to transition to if the parent
state has never been entered before.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="historyType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

historyType : enumeration

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

The type of history that this history state records.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value of this property is QHistoryState.ShallowHistory.

.. raw:: html

   </p>

.. raw:: html

   <p>

This enum specifies the type of history that a QHistoryState records.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QHistoryState.ShallowHistory Only the immediate child states of the
parent state are recorded. In this case, a transition with the history
state as its target will end up in the immediate child state that the
parent was in the last time it was exited. This is the default.

.. raw:: html

   </li>

.. raw:: html

   <li>

QHistoryState.DeepHistory Nested states are recorded. In this case a
transition with the history state as its target will end up in the most
deeply nested descendant state the parent was in the last time it was
exited.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@historyType -->


