QtQuick.Particles.Gravity
=========================

.. raw:: html

   <p>

For applying acceleration in an angle More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Gravity -->

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

Affector

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

acceleration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

angle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

magnitude : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Gravity-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element will accelerate all affected particles to a vector of the
specified magnitude in the specified angle. If the angle and
acceleration do not vary, it is more efficient to set the specified
acceleration on the Emitter.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element models the gravity of a massive object whose center of
gravity is far away (and thus the gravitational pull is effectively
constant across the scene). To model the gravity of an object near or
inside the scene, use PointAttractor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Gravity -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceleration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acceleration : real

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

Name changed to magnitude, will be removed soon.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angle : real

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

Angle of acceleration.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="magnitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

magnitude : real

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

Pixels per second that objects will be accelerated by.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@magnitude -->


