Emits logical particles

+---------------------+--------------------------------+
| Import Statement:   | import QtQuick.Particles 2.0   |
+---------------------+--------------------------------+

Properties
----------

-  ****`acceleration </sdk/apps/qml/QtQuick/Particles.Emitter#acceleration-prop>`__****
   : StochasticDirection
-  ****`emitRate </sdk/apps/qml/QtQuick/Particles.Emitter#emitRate-prop>`__****
   : real
-  ****`enabled </sdk/apps/qml/QtQuick/Particles.Emitter#enabled-prop>`__****
   : bool
-  ****`endSize </sdk/apps/qml/QtQuick/Particles.Emitter#endSize-prop>`__****
   : real
-  ****`group </sdk/apps/qml/QtQuick/Particles.Emitter#group-prop>`__****
   : string
-  ****`lifeSpan </sdk/apps/qml/QtQuick/Particles.Emitter#lifeSpan-prop>`__****
   : int
-  ****`lifeSpanVariation </sdk/apps/qml/QtQuick/Particles.Emitter#lifeSpanVariation-prop>`__****
   : int
-  ****`maximumEmitted </sdk/apps/qml/QtQuick/Particles.Emitter#maximumEmitted-prop>`__****
   : int
-  ****`shape </sdk/apps/qml/QtQuick/Particles.Emitter#shape-prop>`__****
   : Shape
-  ****`size </sdk/apps/qml/QtQuick/Particles.Emitter#size-prop>`__****
   : real
-  ****`sizeVariation </sdk/apps/qml/QtQuick/Particles.Emitter#sizeVariation-prop>`__****
   : real
-  ****`startTime </sdk/apps/qml/QtQuick/Particles.Emitter#startTime-prop>`__****
   : int
-  ****`system </sdk/apps/qml/QtQuick/Particles.Emitter#system-prop>`__****
   : ParticleSystem
-  ****`velocity </sdk/apps/qml/QtQuick/Particles.Emitter#velocity-prop>`__****
   : StochasticDirection
-  ****`velocityFromMovement </sdk/apps/qml/QtQuick/Particles.Emitter#velocityFromMovement-prop>`__****
   : qreal

Signals
-------

-  void
   ****`emitParticles </sdk/apps/qml/QtQuick/Particles.Emitter#emitParticles-signal>`__****\ (Array
   *particles*)

Methods
-------

-  void
   ****`burst </sdk/apps/qml/QtQuick/Particles.Emitter#burst-method-2>`__****\ (int
   *count*, int *x*, int *y*)
-  void
   ****`burst </sdk/apps/qml/QtQuick/Particles.Emitter#burst-method>`__****\ (int
   *count*)
-  void
   ****`pulse </sdk/apps/qml/QtQuick/Particles.Emitter#pulse-method>`__****\ (int
   *duration*)

Detailed Description
--------------------

This element emits logical particles into the
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__,
with the given starting attributes.

Note that logical particles are not automatically rendered, you will
need to have one or more
`ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`__
elements visualizing them.

Note that the given starting attributes can be modified at any point in
the particle's lifetime by any Affector element in the same
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__.
This includes attributes like lifespan.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ acceleration : StochasticDirection                              |
+--------------------------------------------------------------------------+

The starting acceleraton of the particles emitted.

| 

+--------------------------------------------------------------------------+
|        \ emitRate : real                                                 |
+--------------------------------------------------------------------------+

Number of particles emitted per second.

Default value is 10 particles per second.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

If set to false, the emitter will cease emissions until it is set to
true.

Default value is true.

| 

+--------------------------------------------------------------------------+
|        \ endSize : real                                                  |
+--------------------------------------------------------------------------+

The size in pixels of the particles at the end of their life. Size will
be linearly interpolated during the life of the particle from this value
and size. If endSize is -1, then the size of the particle will remain
constant at the starting size.

Default value is -1.

| 

+--------------------------------------------------------------------------+
|        \ group : string                                                  |
+--------------------------------------------------------------------------+

This is the logical particle group which it will emit into.

Default value is "" (empty string).

| 

+--------------------------------------------------------------------------+
|        \ lifeSpan : int                                                  |
+--------------------------------------------------------------------------+

The time in milliseconds each emitted particle should last for.

If you do not want particles to automatically die after a time, for
example if you wish to dispose of them manually, set lifeSpan to
Emitter.InfiniteLife.

lifeSpans greater than or equal to 600000 (10 minutes) will be treated
as infinite. Particles with lifeSpans less than or equal to 0 will start
out dead.

Default value is 1000 (one second).

| 

+--------------------------------------------------------------------------+
|        \ lifeSpanVariation : int                                         |
+--------------------------------------------------------------------------+

Particle lifespans will vary by up to this much in either direction.

Default value is 0.

| 

+--------------------------------------------------------------------------+
|        \ maximumEmitted : int                                            |
+--------------------------------------------------------------------------+

The maximum number of particles at a time that this emitter will have
alive.

This can be set as a performance optimization (when using burst and
pulse) or to stagger emissions.

If this is set to a number below zero, then there is no maximum limit on
the number of particles this emitter can have alive.

The default value is -1.

| 

+--------------------------------------------------------------------------+
|        \ shape : `Shape </sdk/apps/qml/QtQuick/Particles.Shape/>`__      |
+--------------------------------------------------------------------------+

This shape is applied with the size of the Emitter. Particles will be
emitted randomly from any area covered by the shape.

The default shape is a filled in rectangle, which corresponds to the
full bounding box of the Emitter.

| 

+--------------------------------------------------------------------------+
|        \ size : real                                                     |
+--------------------------------------------------------------------------+

The size in pixels of the particles at the start of their life.

Default value is 16.

| 

+--------------------------------------------------------------------------+
|        \ sizeVariation : real                                            |
+--------------------------------------------------------------------------+

The size of a particle can vary by this much up or down from
size/\ `endSize </sdk/apps/qml/QtQuick/Particles.Emitter#endSize-prop>`__.
The same random addition is made to both size and
`endSize </sdk/apps/qml/QtQuick/Particles.Emitter#endSize-prop>`__ for a
single particle.

Default value is 0.

| 

+--------------------------------------------------------------------------+
|        \ startTime : int                                                 |
+--------------------------------------------------------------------------+

If this value is set when the emitter is loaded, then it will emit
particles from the past, up to startTime milliseconds ago. These will
simulate as if they were emitted then, but will not have any affectors
applied to them. Affectors will take effect from the present time.

| 

+--------------------------------------------------------------------------+
|        \ system :                                                        |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

This is the Particle system that the Emitter will emit into. This can be
omitted if the Emitter is a direct child of the
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__

| 

+--------------------------------------------------------------------------+
|        \ velocity : StochasticDirection                                  |
+--------------------------------------------------------------------------+

The starting velocity of the particles emitted.

| 

+--------------------------------------------------------------------------+
|        \ velocityFromMovement : qreal                                    |
+--------------------------------------------------------------------------+

If this value is non-zero, then any movement of the emitter will provide
additional starting velocity to the particles based on the movement. The
additional vector will be the same angle as the emitter's movement, with
a magnitude that is the magnitude of the emitters movement multiplied by
velocityFromMovement.

Default value is 0.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void emitParticles(Array *particles*)                           |
+--------------------------------------------------------------------------+

This signal is emitted when particles are emitted. particles is a
JavaScript array of Particle objects. You can modify particle attributes
directly within the handler.

Note that JavaScript is slower to execute, so it is not recommended to
use this in high-volume particle systems.

The corresponding handler is ``onEmitParticles``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void burst(int *count*, int *x*, int *y*)                       |
+--------------------------------------------------------------------------+

Emits count particles from this emitter immediately. The particles are
emitted as if the Emitter was positioned at x,y but all other properties
are the same.

| 

+--------------------------------------------------------------------------+
|        \ void burst(int *count*)                                         |
+--------------------------------------------------------------------------+

Emits count particles from this emitter immediately.

| 

+--------------------------------------------------------------------------+
|        \ void pulse(int *duration*)                                      |
+--------------------------------------------------------------------------+

If the emitter is not enabled, enables it for duration milliseconds and
then switches it back off.

| 
