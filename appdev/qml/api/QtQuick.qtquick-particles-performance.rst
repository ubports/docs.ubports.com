QtQuick.qtquick-particles-performance
=====================================

.. raw:: html

   <p>

The performance of the particle system scales with the number of
particles it is maintaining. After prototyping the desired effect,
performance can be improved by lowering the particle count. Conversely,
if performance is well within the acceptable bounds, you can increase
the number of particles until you hit that point (should that improve
the effect).

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that particle count is often estimated by the particle system, and
in some cases explicitly providing hints as to how many particles will
be needed will improve performance. You can do this by setting
maximumEmitted on an Emitter, and it is generally useful for Emitters
which do not continuously emit particles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like ShaderEffect, the performance of the particle system is largely
dependent on the graphics hardware it is running on. The exception to
this is Affectors. For systems not including Affectors, the majority of
the performance cost of particles will be on the GPU. Since the GPU is
better at parallelizing large numbers of operations more particles can
be drawn at 60FPS when Affectors are not used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Affectors, particularly if modifying the particles in javascript, can be
relatively slow as well as increasing the CPU cost of using particles.
Avoid using them in high-volume systems where possible. Some easy cases
where Affectors can be avoided are using timed ParticleGroup transitions
instead of time-triggered Affectors, or setting acceleration due to
gravity in the acceleration property of the Emitter instead of with a
Gravity Affector.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-particles-performance.html -->
