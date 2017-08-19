QtQuick.Particles.GroupGoal
===========================

.. raw:: html

   <p>

For changing the state of a group of a particle More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@GroupGoal -->

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

import QtQuick.Particles 2.0

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

Affector

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

goalState : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

jump : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$GroupGoal-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@GroupGoal -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$goalState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="goalState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

goalState : string

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

The name of the group which the affected particles should move to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Groups can have defined durations and transitions between them, setting
goalState will cause it to disregard any path weightings (including 0)
and head down the path which will reach the goalState quickest. It will
pass through intermediate groups on that path for their respective
durations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@goalState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="jump-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

jump : bool

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

If true, affected particles will jump directly to the target group
instead of taking the shortest valid path to get there. They will also
not finish their current state, but immediately move to the beginning of
the goal state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@jump -->


