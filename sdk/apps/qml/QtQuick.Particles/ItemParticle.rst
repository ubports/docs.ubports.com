For specifying a delegate to paint particles

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ParticlePainter </sdk/apps/qml/QtQu |
|                                      | ick/Particles.ParticlePainter/>`__   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`delegate </sdk/apps/qml/QtQuick/Particles.ItemParticle#delegate-prop>`__****
   : Component
-  ****`fade </sdk/apps/qml/QtQuick/Particles.ItemParticle#fade-prop>`__****
   : bool

Methods
-------

-  void
   ****`freeze </sdk/apps/qml/QtQuick/Particles.ItemParticle#freeze-method>`__****\ (Item
   *item*)
-  void
   ****`give </sdk/apps/qml/QtQuick/Particles.ItemParticle#give-method>`__****\ (Item
   *item*)
-  void
   ****`take </sdk/apps/qml/QtQuick/Particles.ItemParticle#take-method>`__****\ (Item
   *item*, bool *prioritize*)
-  void
   ****`unfreeze </sdk/apps/qml/QtQuick/Particles.ItemParticle#unfreeze-method>`__****\ (Item
   *item*)

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ delegate : Component                                            |
+--------------------------------------------------------------------------+

An instance of the delegate will be created for every logical particle,
and moved along with it.

| 

+--------------------------------------------------------------------------+
|        \ fade : bool                                                     |
+--------------------------------------------------------------------------+

If true, the item will automatically be faded in and out at the ends of
its lifetime. If false, you will have to implement any entry effect
yourself.

Default is true.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void freeze(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*)      |
+--------------------------------------------------------------------------+

Suspends the flow of time for the logical particle which item
represents, allowing you to control its movement.

| 

+--------------------------------------------------------------------------+
|        \ void give(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*)        |
+--------------------------------------------------------------------------+

Orders the
`ItemParticle </sdk/apps/qml/QtQuick/Particles.ItemParticle/>`__ to give
you control of the item. It will cease controlling it and the item will
lose its association to the logical particle.

| 

+--------------------------------------------------------------------------+
|        \ void take(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*, bool   |
| *prioritize*)                                                            |
+--------------------------------------------------------------------------+

Asks the
`ItemParticle </sdk/apps/qml/QtQuick/Particles.ItemParticle/>`__ to take
over control of item. It will be emitted when there is a logical
particle available.

By default items form a queue when waiting for a logical particle, but
if prioritize is true then it will go immediately to the head of the
queue.

| 

+--------------------------------------------------------------------------+
|        \ void unfreeze(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*)    |
+--------------------------------------------------------------------------+

Restarts the flow of time for the logical particle which item
represents, allowing it to be moved by the particle system again.

| 
