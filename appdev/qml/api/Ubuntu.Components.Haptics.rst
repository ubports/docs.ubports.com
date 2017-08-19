Ubuntu.Components.Haptics
=========================

.. raw:: html

   <p>

Singleton defining the haptics feedback used in components, where
execution of the feedback is controlled by the system settings. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Haptics -->

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

import Ubuntu.Components 1.3

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

effect : HapticsEffect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

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

void play(var customEffect)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Haptics-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Supports global feedback as well as custom feedback. Global feedback can
be configured through its properties, and play function will play the
default configuration, or a custom one if parameter is given.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of using Haptics:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
   <span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">Haptics</span>.<span class="name">play</span>()
   }
   }</pre>

.. raw:: html

   <p>

Custom effects can be played as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
   <span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">Haptics</span>.<span class="name">play</span>({duration: <span class="number">25</span>, attackIntensity: <span class="number">0.7</span>})
   }
   }</pre>

.. raw:: html

   <p>

Note: Though the effect property exposes start, stop and pause
functions, use those only if you want to have feedback independent from
what the system setting is.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Haptics -->

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

[read-only] effect : HapticsEffect

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

The property defines the settings of the haptics effect used by the
component. The default setting is a haptics effect with a duration of 10
milliseconds with an intensity of 1.0, having fading time of 50
millisecods and fading intensity 0.0, and attack time of 50 milliseconds
and with an intensity of 0.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] enabled : bool

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

The property specifies whether the haptics feedback is enabled or not by
the system.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

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

   <tr valign="top" id="play-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void play(var customEffect)

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

The function plays the feedback with the configuration specified in
effect if no parameter is given. Custom effect can be played by
specifying the effect properties in a JSON object in customEffect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The function will exit unconditionaly if playing the effects is blocked
by system settings.

.. raw:: html

   </p>

.. raw:: html

   <p>

The function will not stop any ongoing haptics effect played, if that
one was a default haptics effect. In case of custom effects, the
previous effect will be stopped, and settings will be restored before
the new haptics will be played. The custom settings properties (the ones
which are required to be different from the ones defined in the effect)
must be specified in the parameter in a JSON object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->


