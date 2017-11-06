.. _sdk_qtquick_particles_imageparticle:

QtQuick.Particles ImageParticle
===============================

For visualizing logical particles using an image

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick.Particles 2.0                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`_                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `alpha </sdk/apps/qml/QtQuick/Particles.ImageParticle/#alpha-prop>`_  : real
-  `alphaVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#alphaVariation-prop>`_  : real
-  `autoRotation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#autoRotation-prop>`_  : bool
-  `blueVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#blueVariation-prop>`_  : real
-  `color </sdk/apps/qml/QtQuick/Particles.ImageParticle/#color-prop>`_  : color
-  `colorTable </sdk/apps/qml/QtQuick/Particles.ImageParticle/#colorTable-prop>`_  : url
-  `colorVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#colorVariation-prop>`_  : real
-  `entryEffect </sdk/apps/qml/QtQuick/Particles.ImageParticle/#entryEffect-prop>`_  : EntryEffect
-  `greenVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#greenVariation-prop>`_  : real
-  `opacityTable </sdk/apps/qml/QtQuick/Particles.ImageParticle/#opacityTable-prop>`_  : url
-  `redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#redVariation-prop>`_  : real
-  `rotation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#rotation-prop>`_  : real
-  `rotationVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#rotationVariation-prop>`_  : real
-  `rotationVelocity </sdk/apps/qml/QtQuick/Particles.ImageParticle/#rotationVelocity-prop>`_  : real
-  `rotationVelocityVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#rotationVelocityVariation-prop>`_  : real
-  `sizeTable </sdk/apps/qml/QtQuick/Particles.ImageParticle/#sizeTable-prop>`_  : url
-  `source </sdk/apps/qml/QtQuick/Particles.ImageParticle/#source-prop>`_  : url
-  `sprites </sdk/apps/qml/QtQuick/Particles.ImageParticle/#sprites-prop>`_  : list<Sprite>
-  `spritesInterpolate </sdk/apps/qml/QtQuick/Particles.ImageParticle/#spritesInterpolate-prop>`_  : bool
-  `status </sdk/apps/qml/QtQuick/Particles.ImageParticle/#status-prop>`_  : Status
-  `xVector </sdk/apps/qml/QtQuick/Particles.ImageParticle/#xVector-prop>`_  : StochasticDirection
-  `yVector </sdk/apps/qml/QtQuick/Particles.ImageParticle/#yVector-prop>`_  : StochasticDirection

Detailed Description
--------------------

This element renders a logical particle as an image. The image can be

-  colorized
-  rotated
-  deformed
-  a sprite-based animation

ImageParticles implictly share data on particles if multiple ImageParticles are painting the same logical particle group. This is broken down along the four capabilities listed above. So if one `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_  defines data for rendering the particles in one of those capabilities, and the other does not, then both will draw the particles the same in that aspect automatically. This is primarily useful when there is some random variation on the particle which is supposed to stay with it when switching painters. If both ImageParticles define how they should appear for that aspect, they diverge and each appears as it is defined.

This sharing of data happens behind the scenes based off of whether properties were implicitly or explicitly set. One drawback of the current implementation is that it is only possible to reset the capabilities as a whole. So if you explicitly set an attribute affecting color, such as `redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#redVariation-prop>`_ , and then reset it (by setting `redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#redVariation-prop>`_  to undefined), all color data will be reset and it will begin to have an implicit value of any shared color from other ImageParticles.

Property Documentation
----------------------

.. _sdk_qtquick_particles_imageparticle_alpha:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| alpha : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An alpha to be applied to the image. This value is multiplied by the value in the image, and the value in the color property.

Particles have additive blending, so lower alpha on single particles leads to stronger effects when multiple particles overlap.

Alpha is measured from 0.0 to 1.0.

Default is 1.0

.. _sdk_qtquick_particles_imageparticle_alphaVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| alphaVariation : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The variation in the alpha channel between particles.

Alpha is measured from 0.0 to 1.0.

Default is 0.0

.. _sdk_qtquick_particles_imageparticle_autoRotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoRotation : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to true then a rotation will be applied on top of the particles rotation, so that it faces the direction of travel. So to face away from the direction of travel, set autoRotation to true and rotation to 180.

Default is false

.. _sdk_qtquick_particles_imageparticle_blueVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| blueVariation : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The variation in the blue color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

.. _sdk_qtquick_particles_imageparticle_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If a color is specified, the provided image will be colorized with it.

Default is white (no change).

.. _sdk_qtquick_particles_imageparticle_colorTable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| colorTable : url                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An image whose color will be used as a 1D texture to determine color over life. E.g. when the particle is halfway through its lifetime, it will have the color specified halfway across the image.

This color is blended with the color property and the color of the source image.

.. _sdk_qtquick_particles_imageparticle_colorVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| colorVariation : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This number represents the color variation applied to individual particles. Setting colorVariation is the same as setting `redVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#redVariation-prop>`_ , `greenVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#greenVariation-prop>`_ , and `blueVariation </sdk/apps/qml/QtQuick/Particles.ImageParticle/#blueVariation-prop>`_  to the same number.

Each channel can vary between particle by up to colorVariation from its usual color.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

.. _sdk_qtquick_particles_imageparticle_entryEffect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| entryEffect : EntryEffect                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides basic and cheap entrance and exit effects for the particles. For fine-grained control, see `sizeTable </sdk/apps/qml/QtQuick/Particles.ImageParticle/#sizeTable-prop>`_  and `opacityTable </sdk/apps/qml/QtQuick/Particles.ImageParticle/#opacityTable-prop>`_ .

Acceptable values are

-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_ .None: Particles just appear and disappear.
-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_ .Fade: Particles fade in from 0 opacity at the start of their life, and fade out to 0 at the end.
-  `ImageParticle </sdk/apps/qml/QtQuick/Particles.ImageParticle/>`_ .Scale: Particles scale in from 0 size at the start of their life, and scale back to 0 at the end.

Default value is Fade.

.. _sdk_qtquick_particles_imageparticle_greenVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| greenVariation : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The variation in the green color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

.. _sdk_qtquick_particles_imageparticle_opacityTable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opacityTable : url                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An image whose opacity will be used as a 1D texture to determine size over life.

This property is expected to be removed shortly, in favor of custom easing curves to determine opacity over life.

.. _sdk_qtquick_particles_imageparticle_redVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| redVariation : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The variation in the red color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

.. _sdk_qtquick_particles_imageparticle_rotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotation : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set the image will be rotated by this many degrees before it is drawn.

The particle coordinates are not transformed.

.. _sdk_qtquick_particles_imageparticle_rotationVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotationVariation : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set the rotation of individual particles will vary by up to this much between particles.

.. _sdk_qtquick_particles_imageparticle_rotationVelocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotationVelocity : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set particles will rotate at this velocity in degrees/second.

.. _sdk_qtquick_particles_imageparticle_rotationVelocityVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotationVelocityVariation : real                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set the `rotationVelocity </sdk/apps/qml/QtQuick/Particles.ImageParticle/#rotationVelocity-prop>`_  of individual particles will vary by up to this much between particles.

.. _sdk_qtquick_particles_imageparticle_sizeTable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sizeTable : url                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An image whose opacity will be used as a 1D texture to determine size over life.

This property is expected to be removed shortly, in favor of custom easing curves to determine size over life.

.. _sdk_qtquick_particles_imageparticle_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The source image to be used.

If the image is a sprite animation, use the sprite property instead.

Since Qt 5.2, some default images are provided as resources to aid prototyping:

+-----------------------------------------+------------+
| qrc:///particleresources/star.png       |            |
+-----------------------------------------+------------+
| qrc:///particleresources/glowdot.png    |            |
+-----------------------------------------+------------+
| qrc:///particleresources/fuzzydot.png   |            |
+-----------------------------------------+------------+

Note that the images are white and semi-transparent, to allow colorization and alpha levels to have maximum effect.

.. _sdk_qtquick_particles_imageparticle_sprites:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sprites : list<:ref:`Sprite <sdk_qtquick_sprite>`>                                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The sprite or sprites used to draw this particle.

Note that the sprite image will be scaled to a square based on the size of the particle being rendered.

For full details, see the `Sprite Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`_  overview.

.. _sdk_qtquick_particles_imageparticle_spritesInterpolate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spritesInterpolate : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to true, sprite particles will interpolate between sprite frames each rendered frame, making the sprites look smoother.

Default is true.

.. _sdk_qtquick_particles_imageparticle_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : Status                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The status of loading the image.

.. _sdk_qtquick_particles_imageparticle_xVector:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| xVector : StochasticDirection                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the horizontal sides are in the shape of this vector instead of (1,0).

.. _sdk_qtquick_particles_imageparticle_yVector:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| yVector : StochasticDirection                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the vertical sides are in the shape of this vector instead of (0,1).

