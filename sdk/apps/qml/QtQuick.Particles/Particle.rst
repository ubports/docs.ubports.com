Represents particles manipulated by emitters and affectors

+---------------------+--------------------------------+
| Import Statement:   | import QtQuick.Particles 2.0   |
+---------------------+--------------------------------+

Properties
----------

-  ****`alpha </sdk/apps/qml/QtQuick/Particles.Particle#alpha-prop>`__****
   : real
-  ****`autoRotate </sdk/apps/qml/QtQuick/Particles.Particle#autoRotate-prop>`__****
   : bool
-  ****`ax </sdk/apps/qml/QtQuick/Particles.Particle#ax-prop>`__**** :
   real
-  ****`ay </sdk/apps/qml/QtQuick/Particles.Particle#ay-prop>`__**** :
   real
-  ****`blue </sdk/apps/qml/QtQuick/Particles.Particle#blue-prop>`__****
   : real
-  ****`currentSize </sdk/apps/qml/QtQuick/Particles.Particle#currentSize-prop>`__****
   : real
-  ****`endSize </sdk/apps/qml/QtQuick/Particles.Particle#endSize-prop>`__****
   : real
-  ****`green </sdk/apps/qml/QtQuick/Particles.Particle#green-prop>`__****
   : real
-  ****`initialAX </sdk/apps/qml/QtQuick/Particles.Particle#initialAX-prop>`__****
   : real
-  ****`initialAY </sdk/apps/qml/QtQuick/Particles.Particle#initialAY-prop>`__****
   : real
-  ****`initialVX </sdk/apps/qml/QtQuick/Particles.Particle#initialVX-prop>`__****
   : real
-  ****`initialVY </sdk/apps/qml/QtQuick/Particles.Particle#initialVY-prop>`__****
   : real
-  ****`initialX </sdk/apps/qml/QtQuick/Particles.Particle#initialX-prop>`__****
   : real
-  ****`initialY </sdk/apps/qml/QtQuick/Particles.Particle#initialY-prop>`__****
   : real
-  ****`lifeLeft </sdk/apps/qml/QtQuick/Particles.Particle#lifeLeft-prop>`__****
   : real
-  ****`lifeSpan </sdk/apps/qml/QtQuick/Particles.Particle#lifeSpan-prop>`__****
   : real
-  ****`red </sdk/apps/qml/QtQuick/Particles.Particle#red-prop>`__**** :
   real
-  ****`rotation </sdk/apps/qml/QtQuick/Particles.Particle#rotation-prop>`__****
   : real
-  ****`rotationVelocity </sdk/apps/qml/QtQuick/Particles.Particle#rotationVelocity-prop>`__****
   : real
-  ****`startSize </sdk/apps/qml/QtQuick/Particles.Particle#startSize-prop>`__****
   : real
-  ****`t </sdk/apps/qml/QtQuick/Particles.Particle#t-prop>`__**** :
   real
-  ****`update </sdk/apps/qml/QtQuick/Particles.Particle#update-prop>`__****
   : bool
-  ****`vx </sdk/apps/qml/QtQuick/Particles.Particle#vx-prop>`__**** :
   real
-  ****`vy </sdk/apps/qml/QtQuick/Particles.Particle#vy-prop>`__**** :
   real
-  ****`x </sdk/apps/qml/QtQuick/Particles.Particle#x-prop>`__**** :
   real
-  ****`xDeformationVectorX </sdk/apps/qml/QtQuick/Particles.Particle#xDeformationVectorX-prop>`__****
   : real
-  ****`xDeformationVectorY </sdk/apps/qml/QtQuick/Particles.Particle#xDeformationVectorY-prop>`__****
   : real
-  ****`y </sdk/apps/qml/QtQuick/Particles.Particle#y-prop>`__**** :
   real
-  ****`yDeformationVectorX </sdk/apps/qml/QtQuick/Particles.Particle#yDeformationVectorX-prop>`__****
   : real
-  ****`yDeformationVectorY </sdk/apps/qml/QtQuick/Particles.Particle#yDeformationVectorY-prop>`__****
   : real

Detailed Description
--------------------

Particle elements are always managed internally by the
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__ and
cannot be created in QML. However, sometimes they are exposed via
signals so as to allow arbitrary changes to the particle state

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ alpha : real                                                    |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw colorized particles. When it does so, alpha is used as the alpha
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ autoRotate : bool                                               |
+--------------------------------------------------------------------------+

If autoRotate is true, then the particle's rotation will be set so that
it faces the direction of travel, plus any rotation from the rotation or
`rotationVelocity </sdk/apps/qml/QtQuick/Particles.Particle#rotationVelocity-prop>`__
properties.

| 

+--------------------------------------------------------------------------+
|        \ ax : real                                                       |
+--------------------------------------------------------------------------+

The current x acceleration of the particle.

| 

+--------------------------------------------------------------------------+
|        \ ay : real                                                       |
+--------------------------------------------------------------------------+

The current y acceleration of the particle.

| 

+--------------------------------------------------------------------------+
|        \ blue : real                                                     |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw colorized particles. When it does so, blue is used as the blue
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ currentSize : real                                              |
+--------------------------------------------------------------------------+

The currentSize of the particle, interpolating between
`startSize </sdk/apps/qml/QtQuick/Particles.Particle#startSize-prop>`__
and `endSize </sdk/apps/qml/QtQuick/Particles.Particle#endSize-prop>`__
based on the currentTime.

| 

+--------------------------------------------------------------------------+
|        \ endSize : real                                                  |
+--------------------------------------------------------------------------+

The size in pixels that the particle image is at the end of its life. If
this value is less than 0, then it is disregarded and the particle will
have its
`startSize </sdk/apps/qml/QtQuick/Particles.Particle#startSize-prop>`__
for the entire lifetime.

| 

+--------------------------------------------------------------------------+
|        \ green : real                                                    |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw colorized particles. When it does so, green is used as the green
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ initialAX : real                                                |
+--------------------------------------------------------------------------+

The x acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ initialAY : real                                                |
+--------------------------------------------------------------------------+

The y acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ initialVX : real                                                |
+--------------------------------------------------------------------------+

The x velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ initialVY : real                                                |
+--------------------------------------------------------------------------+

The y velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ initialX : real                                                 |
+--------------------------------------------------------------------------+

The x coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ initialY : real                                                 |
+--------------------------------------------------------------------------+

The y coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

| 

+--------------------------------------------------------------------------+
|        \ lifeLeft : real                                                 |
+--------------------------------------------------------------------------+

The time in seconds that the particle has left to live at the current
point in time.

| 

+--------------------------------------------------------------------------+
|        \ lifeSpan : real                                                 |
+--------------------------------------------------------------------------+

The time in seconds that the particle will live for.

| 

+--------------------------------------------------------------------------+
|        \ red : real                                                      |
+--------------------------------------------------------------------------+

`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw colorized particles. When it does so, red is used as the red
channel of the color applied to the source image.

Values are from 0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

Degrees clockwise that the particle image is rotated at the beginning of
its life.

| 

+--------------------------------------------------------------------------+
|        \ rotationVelocity : real                                         |
+--------------------------------------------------------------------------+

Degrees clockwise per second that the particle image is rotated at while
alive.

| 

+--------------------------------------------------------------------------+
|        \ startSize : real                                                |
+--------------------------------------------------------------------------+

The size in pixels that the particle image is at the start of its life.

| 

+--------------------------------------------------------------------------+
|        \ t : real                                                        |
+--------------------------------------------------------------------------+

The time, in seconds since the beginning of the simulation, that the
particle was born.

| 

+--------------------------------------------------------------------------+
|        \ update : bool                                                   |
+--------------------------------------------------------------------------+

Inside an Affector, the changes made to the particle will only be
applied if update is set to true.

| 

+--------------------------------------------------------------------------+
|        \ vx : real                                                       |
+--------------------------------------------------------------------------+

The current x velocity of the particle.

| 

+--------------------------------------------------------------------------+
|        \ vy : real                                                       |
+--------------------------------------------------------------------------+

The current y velocity of the particle.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

The current x coordinate of the particle.

| 

+--------------------------------------------------------------------------+
|        \ xDeformationVectorX : real                                      |
+--------------------------------------------------------------------------+

The x component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

+--------------------------------------------------------------------------+
|        \ xDeformationVectorY : real                                      |
+--------------------------------------------------------------------------+

The x component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

The current y coordinate of the particle.

| 

+--------------------------------------------------------------------------+
|        \ yDeformationVectorX : real                                      |
+--------------------------------------------------------------------------+

The y component of the deformation vector along the X axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 

+--------------------------------------------------------------------------+
|        \ yDeformationVectorY : real                                      |
+--------------------------------------------------------------------------+

The y component of the deformation vector along the Y axis.
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__ can
draw particles across non-square shapes. It will draw the texture
rectangle across the parallelogram drawn with the x and y deformation
vectors.

| 
