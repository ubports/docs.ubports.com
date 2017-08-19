QtQuick.Particles.AngleDirection
================================

.. raw:: html

   <p>

For specifying a direction that varies in angle More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AngleDirection -->

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

Direction

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

angle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

angleVariation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

magnitude : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

magnitudeVariation : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AngleDirection-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AngledDirection element allows both the specification of a direction
by angle and magnitude, as well as varying the parameters by angle or
magnitude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AngleDirection -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$angle -->

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

This property specifies the base angle for the direction. The angle of
this direction will vary by no more than angleVariation from this angle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Angle is specified by degrees clockwise from straight right.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angleVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angleVariation : real

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

This property specifies the maximum angle variation for the direction.
The angle of the direction will vary by up to angleVariation clockwise
and anticlockwise from the value specified in angle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Angle is specified by degrees clockwise from straight right.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angleVariation -->

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

This property specifies the base magnitude for the direction. The
magnitude of this direction will vary by no more than magnitudeVariation
from this magnitude.

.. raw:: html

   </p>

.. raw:: html

   <p>

Magnitude is specified in units of pixels per second.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@magnitude -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="magnitudeVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

magnitudeVariation : real

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

This property specifies the base magnitude for the direction. The
magnitude of this direction will vary by no more than magnitudeVariation
from the base magnitude.

.. raw:: html

   </p>

.. raw:: html

   <p>

Magnitude is specified in units of pixels per second.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@magnitudeVariation -->


