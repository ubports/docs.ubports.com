.. _sdk_qtquick_particles_friction:
QtQuick.Particles Friction
==========================

For applying friction proportional to the particle's current velocity

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`_                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `factor </sdk/apps/qml/QtQuick/Particles.Friction/_factor-prop>`_ 
   : real
-  `threshold </sdk/apps/qml/QtQuick/Particles.Friction/_threshold-prop>`_ 
   : real

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtquick_particles_friction_factor-prop:

+--------------------------------------------------------------------------+
|        \ factor : real                                                   |
+--------------------------------------------------------------------------+

A drag will be applied to moving objects which is this factor of their
current velocity.

| 

.. _sdk_qtquick_particles_friction_threshold-prop:

+--------------------------------------------------------------------------+
|        \ threshold : real                                                |
+--------------------------------------------------------------------------+

The drag will only be applied to objects with a velocity above the
threshold velocity. The drag applied will bring objects down to the
threshold velocity, but no further.

The default threshold is 0

| 
