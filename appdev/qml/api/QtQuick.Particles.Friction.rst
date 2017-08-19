QtQuick.Particles.Friction
==========================

.. raw:: html

   <p>

For applying friction proportional to the particle's current velocity
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Friction -->

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

factor : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

threshold : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Friction-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Friction -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$factor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="factor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

factor : real

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

A drag will be applied to moving objects which is this factor of their
current velocity.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@factor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="threshold-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

threshold : real

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

The drag will only be applied to objects with a velocity above the
threshold velocity. The drag applied will bring objects down to the
threshold velocity, but no further.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default threshold is 0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@threshold -->


