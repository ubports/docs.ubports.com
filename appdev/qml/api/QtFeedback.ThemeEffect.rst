QtFeedback.ThemeEffect
======================

.. raw:: html

   <p>

The ThemeEffect element represents a themed feedback effect. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ThemeEffect -->

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

effect : ThemeEffect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supported : bool

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

play(Effect)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ThemeEffect-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element is used for playing feedback effects that follow the system
theme. The actual feedback might be haptic, audio or some other method.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">//Example 1: using ThemeEffect declaring element
   import QtFeedback 5.0
   Rectangle {
   width: 180; height: 20
   radius:5
   color: &quot;lightgrey&quot;
   Text {
   anchors.centerIn: parent
   text: &quot;Play Theme: Press&quot;
   }
   ThemeEffect {
   id: myOtherThemeEffect
   effect: &quot;Press&quot;
   }
   MouseArea {
   anchors.fill: parent
   onClicked: {
   myOtherThemeEffect.play();
   }
   }
   }
   //Example 2: using ThemeEffect without declaring element
   import QtFeedback.ThemeEffect 5.0 as Effect
   Rectangle {
   width: 180; height: 20
   radius:5
   color: &quot;lightgrey&quot;
   Text {
   anchors.centerIn: parent
   text: &quot;Play Theme: Press&quot;
   }
   MouseArea {
   anchors.fill: parent
   onClicked: {
   Effect.effect = &quot;Press&quot;
   Effect.play();
   }
   }
   }
   //Example 3: using ThemeEffect without declaring element and calling overloaded play function
   import QtFeedback.ThemeEffect 5.0 as Effect
   Rectangle {
   width: 180; height: 20
   radius:5
   color: &quot;lightgrey&quot;
   Text {
   anchors.centerIn: parent
   text: &quot;Play Theme: Press&quot;
   }
   MouseArea {
   anchors.fill: parent
   onClicked: {
   Effect.play(Effect.Press)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ThemeEffect -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$effect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effect : ThemeEffect

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

This property holds the specific themed effect type to play. It is one
of:

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Undefined - Undefined feedback. No feedback is given.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Press - Feedback for when the screen is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Release - Feedback for touch release.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.PressWeak - A weak feedback for press.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.ReleaseWeak - A weak feedback for release.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.PressStrong - A strong feedback for press.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.ReleaseStrong - A strong feedback for release.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.DragStart - Feedback for when dragging starts.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.DragDropInZone - Feedback for when dragging ends and touch is
released inside a drop zone.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.DragDropOutOfZone - Feedback for when dragging ends and touch is
released outside a drop zone.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.DragCrossBoundary - Feedback for when crossing a boundary while
dragging.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Appear - Feedback for when an item is shown.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Disappear - Feedback for when an item item is closed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Effect.Move - Feedback for dragging on screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QFeedbackEffect::Effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supported-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supported : bool

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

This property is true if the system supports themed feedback effects.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supported -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(Effect)

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

Call this to play the themed effect passed as parameter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play()

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

Call this to play the themed effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->
