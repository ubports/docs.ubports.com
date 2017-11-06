.. _sdk_qtquick_using_the_qt_quick_particle_system:

QtQuick Using the Qt Quick Particle System
==========================================


Documentation for all Particle System types can be found on the `QtQuick.Particles </sdk/apps/qml/QtQuick/qtquick-releasenotes/#qtquick-particles>`_  module page.

Note that to use types from the particles module, you will need to import the types with the following line:

.. code:: cpp

    import QtQuick.Particles 2.0

This particle system contains four main types of QML types: `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_ , Painters, Emitters and Affectors.

The `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_  type ties all the other types together, and manages the shared timeline. Painters, Emitters and Affectors must all have the same `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_  to be able to interact with each other.

You may have as many ParticleSystems as you want subject to this constraint, so the logical separation is to have one `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_  for all the types that you want to interact, or just one if the number of types is small and they are easily kept under control..

All the particle system types act on "logical particles". Every particle has a logical representation inside the particle system, and this is what the types act upon. Not every logical particle needs to be visualized, and some logical particles could lead to multiple visual particles being drawn on screen.

Every logical particle is a member of a particle group, and each group is identified by a name. If no other group has been specified, a logical particle belongs to the group with the name "" (the empty string), which acts the same as any other group. Groups are used for two purposes, for controlling particles and because they can have stochastic state transitions.

Groups control particles because you can never access an individual particle with any of the particle system types. All types act on groups as a whole, and so any particles that need to behave differently from each other (aside from the usual stochastic parameter variation) will need to be in different groups.

Particles can also change groups dynamically. When this happens the particles trajectory is unaltered, but it can be acted upon by different `ParticlePainters </sdk/apps/qml/QtQuick/qtquick-effects-particles/#particlepainters>`_  or Affectors. Particles can either have their group changed by an Affector, or stochastic state transitions can be defined in a `ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`_  type.

Generally, groups should only be defined in a `ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`_  if they require stochastic state transitions. Otherwise, it is sufficient to have the groups be defined simply by the strings used in the particle/particles properties of the types.

Emitters emit logical particles into the system. These particles have a trajectory and lifespan, but no visualization. These particles are emitted from the location of the Emitter.

TrailEmitters are a special type of emitter which emits particles from the location of other logicial particles. Any logical particle of the followed type within the bounds of a `TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_  will cause particle emission from its location, as if there were an Emitter on it with the same properties as the `TrailEmitter </sdk/apps/qml/QtQuick/Particles.TrailEmitter/>`_ .

Painters are the types that visualize logical particles. For each logical particle in the groups assigned to it, which are within its bounds (or outside, if you do not set the clip property on the type) it will be visualized in a manner dependent on the type of `ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`_ . The base type of `ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`_  does not draw anything. `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  renders an image at the particle location. `CustomParticle </sdk/apps/qml/QtQuick/Particles.CustomParticle/>`_  allows you to write your own shaders to render the particles, passing in the logical particle state as vertex data. `ItemParticle </sdk/apps/qml/QtQuick/Particles.ItemParticle/>`_  allows you to visualize logical particles using arbitrary QML delegates. ModelParticle is similar, but coordinates model data amongst the delegates in a similar manner to the view classes.

As the `ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`_  is the QML type visualizing the particles in the scene, it is its Z value which is important when trying to place particles above or below other types visually.

Affectors are an optional component of a particle system. They can perform a variety of manipulations to the simulation, such as altering the trajectory of particles or prematurely ending their life in the simulation. For performance reasons, it is recommended not to use Affectors in high-volume particle systems.

As particle systems benefit from stochastic control of parameters across a large number of instances, several stochastic helper types are used by the particle system. If you do not wish to have any stochastic variation in these parameters, then do not specify any variation in these types.

Directions can be specified by angle and magnitude, or by x and y components. While any direction can be specified with either method, there is a significant difference between varying the x and y components and varying the angle and magnitude. Varying the x and y components will lead to a rectangular area around the specified point, while varying the angle will lead to an arc centered on the specified point.

The particle system contains several types which represent shapes. These types do not visualize shapes, and are used for the purpose of selecting a random point within the shape. If you want a specific point with no randomness, use a 0 width and 0 height shape (which is the default). Otherwise you can use the shape types to specify an area, so that the result can use a random point selected from that area.

