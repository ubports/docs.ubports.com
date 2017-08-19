QtQuick.Particles.Affector
==========================

.. raw:: html

   <p>

Applies alterations to the attributes of logical particles at any point
in their lifetime More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Affector -->

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

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Age, Attractor, Friction, Gravity, GroupGoal, SpriteGoal, Turbulence,
and Wander.

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

groups : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

once : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shape : Shape

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

system : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

whenCollidingWith : list<string>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void affected(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Affector-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The base Affector does not alter any attributes, but can be used to emit
a signal when a particle meets certain conditions.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an affector has a defined size, then it will only affect particles
within its size and position on screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Affectors have different performance characteristics to the other
particle system elements. In particular, they have some simplifications
to try to maintain a simulation at real-time or faster. When running a
system with Affectors, irregular frame timings that grow too large ( >
one second per frame) will cause the Affectors to try and cut corners
with a faster but less accurate simulation. If the system has multiple
affectors the order in which they are applied is not guaranteed, and
when simulating larger time shifts they will simulate the whole shift
each, which can lead to different results compared to smaller time
shifts.

.. raw:: html

   </p>

.. raw:: html

   <p>

Accurate simulation for large numbers of particles (hundreds) with
multiple affectors may be possible on some hardware, but on less capable
hardware you should expect small irregularties in the simulation as
simulates with worse granularity.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Affector -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

If enabled is set to false, this affector will not affect any particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Usually this is used to conditionally turn an affector on or off.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="groups-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

groups : list<string>

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

Which logical particle groups will be affected.

.. raw:: html

   </p>

.. raw:: html

   <p>

If empty, it will affect all particles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="once-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

once : bool

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

If once is set to true, this affector will only affect each particle
once in their lifetimes. If the affector normally simulates a continuous
effect over time, then it will simulate the effect of one second of time
the one instant it affects the particle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@once -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shape-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shape : Shape

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

If a size has been defined, the shape property can be used to affect a
non-rectangular area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shape -->

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

This is the system which will be affected by the element. If the
Affector is a direct child of a ParticleSystem, it will automatically be
associated with it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@system -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="whenCollidingWith-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

whenCollidingWith : list<string>

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

If any logical particle groups are specified here, then the affector
will only be triggered if the particle being examined intersects with a
particle of one of these groups.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is different from the groups property. The groups property selects
which particles might be examined, and if they meet other criteria
(including being within the bounds of the Affector, modified by shape)
then they will be tested again to see if they intersect with a particles
from one of the particle groups in whenCollidingWith.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, no groups are specified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@whenCollidingWith -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$affected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="affected-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void affected(real x, real y)

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

This signal is emitted when a particle is selected to be affected. It
will not be emitted if a particle is considered by the Affector but not
actually altered in any way.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the special case where an Affector has no possible effect (e.g.
Affector {}), this signal will be emitted for all particles being
considered if you connect to it. This allows you to execute arbitrary
code in response to particles (use the Affector::onAffectParticles
signal handler if you want to execute code which affects the particles
themselves). As this executes JavaScript code per particle, it is not
recommended to use this signal with a high-volume particle system.

.. raw:: html

   </p>

.. raw:: html

   <p>

x,y is the particle's current position.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onAffected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@affected -->


