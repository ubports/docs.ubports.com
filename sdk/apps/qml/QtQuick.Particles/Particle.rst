.. _sdk_qtquick_particles_particle:
QtQuick.Particles Particle
==========================

Represents particles manipulated by emitters and affectors

+---------------------+--------------------------------+
| Import Statement:   | import QtQuick.Particles 2.0   |
+---------------------+--------------------------------+

Properties
----------

-  `alpha </sdk/apps/qml/QtQuick/Particles.Particle/_alpha-prop>`_ 
   : real
-  `autoRotate </sdk/apps/qml/QtQuick/Particles.Particle/_autoRotate-prop>`_ 
   : bool
-  `ax </sdk/apps/qml/QtQuick/Particles.Particle/_ax-prop>`_  :
   real
-  `ay </sdk/apps/qml/QtQuick/Particles.Particle/_ay-prop>`_  :
   real
-  `blue </sdk/apps/qml/QtQuick/Particles.Particle/_blue-prop>`_ 
   : real
-  `currentSize </sdk/apps/qml/QtQuick/Particles.Particle/_currentSize-prop>`_ 
   : real
-  `endSize </sdk/apps/qml/QtQuick/Particles.Particle/_endSize-prop>`_ 
   : real
-  `green </sdk/apps/qml/QtQuick/Particles.Particle/_green-prop>`_ 
   : real
-  `initialAX </sdk/apps/qml/QtQuick/Particles.Particle/_initialAX-prop>`_ 
   : real
-  `initialAY </sdk/apps/qml/QtQuick/Particles.Particle/_initialAY-prop>`_ 
   : real
-  `initialVX </sdk/apps/qml/QtQuick/Particles.Particle/_initialVX-prop>`_ 
   : real
-  `initialVY </sdk/apps/qml/QtQuick/Particles.Particle/_initialVY-prop>`_ 
   : real
-  `initialX </sdk/apps/qml/QtQuick/Particles.Particle/_initialX-prop>`_ 
   : real
-  `initialY </sdk/apps/qml/QtQuick/Particles.Particle/_initialY-prop>`_ 
   : real
-  `lifeLeft </sdk/apps/qml/QtQuick/Particles.Particle/_lifeLeft-prop>`_ 
   : real
-  `lifeSpan </sdk/apps/qml/QtQuick/Particles.Particle/_lifeSpan-prop>`_ 
   : real
-  `red </sdk/apps/qml/QtQuick/Particles.Particle/_red-prop>`_ 
   : real
-  `rotation </sdk/apps/qml/QtQuick/Particles.Particle/_rotation-prop>`_ 
   : real
-  `rotationVelocity </sdk/apps/qml/QtQuick/Particles.Particle/_rotationVelocity-prop>`_ 
   : real
-  `startSize </sdk/apps/qml/QtQuick/Particles.Particle/_startSize-prop>`_ 
   : real
-  `t </sdk/apps/qml/QtQuick/Particles.Particle/_t-prop>`_  :
   real
-  `update </sdk/apps/qml/QtQuick/Particles.Particle/_update-prop>`_ 
   : bool
-  `vx </sdk/apps/qml/QtQuick/Particles.Particle/_vx-prop>`_  :
   real
-  `vy </sdk/apps/qml/QtQuick/Particles.Particle/_vy-prop>`_  :
   real
-  `x </sdk/apps/qml/QtQuick/Particles.Particle/_x-prop>`_  :
   real
-  `xDeformationVectorX </sdk/apps/qml/QtQuick/Particles.Particle/_xDeformationVectorX-prop>`_ 
   : real
-  `xDeformationVectorY </sdk/apps/qml/QtQuick/Particles.Particle/_xDeformationVectorY-prop>`_ 
   : real
-  `y </sdk/apps/qml/QtQuick/Particles.Particle/_y-prop>`_  :
   real
-  `yDeformationVectorX </sdk/apps/qml/QtQuick/Particles.Particle/_yDeformationVectorX-prop>`_ 
   : real
-  `yDeformationVectorY </sdk/apps/qml/QtQuick/Particles.Particle/_yDeformationVectorY-prop>`_ 
   : real

Detailed Description
--------------------

Particle elements are always managed internally by the
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`_  and
cannot be created in QML. However, sometimes they are exposed via
signals so as to allow arbitrary changes to the particle state

Property Documentation
----------------------

.. _sdk_qtquick_particles_particle_alpha-prop:

+--------------------------------------------------------------------------+
|        \ alpha : real                                                    |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw colorized particles. When it does so, alpha is used as the alpha
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

.. _sdk_qtquick_particles_particle_autoRotate-prop:

+--------------------------------------------------------------------------+
|        \ autoRotate : bool                                               |
+--------------------------------------------------------------------------+

If autoRotate is true, then the particle's rotation will be set so that
it faces the direction of travel, plus any rotation from the rotation or
`rotationVelocity </sdk/apps/qml/QtQuick/Particles.Particle/#rotationVelocity-prop>`_ 
properties.

| 

.. _sdk_qtquick_particles_particle_ax-prop:

+--------------------------------------------------------------------------+
|        \ ax : real                                                       |
+--------------------------------------------------------------------------+

The current x acceleration of the particle.

| 

.. _sdk_qtquick_particles_particle_ay-prop:

+--------------------------------------------------------------------------+
|        \ ay : real                                                       |
+--------------------------------------------------------------------------+

The current y acceleration of the particle.

| 

.. _sdk_qtquick_particles_particle_blue-prop:

+--------------------------------------------------------------------------+
|        \ blue : real                                                     |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw colorized particles. When it does so, blue is used as the blue
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

.. _sdk_qtquick_particles_particle_currentSize-prop:

+--------------------------------------------------------------------------+
|        \ currentSize : real                                              |
+--------------------------------------------------------------------------+

The currentSize of the particle, interpolating between
`startSize </sdk/apps/qml/QtQuick/Particles.Particle/#startSize-prop>`_ 
and `endSize </sdk/apps/qml/QtQuick/Particles.Particle/#endSize-prop>`_ 
based on the currentTime.

| 

.. _sdk_qtquick_particles_particle_endSize-prop:

+--------------------------------------------------------------------------+
|        \ endSize : real                                                  |
+--------------------------------------------------------------------------+

The size in pixels that the particle image is at the end of its life. If
this value is less than 0, then it is disregarded and the particle will
have its
`startSize </sdk/apps/qml/QtQuick/Particles.Particle/#startSize-prop>`_ 
for the entire lifetime.

| 

.. _sdk_qtquick_particles_particle_green-prop:

+--------------------------------------------------------------------------+
|        \ green : real                                                    |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw colorized particles. When it does so, green is used as the green
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

.. _sdk_qtquick_particles_particle_initialAX-prop:

+--------------------------------------------------------------------------+
|        \ initialAX : real                                                |
+--------------------------------------------------------------------------+

The x acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_initialAY-prop:

+--------------------------------------------------------------------------+
|        \ initialAY : real                                                |
+--------------------------------------------------------------------------+

The y acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_initialVX-prop:

+--------------------------------------------------------------------------+
|        \ initialVX : real                                                |
+--------------------------------------------------------------------------+

The x velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_initialVY-prop:

+--------------------------------------------------------------------------+
|        \ initialVY : real                                                |
+--------------------------------------------------------------------------+

The y velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_initialX-prop:

+--------------------------------------------------------------------------+
|        \ initialX : real                                                 |
+--------------------------------------------------------------------------+

The x coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_initialY-prop:

+--------------------------------------------------------------------------+
|        \ initialY : real                                                 |
+--------------------------------------------------------------------------+

The y coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

.. _sdk_qtquick_particles_particle_lifeLeft-prop:

+--------------------------------------------------------------------------+
|        \ lifeLeft : real                                                 |
+--------------------------------------------------------------------------+

The time in seconds that the particle has left to live at the current
point in time.

| 

.. _sdk_qtquick_particles_particle_lifeSpan-prop:

+--------------------------------------------------------------------------+
|        \ lifeSpan : real                                                 |
+--------------------------------------------------------------------------+

The time in seconds that the particle will live for.

| 

.. _sdk_qtquick_particles_particle_red-prop:

+--------------------------------------------------------------------------+
|        \ red : real                                                      |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw colorized particles. When it does so, red is used as the red
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

.. _sdk_qtquick_particles_particle_rotation-prop:

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

Degrees clockwise that the particle image is rotated at the beginning of
its life.

| 

.. _sdk_qtquick_particles_particle_rotationVelocity-prop:

+--------------------------------------------------------------------------+
|        \ rotationVelocity : real                                         |
+--------------------------------------------------------------------------+

Degrees clockwise per second that the particle image is rotated at while
alive.

| 

.. _sdk_qtquick_particles_particle_startSize-prop:

+--------------------------------------------------------------------------+
|        \ startSize : real                                                |
+--------------------------------------------------------------------------+

The size in pixels that the particle image is at the start of its life.

| 

.. _sdk_qtquick_particles_particle_t-prop:

+--------------------------------------------------------------------------+
|        \ t : real                                                        |
+--------------------------------------------------------------------------+

The time, in seconds since the beginning of the simulation, that the
particle was born.

| 

.. _sdk_qtquick_particles_particle_update-prop:

+--------------------------------------------------------------------------+
|        \ update : bool                                                   |
+--------------------------------------------------------------------------+

Inside an Affector, the changes made to the particle will only be
applied if update is set to true.

| 

.. _sdk_qtquick_particles_particle_vx-prop:

+--------------------------------------------------------------------------+
|        \ vx : real                                                       |
+--------------------------------------------------------------------------+

The current x velocity of the particle.

| 

.. _sdk_qtquick_particles_particle_vy-prop:

+--------------------------------------------------------------------------+
|        \ vy : real                                                       |
+--------------------------------------------------------------------------+

The current y velocity of the particle.

| 

.. _sdk_qtquick_particles_particle_x-prop:

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

The current x coordinate of the particle.

| 

.. _sdk_qtquick_particles_particle_xDeformationVectorX-prop:

+--------------------------------------------------------------------------+
|        \ xDeformationVectorX : real                                      |
+--------------------------------------------------------------------------+

The x component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

.. _sdk_qtquick_particles_particle_xDeformationVectorY-prop:

+--------------------------------------------------------------------------+
|        \ xDeformationVectorY : real                                      |
+--------------------------------------------------------------------------+

The x component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

.. _sdk_qtquick_particles_particle_y-prop:

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

The current y coordinate of the particle.

| 

.. _sdk_qtquick_particles_particle_yDeformationVectorX-prop:

+--------------------------------------------------------------------------+
|        \ yDeformationVectorX : real                                      |
+--------------------------------------------------------------------------+

The y component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

+--------------------------------------------------------------------------+
|        \ yDeformationVectorY : real                                      |
+--------------------------------------------------------------------------+

The y component of the deformation vector along the Y axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 
