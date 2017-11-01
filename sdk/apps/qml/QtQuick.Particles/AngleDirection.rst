For specifying a direction that varies in angle

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Direction </sdk/apps/qml/QtQuick/Pa |
|                                      | rticles.Direction/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`angle </sdk/apps/qml/QtQuick/Particles.AngleDirection#angle-prop>`__****
   : real
-  ****`angleVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection#angleVariation-prop>`__****
   : real
-  ****`magnitude </sdk/apps/qml/QtQuick/Particles.AngleDirection#magnitude-prop>`__****
   : real
-  ****`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection#magnitudeVariation-prop>`__****
   : real

Detailed Description
--------------------

The AngledDirection element allows both the specification of a direction
by angle and magnitude, as well as varying the parameters by angle or
magnitude.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ angle : real                                                    |
+--------------------------------------------------------------------------+

This property specifies the base angle for the direction. The angle of
this direction will vary by no more than
`angleVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection#angleVariation-prop>`__
from this angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

| 

+--------------------------------------------------------------------------+
|        \ angleVariation : real                                           |
+--------------------------------------------------------------------------+

This property specifies the maximum angle variation for the direction.
The angle of the direction will vary by up to angleVariation clockwise
and anticlockwise from the value specified in angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

| 

+--------------------------------------------------------------------------+
|        \ magnitude : real                                                |
+--------------------------------------------------------------------------+

This property specifies the base magnitude for the direction. The
magnitude of this direction will vary by no more than
`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.AngleDirection#magnitudeVariation-prop>`__
from this magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

| 

+--------------------------------------------------------------------------+
|        \ magnitudeVariation : real                                       |
+--------------------------------------------------------------------------+

This property specifies the base magnitude for the direction. The
magnitude of this direction will vary by no more than magnitudeVariation
from the base magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

| 
