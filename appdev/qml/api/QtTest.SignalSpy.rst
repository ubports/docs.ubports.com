QtTest.SignalSpy
================

.. raw:: html

   <p>

Enables introspection of signal emission More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SignalSpy -->

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

import QtTest 1.1

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

Qt 4.8

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

Item

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

signalArguments : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

signalName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : var

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

clear()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

wait(timeout)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SignalSpy-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, a SignalSpy is installed to watch the
"clicked" signal on a user-defined Button type. When the signal is
emitted, the count property on the spy will be increased.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Button {
   id: button
   SignalSpy {
   id: spy
   target: button
   signalName: <span class="string">&quot;clicked&quot;</span>
   }
   TestCase {
   name: <span class="string">&quot;ButtonClick&quot;</span>
   function test_click() {
   compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">0</span>)
   button<span class="operator">.</span>clicked();
   compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">1</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

The above style of test is suitable for signals that are emitted
synchronously. For asynchronous signals, the wait() method can be used
to block the test until the signal occurs (or a timeout expires).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also TestCase and Qt Quick Test Reference Documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SignalSpy -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] count : int

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

This property defines the number of times that signalName has been
emitted from target since the last call to clear().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also target, signalName, and clear().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="signalArguments-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] signalArguments : list

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

This property holds a list of emitted signal arguments. Each emission of
the signal will append one item to the list, containing the arguments of
the signal. When connecting to a new target or new signalName or calling
the clear() method, the signalArguments will be reset to empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also signalName and clear().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@signalArguments -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="signalName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

signalName : string

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

This property defines the name of the signal on target to listen for.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also target and count.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@signalName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : var

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

This property defines the target object that will be used to listen for
emissions of the signalName signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also signalName and count.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="valid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] valid : bool

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

This property defines the current signal connection status. It will be
true when the signalName of the target is connected successfully,
otherwise it will be false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also count, target, signalName, and clear().

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

   <!-- $$$clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clear-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clear()

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

Clears count to 0, resets valid to false and clears the signalArguments
to empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also count and wait().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wait-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

wait( timeout)

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

Waits for the signal signalName on target to be emitted, for up to
timeout milliseconds. The test case will fail if the signal is not
emitted.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">SignalSpy {
   id: spy
   target: button
   signalName: <span class="string">&quot;clicked&quot;</span>
   }
   function test_async_click() {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   <span class="comment">// do something that will cause clicked() to be emitted</span>
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   spy<span class="operator">.</span>wait()
   compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">1</span>)
   }</pre>

.. raw:: html

   <p>

There are two possible scenarios: the signal has already been emitted
when wait() is called, or the signal has not yet been emitted. The
wait() function handles the first scenario by immediately returning if
the signal has already occurred.

.. raw:: html

   </p>

.. raw:: html

   <p>

The clear() method can be used to discard information about signals that
have already occurred to synchronize wait() with future signal
emissions.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clear() and TestCase::tryCompare().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wait -->


