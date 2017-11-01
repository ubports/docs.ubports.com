For applying friction proportional to the particle's current velocity

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`__                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`factor </sdk/apps/qml/QtQuick/Particles.Friction#factor-prop>`__****
   : real
-  ****`threshold </sdk/apps/qml/QtQuick/Particles.Friction#threshold-prop>`__****
   : real

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ factor : real                                                   |
+--------------------------------------------------------------------------+

A drag will be applied to moving objects which is this factor of their
current velocity.

| 

+--------------------------------------------------------------------------+
|        \ threshold : real                                                |
+--------------------------------------------------------------------------+

The drag will only be applied to objects with a velocity above the
threshold velocity. The drag applied will bring objects down to the
threshold velocity, but no further.

The default threshold is 0

| 
