QtQuick.ScriptAction
====================

.. raw:: html

   <p>

Defines scripts to be run during an animation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ScriptAction -->

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

Animation

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

script : script

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

scriptName : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ScriptAction-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ScriptAction can be used to run a script at a specific point in an
animation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="comment">// ...</span>
   }
   <span class="type"><a href="index.html">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">doSomething</span>(); }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

When used as part of a Transition, you can also target a specific
StateChangeScript to run using the scriptName property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> {
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
   <span class="type"><a href="index.html">ScriptAction</a></span> { <span class="name">scriptName</span>: <span class="string">&quot;myScript&quot;</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
   }
   }</pre>

.. raw:: html

   <p>

See also StateChangeScript.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ScriptAction -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$script -->

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

This property holds the script to run.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@script -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scriptName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

scriptName : string

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

This property holds the name of the StateChangeScript to run.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is only valid when ScriptAction is used as part of a
transition. If both script and scriptName are set, scriptName will be
used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: When using scriptName in a reversible transition, the script will
only be run when the transition is being run forwards.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scriptName -->


