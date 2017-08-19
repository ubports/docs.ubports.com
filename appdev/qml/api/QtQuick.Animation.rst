QtQuick.Animation
=================

.. raw:: html

   <p>

Is the base of all QML animations More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Animation -->

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

AnchorAnimation, ParallelAnimation, ParentAnimation, PathAnimation,
PauseAnimation, PropertyAction, PropertyAnimation, ScriptAction, and
SequentialAnimation.

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

alwaysRunToEnd : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loops : int

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

started()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stopped()

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

complete()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pause()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

restart()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

resume()

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

   <!-- $$$Animation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Animation type cannot be used directly in a QML file. It exists to
provide a set of common properties and methods, available across all the
other animation types that inherit from it. Attempting to use the
Animation type directly will result in an error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Animation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alwaysRunToEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alwaysRunToEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alwaysRunToEnd : bool

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

This property holds whether the animation should run to completion when
it is stopped.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this true the animation will complete its current iteration when it
is stopped - either by setting the running property to false, or by
calling the stop() method. The complete() method is not effected by this
value.

.. raw:: html

   </p>

.. raw:: html

   <p>

This behavior is most useful when the loops property is set, as the
animation will finish playing normally but not restart.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the alwaysRunToEnd property is not set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: alwaysRunToEnd has no effect on animations in a Transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alwaysRunToEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loops-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loops : int

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

This property holds the number of times the animation should play.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, loops is 1: the animation will play through once and then
stop.

.. raw:: html

   </p>

.. raw:: html

   <p>

If set to Animation.Infinite, the animation will continuously repeat
until it is explicitly stopped - either by setting the running property
to false, or by calling the stop() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, the rectangle will spin indefinitely.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   width: <span class="number">100</span>; height: <span class="number">100</span>; color: <span class="string">&quot;green&quot;</span>
   RotationAnimation on rotation {
   loops: Animation<span class="operator">.</span>Infinite
   from: <span class="number">0</span>
   to: <span class="number">360</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@loops -->

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

This property holds whether the animation is currently paused.

.. raw:: html

   </p>

.. raw:: html

   <p>

The paused property can be set to declaratively control whether or not
an animation is paused.

.. raw:: html

   </p>

.. raw:: html

   <p>

Animations can also be paused and resumed imperatively from JavaScript
using the pause() and resume() methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, animations are not paused.

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

This property holds whether the animation is currently running.

.. raw:: html

   </p>

.. raw:: html

   <p>

The running property can be set to declaratively control whether or not
an animation is running. The following example will animate a rectangle
whenever the MouseArea is pressed.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   width: <span class="number">100</span>; height: <span class="number">100</span>
   NumberAnimation on x {
   running: myMouse<span class="operator">.</span>pressed
   from: <span class="number">0</span>; to: <span class="number">100</span>
   }
   MouseArea { id: myMouse }
   }</pre>

.. raw:: html

   <p>

Likewise, the running property can be read to determine if the animation
is running. In the following example the Text item will indicate whether
or not the animation is running.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">NumberAnimation { id: myAnimation }
   Text { text: myAnimation<span class="operator">.</span>running <span class="operator">?</span> <span class="string">&quot;Animation is running&quot;</span> : <span class="string">&quot;Animation is not running&quot;</span> }</pre>

.. raw:: html

   <p>

Animations can also be started and stopped imperatively from JavaScript
using the start() and stop() methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, animations are not running. Though, when the animations are
assigned to properties, as property value sources using the on syntax,
they are set to running by default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$started -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="started-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

started()

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

This signal is emitted when the animation begins.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is only triggered for top-level, standalone animations. It will not
be triggered for animations in a Behavior or Transition, or animations
that are part of an animation group.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@started -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stopped-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stopped()

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

This signal is emitted when the animation ends.

.. raw:: html

   </p>

.. raw:: html

   <p>

The animation may have been stopped manually, or may have run to
completion.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is only triggered for top-level, standalone animations. It will not
be triggered for animations in a Behavior or Transition, or animations
that are part of an animation group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If alwaysRunToEnd is true, this signal will not be emitted until the
animation has completed its current iteration.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStopped.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stopped -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$complete -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="complete-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

complete()

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

Stops the animation, jumping to the final property values

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation is not running, calling this method has no effect. The
running property will be false following a call to complete().

.. raw:: html

   </p>

.. raw:: html

   <p>

Unlike stop(), complete() immediately fast-forwards the animation to its
end. In the following example,

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   NumberAnimation on x { from: <span class="number">0</span>; to: <span class="number">100</span>; duration: <span class="number">500</span> }
   }</pre>

.. raw:: html

   <p>

calling stop() at time 250ms will result in the x property having a
value of 50, while calling complete() will set the x property to 100,
exactly as though the animation had played the whole way through.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@complete -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pause-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pause()

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

Pauses the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation is already paused or not running, calling this method
has no effect. The paused property will be true following a call to
pause().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pause -->

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

Restarts the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a convenience method, and is equivalent to calling stop() and
then start().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@restart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resume-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

resume()

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

Resumes a paused animation

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation is not paused or not running, calling this method has
no effect. The paused property will be false following a call to
resume().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resume -->

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

Starts the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation is already running, calling this method has no effect.
The running property will be true following a call to start().

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

Stops the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

If the animation is not running, calling this method has no effect. Both
the running and paused properties will be false following a call to
stop().

.. raw:: html

   </p>

.. raw:: html

   <p>

Normally stop() stops the animation immediately, and the animation has
no further influence on property values. In this example animation

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   NumberAnimation on x { from: <span class="number">0</span>; to: <span class="number">100</span>; duration: <span class="number">500</span> }
   }</pre>

.. raw:: html

   <p>

was stopped at time 250ms, the x property will have a value of 50.

.. raw:: html

   </p>

.. raw:: html

   <p>

However, if the alwaysRunToEnd property is set, the animation will
continue running until it completes and then stop. The running property
will still become false immediately.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


