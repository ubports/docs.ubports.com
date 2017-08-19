QtQuick.Particles.Emitter
=========================

.. raw:: html

   <p>

Emits logical particles More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Emitter -->

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

acceleration : StochasticDirection

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emitRate : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

endSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

group : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lifeSpan : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lifeSpanVariation : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumEmitted : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shape : Shape

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

size : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sizeVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startTime : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

system : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocity : StochasticDirection

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocityFromMovement : qreal

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

void emitParticles(Array particles)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void burst(int count, int x, int y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void burst(int count)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void pulse(int duration)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Emitter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element emits logical particles into the ParticleSystem, with the
given starting attributes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that logical particles are not automatically rendered, you will
need to have one or more ParticlePainter elements visualizing them.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the given starting attributes can be modified at any point in
the particle's lifetime by any Affector element in the same
ParticleSystem. This includes attributes like lifespan.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Emitter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceleration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acceleration : StochasticDirection

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

The starting acceleraton of the particles emitted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emitRate : real

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

Number of particles emitted per second.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 10 particles per second.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitRate -->

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

If set to false, the emitter will cease emissions until it is set to
true.

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

   <tr valign="top" id="endSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

endSize : real

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

The size in pixels of the particles at the end of their life. Size will
be linearly interpolated during the life of the particle from this value
and size. If endSize is -1, then the size of the particle will remain
constant at the starting size.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is -1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@endSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="group-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

group : string

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

This is the logical particle group which it will emit into.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is "" (empty string).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@group -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lifeSpan-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lifeSpan : int

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

The time in milliseconds each emitted particle should last for.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you do not want particles to automatically die after a time, for
example if you wish to dispose of them manually, set lifeSpan to
Emitter.InfiniteLife.

.. raw:: html

   </p>

.. raw:: html

   <p>

lifeSpans greater than or equal to 600000 (10 minutes) will be treated
as infinite. Particles with lifeSpans less than or equal to 0 will start
out dead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 1000 (one second).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lifeSpan -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lifeSpanVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lifeSpanVariation : int

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

Particle lifespans will vary by up to this much in either direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lifeSpanVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumEmitted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumEmitted : int

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

The maximum number of particles at a time that this emitter will have
alive.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can be set as a performance optimization (when using burst and
pulse) or to stagger emissions.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this is set to a number below zero, then there is no maximum limit on
the number of particles this emitter can have alive.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is -1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumEmitted -->

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

This shape is applied with the size of the Emitter. Particles will be
emitted randomly from any area covered by the shape.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default shape is a filled in rectangle, which corresponds to the
full bounding box of the Emitter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shape -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="size-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

size : real

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

The size in pixels of the particles at the start of their life.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 16.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@size -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sizeVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sizeVariation : real

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

The size of a particle can vary by this much up or down from
size/endSize. The same random addition is made to both size and endSize
for a single particle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sizeVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startTime : int

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

If this value is set when the emitter is loaded, then it will emit
particles from the past, up to startTime milliseconds ago. These will
simulate as if they were emitted then, but will not have any affectors
applied to them. Affectors will take effect from the present time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startTime -->

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

This is the Particle system that the Emitter will emit into. This can be
omitted if the Emitter is a direct child of the ParticleSystem

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@system -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

velocity : StochasticDirection

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

The starting velocity of the particles emitted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocityFromMovement-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

velocityFromMovement : qreal

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

If this value is non-zero, then any movement of the emitter will provide
additional starting velocity to the particles based on the movement. The
additional vector will be the same angle as the emitter's movement, with
a magnitude that is the magnitude of the emitters movement multiplied by
velocityFromMovement.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocityFromMovement -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$emitParticles -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitParticles-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void emitParticles(Array particles)

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

This signal is emitted when particles are emitted. particles is a
JavaScript array of Particle objects. You can modify particle attributes
directly within the handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that JavaScript is slower to execute, so it is not recommended to
use this in high-volume particle systems.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEmitParticles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitParticles -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$burst -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="burst-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void burst(int count, int x, int y)

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

Emits count particles from this emitter immediately. The particles are
emitted as if the Emitter was positioned at x,y but all other properties
are the same.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@burst -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="burst-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void burst(int count)

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

Emits count particles from this emitter immediately.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@burst -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pulse-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void pulse(int duration)

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

If the emitter is not enabled, enables it for duration milliseconds and
then switches it back off.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pulse -->


