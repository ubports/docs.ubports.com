Applies alterations to the attributes of logical particles at any point
in their lifetime

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Age </sdk/apps/qml/QtQuick/Particle |
|                                      | s.Age/>`__,                          |
|                                      | `Attractor </sdk/apps/qml/QtQuick/Pa |
|                                      | rticles.Attractor/>`__,              |
|                                      | `Friction </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Friction/>`__,                |
|                                      | `Gravity </sdk/apps/qml/QtQuick/Part |
|                                      | icles.Gravity/>`__,                  |
|                                      | `GroupGoal </sdk/apps/qml/QtQuick/Pa |
|                                      | rticles.GroupGoal/>`__,              |
|                                      | `SpriteGoal </sdk/apps/qml/QtQuick/P |
|                                      | articles.SpriteGoal/>`__,            |
|                                      | `Turbulence </sdk/apps/qml/QtQuick/P |
|                                      | articles.Turbulence/>`__,            |
|                                      | and                                  |
|                                      | `Wander </sdk/apps/qml/QtQuick/Parti |
|                                      | cles.Wander/>`__.                    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`enabled </sdk/apps/qml/QtQuick/Particles.Affector#enabled-prop>`__****
   : bool
-  ****`groups </sdk/apps/qml/QtQuick/Particles.Affector#groups-prop>`__****
   : list<string>
-  ****`once </sdk/apps/qml/QtQuick/Particles.Affector#once-prop>`__****
   : bool
-  ****`shape </sdk/apps/qml/QtQuick/Particles.Affector#shape-prop>`__****
   : Shape
-  ****`system </sdk/apps/qml/QtQuick/Particles.Affector#system-prop>`__****
   : ParticleSystem
-  ****`whenCollidingWith </sdk/apps/qml/QtQuick/Particles.Affector#whenCollidingWith-prop>`__****
   : list<string>

Signals
-------

-  void
   ****`affected </sdk/apps/qml/QtQuick/Particles.Affector#affected-signal>`__****\ (real
   *x*, real *y*)

Detailed Description
--------------------

The base Affector does not alter any attributes, but can be used to emit
a signal when a particle meets certain conditions.

If an affector has a defined size, then it will only affect particles
within its size and position on screen.

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

Accurate simulation for large numbers of particles (hundreds) with
multiple affectors may be possible on some hardware, but on less capable
hardware you should expect small irregularties in the simulation as
simulates with worse granularity.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

If enabled is set to false, this affector will not affect any particles.

Usually this is used to conditionally turn an affector on or off.

Default value is true.

| 

+--------------------------------------------------------------------------+
|        \ groups : list<string>                                           |
+--------------------------------------------------------------------------+

Which logical particle groups will be affected.

If empty, it will affect all particles.

| 

+--------------------------------------------------------------------------+
|        \ once : bool                                                     |
+--------------------------------------------------------------------------+

If once is set to true, this affector will only affect each particle
once in their lifetimes. If the affector normally simulates a continuous
effect over time, then it will simulate the effect of one second of time
the one instant it affects the particle.

Default value is false.

| 

+--------------------------------------------------------------------------+
|        \ shape : `Shape </sdk/apps/qml/QtQuick/Particles.Shape/>`__      |
+--------------------------------------------------------------------------+

If a size has been defined, the shape property can be used to affect a
non-rectangular area.

| 

+--------------------------------------------------------------------------+
|        \ system :                                                        |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

This is the system which will be affected by the element. If the
Affector is a direct child of a
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__, it
will automatically be associated with it.

| 

+--------------------------------------------------------------------------+
|        \ whenCollidingWith : list<string>                                |
+--------------------------------------------------------------------------+

If any logical particle groups are specified here, then the affector
will only be triggered if the particle being examined intersects with a
particle of one of these groups.

This is different from the groups property. The groups property selects
which particles might be examined, and if they meet other criteria
(including being within the bounds of the Affector, modified by shape)
then they will be tested again to see if they intersect with a particles
from one of the particle groups in whenCollidingWith.

By default, no groups are specified.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void affected(real *x*, real *y*)                               |
+--------------------------------------------------------------------------+

This signal is emitted when a particle is selected to be affected. It
will not be emitted if a particle is considered by the Affector but not
actually altered in any way.

In the special case where an Affector has no possible effect (e.g.
Affector {}), this signal will be emitted for all particles being
considered if you connect to it. This allows you to execute arbitrary
code in response to particles (use the Affector::onAffectParticles
signal handler if you want to execute code which affects the particles
themselves). As this executes JavaScript code per particle, it is not
recommended to use this signal with a high-volume particle system.

x,y is the particle's current position.

The corresponding handler is ``onAffected``.

| 
