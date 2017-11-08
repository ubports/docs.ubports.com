.. _sdk_qttest_testcase:

QtTest TestCase
===============

Represents a unit test case

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtTest 1.1                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 4.8                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`completed <sdk_qttest_testcase_completed>` : bool
-  :ref:`name <sdk_qttest_testcase_name>` : string
-  :ref:`optional <sdk_qttest_testcase_optional>` : bool
-  :ref:`running <sdk_qttest_testcase_running>` : bool
-  :ref:`when <sdk_qttest_testcase_when>` : bool
-  :ref:`windowShown <sdk_qttest_testcase_windowShown>` : bool

Methods
-------

-  :ref:`cleanup <sdk_qttest_testcase_cleanup>`\ ()
-  :ref:`cleanupTestCase <sdk_qttest_testcase_cleanupTestCase>`\ ()
-  :ref:`compare <sdk_qttest_testcase_compare>`\ (*actual*, *expected*, *msg*)
-  :ref:`expectFail <sdk_qttest_testcase_expectFail>`\ (*tag*, *msg*)
-  :ref:`expectFailContinue <sdk_qttest_testcase_expectFailContinue>`\ (*tag*, *msg*)
-  :ref:`fail <sdk_qttest_testcase_fail>`\ (*msg*)
-  :ref:`findChild <sdk_qttest_testcase_findChild>`\ (*parent*, *objectName*)
-  :ref:`fuzzyCompare <sdk_qttest_testcase_fuzzyCompare>`\ (*actual*, *expected*, *delta*, *msg*)
-  :ref:`grabImage <sdk_qttest_testcase_grabImage>`\ (*item*)
-  :ref:`ignoreWarning <sdk_qttest_testcase_ignoreWarning>`\ (*msg*)
-  :ref:`init <sdk_qttest_testcase_init>`\ ()
-  :ref:`initTestCase <sdk_qttest_testcase_initTestCase>`\ ()
-  :ref:`keyClick <sdk_qttest_testcase_keyClick>`\ (*key*, *modifiers*, *delay*)
-  :ref:`keyPress <sdk_qttest_testcase_keyPress>`\ (*key*, *modifiers*, *delay*)
-  :ref:`keyRelease <sdk_qttest_testcase_keyRelease>`\ (*key*, *modifiers*, *delay*)
-  :ref:`mouseClick <sdk_qttest_testcase_mouseClick>`\ (*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-  :ref:`mouseDoubleClick <sdk_qttest_testcase_mouseDoubleClick>`\ (*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-  :ref:`mouseDrag <sdk_qttest_testcase_mouseDrag>`\ (*item*, *x*, *y*, *dx*, *dy*, *button*, *modifiers*, *delay*)
-  :ref:`mouseMove <sdk_qttest_testcase_mouseMove>`\ (*item*, *x*, *y*, *delay*, *buttons*)
-  :ref:`mousePress <sdk_qttest_testcase_mousePress>`\ (*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-  :ref:`mouseRelease <sdk_qttest_testcase_mouseRelease>`\ (*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-  :ref:`mouseWheel <sdk_qttest_testcase_mouseWheel>`\ (*item*, *x*, *y*, *xDelta*, *yDelta*, *buttons*, *modifiers*, *delay*)
-  :ref:`skip <sdk_qttest_testcase_skip>`\ (*msg*)
-  :ref:`sleep <sdk_qttest_testcase_sleep>`\ (*ms*)
-  :ref:`tryCompare <sdk_qttest_testcase_tryCompare>`\ (*obj*, *prop*, *value*, *timeout*, *msg*)
-  :ref:`verify <sdk_qttest_testcase_verify>`\ (*cond*, *msg*)
-  :ref:`wait <sdk_qttest_testcase_wait>`\ (*ms*)
-  :ref:`waitForRendering <sdk_qttest_testcase_waitForRendering>`\ (*item*, *timeout*)
-  :ref:`warn <sdk_qttest_testcase_warn>`\ (*msg*)

Detailed Description
--------------------

Introduction to QML test cases
------------------------------

Test cases are written as JavaScript functions within a :ref:`TestCase <sdk_qttest_testcase>` type:

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

Functions whose names start with "test\_" are treated as test cases to be executed. The :ref:`name <sdk_qttest_testcase_name>` property is used to prefix the functions in the output:

.. code:: cpp

    ***** Start testing of MathTests *****
    Config: Using QTest library 4.7.2, Qt 4.7.2
    PASS   : MathTests::initTestCase()
    FAIL!  : MathTests::test_fail() 2 + 2 = 5
       Actual (): 4
       Expected (): 5
       Loc: [/home/.../tst_math.qml(12)]
    PASS   : MathTests::test_math()
    PASS   : MathTests::cleanupTestCase()
    Totals: 3 passed, 1 failed, 0 skipped
    ***** Finished testing of MathTests *****

Because of the way JavaScript properties work, the order in which the test functions are found is unpredictable. To assist with predictability, the test framework will sort the functions on ascending order of name. This can help when there are two tests that must be run in order.

Multiple :ref:`TestCase <sdk_qttest_testcase>` types can be supplied. The test program will exit once they have all completed. If a test case doesn't need to run (because a precondition has failed), then :ref:`optional <sdk_qttest_testcase_optional>` can be set to true.

Data-driven tests
-----------------

Table data can be provided to a test using a function name that ends with "\_data". Alternatively, the ``init_data()`` function can be used to provide default test data for all test functions in a :ref:`TestCase <sdk_qttest_testcase>` type:

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

The test framework will iterate over all of the rows in the table and pass each row to the test function. As shown, the columns can be extracted for use in the test. The ``tag`` column is special - it is printed by the test framework when a row fails, to help the reader identify which case failed amongst a set of otherwise passing tests.

Benchmarks
----------

Functions whose names start with "benchmark\_" will be run multiple times with the Qt benchmark framework, with an average timing value reported for the runs. This is equivalent to using the ``QBENCHMARK`` macro in the C++ version of QTestLib.

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

To get the effect of the ``QBENCHMARK_ONCE`` macro, prefix the test function name with "benchmark\_once\_".

Simulating keyboard and mouse events
------------------------------------

The :ref:`keyPress() <sdk_qttest_testcase_keyPress>`, :ref:`keyRelease() <sdk_qttest_testcase_keyRelease>`, and :ref:`keyClick() <sdk_qttest_testcase_keyClick>` methods can be used to simulate keyboard events within unit tests. The events are delivered to the currently focused QML item. You can pass either a Qt.Key enum value or a latin1 char (string of length one)

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

The :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, and :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>` methods can be used to simulate mouse events in a similar fashion.

**Note:** keyboard and mouse events can only be delivered once the main window has been shown. Attempts to deliver events before then will fail. Use the :ref:`when <sdk_qttest_testcase_when>` and :ref:`windowShown <sdk_qttest_testcase_windowShown>` properties to track when the main window has been shown.

**See also** :ref:`SignalSpy <sdk_qttest_signalspy>` and Qt Quick Test Reference Documentation.

Property Documentation
----------------------

.. _sdk_qttest_testcase_completed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| completed : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property will be set to true once the test case has completed execution. Test cases are only executed once. The initial value is false.

**See also** :ref:`running <sdk_qttest_testcase_running>` and :ref:`when <sdk_qttest_testcase_when>`.

.. _sdk_qttest_testcase_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the name of the test case for result reporting. The default is the empty string.

.. code:: cpp

    TestCase {
        name: "ButtonTests"
        ...
    }

.. _sdk_qttest_testcase_optional:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| optional : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Multiple :ref:`TestCase <sdk_qttest_testcase>` types can be supplied in a test application. The application will exit once they have all completed. If a test case does not need to run (because a precondition has failed), then this property can be set to true. The default value is false.

.. code:: cpp

    TestCase {
        when: false
        optional: true
        function test_not_run() {
            verify(false)
        }
    }

**See also** :ref:`when <sdk_qttest_testcase_when>` and :ref:`completed <sdk_qttest_testcase_completed>`.

.. _sdk_qttest_testcase_running:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| running : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property will be set to true while the test case is running. The initial value is false, and the value will become false again once the test case completes.

**See also** :ref:`completed <sdk_qttest_testcase_completed>` and :ref:`when <sdk_qttest_testcase_when>`.

.. _sdk_qttest_testcase_when:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| when : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property should be set to true when the application wants the test cases to run. The default value is true. In the following example, a test is run when the user presses the mouse button:

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

The test application will exit once all :ref:`TestCase <sdk_qttest_testcase>` types have been triggered and have run. The :ref:`optional <sdk_qttest_testcase_optional>` property can be used to exclude a :ref:`TestCase <sdk_qttest_testcase>` type.

**See also** :ref:`optional <sdk_qttest_testcase_optional>` and :ref:`completed <sdk_qttest_testcase_completed>`.

.. _sdk_qttest_testcase_windowShown:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| windowShown : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property will be set to true after the QML viewing window has been displayed. Normally test cases run as soon as the test application is loaded and before a window is displayed. If the test case involves visual types and behaviors, then it may need to be delayed until after the window is shown.

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

Method Documentation
--------------------

.. _sdk_qttest_testcase_cleanup:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cleanup()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function is called after each test function that is executed in the :ref:`TestCase <sdk_qttest_testcase>` type. The default implementation does nothing. The application can provide its own implementation to perform cleanup after each test function.

**See also** :ref:`init() <sdk_qttest_testcase_init>` and :ref:`cleanupTestCase() <sdk_qttest_testcase_cleanupTestCase>`.

.. _sdk_qttest_testcase_cleanupTestCase:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cleanupTestCase()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function is called after all other test functions in the :ref:`TestCase <sdk_qttest_testcase>` type have completed. The default implementation does nothing. The application can provide its own implementation to perform test case cleanup.

**See also** :ref:`initTestCase() <sdk_qttest_testcase_initTestCase>` and :ref:`cleanup() <sdk_qttest_testcase_cleanup>`.

.. _sdk_qttest_testcase_compare:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| compare( *actual*, *expected*, *msg*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fails the current test case if *actual* is not the same as *expected*, and displays the optional *message*. Similar to ``QCOMPARE(actual, expected)`` in C++.

**See also** :ref:`tryCompare() <sdk_qttest_testcase_tryCompare>` and :ref:`fuzzyCompare <sdk_qttest_testcase_fuzzyCompare>`.

.. _sdk_qttest_testcase_expectFail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expectFail( *tag*, *msg*)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

In a data-driven test, marks the row associated with *tag* as expected to fail. When the fail occurs, display the *message*, abort the test, and mark the test as passing. Similar to ``QEXPECT_FAIL(tag, message, Abort)`` in C++.

If the test is not data-driven, then *tag* must be set to the empty string.

**See also** :ref:`expectFailContinue() <sdk_qttest_testcase_expectFailContinue>`.

.. _sdk_qttest_testcase_expectFailContinue:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expectFailContinue( *tag*, *msg*)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

In a data-driven test, marks the row associated with *tag* as expected to fail. When the fail occurs, display the *message*, and then continue the test. Similar to ``QEXPECT_FAIL(tag, message, Continue)`` in C++.

If the test is not data-driven, then *tag* must be set to the empty string.

**See also** :ref:`expectFail() <sdk_qttest_testcase_expectFail>`.

.. _sdk_qttest_testcase_fail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fail( *msg*)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fails the current test case, with the optional *message*. Similar to ``QFAIL(message)`` in C++.

.. _sdk_qttest_testcase_findChild:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| findChild( *parent*, *objectName*)                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the first child of *parent* with *objectName*, or ``null`` if no such item exists. Both visual and non-visual children are searched recursively, with visual children being searched first.

.. code:: cpp

    compare(findChild(item, "childObject"), expectedChildObject);

This QML method was introduced in Qt 5.4.

.. _sdk_qttest_testcase_fuzzyCompare:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fuzzyCompare( *actual*, *expected*, *delta*, *msg*)                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fails the current test case if the difference betwen *actual* and *expected* is greater than *delta*, and displays the optional *message*. Similar to ``qFuzzyCompare(actual, expected)`` in C++ but with a required *delta* value.

This function can also be used for color comparisons if both the *actual* and *expected* values can be converted into color values. If any of the differences for RGBA channel values are greater than *delta*, the test fails.

**See also** :ref:`tryCompare() <sdk_qttest_testcase_tryCompare>` and :ref:`compare() <sdk_qttest_testcase_compare>`.

.. _sdk_qttest_testcase_grabImage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| grabImage( *item*)                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a snapshot image object of the given *item*.

The returned image object has the following methods:

-  red(x, y) Returns the red channel value of the pixel at *x*, *y* position
-  green(x, y) Returns the green channel value of the pixel at *x*, *y* position
-  blue(x, y) Returns the blue channel value of the pixel at *x*, *y* position
-  alpha(x, y) Returns the alpha channel value of the pixel at *x*, *y* position
-  pixel(x, y) Returns the color value of the pixel at *x*, *y* position For example:

   .. code:: cpp

       var image = grabImage(rect);
       compare(image.red(10, 10), 255);
       compare(image.pixel(20, 20), Qt.rgba(255, 0, 0, 255));

.. _sdk_qttest_testcase_ignoreWarning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ignoreWarning( *msg*)                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Marks *message* as an ignored warning message. When it occurs, the warning will not be printed and the test passes. If the message does not occur, then the test will fail. Similar to ``QTest::ignoreMessage(QtWarningMsg, message)`` in C++.

**See also** :ref:`warn() <sdk_qttest_testcase_warn>`.

.. _sdk_qttest_testcase_init:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| init()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function is called before each test function that is executed in the :ref:`TestCase <sdk_qttest_testcase>` type. The default implementation does nothing. The application can provide its own implementation to perform initialization before each test function.

**See also** :ref:`cleanup() <sdk_qttest_testcase_cleanup>` and :ref:`initTestCase() <sdk_qttest_testcase_initTestCase>`.

.. _sdk_qttest_testcase_initTestCase:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| initTestCase()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This function is called before any other test functions in the :ref:`TestCase <sdk_qttest_testcase>` type. The default implementation does nothing. The application can provide its own implementation to perform test case initialization.

**See also** :ref:`cleanupTestCase() <sdk_qttest_testcase_cleanupTestCase>` and :ref:`init() <sdk_qttest_testcase_init>`.

.. _sdk_qttest_testcase_keyClick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| keyClick( *key*, *modifiers*, *delay*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates clicking of *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**See also** :ref:`keyPress() <sdk_qttest_testcase_keyPress>` and :ref:`keyRelease() <sdk_qttest_testcase_keyRelease>`.

.. _sdk_qttest_testcase_keyPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| keyPress( *key*, *modifiers*, *delay*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates pressing a *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**Note:** At some point you should release the key using :ref:`keyRelease() <sdk_qttest_testcase_keyRelease>`.

**See also** :ref:`keyRelease() <sdk_qttest_testcase_keyRelease>` and :ref:`keyClick() <sdk_qttest_testcase_keyClick>`.

.. _sdk_qttest_testcase_keyRelease:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| keyRelease( *key*, *modifiers*, *delay*)                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates releasing a *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**See also** :ref:`keyPress() <sdk_qttest_testcase_keyPress>` and :ref:`keyClick() <sdk_qttest_testcase_keyClick>`.

.. _sdk_qttest_testcase_mouseClick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseClick( *item*, *x*, *y*, *button*, *modifiers*, *delay*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates clicking a mouse *button* with an optional *modifier* on an *item*. The position of the click is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mouseDoubleClick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseDoubleClick( *item*, *x*, *y*, *button*, *modifiers*, *delay*)                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates double-clicking a mouse *button* with an optional *modifier* on an *item*. The position of the click is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mouseDrag:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseDrag( *item*, *x*, *y*, *dx*, *dy*, *button*, *modifiers*, *delay*)                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates dragging the mouse on an *item* with *button* pressed and an optional *modifier*. The initial drag position is defined by *x* and *y*, and drag distance is defined by *dx* and *dy*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

Note: this method does not imply a drop action, to make a drop, an additional :ref:`mouseRelease <sdk_qttest_testcase_mouseRelease>`\ (item, x + dx, y + dy) is needed.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mouseMove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseMove( *item*, *x*, *y*, *delay*, *buttons*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves the mouse pointer to the position given by *x* and *y* within *item*. If a *delay* (in milliseconds) is given, the test will wait before moving the mouse pointer.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mousePress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mousePress( *item*, *x*, *y*, *button*, *modifiers*, *delay*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates pressing a mouse *button* with an optional *modifier* on an *item*. The position is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before the press.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mouseRelease:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseRelease( *item*, *x*, *y*, *button*, *modifiers*, *delay*)                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates releasing a mouse *button* with an optional *modifier* on an *item*. The position of the release is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and :ref:`mouseWheel() <sdk_qttest_testcase_mouseWheel>`.

.. _sdk_qttest_testcase_mouseWheel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseWheel( *item*, *x*, *y*, *xDelta*, *yDelta*, *buttons*, *modifiers*, *delay*)                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Simulates rotating the mouse wheel on an *item* with *button* pressed and an optional *modifier*. The position of the wheel event is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

The *xDelta* and *yDelta* contain the wheel rotation distance in eighths of a degree. see QWheelEvent::angleDelta() for more details.

**See also** :ref:`mousePress() <sdk_qttest_testcase_mousePress>`, :ref:`mouseClick() <sdk_qttest_testcase_mouseClick>`, :ref:`mouseDoubleClick() <sdk_qttest_testcase_mouseDoubleClick>`, :ref:`mouseMove() <sdk_qttest_testcase_mouseMove>`, :ref:`mouseRelease() <sdk_qttest_testcase_mouseRelease>`, :ref:`mouseDrag() <sdk_qttest_testcase_mouseDrag>`, and QWheelEvent::angleDelta().

.. _sdk_qttest_testcase_skip:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| skip( *msg*)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Skips the current test case and prints the optional *message*. If this is a data-driven test, then only the current row is skipped. Similar to ``QSKIP(message)`` in C++.

.. _sdk_qttest_testcase_sleep:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sleep( *ms*)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sleeps for *ms* milliseconds without processing Qt events.

**See also** :ref:`wait() <sdk_qttest_testcase_wait>` and :ref:`waitForRendering() <sdk_qttest_testcase_waitForRendering>`.

.. _sdk_qttest_testcase_tryCompare:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tryCompare( *obj*, *prop*, *value*, *timeout*, *msg*)                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fails the current test case if the specified *property* on *obj* is not the same as *expected*, and displays the optional *message*. The test will be retried multiple times until the *timeout* (in milliseconds) is reached.

This function is intended for testing applications where a property changes value based on asynchronous events. Use :ref:`compare() <sdk_qttest_testcase_compare>` for testing synchronous property changes.

.. code:: cpp

    tryCompare(img, "status", BorderImage.Ready)
    compare(img.width, 120)
    compare(img.height, 120)
    compare(img.horizontalTileMode, BorderImage.Stretch)
    compare(img.verticalTileMode, BorderImage.Stretch)

:ref:`SignalSpy::wait() <sdk_qttest_signalspy_wait>` provides an alternative method to wait for a signal to be emitted.

**See also** :ref:`compare() <sdk_qttest_testcase_compare>` and :ref:`SignalSpy::wait() <sdk_qttest_signalspy_wait>`.

.. _sdk_qttest_testcase_verify:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verify( *cond*, *msg*)                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fails the current test case if *condition* is false, and displays the optional *message*. Similar to ``QVERIFY(condition)`` or ``QVERIFY2(condition, message)`` in C++.

.. _sdk_qttest_testcase_wait:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wait( *ms*)                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Waits for *ms* milliseconds while processing Qt events.

**See also** :ref:`sleep() <sdk_qttest_testcase_sleep>` and :ref:`waitForRendering() <sdk_qttest_testcase_waitForRendering>`.

.. _sdk_qttest_testcase_waitForRendering:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| waitForRendering( *item*, *timeout*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Waits for *timeout* milliseconds or until the *item* is rendered by the renderer. Returns true if ``item`` is rendered in *timeout* milliseconds, otherwise returns false. The default *timeout* value is 5000.

**See also** :ref:`sleep() <sdk_qttest_testcase_sleep>` and :ref:`wait() <sdk_qttest_testcase_wait>`.

.. _sdk_qttest_testcase_warn:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| warn( *msg*)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Prints *message* as a warning message. Similar to ``QWARN(message)`` in C++.

**See also** :ref:`ignoreWarning() <sdk_qttest_testcase_ignoreWarning>`.

