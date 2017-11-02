.. _sdk_qtquick_particles_targetdirection:
QtQuick.Particles TargetDirection
=================================

For specifying a direction towards the target point

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Direction </sdk/apps/qml/QtQuick/Pa |
|                                      | rticles.Direction/>`_                |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `magnitude </sdk/apps/qml/QtQuick/Particles.TargetDirection/_magnitude-prop>`_ 
   : real
-  `magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection/_magnitudeVariation-prop>`_ 
   : real
-  `proportionalMagnitude </sdk/apps/qml/QtQuick/Particles.TargetDirection/_proportionalMagnitude-prop>`_ 
   : bool
-  `targetItem </sdk/apps/qml/QtQuick/Particles.TargetDirection/_targetItem-prop>`_ 
   : Item
-  `targetVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection/_targetVariation-prop>`_ 
   : real
-  `targetX </sdk/apps/qml/QtQuick/Particles.TargetDirection/_targetX-prop>`_ 
   : real
-  `targetY </sdk/apps/qml/QtQuick/Particles.TargetDirection/_targetY-prop>`_ 
   : real

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtquick_particles_targetdirection_magnitude-prop:

+--------------------------------------------------------------------------+
|        \ magnitude : real                                                |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_particles_targetdirection_magnitudeVariation-prop:

+--------------------------------------------------------------------------+
|        \ magnitudeVariation : real                                       |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_particles_targetdirection_proportionalMagnitude-prop:

+--------------------------------------------------------------------------+
|        \ proportionalMagnitude : bool                                    |
+--------------------------------------------------------------------------+

If true, then the value of magnitude and
`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection/#magnitudeVariation-prop>`_ 
shall be interpreted as multiples of the distance between the source
point and the target point, per second.

If false(default), then the value of magnitude and
`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection/#magnitudeVariation-prop>`_ 
shall be interpreted as pixels per second.

| 

.. _sdk_qtquick_particles_targetdirection_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ targetItem : `Item <sdk_qtquick_item>`                     |
+--------------------------------------------------------------------------+

If specified, this will take precedence over
`targetX </sdk/apps/qml/QtQuick/Particles.TargetDirection/#targetX-prop>`_ 
and
`targetY </sdk/apps/qml/QtQuick/Particles.TargetDirection/#targetY-prop>`_ .
The targeted point will be the center of the specified Item

| 

.. _sdk_qtquick_particles_targetdirection_targetVariation-prop:

+--------------------------------------------------------------------------+
|        \ targetVariation : real                                          |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_particles_targetdirection_targetX-prop:

+--------------------------------------------------------------------------+
|        \ targetX : real                                                  |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_particles_targetdirection_targetY-prop:

+--------------------------------------------------------------------------+
|        \ targetY : real                                                  |
+--------------------------------------------------------------------------+

| 
