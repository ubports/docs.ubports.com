Represents a unit test case

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtTest 1.1                    |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 4.8                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`completed </sdk/apps/qml/QtTest/TestCase#completed-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtTest/TestCase#name-prop>`__**** : string
-  ****`optional </sdk/apps/qml/QtTest/TestCase#optional-prop>`__**** :
   bool
-  ****`running </sdk/apps/qml/QtTest/TestCase#running-prop>`__**** :
   bool
-  ****`when </sdk/apps/qml/QtTest/TestCase#when-prop>`__**** : bool
-  ****`windowShown </sdk/apps/qml/QtTest/TestCase#windowShown-prop>`__****
   : bool

Methods
-------

-  ****`cleanup </sdk/apps/qml/QtTest/TestCase#cleanup-method>`__****\ ()
-  ****`cleanupTestCase </sdk/apps/qml/QtTest/TestCase#cleanupTestCase-method>`__****\ ()
-  ****`compare </sdk/apps/qml/QtTest/TestCase#compare-method>`__****\ (*actual*,
   *expected*, *msg*)
-  ****`expectFail </sdk/apps/qml/QtTest/TestCase#expectFail-method>`__****\ (*tag*,
   *msg*)
-  ****`expectFailContinue </sdk/apps/qml/QtTest/TestCase#expectFailContinue-method>`__****\ (*tag*,
   *msg*)
-  ****`fail </sdk/apps/qml/QtTest/TestCase#fail-method>`__****\ (*msg*)
-  ****`findChild </sdk/apps/qml/QtTest/TestCase#findChild-method>`__****\ (*parent*,
   *objectName*)
-  ****`fuzzyCompare </sdk/apps/qml/QtTest/TestCase#fuzzyCompare-method>`__****\ (*actual*,
   *expected*, *delta*, *msg*)
-  ****`grabImage </sdk/apps/qml/QtTest/TestCase#grabImage-method>`__****\ (*item*)
-  ****`ignoreWarning </sdk/apps/qml/QtTest/TestCase#ignoreWarning-method>`__****\ (*msg*)
-  ****`init </sdk/apps/qml/QtTest/TestCase#init-method>`__****\ ()
-  ****`initTestCase </sdk/apps/qml/QtTest/TestCase#initTestCase-method>`__****\ ()
-  ****`keyClick </sdk/apps/qml/QtTest/TestCase#keyClick-method>`__****\ (*key*,
   *modifiers*, *delay*)
-  ****`keyPress </sdk/apps/qml/QtTest/TestCase#keyPress-method>`__****\ (*key*,
   *modifiers*, *delay*)
-  ****`keyRelease </sdk/apps/qml/QtTest/TestCase#keyRelease-method>`__****\ (*key*,
   *modifiers*, *delay*)
-  ****`mouseClick </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__****\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  ****`mouseDoubleClick </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__****\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  ****`mouseDrag </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__****\ (*item*,
   *x*, *y*, *dx*, *dy*, *button*, *modifiers*, *delay*)
-  ****`mouseMove </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__****\ (*item*,
   *x*, *y*, *delay*, *buttons*)
-  ****`mousePress </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__****\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  ****`mouseRelease </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__****\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  ****`mouseWheel </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__****\ (*item*,
   *x*, *y*, *xDelta*, *yDelta*, *buttons*, *modifiers*, *delay*)
-  ****`skip </sdk/apps/qml/QtTest/TestCase#skip-method>`__****\ (*msg*)
-  ****`sleep </sdk/apps/qml/QtTest/TestCase#sleep-method>`__****\ (*ms*)
-  ****`tryCompare </sdk/apps/qml/QtTest/TestCase#tryCompare-method>`__****\ (*obj*,
   *prop*, *value*, *timeout*, *msg*)
-  ****`verify </sdk/apps/qml/QtTest/TestCase#verify-method>`__****\ (*cond*,
   *msg*)
-  ****`wait </sdk/apps/qml/QtTest/TestCase#wait-method>`__****\ (*ms*)
-  ****`waitForRendering </sdk/apps/qml/QtTest/TestCase#waitForRendering-method>`__****\ (*item*,
   *timeout*)
-  ****`warn </sdk/apps/qml/QtTest/TestCase#warn-method>`__****\ (*msg*)

Detailed Description
--------------------

Introduction to QML test cases
------------------------------

Test cases are written as JavaScript functions within a
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type:

.. code:: cpp

    import QtQuick 2.0
    import QtTest 1.0
    TestCase {
        name: "MathTests"
        function test_math() {
            compare(2 + 2, 4, "2 + 2 = 4")
        }
        function test_fail() {
            compare(2 + 2, 5, "2 + 2 = 5")
        }
    }

Functions whose names start with "test\_" are treated as test cases to
be executed. The `name </sdk/apps/qml/QtTest/TestCase#name-prop>`__
property is used to prefix the functions in the output:

.. code:: cpp

    ********* Start testing of MathTests *********
    Config: Using QTest library 4.7.2, Qt 4.7.2
    PASS   : MathTests::initTestCase()
    FAIL!  : MathTests::test_fail() 2 + 2 = 5
       Actual (): 4
       Expected (): 5
       Loc: [/home/.../tst_math.qml(12)]
    PASS   : MathTests::test_math()
    PASS   : MathTests::cleanupTestCase()
    Totals: 3 passed, 1 failed, 0 skipped
    ********* Finished testing of MathTests *********

Because of the way JavaScript properties work, the order in which the
test functions are found is unpredictable. To assist with
predictability, the test framework will sort the functions on ascending
order of name. This can help when there are two tests that must be run
in order.

Multiple `TestCase </sdk/apps/qml/QtTest/TestCase/>`__ types can be
supplied. The test program will exit once they have all completed. If a
test case doesn't need to run (because a precondition has failed), then
`optional </sdk/apps/qml/QtTest/TestCase#optional-prop>`__ can be set to
true.

Data-driven tests
-----------------

Table data can be provided to a test using a function name that ends
with "\_data". Alternatively, the ``init_data()`` function can be used
to provide default test data for all test functions in a
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type:

.. code:: cpp

    import QtQuick 2.0
    import QtTest 1.1
    TestCase {
        name: "DataTests"
        function init_data() {
          return [
               {tag:"init_data_1", a:1, b:2, answer: 3},
               {tag:"init_data_2", a:2, b:4, answer: 6}
          ];
        }
        function test_table_data() {
            return [
                {tag: "2 + 2 = 4", a: 2, b: 2, answer: 4 },
                {tag: "2 + 6 = 8", a: 2, b: 6, answer: 8 },
            ]
        }
        function test_table(data) {
            //data comes from test_table_data
            compare(data.a + data.b, data.answer)
        }
        function test__default_table(data) {
            //data comes from init_data
            compare(data.a + data.b, data.answer)
        }
    }

The test framework will iterate over all of the rows in the table and
pass each row to the test function. As shown, the columns can be
extracted for use in the test. The ``tag`` column is special - it is
printed by the test framework when a row fails, to help the reader
identify which case failed amongst a set of otherwise passing tests.

Benchmarks
----------

Functions whose names start with "benchmark\_" will be run multiple
times with the Qt benchmark framework, with an average timing value
reported for the runs. This is equivalent to using the ``QBENCHMARK``
macro in the C++ version of QTestLib.

.. code:: cpp

    TestCase {
        id: top
        name: "CreateBenchmark"
        function benchmark_create_component() {
            var component = Qt.createComponent("item.qml")
            var obj = component.createObject(top)
            obj.destroy()
            component.destroy()
        }
    }
    RESULT : CreateBenchmark::benchmark_create_component:
         0.23 msecs per iteration (total: 60, iterations: 256)
    PASS   : CreateBenchmark::benchmark_create_component()

To get the effect of the ``QBENCHMARK_ONCE`` macro, prefix the test
function name with "benchmark\_once\_".

Simulating keyboard and mouse events
------------------------------------

The `keyPress() </sdk/apps/qml/QtTest/TestCase#keyPress-method>`__,
`keyRelease() </sdk/apps/qml/QtTest/TestCase#keyRelease-method>`__, and
`keyClick() </sdk/apps/qml/QtTest/TestCase#keyClick-method>`__ methods
can be used to simulate keyboard events within unit tests. The events
are delivered to the currently focused QML item. You can pass either a
Qt.Key enum value or a latin1 char (string of length one)

.. code:: cpp

    Rectangle {
        width: 50; height: 50
        focus: true
        TestCase {
            name: "KeyClick"
            when: windowShown
            function test_key_click() {
                keyClick(Qt.Key_Left)
                keyClick("a")
                ...
            }
        }
    }

The `mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
and `mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__
methods can be used to simulate mouse events in a similar fashion.

**Note:** keyboard and mouse events can only be delivered once the main
window has been shown. Attempts to deliver events before then will fail.
Use the `when </sdk/apps/qml/QtTest/TestCase#when-prop>`__ and
`windowShown </sdk/apps/qml/QtTest/TestCase#windowShown-prop>`__
properties to track when the main window has been shown.

**See also** `SignalSpy </sdk/apps/qml/QtTest/SignalSpy/>`__ and Qt
Quick Test Reference Documentation.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ completed : bool                                                |
+--------------------------------------------------------------------------+

This property will be set to true once the test case has completed
execution. Test cases are only executed once. The initial value is
false.

**See also** `running </sdk/apps/qml/QtTest/TestCase#running-prop>`__
and `when </sdk/apps/qml/QtTest/TestCase#when-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property defines the name of the test case for result reporting.
The default is the empty string.

.. code:: cpp

    TestCase {
        name: "ButtonTests"
        ...
    }

| 

+--------------------------------------------------------------------------+
|        \ optional : bool                                                 |
+--------------------------------------------------------------------------+

Multiple `TestCase </sdk/apps/qml/QtTest/TestCase/>`__ types can be
supplied in a test application. The application will exit once they have
all completed. If a test case does not need to run (because a
precondition has failed), then this property can be set to true. The
default value is false.

.. code:: cpp

    TestCase {
        when: false
        optional: true
        function test_not_run() {
            verify(false)
        }
    }

**See also** `when </sdk/apps/qml/QtTest/TestCase#when-prop>`__ and
`completed </sdk/apps/qml/QtTest/TestCase#completed-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

This property will be set to true while the test case is running. The
initial value is false, and the value will become false again once the
test case completes.

**See also**
`completed </sdk/apps/qml/QtTest/TestCase#completed-prop>`__ and
`when </sdk/apps/qml/QtTest/TestCase#when-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ when : bool                                                     |
+--------------------------------------------------------------------------+

This property should be set to true when the application wants the test
cases to run. The default value is true. In the following example, a
test is run when the user presses the mouse button:

.. code:: cpp

    Rectangle {
        id: foo
        width: 640; height: 480
        color: "cyan"
        MouseArea {
            id: area
            anchors.fill: parent
        }
        property bool bar: true
        TestCase {
            name: "ItemTests"
            when: area.pressed
            id: test1
            function test_bar() {
                verify(bar)
            }
        }
    }

The test application will exit once all
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ types have been triggered
and have run. The
`optional </sdk/apps/qml/QtTest/TestCase#optional-prop>`__ property can
be used to exclude a `TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type.

**See also** `optional </sdk/apps/qml/QtTest/TestCase#optional-prop>`__
and `completed </sdk/apps/qml/QtTest/TestCase#completed-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ windowShown : bool                                              |
+--------------------------------------------------------------------------+

This property will be set to true after the QML viewing window has been
displayed. Normally test cases run as soon as the test application is
loaded and before a window is displayed. If the test case involves
visual types and behaviors, then it may need to be delayed until after
the window is shown.

.. code:: cpp

    Button {
        id: button
        onClicked: text = "Clicked"
        TestCase {
            name: "ClickTest"
            when: windowShown
            function test_click() {
                button.clicked();
                compare(button.text, "Clicked");
            }
        }
    }

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cleanup()                                                       |
+--------------------------------------------------------------------------+

This function is called after each test function that is executed in the
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type. The default
implementation does nothing. The application can provide its own
implementation to perform cleanup after each test function.

**See also** `init() </sdk/apps/qml/QtTest/TestCase#init-method>`__ and
`cleanupTestCase() </sdk/apps/qml/QtTest/TestCase#cleanupTestCase-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ cleanupTestCase()                                               |
+--------------------------------------------------------------------------+

This function is called after all other test functions in the
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type have completed. The
default implementation does nothing. The application can provide its own
implementation to perform test case cleanup.

**See also**
`initTestCase() </sdk/apps/qml/QtTest/TestCase#initTestCase-method>`__
and `cleanup() </sdk/apps/qml/QtTest/TestCase#cleanup-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ compare( *actual*, *expected*, *msg*)                           |
+--------------------------------------------------------------------------+

Fails the current test case if *actual* is not the same as *expected*,
and displays the optional *message*. Similar to
``QCOMPARE(actual, expected)`` in C++.

**See also**
`tryCompare() </sdk/apps/qml/QtTest/TestCase#tryCompare-method>`__ and
`fuzzyCompare </sdk/apps/qml/QtTest/TestCase#fuzzyCompare-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ expectFail( *tag*, *msg*)                                       |
+--------------------------------------------------------------------------+

In a data-driven test, marks the row associated with *tag* as expected
to fail. When the fail occurs, display the *message*, abort the test,
and mark the test as passing. Similar to
``QEXPECT_FAIL(tag, message, Abort)`` in C++.

If the test is not data-driven, then *tag* must be set to the empty
string.

**See also**
`expectFailContinue() </sdk/apps/qml/QtTest/TestCase#expectFailContinue-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ expectFailContinue( *tag*, *msg*)                               |
+--------------------------------------------------------------------------+

In a data-driven test, marks the row associated with *tag* as expected
to fail. When the fail occurs, display the *message*, and then continue
the test. Similar to ``QEXPECT_FAIL(tag, message, Continue)`` in C++.

If the test is not data-driven, then *tag* must be set to the empty
string.

**See also**
`expectFail() </sdk/apps/qml/QtTest/TestCase#expectFail-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ fail( *msg*)                                                    |
+--------------------------------------------------------------------------+

Fails the current test case, with the optional *message*. Similar to
``QFAIL(message)`` in C++.

| 

+--------------------------------------------------------------------------+
|        \ findChild( *parent*, *objectName*)                              |
+--------------------------------------------------------------------------+

Returns the first child of *parent* with *objectName*, or ``null`` if no
such item exists. Both visual and non-visual children are searched
recursively, with visual children being searched first.

.. code:: cpp

    compare(findChild(item, "childObject"), expectedChildObject);

This QML method was introduced in Qt 5.4.

| 

+--------------------------------------------------------------------------+
|        \ fuzzyCompare( *actual*, *expected*, *delta*, *msg*)             |
+--------------------------------------------------------------------------+

Fails the current test case if the difference betwen *actual* and
*expected* is greater than *delta*, and displays the optional *message*.
Similar to ``qFuzzyCompare(actual, expected)`` in C++ but with a
required *delta* value.

This function can also be used for color comparisons if both the
*actual* and *expected* values can be converted into color values. If
any of the differences for RGBA channel values are greater than *delta*,
the test fails.

**See also**
`tryCompare() </sdk/apps/qml/QtTest/TestCase#tryCompare-method>`__ and
`compare() </sdk/apps/qml/QtTest/TestCase#compare-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ grabImage( *item*)                                              |
+--------------------------------------------------------------------------+

Returns a snapshot image object of the given *item*.

The returned image object has the following methods:

-  red(x, y) Returns the red channel value of the pixel at *x*, *y*
   position
-  green(x, y) Returns the green channel value of the pixel at *x*, *y*
   position
-  blue(x, y) Returns the blue channel value of the pixel at *x*, *y*
   position
-  alpha(x, y) Returns the alpha channel value of the pixel at *x*, *y*
   position
-  pixel(x, y) Returns the color value of the pixel at *x*, *y* position
   For example:

   .. code:: cpp

       var image = grabImage(rect);
       compare(image.red(10, 10), 255);
       compare(image.pixel(20, 20), Qt.rgba(255, 0, 0, 255));

| 

+--------------------------------------------------------------------------+
|        \ ignoreWarning( *msg*)                                           |
+--------------------------------------------------------------------------+

Marks *message* as an ignored warning message. When it occurs, the
warning will not be printed and the test passes. If the message does not
occur, then the test will fail. Similar to
``QTest::ignoreMessage(QtWarningMsg, message)`` in C++.

**See also** `warn() </sdk/apps/qml/QtTest/TestCase#warn-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ init()                                                          |
+--------------------------------------------------------------------------+

This function is called before each test function that is executed in
the `TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type. The default
implementation does nothing. The application can provide its own
implementation to perform initialization before each test function.

**See also**
`cleanup() </sdk/apps/qml/QtTest/TestCase#cleanup-method>`__ and
`initTestCase() </sdk/apps/qml/QtTest/TestCase#initTestCase-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ initTestCase()                                                  |
+--------------------------------------------------------------------------+

This function is called before any other test functions in the
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ type. The default
implementation does nothing. The application can provide its own
implementation to perform test case initialization.

**See also**
`cleanupTestCase() </sdk/apps/qml/QtTest/TestCase#cleanupTestCase-method>`__
and `init() </sdk/apps/qml/QtTest/TestCase#init-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ keyClick( *key*, *modifiers*, *delay*)                          |
+--------------------------------------------------------------------------+

Simulates clicking of *key* with an optional *modifier* on the currently
focused item. If *delay* is larger than 0, the test will wait for
*delay* milliseconds.

**See also**
`keyPress() </sdk/apps/qml/QtTest/TestCase#keyPress-method>`__ and
`keyRelease() </sdk/apps/qml/QtTest/TestCase#keyRelease-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ keyPress( *key*, *modifiers*, *delay*)                          |
+--------------------------------------------------------------------------+

Simulates pressing a *key* with an optional *modifier* on the currently
focused item. If *delay* is larger than 0, the test will wait for
*delay* milliseconds.

**Note:** At some point you should release the key using
`keyRelease() </sdk/apps/qml/QtTest/TestCase#keyRelease-method>`__.

**See also**
`keyRelease() </sdk/apps/qml/QtTest/TestCase#keyRelease-method>`__ and
`keyClick() </sdk/apps/qml/QtTest/TestCase#keyClick-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ keyRelease( *key*, *modifiers*, *delay*)                        |
+--------------------------------------------------------------------------+

Simulates releasing a *key* with an optional *modifier* on the currently
focused item. If *delay* is larger than 0, the test will wait for
*delay* milliseconds.

**See also**
`keyPress() </sdk/apps/qml/QtTest/TestCase#keyPress-method>`__ and
`keyClick() </sdk/apps/qml/QtTest/TestCase#keyClick-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseClick( *item*, *x*, *y*, *button*, *modifiers*, *delay*)   |
+--------------------------------------------------------------------------+

Simulates clicking a mouse *button* with an optional *modifier* on an
*item*. The position of the click is defined by *x* and *y*. If *delay*
is specified, the test will wait for the specified amount of
milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
`mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseDoubleClick( *item*, *x*, *y*, *button*, *modifiers*,      |
| *delay*)                                                                 |
+--------------------------------------------------------------------------+

Simulates double-clicking a mouse *button* with an optional *modifier*
on an *item*. The position of the click is defined by *x* and *y*. If
*delay* is specified, the test will wait for the specified amount of
milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
`mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseDrag( *item*, *x*, *y*, *dx*, *dy*, *button*, *modifiers*, |
| *delay*)                                                                 |
+--------------------------------------------------------------------------+

Simulates dragging the mouse on an *item* with *button* pressed and an
optional *modifier*. The initial drag position is defined by *x* and
*y*, and drag distance is defined by *dx* and *dy*. If *delay* is
specified, the test will wait for the specified amount of milliseconds
before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

Note: this method does not imply a drop action, to make a drop, an
additional
`mouseRelease </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__\ (item,
x + dx, y + dy) is needed.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
and `mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseMove( *item*, *x*, *y*, *delay*, *buttons*)                |
+--------------------------------------------------------------------------+

Moves the mouse pointer to the position given by *x* and *y* within
*item*. If a *delay* (in milliseconds) is given, the test will wait
before moving the mouse pointer.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
`mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mousePress( *item*, *x*, *y*, *button*, *modifiers*, *delay*)   |
+--------------------------------------------------------------------------+

Simulates pressing a mouse *button* with an optional *modifier* on an
*item*. The position is defined by *x* and *y*. If *delay* is specified,
the test will wait for the specified amount of milliseconds before the
press.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

**See also**
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
`mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseRelease( *item*, *x*, *y*, *button*, *modifiers*, *delay*) |
+--------------------------------------------------------------------------+

Simulates releasing a mouse *button* with an optional *modifier* on an
*item*. The position of the release is defined by *x* and *y*. If
*delay* is specified, the test will wait for the specified amount of
milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
`mouseWheel() </sdk/apps/qml/QtTest/TestCase#mouseWheel-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseWheel( *item*, *x*, *y*, *xDelta*, *yDelta*, *buttons*,    |
| *modifiers*, *delay*)                                                    |
+--------------------------------------------------------------------------+

Simulates rotating the mouse wheel on an *item* with *button* pressed
and an optional *modifier*. The position of the wheel event is defined
by *x* and *y*. If *delay* is specified, the test will wait for the
specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

The *xDelta* and *yDelta* contain the wheel rotation distance in eighths
of a degree. see QWheelEvent::angleDelta() for more details.

**See also**
`mousePress() </sdk/apps/qml/QtTest/TestCase#mousePress-method>`__,
`mouseClick() </sdk/apps/qml/QtTest/TestCase#mouseClick-method>`__,
`mouseDoubleClick() </sdk/apps/qml/QtTest/TestCase#mouseDoubleClick-method>`__,
`mouseMove() </sdk/apps/qml/QtTest/TestCase#mouseMove-method>`__,
`mouseRelease() </sdk/apps/qml/QtTest/TestCase#mouseRelease-method>`__,
`mouseDrag() </sdk/apps/qml/QtTest/TestCase#mouseDrag-method>`__, and
QWheelEvent::angleDelta().

| 

+--------------------------------------------------------------------------+
|        \ skip( *msg*)                                                    |
+--------------------------------------------------------------------------+

Skips the current test case and prints the optional *message*. If this
is a data-driven test, then only the current row is skipped. Similar to
``QSKIP(message)`` in C++.

| 

+--------------------------------------------------------------------------+
|        \ sleep( *ms*)                                                    |
+--------------------------------------------------------------------------+

Sleeps for *ms* milliseconds without processing Qt events.

**See also** `wait() </sdk/apps/qml/QtTest/TestCase#wait-method>`__ and
`waitForRendering() </sdk/apps/qml/QtTest/TestCase#waitForRendering-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ tryCompare( *obj*, *prop*, *value*, *timeout*, *msg*)           |
+--------------------------------------------------------------------------+

Fails the current test case if the specified *property* on *obj* is not
the same as *expected*, and displays the optional *message*. The test
will be retried multiple times until the *timeout* (in milliseconds) is
reached.

This function is intended for testing applications where a property
changes value based on asynchronous events. Use
`compare() </sdk/apps/qml/QtTest/TestCase#compare-method>`__ for testing
synchronous property changes.

.. code:: cpp

    tryCompare(img, "status", BorderImage.Ready)
    compare(img.width, 120)
    compare(img.height, 120)
    compare(img.horizontalTileMode, BorderImage.Stretch)
    compare(img.verticalTileMode, BorderImage.Stretch)

`SignalSpy::wait() </sdk/apps/qml/QtTest/SignalSpy#wait-method>`__
provides an alternative method to wait for a signal to be emitted.

**See also**
`compare() </sdk/apps/qml/QtTest/TestCase#compare-method>`__ and
`SignalSpy::wait() </sdk/apps/qml/QtTest/SignalSpy#wait-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ verify( *cond*, *msg*)                                          |
+--------------------------------------------------------------------------+

Fails the current test case if *condition* is false, and displays the
optional *message*. Similar to ``QVERIFY(condition)`` or
``QVERIFY2(condition, message)`` in C++.

| 

+--------------------------------------------------------------------------+
|        \ wait( *ms*)                                                     |
+--------------------------------------------------------------------------+

Waits for *ms* milliseconds while processing Qt events.

**See also** `sleep() </sdk/apps/qml/QtTest/TestCase#sleep-method>`__
and
`waitForRendering() </sdk/apps/qml/QtTest/TestCase#waitForRendering-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ waitForRendering( *item*, *timeout*)                            |
+--------------------------------------------------------------------------+

Waits for *timeout* milliseconds or until the *item* is rendered by the
renderer. Returns true if ``item`` is rendered in *timeout*
milliseconds, otherwise returns false. The default *timeout* value is
5000.

**See also** `sleep() </sdk/apps/qml/QtTest/TestCase#sleep-method>`__
and `wait() </sdk/apps/qml/QtTest/TestCase#wait-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ warn( *msg*)                                                    |
+--------------------------------------------------------------------------+

Prints *message* as a warning message. Similar to ``QWARN(message)`` in
C++.

**See also**
`ignoreWarning() </sdk/apps/qml/QtTest/TestCase#ignoreWarning-method>`__.

| 
