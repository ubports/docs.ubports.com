QtQuick.Particles.Age
=====================

.. raw:: html

   <p>

For altering particle ages More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Age -->

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

advancePosition : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lifeLeft : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Age-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Age affector allows you to alter where the particle is in its
lifecycle. Common uses are to expire particles prematurely, possibly
giving them time to animate out.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Age affector is also sometimes known as a 'Kill' affector, because
with the default parameters it will immediately expire all particles
which it affects.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Age affector only applies to particles which are still alive.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Age -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$advancePosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="advancePosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

advancePosition : bool

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

advancePosition determines whether position, veclocity and acceleration
are included in the simulated aging done by the affector. If
advancePosition is false, then the position, velocity and acceleration
will remain the same and only other attributes (such as opacity) will
advance in the simulation to where it would normally be for that point
in the particle's life. With advancePosition set to true the position,
velocity and acceleration will also advance to where it would normally
be by that point in the particle's life, making it advance its position
on screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@advancePosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lifeLeft-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lifeLeft : int

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

The amount of life to set the particle to have. Affected particles will
advance to a point in their life where they will have this many
milliseconds left to live.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lifeLeft -->


