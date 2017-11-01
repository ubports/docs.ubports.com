For specifying how to paint particles

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `CustomParticle </sdk/apps/qml/QtQui |
|                                      | ck/Particles.CustomParticle/>`__,    |
|                                      | `ImageParticle </sdk/apps/qml/QtQuic |
|                                      | k/Particles.ImageParticle/>`__,      |
|                                      | and                                  |
|                                      | `ItemParticle </sdk/apps/qml/QtQuick |
|                                      | /Particles.ItemParticle/>`__.        |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`groups </sdk/apps/qml/QtQuick/Particles.ParticlePainter#groups-prop>`__****
   : list<string>
-  ****`system </sdk/apps/qml/QtQuick/Particles.ParticlePainter#system-prop>`__****
   : ParticleSystem

Detailed Description
--------------------

The default implementation paints nothing. See the subclasses if you
want to paint something visible.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ groups : list<string>                                           |
+--------------------------------------------------------------------------+

Which logical particle groups will be painted.

If empty, it will paint the default particle group ("").

| 

+--------------------------------------------------------------------------+
|        \ system :                                                        |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

This is the system whose particles can be painted by the element. If the
`ParticlePainter </sdk/apps/qml/QtQuick/Particles.ParticlePainter/>`__
is a direct child of a
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__, it
will automatically be associated with it.

| 
