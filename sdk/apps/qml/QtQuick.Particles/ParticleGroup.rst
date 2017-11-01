For setting attributes on a logical particle group

+---------------------+--------------------------------+
| Import Statement:   | import QtQuick.Particles 2.0   |
+---------------------+--------------------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/Particles.ParticleGroup#duration-prop>`__****
   : int
-  ****`durationVariation </sdk/apps/qml/QtQuick/Particles.ParticleGroup#durationVariation-prop>`__****
   : ParticleSystem
-  ****`name </sdk/apps/qml/QtQuick/Particles.ParticleGroup#name-prop>`__****
   : string
-  ****`system </sdk/apps/qml/QtQuick/Particles.ParticleGroup#system-prop>`__****
   : ParticleSystem
-  ****`to </sdk/apps/qml/QtQuick/Particles.ParticleGroup#to-prop>`__****
   : ParticleSystem

Detailed Description
--------------------

This element allows you to set timed transitions on particle groups.

You can also use this element to group particle system elements related
to the logical particle group. Emitters, Affectors and Painters set as
direct children of a
`ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`__ will
automatically apply to that logical particle group. TrailEmitters will
automatically follow the group.

If a `ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`__
element is not defined for a group, the group will function normally as
if none of the transition properties were set.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

The time in milliseconds before the group will attempt to transition.

| 

+--------------------------------------------------------------------------+
|        \ durationVariation :                                             |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

The maximum number of milliseconds that the duration of the transition
cycle varies per particle in the group.

Default value is zero.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This is the name of the particle group, and how it is generally referred
to by other elements.

If elements refer to a name which does not have an explicit
`ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`__
created, it will work normally (with no transitions specified for the
group). If you do not need to assign duration based transitions to a
group, you do not need to create a
`ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`__ with
that name (although you may).

| 

+--------------------------------------------------------------------------+
|        \ system :                                                        |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

This is the system which will contain the group.

If the
`ParticleGroup </sdk/apps/qml/QtQuick/Particles.ParticleGroup/>`__ is a
direct child of a
`ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__, it
will automatically be associated with it.

| 

+--------------------------------------------------------------------------+
|        \ to :                                                            |
| `ParticleSystem </sdk/apps/qml/QtQuick/Particles.ParticleSystem/>`__     |
+--------------------------------------------------------------------------+

The weighted list of transitions valid for this group.

If the chosen transition stays in this group, another duration (+/- up
to
`durationVariation </sdk/apps/qml/QtQuick/Particles.ParticleGroup#durationVariation-prop>`__)
milliseconds will occur before another transition is attempted.

| 
