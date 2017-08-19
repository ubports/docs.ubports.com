QtQml.Timer
===========

.. raw:: html

   <p>

Triggers a handler at a specified interval More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Timer -->

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

import QtQml 2.2

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

interval : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

repeat : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

triggeredOnStart : bool

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

triggered()

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

restart()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

start()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Timer-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Timer can be used to trigger an action either once, or repeatedly at a
given interval.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a Timer that shows the current date and time, and updates the
text every 500 milliseconds. It uses the JavaScript Date object to
access the current time.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="type"><a href="index.html">Timer</a></span> {
   <span class="name">interval</span>: <span class="number">500</span>; <span class="name">running</span>: <span class="number">true</span>; <span class="name">repeat</span>: <span class="number">true</span>
   <span class="name">onTriggered</span>: <span class="name">time</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">Date</span>().<span class="name">toString</span>()
   }
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">time</span> }
   }</pre>

.. raw:: html

   <p>

The Timer type is synchronized with the animation timer. Since the
animation timer is usually set to 60fps, the resolution of Timer will be
at best 16ms.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the Timer is running and one of its properties is changed, the
elapsed time will be reset. For example, if a Timer with interval of
1000ms has its repeat property changed 500ms after starting, the elapsed
time will be reset to 0, and the Timer will be triggered 1000ms later.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Demo - Clocks.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Timer -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$interval -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="interval-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

interval : int

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

Sets the interval between triggers, in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default interval is 1000 milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@interval -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="repeat-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

repeat : bool

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

If repeat is true the timer is triggered repeatedly at the specified
interval; otherwise, the timer will trigger once at the specified
interval and then stop (i.e. running will be set to false).

.. raw:: html

   </p>

.. raw:: html

   <p>

repeat defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also running.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@repeat -->

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

If set to true, starts the timer; otherwise stops the timer. For a
non-repeating timer, running is set to false after the timer has been
triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

running defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also repeat.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggeredOnStart-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

triggeredOnStart : bool

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

When a timer is started, the first trigger is usually after the
specified interval has elapsed. It is sometimes desirable to trigger
immediately when the timer is started; for example, to establish an
initial state.

.. raw:: html

   </p>

.. raw:: html

   <p>

If triggeredOnStart is true, the timer is triggered immediately when
started, and subsequently at the specified interval. Note that if repeat
is set to false, the timer is triggered twice; once on start, and again
at the interval.

.. raw:: html

   </p>

.. raw:: html

   <p>

triggeredOnStart defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also running.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggeredOnStart -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$triggered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

triggered()

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

This signal is emitted when the Timer times out.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onTriggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggered -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$restart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="restart-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

restart()

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

Restarts the timer

.. raw:: html

   </p>

.. raw:: html

   <p>

If the Timer is not running it will be started, otherwise it will be
stopped, reset to initial state and started. The running property will
be true following a call to restart().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@restart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

start()

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

Starts the timer

.. raw:: html

   </p>

.. raw:: html

   <p>

If the timer is already running, calling this method has no effect. The
running property will be true following a call to start().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stop()

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

Stops the timer

.. raw:: html

   </p>

.. raw:: html

   <p>

If the timer is not running, calling this method has no effect. The
running property will be false following a call to stop().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


