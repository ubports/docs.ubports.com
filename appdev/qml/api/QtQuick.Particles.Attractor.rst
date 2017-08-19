QtQuick.Particles.Attractor
===========================

.. raw:: html

   <p>

For attracting particles towards a specific point More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Attractor -->

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

affectedParameter : AffectableParameter

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

proportionalToDistance : Proportion

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Attractor-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the size and position of this element affects which particles
it affects. The size of the point attracted to is always 0x0, and the
location of that point is specified by the pointX and pointY properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that Attractor has the standard Item x,y,width and height
properties. Like other affectors, these represent the affected area.
They do not represent the 0x0 point which is the target of the
attraction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Attractor -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$affectedParameter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="affectedParameter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

affectedParameter : AffectableParameter

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

What attribute of particles is directly affected.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Attractor.Position

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.Velocity

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.Acceleration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@affectedParameter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="proportionalToDistance-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

proportionalToDistance : Proportion

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

How the distance from the particle to the point affects the strength of
the attraction.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Attractor.Constant

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.Linear

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.InverseLinear

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.Quadratic

.. raw:: html

   </li>

.. raw:: html

   <li>

Attractor.InverseQuadratic

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@proportionalToDistance -->


