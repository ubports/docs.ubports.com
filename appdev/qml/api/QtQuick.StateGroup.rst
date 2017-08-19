QtQuick.StateGroup
==================

.. raw:: html

   <p>

Provides built-in state support for non-Item types More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateGroup -->

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

import QtQuick 2.4

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

state : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

states : list<State>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

transitions : list<Transition>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$StateGroup-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Item (and all derived types) provides built in support for states and
transitions via its state, states and transitions properties. StateGroup
provides an easy way to use this support in other (non-Item-derived)
types.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MyCustomObject</span> {
   <span class="type"><a href="index.html">StateGroup</a></span> {
   <span class="name">id</span>: <span class="name">myStateGroup</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="comment">// ...</span>
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">// ...</span>
   }
   }
   <span class="name">onSomethingHappened</span>: <span class="name">myStateGroup</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;state1&quot;</span>;
   }</pre>

.. raw:: html

   <p>

See also Qt Quick States, Transitions, and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateGroup -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="state-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

state : string

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

This property holds the name of the current state of the state group.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is often used in scripts to change between states. For
example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="keyword">function</span> <span class="name">toggle</span>() {
   <span class="keyword">if</span> (<span class="name">button</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">'On'</span>)
   <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'Off'</span>;
   <span class="keyword">else</span>
   <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'On'</span>;
   }</pre>

.. raw:: html

   <p>

If the state group is in its base state (i.e. no explicit state has been
set), state will be a blank string. Likewise, you can return a state
group to its base state by setting its current state to ''.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick States.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="states-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

states : list<State>

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

This property holds a list of states defined by the state group.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">StateGroup</a></span> {
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="comment">// State definition...</span>
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="comment">// ...</span>
   }
   <span class="comment">// Other states...</span>
   ]
   }</pre>

.. raw:: html

   <p>

See also Qt Quick States.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@states -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="transitions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

transitions : list<Transition>

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

This property holds a list of transitions defined by the state group.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">StateGroup</a></span> {
   <span class="name">transitions</span>: [
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="comment">// ...</span>
   },
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="comment">// ...</span>
   }
   <span class="comment">// ...</span>
   ]
   }</pre>

.. raw:: html

   <p>

See also Transitions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@transitions -->


