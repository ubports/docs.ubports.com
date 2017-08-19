QtQuick.StateChangeScript
=========================

.. raw:: html

   <p>

Specifies how to run a script in a state More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateChangeScript -->

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

script : script

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$StateChangeScript-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A StateChangeScript is run upon entering a state. You can optionally use
ScriptAction to specify the point in the transition at which the
StateChangeScript should be run.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="index.html">StateChangeScript</a></span> {
   <span class="name">name</span>: <span class="string">&quot;myScript&quot;</span>
   <span class="name">script</span>: <span class="name">doStateStuff</span>();
   }
   <span class="comment">// ...</span>
   }
   <span class="comment">// ...</span>
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="name">to</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">scriptName</span>: <span class="string">&quot;myScript&quot;</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
   }
   }</pre>

.. raw:: html

   <p>

See also ScriptAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateChangeScript -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of the script. This name can be used by a
ScriptAction to target a specific script.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ScriptAction::scriptName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="script-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

script : script

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

This property holds the script to run when the state is current.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@script -->


