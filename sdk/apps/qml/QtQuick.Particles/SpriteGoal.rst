.. _sdk_qtquick_particles_spritegoal:
QtQuick.Particles SpriteGoal
============================

For changing the state of a sprite particle

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`_                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `goalState </sdk/apps/qml/QtQuick/Particles.SpriteGoal/_goalState-prop>`_ 
   : string
-  `jump </sdk/apps/qml/QtQuick/Particles.SpriteGoal/_jump-prop>`_ 
   : bool
-  `systemStates </sdk/apps/qml/QtQuick/Particles.SpriteGoal/_systemStates-prop>`_ 
   : bool

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtquick_particles_spritegoal_goalState-prop:

+--------------------------------------------------------------------------+
|        \ goalState : string                                              |
+--------------------------------------------------------------------------+

The name of the Sprite which the affected particles should move to.

Sprite states have defined durations and transitions between them,
setting goalState will cause it to disregard any path weightings
(including 0) and head down the path which will reach the goalState
quickest. It will pass through intermediate states on that path.

| 

.. _sdk_qtquick_particles_spritegoal_jump-prop:

+--------------------------------------------------------------------------+
|        \ jump : bool                                                     |
+--------------------------------------------------------------------------+

If true, affected sprites will jump directly to the goal state instead
of taking the shortest valid path to get there. They will also not
finish their current state, but immediately move to the beginning of the
goal state.

Default is false.

| 

.. _sdk_qtquick_particles_spritegoal_systemStates-prop:

+--------------------------------------------------------------------------+
|        \ systemStates : bool                                             |
+--------------------------------------------------------------------------+

deprecated, use
`GroupGoal </sdk/apps/qml/QtQuick/Particles.GroupGoal/>`_  instead

| 
