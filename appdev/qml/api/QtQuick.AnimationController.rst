QtQuick.AnimationController
===========================

.. raw:: html

   <p>

Enables manual control of animations More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimationController -->

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

import QtQuick 2.4

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

animation : Animation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progress : real

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

completeToBeginning()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

completeToEnd()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reload()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AnimationController-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Normally animations are driven by an internal timer, but the
AnimationController allows the given animation to be driven by a
progress value explicitly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimationController -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$animation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] animation : Animation

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

This property holds the animation to be controlled by the
AnimationController.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note:An animation controlled by AnimationController will always have its
running and paused properties set to true. It can not be manually
started or stopped (much like an animation in a Behavior can not be
manually started or stopped).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progress : real

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

This property holds the animation progress value.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid progress value is 0.0 to 1.0, setting values less than 0 will
be converted to 0, setting values great than 1 will be converted to 1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$completeToBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="completeToBeginning-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

completeToBeginning()

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

Finishes running the controlled animation in a backwards direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

After calling this method, the animation runs normally from the current
progress point in a backwards direction to the beginning state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The animation controller's progress value will be automatically updated
while the animation is running.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also completeToEnd() and progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@completeToBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="completeToEnd-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

completeToEnd()

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

Finishes running the controlled animation in a forwards direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

After calling this method, the animation runs normally from the current
progress point in a forwards direction to the end state.

.. raw:: html

   </p>

.. raw:: html

   <p>

The animation controller's progress value will be automatically updated
while the animation is running.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also completeToBeginning() and progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@completeToEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reload-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

reload()

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

Reloads the animation properties

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation properties changed, calling this method to reload the
animation definations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reload -->


