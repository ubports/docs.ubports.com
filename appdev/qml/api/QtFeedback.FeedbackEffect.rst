QtFeedback.FeedbackEffect
=========================

.. raw:: html

   <p>

The FeedbackEffect element is the base class for all feedback effects.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FeedbackEffect -->

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

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

FileEffect and HapticsEffect.

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : Feedback::ErrorType

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paused : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : FeedbackEffect::State

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FeedbackEffect-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

You can't create one of these elements directly, but several other
elements inherit the methods and properties of these elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are several predefined enumerations and constants provided in this
class:

.. raw:: html

   </p>

.. raw:: html

   <p>

1. Duration This enum describes the possible predefined duration types.
   Generally a specific value in milliseconds can be supplied instead of
   one of these values.

   .. raw:: html

      </p>

   .. raw:: html

      <ul>

   .. raw:: html

      <li>

   Feedback.Infinite - Infinite effect duration

   .. raw:: html

      </li>

   .. raw:: html

      </ul>

   .. raw:: html

      <p>

   2. State This enum describes the state of the effect. An effect will
      be in one of these states.

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      Feedback.Stopped - The effect is not running. This is the initial
      state.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Feedback.Paused - The effect is paused.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Feedback.Running - The effect is running.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Feedback.Loading - The effect is loading.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      3. ErrorType This enum describes the possible errors happening on
         the effect.

         .. raw:: html

            </p>

         .. raw:: html

            <ul>

         .. raw:: html

            <li>

         Feedback.UnknownError - An unknown error occurred.

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         Feedback.DeviceBusy - The feedback could not start because the
         device is busy, the device could be busy if a higher-priority
         client is using the haptics/actuator device.

         .. raw:: html

            </li>

         .. raw:: html

            </ul>

         .. raw:: html

            <p>

         See also FileEffect, ThemeEffect, HapticsEffect, and
         QFeedbackEffect.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@FeedbackEffect -->

         .. raw:: html

            <h2>

         Property Documentation

         .. raw:: html

            </h2>

         .. raw:: html

            <!-- $$$duration -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="duration-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         duration : int

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

         The duration of the effect, in milliseconds. This is 0 for
         effects of unknown duration, or Feedback.Infinite for effects
         that don't stop.

         .. raw:: html

            </p>

         .. raw:: html

            <p>

         See also Feedback.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@duration -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="error-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         error : Feedback::ErrorType

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

         This property holds the error status of the FeedbackEffect. The
         error is one of the following values:

         .. raw:: html

            </p>

         .. raw:: html

            <ul>

         .. raw:: html

            <li>

         Feedback.UnknownError - An unknown error occurred.

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         Feedback.DeviceBusy - The device resource is already being
         used.

         .. raw:: html

            </li>

         .. raw:: html

            </ul>

         .. raw:: html

            <p>

         See also Feedback and QFeedbackEffect::ErrorType.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@error -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="paused-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         paused : bool

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

         This property is true if this feedback effect is paused.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@paused -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="running-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         running : bool

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

         This property is true if this feedback effect is running.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@running -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="state-prop">

         .. raw:: html

            <td class="tblQmlPropNode">

         .. raw:: html

            <p>

         state : FeedbackEffect::State

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

         This is the current state of the effect. It is one of:

         .. raw:: html

            </p>

         .. raw:: html

            <ul>

         .. raw:: html

            <li>

         Feedback.Stopped - the effect is not playing.

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         Feedback.Loading - the effect is being loaded.

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         Feedback.Running - the effect is playing.

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         Feedback.Paused - the effect was being played, but is now
         paused.

         .. raw:: html

            </li>

         .. raw:: html

            </ul>

         .. raw:: html

            <p>

         See also Feedback.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@state -->
