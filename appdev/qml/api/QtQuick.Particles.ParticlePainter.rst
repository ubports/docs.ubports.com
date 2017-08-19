QtQuick.Particles.ParticlePainter
=================================

.. raw:: html

   <p>

For specifying how to paint particles More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParticlePainter -->

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

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

CustomParticle, ImageParticle, and ItemParticle.

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

groups : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

system : ParticleSystem

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ParticlePainter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The default implementation paints nothing. See the subclasses if you
want to paint something visible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParticlePainter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="groups-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

groups : list<string>

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

Which logical particle groups will be painted.

.. raw:: html

   </p>

.. raw:: html

   <p>

If empty, it will paint the default particle group ("").

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="system-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

system : ParticleSystem

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

This is the system whose particles can be painted by the element. If the
ParticlePainter is a direct child of a ParticleSystem, it will
automatically be associated with it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@system -->


