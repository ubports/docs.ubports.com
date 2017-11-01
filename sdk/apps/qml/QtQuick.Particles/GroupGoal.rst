For changing the state of a group of a particle

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Affector </sdk/apps/qml/QtQuick/Par |
|                                      | ticles.Affector/>`__                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`goalState </sdk/apps/qml/QtQuick/Particles.GroupGoal#goalState-prop>`__****
   : string
-  ****`jump </sdk/apps/qml/QtQuick/Particles.GroupGoal#jump-prop>`__****
   : bool

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ goalState : string                                              |
+--------------------------------------------------------------------------+

The name of the group which the affected particles should move to.

Groups can have defined durations and transitions between them, setting
goalState will cause it to disregard any path weightings (including 0)
and head down the path which will reach the goalState quickest. It will
pass through intermediate groups on that path for their respective
durations.

| 

+--------------------------------------------------------------------------+
|        \ jump : bool                                                     |
+--------------------------------------------------------------------------+

If true, affected particles will jump directly to the target group
instead of taking the shortest valid path to get there. They will also
not finish their current state, but immediately move to the beginning of
the goal state.

Default is false.

| 
