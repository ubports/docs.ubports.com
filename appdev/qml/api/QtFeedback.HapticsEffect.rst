QtFeedback.HapticsEffect
========================

.. raw:: html

   <p>

The HapticsEffect element represents a custom haptic feedback effect.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@HapticsEffect -->

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

import .

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

FeedbackEffect

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

actuator : Actuator

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

attackIntensity : double

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

attackTime : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availableActuators : list<Actuator>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fadeIntensity : double

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fadeTime : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

intensity : double

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

period : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$HapticsEffect-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This class closely corresponds to the C++ QFeedbackHapticsEffect class.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtFeedback 5.0
   HapticsEffect {
   id: rumbleEffect
   attackIntensity: 0.0
   attackTime: 250
   intensity: 1.0
   duration: 100
   fadeTime: 250
   fadeIntensity: 0.0
   }
   MouseArea {
   onClicked: {
   rumbleEffect.start();  // plays a rumble effect
   }</pre>

.. raw:: html

   <p>

See also Actuator and QFeedbackHapticsEffect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@HapticsEffect -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actuator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actuator-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

actuator : Actuator

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

The actuator that is used for playing this effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Actuator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actuator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attackIntensity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attackIntensity : double

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

The intensity of the attack (fade-in) part of the haptics effect, from
0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attackIntensity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attackTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attackTime : int

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

The duration of the attack (fade-in) part of the haptics effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attackTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableActuators-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availableActuators : list<Actuator>

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

This property holds a list of available actuators. This property is read
only.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Actuator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@availableActuators -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fadeIntensity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fadeIntensity : double

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

The intensity of the fade-out part of the haptics effect, from 0.0 to
1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fadeIntensity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fadeTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fadeTime : int

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

The duration of the fade-out part of the haptics effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fadeTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="intensity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

intensity : double

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

The intensity of the main part of the haptics effect, from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@intensity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="period-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

period : int

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

The period of the haptics effect. If the period is zero, the effect will
not repeat. If it is non-zero, the effect will repeat every period
milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@period -->
