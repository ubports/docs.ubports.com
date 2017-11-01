For visualizing logical particles using an image

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ParticlePainter </sdk/apps/qml/QtQu |
|                                      | ick/Particles.ParticlePainter/>`__   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`alpha </sdk/apps/qml/QtQuick/Particles.ImageParticle#alpha-prop>`__****
   : real
-  ****`alphaVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#alphaVariation-prop>`__****
   : real
-  ****`autoRotation </sdk/apps/qml/QtQuick/Particles.ImageParticle#autoRotation-prop>`__****
   : bool
-  ****`blueVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#blueVariation-prop>`__****
   : real
-  ****`color </sdk/apps/qml/QtQuick/Particles.ImageParticle#color-prop>`__****
   : color
-  ****`colorTable </sdk/apps/qml/QtQuick/Particles.ImageParticle#colorTable-prop>`__****
   : url
-  ****`colorVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#colorVariation-prop>`__****
   : real
-  ****`entryEffect </sdk/apps/qml/QtQuick/Particles.ImageParticle#entryEffect-prop>`__****
   : EntryEffect
-  ****`greenVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#greenVariation-prop>`__****
   : real
-  ****`opacityTable </sdk/apps/qml/QtQuick/Particles.ImageParticle#opacityTable-prop>`__****
   : url
-  ****`redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#redVariation-prop>`__****
   : real
-  ****`rotation </sdk/apps/qml/QtQuick/Particles.ImageParticle#rotation-prop>`__****
   : real
-  ****`rotationVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#rotationVariation-prop>`__****
   : real
-  ****`rotationVelocity </sdk/apps/qml/QtQuick/Particles.ImageParticle#rotationVelocity-prop>`__****
   : real
-  ****`rotationVelocityVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#rotationVelocityVariation-prop>`__****
   : real
-  ****`sizeTable </sdk/apps/qml/QtQuick/Particles.ImageParticle#sizeTable-prop>`__****
   : url
-  ****`source </sdk/apps/qml/QtQuick/Particles.ImageParticle#source-prop>`__****
   : url
-  ****`sprites </sdk/apps/qml/QtQuick/Particles.ImageParticle#sprites-prop>`__****
   : list<Sprite>
-  ****`spritesInterpolate </sdk/apps/qml/QtQuick/Particles.ImageParticle#spritesInterpolate-prop>`__****
   : bool
-  ****`status </sdk/apps/qml/QtQuick/Particles.ImageParticle#status-prop>`__****
   : Status
-  ****`xVector </sdk/apps/qml/QtQuick/Particles.ImageParticle#xVector-prop>`__****
   : StochasticDirection
-  ****`yVector </sdk/apps/qml/QtQuick/Particles.ImageParticle#yVector-prop>`__****
   : StochasticDirection

Detailed Description
--------------------

This element renders a logical particle as an image. The image can be

-  colorized
-  rotated
-  deformed
-  a sprite-based animation

ImageParticles implictly share data on particles if multiple
ImageParticles are painting the same logical particle group. This is
broken down along the four capabilities listed above. So if one
`ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__
defines data for rendering the particles in one of those capabilities,
and the other does not, then both will draw the particles the same in
that aspect automatically. This is primarily useful when there is some
random variation on the particle which is supposed to stay with it when
switching painters. If both ImageParticles define how they should appear
for that aspect, they diverge and each appears as it is defined.

This sharing of data happens behind the scenes based off of whether
properties were implicitly or explicitly set. One drawback of the
current implementation is that it is only possible to reset the
capabilities as a whole. So if you explicitly set an attribute affecting
color, such as
`redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#redVariation-prop>`__,
and then reset it (by setting
`redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#redVariation-prop>`__
to undefined), all color data will be reset and it will begin to have an
implicit value of any shared color from other ImageParticles.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ alpha : real                                                    |
+--------------------------------------------------------------------------+

An alpha to be applied to the image. This value is multiplied by the
value in the image, and the value in the color property.

Particles have additive blending, so lower alpha on single particles
leads to stronger effects when multiple particles overlap.

Alpha is measured from 0.0 to 1.0.

Default is 1.0

| 

+--------------------------------------------------------------------------+
|        \ alphaVariation : real                                           |
+--------------------------------------------------------------------------+

The variation in the alpha channel between particles.

Alpha is measured from 0.0 to 1.0.

Default is 0.0

| 

+--------------------------------------------------------------------------+
|        \ autoRotation : bool                                             |
+--------------------------------------------------------------------------+

If set to true then a rotation will be applied on top of the particles
rotation, so that it faces the direction of travel. So to face away from
the direction of travel, set autoRotation to true and rotation to 180.

Default is false

| 

+--------------------------------------------------------------------------+
|        \ blueVariation : real                                            |
+--------------------------------------------------------------------------+

The variation in the blue color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

If a color is specified, the provided image will be colorized with it.

Default is white (no change).

| 

+--------------------------------------------------------------------------+
|        \ colorTable : url                                                |
+--------------------------------------------------------------------------+

An image whose color will be used as a 1D texture to determine color
over life. E.g. when the particle is halfway through its lifetime, it
will have the color specified halfway across the image.

This color is blended with the color property and the color of the
source image.

| 

+--------------------------------------------------------------------------+
|        \ colorVariation : real                                           |
+--------------------------------------------------------------------------+

This number represents the color variation applied to individual
particles. Setting colorVariation is the same as setting
`redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#redVariation-prop>`__,
`greenVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#greenVariation-prop>`__,
and
`blueVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle#blueVariation-prop>`__
to the same number.

Each channel can vary between particle by up to colorVariation from its
usual color.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

| 

+--------------------------------------------------------------------------+
|        \ entryEffect : EntryEffect                                       |
+--------------------------------------------------------------------------+

This property provides basic and cheap entrance and exit effects for the
particles. For fine-grained control, see
`sizeTable </sdk/apps/qml/QtQuick/Particles.ImageParticle#sizeTable-prop>`__
and
`opacityTable </sdk/apps/qml/QtQuick/Particles.ImageParticle#opacityTable-prop>`__.

Acceptable values are

-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__.None:
   Particles just appear and disappear.
-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__.Fade:
   Particles fade in from 0 opacity at the start of their life, and fade
   out to 0 at the end.
-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`__.Scale:
   Particles scale in from 0 size at the start of their life, and scale
   back to 0 at the end.

Default value is Fade.

| 

+--------------------------------------------------------------------------+
|        \ greenVariation : real                                           |
+--------------------------------------------------------------------------+

The variation in the green color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

| 

+--------------------------------------------------------------------------+
|        \ opacityTable : url                                              |
+--------------------------------------------------------------------------+

An image whose opacity will be used as a 1D texture to determine size
over life.

This property is expected to be removed shortly, in favor of custom
easing curves to determine opacity over life.

| 

+--------------------------------------------------------------------------+
|        \ redVariation : real                                             |
+--------------------------------------------------------------------------+

The variation in the red color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

| 

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

If set the image will be rotated by this many degrees before it is
drawn.

The particle coordinates are not transformed.

| 

+--------------------------------------------------------------------------+
|        \ rotationVariation : real                                        |
+--------------------------------------------------------------------------+

If set the rotation of individual particles will vary by up to this much
between particles.

| 

+--------------------------------------------------------------------------+
|        \ rotationVelocity : real                                         |
+--------------------------------------------------------------------------+

If set particles will rotate at this velocity in degrees/second.

| 

+--------------------------------------------------------------------------+
|        \ rotationVelocityVariation : real                                |
+--------------------------------------------------------------------------+

If set the
`rotationVelocity </sdk/apps/qml/QtQuick/Particles.ImageParticle#rotationVelocity-prop>`__
of individual particles will vary by up to this much between particles.

| 

+--------------------------------------------------------------------------+
|        \ sizeTable : url                                                 |
+--------------------------------------------------------------------------+

An image whose opacity will be used as a 1D texture to determine size
over life.

This property is expected to be removed shortly, in favor of custom
easing curves to determine size over life.

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

The source image to be used.

If the image is a sprite animation, use the sprite property instead.

Since Qt 5.2, some default images are provided as resources to aid
prototyping:

+-----------------------------------------+------------+
| qrc:///particleresources/star.png       | |image0|   |
+-----------------------------------------+------------+
| qrc:///particleresources/glowdot.png    | |image1|   |
+-----------------------------------------+------------+
| qrc:///particleresources/fuzzydot.png   | |image2|   |
+-----------------------------------------+------------+

Note that the images are white and semi-transparent, to allow
colorization and alpha levels to have maximum effect.

| 

+--------------------------------------------------------------------------+
|        \ sprites : list<`Sprite </sdk/apps/qml/QtQuick/Sprite/>`__>      |
+--------------------------------------------------------------------------+

The sprite or sprites used to draw this particle.

Note that the sprite image will be scaled to a square based on the size
of the particle being rendered.

For full details, see the `Sprite
Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`__ overview.

| 

+--------------------------------------------------------------------------+
|        \ spritesInterpolate : bool                                       |
+--------------------------------------------------------------------------+

If set to true, sprite particles will interpolate between sprite frames
each rendered frame, making the sprites look smoother.

Default is true.

| 

+--------------------------------------------------------------------------+
|        \ status : Status                                                 |
+--------------------------------------------------------------------------+

The status of loading the image.

| 

+--------------------------------------------------------------------------+
|        \ xVector : StochasticDirection                                   |
+--------------------------------------------------------------------------+

Allows you to deform the particle image when drawn. The rectangular
image will be deformed so that the horizontal sides are in the shape of
this vector instead of (1,0).

| 

+--------------------------------------------------------------------------+
|        \ yVector : StochasticDirection                                   |
+--------------------------------------------------------------------------+

Allows you to deform the particle image when drawn. The rectangular
image will be deformed so that the vertical sides are in the shape of
this vector instead of (0,1).

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Particles.ImageParticle/images/star.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Particles.ImageParticle/images/glowdot.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Particles.ImageParticle/images/fuzzydot.png

