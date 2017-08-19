QtTest.TestCase
===============

.. raw:: html

   <p>

Represents a unit test case More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TestCase -->

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

completed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

optional : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

when : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

windowShown : bool

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

cleanup()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cleanupTestCase()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

compare(actual, expected, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expectFail(tag, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expectFailContinue(tag, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fail(msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

findChild(parent, objectName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fuzzyCompare(actual, expected, delta, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

grabImage(item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ignoreWarning(msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

init()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initTestCase()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keyClick(key, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keyPress(key, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keyRelease(key, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseClick(item, x, y, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseDoubleClick(item, x, y, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseDrag(item, x, y, dx, dy, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseMove(item, x, y, delay, buttons)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mousePress(item, x, y, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseRelease(item, x, y, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseWheel(item, x, y, xDelta, yDelta, buttons, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

skip(msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sleep(ms)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tryCompare(obj, prop, value, timeout, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verify(cond, msg)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

wait(ms)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waitForRendering(item, timeout)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

warn(msg)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TestCase-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <h2 id="introduction-to-qml-test-cases">

Introduction to QML test cases

.. raw:: html

   </h2>

.. raw:: html

   <p>

Test cases are written as JavaScript functions within a TestCase type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import <span class="type">QtTest</span> <span class="number">1.0</span>
   TestCase {
   name: <span class="string">&quot;MathTests&quot;</span>
   function test_math() {
   compare(<span class="number">2</span> <span class="operator">+</span> <span class="number">2</span><span class="operator">,</span> <span class="number">4</span><span class="operator">,</span> <span class="string">&quot;2 + 2 = 4&quot;</span>)
   }
   function test_fail() {
   compare(<span class="number">2</span> <span class="operator">+</span> <span class="number">2</span><span class="operator">,</span> <span class="number">5</span><span class="operator">,</span> <span class="string">&quot;2 + 2 = 5&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Functions whose names start with "test\_" are treated as test cases to
be executed. The name property is used to prefix the functions in the
output:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span> Start testing of MathTests <span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span>
   Config: Using <span class="type">QTest</span> library <span class="number">4.7.2</span><span class="operator">,</span> <span class="type">Qt</span> <span class="number">4.7.2</span>
   PASS   : MathTests<span class="operator">::</span><a href="#initTestCase-method">initTestCase</a>()
   FAIL<span class="operator">!</span>  : MathTests<span class="operator">::</span>test_fail() <span class="number">2</span> <span class="operator">+</span> <span class="number">2</span> <span class="operator">=</span> <span class="number">5</span>
   Actual (): <span class="number">4</span>
   Expected (): <span class="number">5</span>
   Loc: <span class="operator">[</span><span class="operator">/</span>home<span class="operator">/</span><span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">/</span>tst_math<span class="operator">.</span>qml(<span class="number">12</span>)<span class="operator">]</span>
   PASS   : MathTests<span class="operator">::</span>test_math()
   PASS   : MathTests<span class="operator">::</span><a href="#cleanupTestCase-method">cleanupTestCase</a>()
   Totals: <span class="number">3</span> passed<span class="operator">,</span> <span class="number">1</span> failed<span class="operator">,</span> <span class="number">0</span> skipped
   <span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span> Finished testing of MathTests <span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span></pre>

.. raw:: html

   <p>

Because of the way JavaScript properties work, the order in which the
test functions are found is unpredictable. To assist with
predictability, the test framework will sort the functions on ascending
order of name. This can help when there are two tests that must be run
in order.

.. raw:: html

   </p>

.. raw:: html

   <p>

Multiple TestCase types can be supplied. The test program will exit once
they have all completed. If a test case doesn't need to run (because a
precondition has failed), then optional can be set to true.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="data-driven-tests">

Data-driven tests

.. raw:: html

   </h2>

.. raw:: html

   <p>

Table data can be provided to a test using a function name that ends
with "\_data". Alternatively, the init\_data() function can be used to
provide default test data for all test functions in a TestCase type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import <span class="type">QtTest</span> <span class="number">1.1</span>
   TestCase {
   name: <span class="string">&quot;DataTests&quot;</span>
   function init_data() {
   <span class="keyword">return</span> <span class="operator">[</span>
   {tag:<span class="string">&quot;init_data_1&quot;</span><span class="operator">,</span> a:<span class="number">1</span><span class="operator">,</span> b:<span class="number">2</span><span class="operator">,</span> answer: <span class="number">3</span>}<span class="operator">,</span>
   {tag:<span class="string">&quot;init_data_2&quot;</span><span class="operator">,</span> a:<span class="number">2</span><span class="operator">,</span> b:<span class="number">4</span><span class="operator">,</span> answer: <span class="number">6</span>}
   <span class="operator">]</span>;
   }
   function test_table_data() {
   <span class="keyword">return</span> <span class="operator">[</span>
   {tag: <span class="string">&quot;2 + 2 = 4&quot;</span><span class="operator">,</span> a: <span class="number">2</span><span class="operator">,</span> b: <span class="number">2</span><span class="operator">,</span> answer: <span class="number">4</span> }<span class="operator">,</span>
   {tag: <span class="string">&quot;2 + 6 = 8&quot;</span><span class="operator">,</span> a: <span class="number">2</span><span class="operator">,</span> b: <span class="number">6</span><span class="operator">,</span> answer: <span class="number">8</span> }<span class="operator">,</span>
   <span class="operator">]</span>
   }
   function test_table(data) {
   <span class="comment">//data comes from test_table_data</span>
   compare(data<span class="operator">.</span>a <span class="operator">+</span> data<span class="operator">.</span>b<span class="operator">,</span> data<span class="operator">.</span>answer)
   }
   function test__default_table(data) {
   <span class="comment">//data comes from init_data</span>
   compare(data<span class="operator">.</span>a <span class="operator">+</span> data<span class="operator">.</span>b<span class="operator">,</span> data<span class="operator">.</span>answer)
   }
   }</pre>

.. raw:: html

   <p>

The test framework will iterate over all of the rows in the table and
pass each row to the test function. As shown, the columns can be
extracted for use in the test. The tag column is special - it is printed
by the test framework when a row fails, to help the reader identify
which case failed amongst a set of otherwise passing tests.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="benchmarks">

Benchmarks

.. raw:: html

   </h2>

.. raw:: html

   <p>

Functions whose names start with "benchmark\_" will be run multiple
times with the Qt benchmark framework, with an average timing value
reported for the runs. This is equivalent to using the QBENCHMARK macro
in the C++ version of QTestLib.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TestCase {
   id: top
   name: <span class="string">&quot;CreateBenchmark&quot;</span>
   function benchmark_create_component() {
   var component <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>createComponent(<span class="string">&quot;item.qml&quot;</span>)
   var obj <span class="operator">=</span> component<span class="operator">.</span>createObject(top)
   obj<span class="operator">.</span>destroy()
   component<span class="operator">.</span>destroy()
   }
   }
   RESULT : CreateBenchmark<span class="operator">::</span>benchmark_create_component:
   <span class="number">0.23</span> msecs per iteration (total: <span class="number">60</span><span class="operator">,</span> iterations: <span class="number">256</span>)
   PASS   : CreateBenchmark<span class="operator">::</span>benchmark_create_component()</pre>

.. raw:: html

   <p>

To get the effect of the QBENCHMARK\_ONCE macro, prefix the test
function name with "benchmark\_once\_".

.. raw:: html

   </p>

.. raw:: html

   <h2 id="simulating-keyboard-and-mouse-events">

Simulating keyboard and mouse events

.. raw:: html

   </h2>

.. raw:: html

   <p>

The keyPress(), keyRelease(), and keyClick() methods can be used to
simulate keyboard events within unit tests. The events are delivered to
the currently focused QML item. You can pass either a Qt.Key enum value
or a latin1 char (string of length one)

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   width: <span class="number">50</span>; height: <span class="number">50</span>
   focus: <span class="keyword">true</span>
   TestCase {
   name: <span class="string">&quot;KeyClick&quot;</span>
   when: windowShown
   function test_key_click() {
   keyClick(<span class="type">Qt</span><span class="operator">.</span>Key_Left)
   keyClick(<span class="string">&quot;a&quot;</span>)
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The mousePress(), mouseRelease(), mouseClick(), mouseDoubleClick(), and
mouseMove() methods can be used to simulate mouse events in a similar
fashion.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: keyboard and mouse events can only be delivered once the main
window has been shown. Attempts to deliver events before then will fail.
Use the when and windowShown properties to track when the main window
has been shown.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SignalSpy and Qt Quick Test Reference Documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TestCase -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$completed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="completed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

completed : bool

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

This property will be set to true once the test case has completed
execution. Test cases are only executed once. The initial value is
false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also running and when.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@completed -->

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

This property defines the name of the test case for result reporting.
The default is the empty string.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TestCase {
   name: <span class="string">&quot;ButtonTests&quot;</span>
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   }</pre>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="optional-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

optional : bool

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

Multiple TestCase types can be supplied in a test application. The
application will exit once they have all completed. If a test case does
not need to run (because a precondition has failed), then this property
can be set to true. The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TestCase {
   when: <span class="keyword">false</span>
   optional: <span class="keyword">true</span>
   function test_not_run() {
   verify(<span class="keyword">false</span>)
   }
   }</pre>

.. raw:: html

   <p>

See also when and completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@optional -->

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

This property will be set to true while the test case is running. The
initial value is false, and the value will become false again once the
test case completes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also completed and when.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="when-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

when : bool

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

This property should be set to true when the application wants the test
cases to run. The default value is true. In the following example, a
test is run when the user presses the mouse button:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   id: foo
   width: <span class="number">640</span>; height: <span class="number">480</span>
   color: <span class="string">&quot;cyan&quot;</span>
   MouseArea {
   id: area
   anchors<span class="operator">.</span>fill: parent
   }
   property bool bar: <span class="keyword">true</span>
   TestCase {
   name: <span class="string">&quot;ItemTests&quot;</span>
   when: area<span class="operator">.</span>pressed
   id: test1
   function test_bar() {
   verify(bar)
   }
   }
   }</pre>

.. raw:: html

   <p>

The test application will exit once all TestCase types have been
triggered and have run. The optional property can be used to exclude a
TestCase type.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also optional and completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@when -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="windowShown-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

windowShown : bool

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

This property will be set to true after the QML viewing window has been
displayed. Normally test cases run as soon as the test application is
loaded and before a window is displayed. If the test case involves
visual types and behaviors, then it may need to be delayed until after
the window is shown.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Button {
   id: button
   onClicked: text <span class="operator">=</span> <span class="string">&quot;Clicked&quot;</span>
   TestCase {
   name: <span class="string">&quot;ClickTest&quot;</span>
   when: windowShown
   function test_click() {
   button<span class="operator">.</span>clicked();
   compare(button<span class="operator">.</span>text<span class="operator">,</span> <span class="string">&quot;Clicked&quot;</span>);
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@windowShown -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cleanup -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cleanup-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cleanup()

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

This function is called after each test function that is executed in the
TestCase type. The default implementation does nothing. The application
can provide its own implementation to perform cleanup after each test
function.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also init() and cleanupTestCase().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cleanup -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cleanupTestCase-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cleanupTestCase()

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

This function is called after all other test functions in the TestCase
type have completed. The default implementation does nothing. The
application can provide its own implementation to perform test case
cleanup.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also initTestCase() and cleanup().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cleanupTestCase -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="compare-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

compare( actual, expected, msg)

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

Fails the current test case if actual is not the same as expected, and
displays the optional message. Similar to QCOMPARE(actual, expected) in
C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also tryCompare() and fuzzyCompare.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@compare -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expectFail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

expectFail( tag, msg)

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

In a data-driven test, marks the row associated with tag as expected to
fail. When the fail occurs, display the message, abort the test, and
mark the test as passing. Similar to QEXPECT\_FAIL(tag, message, Abort)
in C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the test is not data-driven, then tag must be set to the empty
string.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also expectFailContinue().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expectFail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expectFailContinue-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

expectFailContinue( tag, msg)

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

In a data-driven test, marks the row associated with tag as expected to
fail. When the fail occurs, display the message, and then continue the
test. Similar to QEXPECT\_FAIL(tag, message, Continue) in C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the test is not data-driven, then tag must be set to the empty
string.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also expectFail().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expectFailContinue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

fail( msg)

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

Fails the current test case, with the optional message. Similar to
QFAIL(message) in C++.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="findChild-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

findChild( parent, objectName)

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

Returns the first child of parent with objectName, or null if no such
item exists. Both visual and non-visual children are searched
recursively, with visual children being searched first.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><a href="#compare-method">compare</a>(findChild(item<span class="operator">,</span> <span class="string">&quot;childObject&quot;</span>)<span class="operator">,</span> expectedChildObject);</pre>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@findChild -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fuzzyCompare-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

fuzzyCompare( actual, expected, delta, msg)

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

Fails the current test case if the difference betwen actual and expected
is greater than delta, and displays the optional message. Similar to
qFuzzyCompare(actual, expected) in C++ but with a required delta value.

.. raw:: html

   </p>

.. raw:: html

   <p>

This function can also be used for color comparisons if both the actual
and expected values can be converted into color values. If any of the
differences for RGBA channel values are greater than delta, the test
fails.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also tryCompare() and compare().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fuzzyCompare -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="grabImage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

grabImage( item)

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

Returns a snapshot image object of the given item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned image object has the following methods:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

red(x, y) Returns the red channel value of the pixel at x, y position

.. raw:: html

   </li>

.. raw:: html

   <li>

green(x, y) Returns the green channel value of the pixel at x, y
position

.. raw:: html

   </li>

.. raw:: html

   <li>

blue(x, y) Returns the blue channel value of the pixel at x, y position

.. raw:: html

   </li>

.. raw:: html

   <li>

alpha(x, y) Returns the alpha channel value of the pixel at x, y
position

.. raw:: html

   </li>

.. raw:: html

   <li>

pixel(x, y) Returns the color value of the pixel at x, y position For
example:

.. raw:: html

   <pre class="cpp">var image <span class="operator">=</span> grabImage(rect);
   <a href="#compare-method">compare</a>(image<span class="operator">.</span>red(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>)<span class="operator">,</span> <span class="number">255</span>);
   <a href="#compare-method">compare</a>(image<span class="operator">.</span>pixel(<span class="number">20</span><span class="operator">,</span> <span class="number">20</span>)<span class="operator">,</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">255</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">255</span>));</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@grabImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ignoreWarning-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

ignoreWarning( msg)

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

Marks message as an ignored warning message. When it occurs, the warning
will not be printed and the test passes. If the message does not occur,
then the test will fail. Similar to QTest::ignoreMessage(QtWarningMsg,
message) in C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also warn().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ignoreWarning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="init-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

init()

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

This function is called before each test function that is executed in
the TestCase type. The default implementation does nothing. The
application can provide its own implementation to perform initialization
before each test function.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also cleanup() and initTestCase().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@init -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initTestCase-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

initTestCase()

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

This function is called before any other test functions in the TestCase
type. The default implementation does nothing. The application can
provide its own implementation to perform test case initialization.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also cleanupTestCase() and init().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initTestCase -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keyClick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

keyClick( key, modifiers, delay)

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

Simulates clicking of key with an optional modifier on the currently
focused item. If delay is larger than 0, the test will wait for delay
milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also keyPress() and keyRelease().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keyClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keyPress-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

keyPress( key, modifiers, delay)

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

Simulates pressing a key with an optional modifier on the currently
focused item. If delay is larger than 0, the test will wait for delay
milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: At some point you should release the key using keyRelease().

.. raw:: html

   </p>

.. raw:: html

   <p>

See also keyRelease() and keyClick().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keyPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keyRelease-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

keyRelease( key, modifiers, delay)

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

Simulates releasing a key with an optional modifier on the currently
focused item. If delay is larger than 0, the test will wait for delay
milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also keyPress() and keyClick().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keyRelease -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseClick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseClick( item, x, y, button, modifiers, delay)

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

Simulates clicking a mouse button with an optional modifier on an item.
The position of the click is defined by x and y. If delay is specified,
the test will wait for the specified amount of milliseconds before
pressing and before releasing the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseRelease(), mouseDoubleClick(), mouseMove(),
mouseDrag(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseDoubleClick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseDoubleClick( item, x, y, button, modifiers, delay)

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

Simulates double-clicking a mouse button with an optional modifier on an
item. The position of the click is defined by x and y. If delay is
specified, the test will wait for the specified amount of milliseconds
before pressing and before releasing the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseRelease(), mouseClick(), mouseMove(),
mouseDrag(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseDoubleClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseDrag-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseDrag( item, x, y, dx, dy, button, modifiers, delay)

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

Simulates dragging the mouse on an item with button pressed and an
optional modifier. The initial drag position is defined by x and y, and
drag distance is defined by dx and dy. If delay is specified, the test
will wait for the specified amount of milliseconds before releasing the
button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: this method does not imply a drop action, to make a drop, an
additional mouseRelease(item, x + dx, y + dy) is needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseClick(), mouseDoubleClick(), mouseMove(),
mouseRelease(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseDrag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseMove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseMove( item, x, y, delay, buttons)

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

Moves the mouse pointer to the position given by x and y within item. If
a delay (in milliseconds) is given, the test will wait before moving the
mouse pointer.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseRelease(), mouseClick(), mouseDoubleClick(),
mouseDrag(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseMove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mousePress-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mousePress( item, x, y, button, modifiers, delay)

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

Simulates pressing a mouse button with an optional modifier on an item.
The position is defined by x and y. If delay is specified, the test will
wait for the specified amount of milliseconds before the press.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mouseRelease(), mouseClick(), mouseDoubleClick(), mouseMove(),
mouseDrag(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mousePress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseRelease-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseRelease( item, x, y, button, modifiers, delay)

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

Simulates releasing a mouse button with an optional modifier on an item.
The position of the release is defined by x and y. If delay is
specified, the test will wait for the specified amount of milliseconds
before releasing the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseClick(), mouseDoubleClick(), mouseMove(),
mouseDrag(), and mouseWheel().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseRelease -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseWheel-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseWheel( item, x, y, xDelta, yDelta, buttons, modifiers, delay)

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

Simulates rotating the mouse wheel on an item with button pressed and an
optional modifier. The position of the wheel event is defined by x and
y. If delay is specified, the test will wait for the specified amount of
milliseconds before releasing the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position given by x and y is transformed from the co-ordinate system
of item into window co-ordinates and then delivered. If item is obscured
by another item, or a child of item occupies that position, then the
event will be delivered to the other item instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

The xDelta and yDelta contain the wheel rotation distance in eighths of
a degree. see QWheelEvent::angleDelta() for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mousePress(), mouseClick(), mouseDoubleClick(), mouseMove(),
mouseRelease(), mouseDrag(), and QWheelEvent::angleDelta().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseWheel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="skip-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

skip( msg)

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

Skips the current test case and prints the optional message. If this is
a data-driven test, then only the current row is skipped. Similar to
QSKIP(message) in C++.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@skip -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sleep-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

sleep( ms)

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

Sleeps for ms milliseconds without processing Qt events.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also wait() and waitForRendering().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sleep -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tryCompare-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

tryCompare( obj, prop, value, timeout, msg)

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

Fails the current test case if the specified property on obj is not the
same as expected, and displays the optional message. The test will be
retried multiple times until the timeout (in milliseconds) is reached.

.. raw:: html

   </p>

.. raw:: html

   <p>

This function is intended for testing applications where a property
changes value based on asynchronous events. Use compare() for testing
synchronous property changes.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">tryCompare(img<span class="operator">,</span> <span class="string">&quot;status&quot;</span><span class="operator">,</span> BorderImage<span class="operator">.</span>Ready)
   <a href="#compare-method">compare</a>(img<span class="operator">.</span>width<span class="operator">,</span> <span class="number">120</span>)
   <a href="#compare-method">compare</a>(img<span class="operator">.</span>height<span class="operator">,</span> <span class="number">120</span>)
   <a href="#compare-method">compare</a>(img<span class="operator">.</span>horizontalTileMode<span class="operator">,</span> BorderImage<span class="operator">.</span>Stretch)
   <a href="#compare-method">compare</a>(img<span class="operator">.</span>verticalTileMode<span class="operator">,</span> BorderImage<span class="operator">.</span>Stretch)</pre>

.. raw:: html

   <p>

SignalSpy::wait() provides an alternative method to wait for a signal to
be emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also compare() and SignalSpy::wait().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tryCompare -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verify-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

verify( cond, msg)

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

Fails the current test case if condition is false, and displays the
optional message. Similar to QVERIFY(condition) or QVERIFY2(condition,
message) in C++.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verify -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wait-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

wait( ms)

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

Waits for ms milliseconds while processing Qt events.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also sleep() and waitForRendering().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wait -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waitForRendering-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

waitForRendering( item, timeout)

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

Waits for timeout milliseconds or until the item is rendered by the
renderer. Returns true if item is rendered in timeout milliseconds,
otherwise returns false. The default timeout value is 5000.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also sleep() and wait().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waitForRendering -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="warn-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

warn( msg)

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

Prints message as a warning message. Similar to QWARN(message) in C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ignoreWarning().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@warn -->


