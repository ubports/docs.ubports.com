QtQuick.Particles.Particle
==========================

.. raw:: html

   <p>

Represents particles manipulated by emitters and affectors More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Particle -->

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

alpha : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoRotate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ax : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ay : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

blue : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

endSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

green : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialAX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialAY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialVX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialVY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initialY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lifeLeft : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lifeSpan : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

red : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotationVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

t : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

update : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vx : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vy : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

xDeformationVectorX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

xDeformationVectorY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

yDeformationVectorX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

yDeformationVectorY : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Particle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Particle elements are always managed internally by the ParticleSystem
and cannot be created in QML. However, sometimes they are exposed via
signals so as to allow arbitrary changes to the particle state

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Particle -->

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

ImageParticle can draw colorized particles. When it does so, alpha is
used as the alpha channel of the color applied to the source image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values are from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alpha -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoRotate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoRotate : bool

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

If autoRotate is true, then the particle's rotation will be set so that
it faces the direction of travel, plus any rotation from the rotation or
rotationVelocity properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoRotate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ax-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ax : real

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

The current x acceleration of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ax -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ay : real

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

The current y acceleration of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="blue-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

blue : real

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

ImageParticle can draw colorized particles. When it does so, blue is
used as the blue channel of the color applied to the source image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values are from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@blue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentSize : real

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

The currentSize of the particle, interpolating between startSize and
endSize based on the currentTime.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentSize -->

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

The size in pixels that the particle image is at the end of its life. If
this value is less than 0, then it is disregarded and the particle will
have its startSize for the entire lifetime.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@endSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="green-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

green : real

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

ImageParticle can draw colorized particles. When it does so, green is
used as the green channel of the color applied to the source image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values are from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@green -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialAX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialAX : real

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

The x acceleration of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialAX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialAY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialAY : real

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

The y acceleration of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialAY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialVX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialVX : real

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

The x velocity of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialVX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialVY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialVY : real

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

The y velocity of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialVY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialX : real

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

The x coordinate of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initialY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

initialY : real

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

The y coordinate of the particle at the beginning of its lifetime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The method of simulation prefers to have the initial values changed,
rather than determining and changing the value at a given time. Change
initial values in CustomEmitters instead of the current values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initialY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lifeLeft-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lifeLeft : real

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

The time in seconds that the particle has left to live at the current
point in time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lifeLeft -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lifeSpan-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lifeSpan : real

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

The time in seconds that the particle will live for.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lifeSpan -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="red-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

red : real

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

ImageParticle can draw colorized particles. When it does so, red is used
as the red channel of the color applied to the source image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values are from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@red -->

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

Degrees clockwise that the particle image is rotated at the beginning of
its life.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotation -->

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

Degrees clockwise per second that the particle image is rotated at while
alive.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotationVelocity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startSize : real

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

The size in pixels that the particle image is at the start of its life.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="t-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

t : real

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

The time, in seconds since the beginning of the simulation, that the
particle was born.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@t -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="update-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

update : bool

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

Inside an Affector, the changes made to the particle will only be
applied if update is set to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@update -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vx-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

vx : real

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

The current x velocity of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vx -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vy-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

vy : real

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

The current y velocity of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : real

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

The current x coordinate of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="xDeformationVectorX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

xDeformationVectorX : real

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

The x component of the deformation vector along the X axis.
ImageParticle can draw particles across non-square shapes. It will draw
the texture rectangle across the parallelogram drawn with the x and y
deformation vectors.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@xDeformationVectorX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="xDeformationVectorY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

xDeformationVectorY : real

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

The x component of the deformation vector along the X axis.
ImageParticle can draw particles across non-square shapes. It will draw
the texture rectangle across the parallelogram drawn with the x and y
deformation vectors.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@xDeformationVectorY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : real

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

The current y coordinate of the particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="yDeformationVectorX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

yDeformationVectorX : real

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

The y component of the deformation vector along the X axis.
ImageParticle can draw particles across non-square shapes. It will draw
the texture rectangle across the parallelogram drawn with the x and y
deformation vectors.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@yDeformationVectorX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="yDeformationVectorY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

yDeformationVectorY : real

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

The y component of the deformation vector along the Y axis.
ImageParticle can draw particles across non-square shapes. It will draw
the texture rectangle across the parallelogram drawn with the x and y
deformation vectors.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@yDeformationVectorY -->


