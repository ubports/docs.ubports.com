.. _sdk_qtquick_particles_attractor:

QtQuick.Particles Attractor
===========================

For attracting particles towards a specific point

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick.Particles 2.0                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Affector </sdk/apps/qml/QtQuick/Particles.Affector/>`_                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `affectedParameter </sdk/apps/qml/QtQuick/Particles.Attractor/#affectedParameter-prop>`_  : AffectableParameter
-  `proportionalToDistance </sdk/apps/qml/QtQuick/Particles.Attractor/#proportionalToDistance-prop>`_  : Proportion

Detailed Description
--------------------

Note that the size and position of this element affects which particles it affects. The size of the point attracted to is always 0x0, and the location of that point is specified by the pointX and pointY properties.

Note that Attractor has the standard Item x,y,width and height properties. Like other affectors, these represent the affected area. They do not represent the 0x0 point which is the target of the attraction.

Property Documentation
----------------------

.. _sdk_qtquick_particles_attractor_affectedParameter:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| affectedParameter : AffectableParameter                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

What attribute of particles is directly affected.

-  Attractor.Position
-  Attractor.Velocity
-  Attractor.Acceleration

.. _sdk_qtquick_particles_attractor_proportionalToDistance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| proportionalToDistance : Proportion                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

How the distance from the particle to the point affects the strength of the attraction.

-  Attractor.Constant
-  Attractor.Linear
-  Attractor.InverseLinear
-  Attractor.Quadratic
-  Attractor.InverseQuadratic

