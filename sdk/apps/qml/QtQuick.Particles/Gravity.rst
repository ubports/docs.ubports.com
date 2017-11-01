For applying acceleration in an angle

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`__                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`acceleration </sdk/apps/qml/QtQuick/Particles.Gravity#acceleration-prop>`__****
   : real
-  ****`angle </sdk/apps/qml/QtQuick/Particles.Gravity#angle-prop>`__****
   : real
-  ****`magnitude </sdk/apps/qml/QtQuick/Particles.Gravity#magnitude-prop>`__****
   : real

Detailed Description
--------------------

This element will accelerate all affected particles to a vector of the
specified magnitude in the specified angle. If the angle and
acceleration do not vary, it is more efficient to set the specified
acceleration on the Emitter.

This element models the gravity of a massive object whose center of
gravity is far away (and thus the gravitational pull is effectively
constant across the scene). To model the gravity of an object near or
inside the scene, use PointAttractor.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ acceleration : real                                             |
+--------------------------------------------------------------------------+

Name changed to magnitude, will be removed soon.

| 

+--------------------------------------------------------------------------+
|        \ angle : real                                                    |
+--------------------------------------------------------------------------+

Angle of acceleration.

| 

+--------------------------------------------------------------------------+
|        \ magnitude : real                                                |
+--------------------------------------------------------------------------+

Pixels per second that objects will be accelerated by.

| 
