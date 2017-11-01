For applying random particle trajectory

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`__                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`affectedParameter </sdk/apps/qml/QtQuick/Particles.Wander#affectedParameter-prop>`__****
   : AffectableParameter
-  ****`pace </sdk/apps/qml/QtQuick/Particles.Wander#pace-prop>`__**** :
   real
-  ****`xVariance </sdk/apps/qml/QtQuick/Particles.Wander#xVariance-prop>`__****
   : real
-  ****`yVariance </sdk/apps/qml/QtQuick/Particles.Wander#yVariance-prop>`__****
   : real

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ affectedParameter : AffectableParameter                         |
+--------------------------------------------------------------------------+

What attribute of particles is directly affected.

-  PointAttractor.Position
-  PointAttractor.Velocity
-  PointAttractor.Acceleration

| 

+--------------------------------------------------------------------------+
|        \ pace : real                                                     |
+--------------------------------------------------------------------------+

Maximum attribute change per second.

| 

+--------------------------------------------------------------------------+
|        \ xVariance : real                                                |
+--------------------------------------------------------------------------+

Maximum attribute x value (as a result of Wander).

If unset, Wander will not affect x values.

| 

+--------------------------------------------------------------------------+
|        \ yVariance : real                                                |
+--------------------------------------------------------------------------+

Maximum attribute y value (as a result of Wander).

If unset, Wander will not affect y values.

| 
