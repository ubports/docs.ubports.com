For changing the state of a sprite particle

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`__                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`goalState </sdk/apps/qml/QtQuick/Particles.SpriteGoal#goalState-prop>`__****
   : string
-  ****`jump </sdk/apps/qml/QtQuick/Particles.SpriteGoal#jump-prop>`__****
   : bool
-  ****`systemStates </sdk/apps/qml/QtQuick/Particles.SpriteGoal#systemStates-prop>`__****
   : bool

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ goalState : string                                              |
+--------------------------------------------------------------------------+

The name of the Sprite which the affected particles should move to.

Sprite states have defined durations and transitions between them,
setting goalState will cause it to disregard any path weightings
(including 0) and head down the path which will reach the goalState
quickest. It will pass through intermediate states on that path.

| 

+--------------------------------------------------------------------------+
|        \ jump : bool                                                     |
+--------------------------------------------------------------------------+

If true, affected sprites will jump directly to the goal state instead
of taking the shortest valid path to get there. They will also not
finish their current state, but immediately move to the beginning of the
goal state.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ systemStates : bool                                             |
+--------------------------------------------------------------------------+

deprecated, use
`GroupGoal </sdk/apps/qml/QtQuick/Particles.GroupGoal/>`__ instead

| 
