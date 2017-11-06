.. _sdk_qtquick_particles_angledirection:

QtQuick.Particles AngleDirection
================================

For specifying a direction that varies in angle

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick.Particles 2.0                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Direction </sdk/apps/qml/QtQuick/Particles.Direction/>`_                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `angle </sdk/apps/qml/QtQuick/Particles.AngleDirection/#angle-prop>`_  : real
-  `angleVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection/#angleVariation-prop>`_  : real
-  `magnitude </sdk/apps/qml/QtQuick/Particles.AngleDirection/#magnitude-prop>`_  : real
-  `magnitudeVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection/#magnitudeVariation-prop>`_  : real

Detailed Description
--------------------

The AngledDirection element allows both the specification of a direction by angle and magnitude, as well as varying the parameters by angle or magnitude.

Property Documentation
----------------------

.. _sdk_qtquick_particles_angledirection_angle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angle : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the base angle for the direction. The angle of this direction will vary by no more than `angleVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection/#angleVariation-prop>`_  from this angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

.. _sdk_qtquick_particles_angledirection_angleVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angleVariation : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the maximum angle variation for the direction. The angle of the direction will vary by up to angleVariation clockwise and anticlockwise from the value specified in angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

.. _sdk_qtquick_particles_angledirection_magnitude:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| magnitude : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than `magnitudeVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection/#magnitudeVariation-prop>`_  from this magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

.. _sdk_qtquick_particles_angledirection_magnitudeVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| magnitudeVariation : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than magnitudeVariation from the base magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

