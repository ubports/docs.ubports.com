QtQuick.Particles.SpriteGoal
============================

.. raw:: html

   <p>

For changing the state of a sprite particle More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpriteGoal -->

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

   <li class="fn">

systemStates : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SpriteGoal-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpriteGoal -->

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

The name of the Sprite which the affected particles should move to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sprite states have defined durations and transitions between them,
setting goalState will cause it to disregard any path weightings
(including 0) and head down the path which will reach the goalState
quickest. It will pass through intermediate states on that path.

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

If true, affected sprites will jump directly to the goal state instead
of taking the shortest valid path to get there. They will also not
finish their current state, but immediately move to the beginning of the
goal state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@jump -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="systemStates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

systemStates : bool

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

deprecated, use GroupGoal instead

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@systemStates -->


