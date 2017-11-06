.. _sdk_qtquick_particles_turbulence:

QtQuick.Particles Turbulence
============================

Provides fluid-like forces from a noise image

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick.Particles 2.0                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Affector </sdk/apps/qml/QtQuick/Particles.Affector/>`_                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `noiseSource </sdk/apps/qml/QtQuick/Particles.Turbulence/#noiseSource-prop>`_  : url
-  `strength </sdk/apps/qml/QtQuick/Particles.Turbulence/#strength-prop>`_  : real

Detailed Description
--------------------

The Turbulence Element scales the noise source over the area it affects, and uses the curl of that source to generate force vectors.

Turbulence requires a fixed size. Unlike other affectors, a 0x0 Turbulence element will affect no particles.

The source should be relatively smooth black and white noise, such as perlin noise.

Property Documentation
----------------------

.. _sdk_qtquick_particles_turbulence_noiseSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| noiseSource : url                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The source image to generate the turbulence from. It will be scaled to the size of the element, so equal or larger sizes will give better results. Tweaking this image is the only way to tweak behavior such as where vortices are or how many exist.

The source should be a relatively smooth black and white noise image, such as perlin noise. A default image will be used if none is provided.

.. _sdk_qtquick_particles_turbulence_strength:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| strength : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The magnitude of the velocity vector at any point varies between zero and the square root of two. It will then be multiplied by strength to get the velocity per second for the particles affected by the turbulence.

