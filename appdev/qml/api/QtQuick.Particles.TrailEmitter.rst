QtQuick.Particles.TrailEmitter
==============================

.. raw:: html

   <p>

Emits logical particles from other logical particles More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TrailEmitter -->

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

emitHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emitRatePerParticle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emitShape : Shape

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emitWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

follow : string

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

void emitFollowParticles(Array particles, Particle followed)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TrailEmitter-description -->

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
starting positions based on those of other logical particles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TrailEmitter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$emitHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emitHeight : real

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

The height in pixels the emitShape is scaled to. If set to
TrailEmitter.ParticleSize, the height will be the current size of the
particle being followed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitRatePerParticle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emitRatePerParticle : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@emitRatePerParticle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitShape-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emitShape : Shape

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

As the area of a TrailEmitter is the area it follows, a separate shape
can be provided to be the shape it emits out of. This shape has width
and height specified by emitWidth and emitHeight, and is centered on the
followed particle's position.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default shape is a filled Rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitShape -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emitWidth : real

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

The width in pixels the emitShape is scaled to. If set to
TrailEmitter.ParticleSize, the width will be the current size of the
particle being followed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="follow-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

follow : string

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

The type of logical particle which this is emitting from.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@follow -->

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

   <!-- $$$emitFollowParticles -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emitFollowParticles-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void emitFollowParticles(Array particles, Particle followed)

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

This signal is emitted when particles are emitted from the followed
particle. particles contains an array of particle objects which can be
directly manipulated.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEmitFollowParticles. If you use this
signal handler, emitParticles will not be emitted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emitFollowParticles -->


