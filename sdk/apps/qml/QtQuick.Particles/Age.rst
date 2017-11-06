.. _sdk_qtquick_particles_age:

QtQuick.Particles Age
=====================

For altering particle ages

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick.Particles 2.0                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Affector </sdk/apps/qml/QtQuick/Particles.Affector/>`_                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `advancePosition </sdk/apps/qml/QtQuick/Particles.Age/#advancePosition-prop>`_  : bool
-  `lifeLeft </sdk/apps/qml/QtQuick/Particles.Age/#lifeLeft-prop>`_  : int

Detailed Description
--------------------

The Age affector allows you to alter where the particle is in its lifecycle. Common uses are to expire particles prematurely, possibly giving them time to animate out.

The Age affector is also sometimes known as a 'Kill' affector, because with the default parameters it will immediately expire all particles which it affects.

The Age affector only applies to particles which are still alive.

Property Documentation
----------------------

.. _sdk_qtquick_particles_age_advancePosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| advancePosition : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

advancePosition determines whether position, veclocity and acceleration are included in the simulated aging done by the affector. If advancePosition is false, then the position, velocity and acceleration will remain the same and only other attributes (such as opacity) will advance in the simulation to where it would normally be for that point in the particle's life. With advancePosition set to true the position, velocity and acceleration will also advance to where it would normally be by that point in the particle's life, making it advance its position on screen.

Default value is true.

.. _sdk_qtquick_particles_age_lifeLeft:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lifeLeft : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The amount of life to set the particle to have. Affected particles will advance to a point in their life where they will have this many milliseconds left to live.

