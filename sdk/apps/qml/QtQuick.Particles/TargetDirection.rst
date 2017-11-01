For specifying a direction towards the target point

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Direction </sdk/apps/qml/QtQuick/Pa |
|                                      | rticles.Direction/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`magnitude </sdk/apps/qml/QtQuick/Particles.TargetDirection#magnitude-prop>`__****
   : real
-  ****`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection#magnitudeVariation-prop>`__****
   : real
-  ****`proportionalMagnitude </sdk/apps/qml/QtQuick/Particles.TargetDirection#proportionalMagnitude-prop>`__****
   : bool
-  ****`targetItem </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetItem-prop>`__****
   : Item
-  ****`targetVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetVariation-prop>`__****
   : real
-  ****`targetX </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetX-prop>`__****
   : real
-  ****`targetY </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetY-prop>`__****
   : real

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ magnitude : real                                                |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ magnitudeVariation : real                                       |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ proportionalMagnitude : bool                                    |
+--------------------------------------------------------------------------+

If true, then the value of magnitude and
`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection#magnitudeVariation-prop>`__
shall be interpreted as multiples of the distance between the source
point and the target point, per second.

If false(default), then the value of magnitude and
`magnitudeVariation </sdk/apps/qml/QtQuick/Particles.TargetDirection#magnitudeVariation-prop>`__
shall be interpreted as pixels per second.

| 

+--------------------------------------------------------------------------+
|        \ targetItem : `Item </sdk/apps/qml/QtQuick/Item/>`__             |
+--------------------------------------------------------------------------+

If specified, this will take precedence over
`targetX </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetX-prop>`__
and
`targetY </sdk/apps/qml/QtQuick/Particles.TargetDirection#targetY-prop>`__.
The targeted point will be the center of the specified Item

| 

+--------------------------------------------------------------------------+
|        \ targetVariation : real                                          |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ targetX : real                                                  |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ targetY : real                                                  |
+--------------------------------------------------------------------------+

| 
