.. _sdk_qtquick_particles_wander:
QtQuick.Particles Wander
========================

For applying random particle trajectory

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`_                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `affectedParameter </sdk/apps/qml/QtQuick/Particles.Wander/_affectedParameter-prop>`_ 
   : AffectableParameter
-  `pace </sdk/apps/qml/QtQuick/Particles.Wander/_pace-prop>`_ 
   : real
-  `xVariance </sdk/apps/qml/QtQuick/Particles.Wander/_xVariance-prop>`_ 
   : real
-  `yVariance </sdk/apps/qml/QtQuick/Particles.Wander/_yVariance-prop>`_ 
   : real

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtquick_particles_wander_affectedParameter-prop:

+--------------------------------------------------------------------------+
|        \ affectedParameter : AffectableParameter                         |
+--------------------------------------------------------------------------+

What attribute of particles is directly affected.

-  PointAttractor.Position
-  PointAttractor.Velocity
-  PointAttractor.Acceleration

| 

.. _sdk_qtquick_particles_wander_pace-prop:

+--------------------------------------------------------------------------+
|        \ pace : real                                                     |
+--------------------------------------------------------------------------+

Maximum attribute change per second.

| 

.. _sdk_qtquick_particles_wander_xVariance-prop:

+--------------------------------------------------------------------------+
|        \ xVariance : real                                                |
+--------------------------------------------------------------------------+

Maximum attribute x value (as a result of Wander).

If unset, Wander will not affect x values.

| 

.. _sdk_qtquick_particles_wander_yVariance-prop:

+--------------------------------------------------------------------------+
|        \ yVariance : real                                                |
+--------------------------------------------------------------------------+

Maximum attribute y value (as a result of Wander).

If unset, Wander will not affect y values.

| 
