QtFeedback.Actuator
===================

.. raw:: html

   <p>

The Actuator element represents a feedback actuator. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Actuator -->

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

Instantiates:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

QFeedbackActuator

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

actuatorId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

valid : bool

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

bool isCapabilitySupported(enumeration capability)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Actuator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Actuator class maps directly to the QFeedbackActuator C++ class, and
can be used with HapticsEffect elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are several predefined enumerations and constants provided in this
object:

.. raw:: html

   </p>

.. raw:: html

   <p>

1. Capability

   .. raw:: html

      </p>

   .. raw:: html

      <ul>

   .. raw:: html

      <li>

   Envelope - Value specifying that the device can bound its intensity
   by an envelope.

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   Period - Value specifying that the device can play periodic effects.

   .. raw:: html

      </li>

   .. raw:: html

      </ul>

   .. raw:: html

      <p>

   2. State

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      Busy - The actuator is busy.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Ready - The actuator is ready to play an effect.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Unknown - The actuator is in an unknown state.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      See also HapticsEffect and QFeedbackActuator.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@Actuator -->

      .. raw:: html

         <h2>

      Property Documentation

      .. raw:: html

         </h2>

      .. raw:: html

         <!-- $$$actuatorId -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="actuatorId-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      actuatorId : int

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

      This property holds the id of the feedback actuator. This property
      is read only.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@actuatorId -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="enabled-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      enabled : bool

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

      This property is true if the feedback actuator is enabled.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@enabled -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="name-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      name : string

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

      This property holds the name of the feedback actuator. This
      property is read only.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@name -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="state-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      state : enumeration

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

      This property holds the state of the feedback actuator. This
      property is read only.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@state -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="valid-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      valid : bool

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

      This property is true if the actuator is valid. This property is
      read only.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@valid -->

      .. raw:: html

         <h2>

      Method Documentation

      .. raw:: html

         </h2>

      .. raw:: html

         <!-- $$$isCapabilitySupported -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="isCapabilitySupported-method">

      .. raw:: html

         <td class="tblQmlFuncNode">

      .. raw:: html

         <p>

      bool isCapabilitySupported(enumeration capability)

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

      Returns if the actuator supports the supplied capability,
      available capabilities are:

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      Envelope - Value specifying that the device can bound its
      intensity by an Envelope.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Period - Value specifying that the device can play periodic
      effects.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <!-- @@@isCapabilitySupported -->
