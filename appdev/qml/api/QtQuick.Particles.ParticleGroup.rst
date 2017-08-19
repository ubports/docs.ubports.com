QtQuick.Particles.ParticleGroup
===============================

.. raw:: html

   <p>

For setting attributes on a logical particle group More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParticleGroup -->

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

durationVariation : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

system : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ParticleGroup-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element allows you to set timed transitions on particle groups.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can also use this element to group particle system elements related
to the logical particle group. Emitters, Affectors and Painters set as
direct children of a ParticleGroup will automatically apply to that
logical particle group. TrailEmitters will automatically follow the
group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a ParticleGroup element is not defined for a group, the group will
function normally as if none of the transition properties were set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParticleGroup -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

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

The time in milliseconds before the group will attempt to transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="durationVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

durationVariation : ParticleSystem

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

The maximum number of milliseconds that the duration of the transition
cycle varies per particle in the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@durationVariation -->

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

This is the name of the particle group, and how it is generally referred
to by other elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

If elements refer to a name which does not have an explicit
ParticleGroup created, it will work normally (with no transitions
specified for the group). If you do not need to assign duration based
transitions to a group, you do not need to create a ParticleGroup with
that name (although you may).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="system-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

system : ParticleSystem

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

This is the system which will contain the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the ParticleGroup is a direct child of a ParticleSystem, it will
automatically be associated with it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@system -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : ParticleSystem

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

The weighted list of transitions valid for this group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the chosen transition stays in this group, another duration (+/- up
to durationVariation) milliseconds will occur before another transition
is attempted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


