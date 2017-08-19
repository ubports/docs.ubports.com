QtQuick.Particles.ImageParticle
===============================

.. raw:: html

   <p>

For visualizing logical particles using an image More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ImageParticle -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ParticlePainter

.. raw:: html

   </p>

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

alpha : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

alphaVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoRotation : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

blueVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

colorTable : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

colorVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

entryEffect : EntryEffect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

greenVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opacityTable : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

redVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotationVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotationVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotationVelocityVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sizeTable : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sprites : list<Sprite>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spritesInterpolate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : Status

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

xVector : StochasticDirection

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

yVector : StochasticDirection

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ImageParticle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element renders a logical particle as an image. The image can be

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

colorized

.. raw:: html

   </li>

.. raw:: html

   <li>

rotated

.. raw:: html

   </li>

.. raw:: html

   <li>

deformed

.. raw:: html

   </li>

.. raw:: html

   <li>

a sprite-based animation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

ImageParticles implictly share data on particles if multiple
ImageParticles are painting the same logical particle group. This is
broken down along the four capabilities listed above. So if one
ImageParticle defines data for rendering the particles in one of those
capabilities, and the other does not, then both will draw the particles
the same in that aspect automatically. This is primarily useful when
there is some random variation on the particle which is supposed to stay
with it when switching painters. If both ImageParticles define how they
should appear for that aspect, they diverge and each appears as it is
defined.

.. raw:: html

   </p>

.. raw:: html

   <p>

This sharing of data happens behind the scenes based off of whether
properties were implicitly or explicitly set. One drawback of the
current implementation is that it is only possible to reset the
capabilities as a whole. So if you explicitly set an attribute affecting
color, such as redVariation, and then reset it (by setting redVariation
to undefined), all color data will be reset and it will begin to have an
implicit value of any shared color from other ImageParticles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ImageParticle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alpha -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alpha-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alpha : real

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

An alpha to be applied to the image. This value is multiplied by the
value in the image, and the value in the color property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Particles have additive blending, so lower alpha on single particles
leads to stronger effects when multiple particles overlap.

.. raw:: html

   </p>

.. raw:: html

   <p>

Alpha is measured from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 1.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alpha -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alphaVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alphaVariation : real

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

The variation in the alpha channel between particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Alpha is measured from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alphaVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoRotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoRotation : bool

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

If set to true then a rotation will be applied on top of the particles
rotation, so that it faces the direction of travel. So to face away from
the direction of travel, set autoRotation to true and rotation to 180.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoRotation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="blueVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

blueVariation : real

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

The variation in the blue color channel between particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Color is measured, per channel, from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@blueVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

If a color is specified, the provided image will be colorized with it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is white (no change).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colorTable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

colorTable : url

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

An image whose color will be used as a 1D texture to determine color
over life. E.g. when the particle is halfway through its lifetime, it
will have the color specified halfway across the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

This color is blended with the color property and the color of the
source image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colorTable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colorVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

colorVariation : real

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

This number represents the color variation applied to individual
particles. Setting colorVariation is the same as setting redVariation,
greenVariation, and blueVariation to the same number.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each channel can vary between particle by up to colorVariation from its
usual color.

.. raw:: html

   </p>

.. raw:: html

   <p>

Color is measured, per channel, from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colorVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="entryEffect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

entryEffect : EntryEffect

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

This property provides basic and cheap entrance and exit effects for the
particles. For fine-grained control, see sizeTable and opacityTable.

.. raw:: html

   </p>

.. raw:: html

   <p>

Acceptable values are

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ImageParticle.None: Particles just appear and disappear.

.. raw:: html

   </li>

.. raw:: html

   <li>

ImageParticle.Fade: Particles fade in from 0 opacity at the start of
their life, and fade out to 0 at the end.

.. raw:: html

   </li>

.. raw:: html

   <li>

ImageParticle.Scale: Particles scale in from 0 size at the start of
their life, and scale back to 0 at the end.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Default value is Fade.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@entryEffect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="greenVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

greenVariation : real

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

The variation in the green color channel between particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Color is measured, per channel, from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@greenVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opacityTable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

opacityTable : url

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

An image whose opacity will be used as a 1D texture to determine size
over life.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is expected to be removed shortly, in favor of custom
easing curves to determine opacity over life.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opacityTable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="redVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

redVariation : real

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

The variation in the red color channel between particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Color is measured, per channel, from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@redVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotation : real

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

If set the image will be rotated by this many degrees before it is
drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

The particle coordinates are not transformed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotationVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotationVariation : real

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

If set the rotation of individual particles will vary by up to this much
between particles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotationVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotationVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotationVelocity : real

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

If set particles will rotate at this velocity in degrees/second.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotationVelocity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotationVelocityVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotationVelocityVariation : real

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

If set the rotationVelocity of individual particles will vary by up to
this much between particles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotationVelocityVariation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sizeTable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sizeTable : url

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

An image whose opacity will be used as a 1D texture to determine size
over life.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is expected to be removed shortly, in favor of custom
easing curves to determine size over life.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sizeTable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

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

The source image to be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the image is a sprite animation, use the sprite property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since Qt 5.2, some default images are provided as resources to aid
prototyping:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

qrc:///particleresources/star.png

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

qrc:///particleresources/glowdot.png

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

qrc:///particleresources/fuzzydot.png

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note that the images are white and semi-transparent, to allow
colorization and alpha levels to have maximum effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sprites-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sprites : list<Sprite>

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

The sprite or sprites used to draw this particle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the sprite image will be scaled to a square based on the size
of the particle being rendered.

.. raw:: html

   </p>

.. raw:: html

   <p>

For full details, see the Sprite Animations overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sprites -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spritesInterpolate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spritesInterpolate : bool

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

If set to true, sprite particles will interpolate between sprite frames
each rendered frame, making the sprites look smoother.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spritesInterpolate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : Status

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

The status of loading the image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="xVector-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

xVector : StochasticDirection

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

Allows you to deform the particle image when drawn. The rectangular
image will be deformed so that the horizontal sides are in the shape of
this vector instead of (1,0).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@xVector -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="yVector-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

yVector : StochasticDirection

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

Allows you to deform the particle image when drawn. The rectangular
image will be deformed so that the vertical sides are in the shape of
this vector instead of (0,1).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@yVector -->


