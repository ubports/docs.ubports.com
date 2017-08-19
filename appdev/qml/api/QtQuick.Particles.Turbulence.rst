QtQuick.Particles.Turbulence
============================

.. raw:: html

   <p>

Provides fluid-like forces from a noise image More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Turbulence -->

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

Affector

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

noiseSource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

strength : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Turbulence-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Turbulence Element scales the noise source over the area it affects,
and uses the curl of that source to generate force vectors.

.. raw:: html

   </p>

.. raw:: html

   <p>

Turbulence requires a fixed size. Unlike other affectors, a 0x0
Turbulence element will affect no particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

The source should be relatively smooth black and white noise, such as
perlin noise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Turbulence -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$noiseSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="noiseSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

noiseSource : url

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

The source image to generate the turbulence from. It will be scaled to
the size of the element, so equal or larger sizes will give better
results. Tweaking this image is the only way to tweak behavior such as
where vortices are or how many exist.

.. raw:: html

   </p>

.. raw:: html

   <p>

The source should be a relatively smooth black and white noise image,
such as perlin noise. A default image will be used if none is provided.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@noiseSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strength-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

strength : real

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

The magnitude of the velocity vector at any point varies between zero
and the square root of two. It will then be multiplied by strength to
get the velocity per second for the particles affected by the
turbulence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strength -->


