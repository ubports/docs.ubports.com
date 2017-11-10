.. _sdk_qtquick_particles_trailemitter:

QtQuick.Particles TrailEmitter
==============================

Emits logical particles from other logical particles

+---------------------+--------------------------------+
| Import Statement:   | import QtQuick.Particles 2.0   |
+---------------------+--------------------------------+

Properties
----------

-  `emitHeight </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitHeight-prop>`_  : real
-  `emitRatePerParticle </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitRatePerParticle-prop>`_  : real
-  `emitShape </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitShape-prop>`_  : Shape
-  `emitWidth </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitWidth-prop>`_  : real
-  `follow </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#follow-prop>`_  : string
-  `velocityFromMovement </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#velocityFromMovement-prop>`_  : qreal

Signals
-------

-  void `emitFollowParticles </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitFollowParticles-signal>`_ \ (Array *particles*, Particle *followed*)

Detailed Description
--------------------

This element emits logical particles into the `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_ , with the starting positions based on those of other logical particles.

Property Documentation
----------------------

.. _sdk_qtquick_particles_trailemitter_emitHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| emitHeight : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The height in pixels the `emitShape </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitShape-prop>`_  is scaled to. If set to `TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_ .ParticleSize, the height will be the current size of the particle being followed.

Default is 0.

.. _sdk_qtquick_particles_trailemitter_emitRatePerParticle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| emitRatePerParticle : real                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtquick_particles_trailemitter_emitShape:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| emitShape : `Shape </sdk/apps/qml/QtQuick/Particles.Shape/>`_                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

As the area of a `TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_  is the area it follows, a separate shape can be provided to be the shape it emits out of. This shape has width and height specified by `emitWidth </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitWidth-prop>`_  and `emitHeight </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitHeight-prop>`_ , and is centered on the followed particle's position.

The default shape is a filled Rectangle.

.. _sdk_qtquick_particles_trailemitter_emitWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| emitWidth : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The width in pixels the `emitShape </sdk/apps/qml/QtQuick/Particles.TrailEmitter/#emitShape-prop>`_  is scaled to. If set to `TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_ .ParticleSize, the width will be the current size of the particle being followed.

Default is 0.

.. _sdk_qtquick_particles_trailemitter_follow:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| follow : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The type of logical particle which this is emitting from.

.. _sdk_qtquick_particles_trailemitter_velocityFromMovement:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| velocityFromMovement : qreal                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this value is non-zero, then any movement of the emitter will provide additional starting velocity to the particles based on the movement. The additional vector will be the same angle as the emitter's movement, with a magnitude that is the magnitude of the emitters movement multiplied by velocityFromMovement.

Default value is 0.

Signal Documentation
--------------------

.. _sdk_qtquick_particles_trailemitter_emitFollowParticles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void emitFollowParticles(Array *particles*, `Particle </sdk/apps/qml/QtQuick/Particles.Particle/>`_  *followed*)                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when particles are emitted from the *followed* particle. *particles* contains an array of particle objects which can be directly manipulated.

The corresponding handler is ``onEmitFollowParticles``. If you use this signal handler, emitParticles will not be emitted.

