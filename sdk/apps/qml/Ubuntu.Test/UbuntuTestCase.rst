The UbuntuTestCase class expands the default TestCase class.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Test .                 |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `TestCase </sdk/apps/qml/QtTest/Test |
|                                      | Case/>`__                            |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`testUtil </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#testUtil-prop>`__****
   : alias

Methods
-------

-  ****`centerOf </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#centerOf-method>`__****\ (*item*)
-  ****`findChild </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#findChild-method>`__****\ (*obj*,
   *objectName*)
-  ****`findChildWithProperty </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#findChildWithProperty-method>`__****\ (*item*,
   *property*, *value*)
-  ****`findInvisibleChild </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#findInvisibleChild-method>`__****\ (*obj*,
   *objectName*)
-  ****`flick </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#flick-method>`__****\ (*item*,
   *x*, *y*, *dx*, *dy*, *pressTimeout*, *steps*, *button*, *modifiers*,
   *delay*)
-  ****`mouseLongPress </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#mouseLongPress-method>`__****\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  ****`mouseMoveSlowly </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#mouseMoveSlowly-method>`__****\ (*item*,
   *x*, *y*, *dx*, *dy*, *steps*, *stepdelay*, *buttons*)
-  ****`tryCompareFunction </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#tryCompareFunction-method>`__****\ (*func*,
   *expectedResult*, *timeout*)
-  ****`typeString </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#typeString-method>`__****\ (*string*)
-  ****`waitForHeaderAnimation </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#waitForHeaderAnimation-method>`__****\ (*mainView*)
-  ****`warningFormat </sdk/apps/qml/Ubuntu.Test/UbuntuTestCase#warningFormat-method>`__****\ (*line*,
   *column*, *message*)

Detailed Description
--------------------

**This component is under heavy development.**

This class extends the default QML
`TestCase </sdk/apps/qml/QtTest/TestCase/>`__ class which is available
in `QtTest <http://doc.qt.io/qt-5/qttest-qmlmodule.html>`__ 1.0.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ testUtil : alias                                                |
+--------------------------------------------------------------------------+

This property holds the inner TestUtil instance.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ centerOf( *item*)                                               |
+--------------------------------------------------------------------------+

Returns the center point of the *item*.

| 

+--------------------------------------------------------------------------+
|        \ findChild( *obj*, *objectName*)                                 |
+--------------------------------------------------------------------------+

Find a child from the item based on the objectName.

| 

+--------------------------------------------------------------------------+
|        \ findChildWithProperty( *item*, *property*, *value*)             |
+--------------------------------------------------------------------------+

Finds a visible child of an *item* having a given *property* with a
given *value*.

| 

+--------------------------------------------------------------------------+
|        \ findInvisibleChild( *obj*, *objectName*)                        |
+--------------------------------------------------------------------------+

Find a non-visual child such as
`QtObject </sdk/apps/qml/QtQml/QtObject/>`__ based on objectName.

| 

+--------------------------------------------------------------------------+
|        \ flick( *item*, *x*, *y*, *dx*, *dy*, *pressTimeout*, *steps*,   |
| *button*, *modifiers*, *delay*)                                          |
+--------------------------------------------------------------------------+

The function produces a flick event when executed on Flickables. When
used on other components it provides the same functionality as
``mouseDrag()`` function. The optional *pressTimeout* parameter can be
used to introduce a small delay between the mouse press and the first
mouse move. Setting a negative or zero value will disable the timeout.

The default flick velocity is built up using 5 move points. This can be
altered by setting a positive value to *steps* parameter. The bigger the
number the longer the flick will be. When a negative or zero value is
given, the default of 5 move points will be used.

**Note:** The function can be used to select a text in a
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ or
`TextArea </sdk/apps/qml/Ubuntu.Components/TextArea/>`__ by specifying
at least 400 millisecods to *pressTimeout*.

| 

+--------------------------------------------------------------------------+
|        \ mouseLongPress( *item*, *x*, *y*, *button*, *modifiers*,        |
| *delay*)                                                                 |
+--------------------------------------------------------------------------+

Simulates a long press on a mouse *button* with an optional *modifier*
on an *item*. The position is defined by *x* and *y*. If *delay* is
specified, the test will wait the specified amount of milliseconds
before the press.

The position given by *x* and *y* is transformed from the co-ordinate
system of *item* into window co-ordinates and then delivered. If *item*
is obscured by another item, or a child of *item* occupies that
position, then the event will be delivered to the other item instead.

| 

+--------------------------------------------------------------------------+
|        \ mouseMoveSlowly( *item*, *x*, *y*, *dx*, *dy*, *steps*,         |
| *stepdelay*, *buttons*)                                                  |
+--------------------------------------------------------------------------+

Move Mouse from x,y to distance of dx, dy divided to steps with a
stepdelay (ms) and buttons.

| 

+--------------------------------------------------------------------------+
|        \ tryCompareFunction( *func*, *expectedResult*, *timeout*)        |
+--------------------------------------------------------------------------+

Keeps executing a given parameter-less function until it returns the
given expected result or the timemout is reached (in which case a test
failure is generated)

| 

+--------------------------------------------------------------------------+
|        \ typeString( *string*)                                           |
+--------------------------------------------------------------------------+

Convenience function to allow typing a full string instead of single
characters

| 

+--------------------------------------------------------------------------+
|        \ waitForHeaderAnimation( *mainView*)                             |
+--------------------------------------------------------------------------+

Wait for animations of the header and the style inside the header to
finish. The `MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__
that has the header that may animate must be passed as an argument.

| 

+--------------------------------------------------------------------------+
|        \ warningFormat( *line*, *column*, *message*)                     |
+--------------------------------------------------------------------------+

Warning message formatter, uses file name, line and column numbers to
build up the message.

| 
