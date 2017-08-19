Ubuntu.Components.LiveTimer
===========================

.. raw:: html

   <p>

A live timing source providing peridioc updates. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@LiveTimer -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

frequency : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeTime : datetime

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

trigger()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$LiveTimer-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The LiveTimer is a source for periodic signals triggered on
second/minute/hour boundaries. The timer can also be set up to provide
signals with an increasing frequency the closer a given time is to
current time.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">LiveTimer</a></span> {
   <span class="name">frequency</span>: <span class="name">LiveTimer</span>.<span class="name">Second</span>
   <span class="name">onTrigger</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The time is now&quot;</span>, new <span class="name">Date</span>().<span class="name">toString</span>());
   }</pre>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">LiveTimer</a></span> {
   <span class="name">frequency</span>: <span class="name">LiveTimer</span>.<span class="name">Relative</span>
   <span class="name">relativeTime</span>: new <span class="name">Date</span>()
   }</pre>

.. raw:: html

   <!-- @@@LiveTimer -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$frequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frequency-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frequency : enumeration

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

This properties defines the frequency at which the LiveTimer signals
notifications.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

LiveTimer.Disabled - disable the LiveTimer trigger signal

.. raw:: html

   </li>

.. raw:: html

   <li>

LiveTimer.Second - emit the trigger signal on every change of second.

.. raw:: html

   </li>

.. raw:: html

   <li>

LiveTimer.Minute - emit the trigger signal on every change of minute.

.. raw:: html

   </li>

.. raw:: html

   <li>

LiveTimer.Hour - emit the trigger signal on every change of hour.

.. raw:: html

   </li>

.. raw:: html

   <li>

LiveTimer.Relative - emit the trigger signal periodically depending on
how close current time is to to relativeTime. If relativeTime is within
30 seconds of the current time, trigger every 30 seconds. Within an
hour, trigger every minute. Otherwise, trigger every hour until the
relative time is more than a week past current time, after which updates
are disabled.

.. raw:: html

   <p>

Note: Setting the frequency to LiveTimer.Relative will disable the timer
until a relativeTime is set.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeTime : datetime

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

This properties defines the value used for proximity evaluation when
using Relative mode.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This property has no impact unless the frequency is set to
LiveTimer.Relative

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeTime -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$trigger -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="trigger-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

trigger()

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

Signal called when the timer is triggered

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@trigger -->


