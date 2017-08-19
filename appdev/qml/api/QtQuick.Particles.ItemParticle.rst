QtQuick.Particles.ItemParticle
==============================

.. raw:: html

   <p>

For specifying a delegate to paint particles More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ItemParticle -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick.Particles 2.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ParticlePainter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fade : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void freeze(Item item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void give(Item item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void take(Item item, bool prioritize)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void unfreeze(Item item)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ItemParticle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ItemParticle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

An instance of the delegate will be created for every logical particle,
and moved along with it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fade-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fade : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, the item will automatically be faded in and out at the ends of
its lifetime. If false, you will have to implement any entry effect
yourself.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fade -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$freeze -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="freeze-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void freeze(Item item)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Suspends the flow of time for the logical particle which item
represents, allowing you to control its movement.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@freeze -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="give-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void give(Item item)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Orders the ItemParticle to give you control of the item. It will cease
controlling it and the item will lose its association to the logical
particle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@give -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="take-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void take(Item item, bool prioritize)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Asks the ItemParticle to take over control of item. It will be emitted
when there is a logical particle available.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default items form a queue when waiting for a logical particle, but
if prioritize is true then it will go immediately to the head of the
queue.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@take -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="unfreeze-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void unfreeze(Item item)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Restarts the flow of time for the logical particle which item
represents, allowing it to be moved by the particle system again.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@unfreeze -->


