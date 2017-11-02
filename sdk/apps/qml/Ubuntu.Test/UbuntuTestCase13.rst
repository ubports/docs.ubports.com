.. _sdk_ubuntu_test_ubuntutestcase13:
Ubuntu.Test UbuntuTestCase13
============================

The UbuntuTestCase class expands the default TestCase class.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Test .                 |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`TestCase <sdk_qttest_testcase>`|
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`testUtil <sdk_ubuntu_test_ubuntutestcase13_testUtil-prop>`
   : alias

Methods
-------

-  :ref:`centerOf <sdk_ubuntu_test_ubuntutestcase13_centerOf-method>`\ (*item*)
-  :ref:`findChild <sdk_ubuntu_test_ubuntutestcase13_findChild-method>`\ (*obj*,
   *objectName*)
-  :ref:`findChildWithProperty <sdk_ubuntu_test_ubuntutestcase13_findChildWithProperty-method>`\ (*item*,
   *property*, *value*)
-  :ref:`findInvisibleChild <sdk_ubuntu_test_ubuntutestcase13_findInvisibleChild-method>`\ (*obj*,
   *objectName*)
-  :ref:`flick <sdk_ubuntu_test_ubuntutestcase13_flick-method>`\ (*item*,
   *x*, *y*, *dx*, *dy*, *pressTimeout*, *steps*, *button*, *modifiers*,
   *delay*)
-  :ref:`mouseLongPress <sdk_ubuntu_test_ubuntutestcase13_mouseLongPress-method>`\ (*item*,
   *x*, *y*, *button*, *modifiers*, *delay*)
-  :ref:`mouseMoveSlowly <sdk_ubuntu_test_ubuntutestcase13_mouseMoveSlowly-method>`\ (*item*,
   *x*, *y*, *dx*, *dy*, *steps*, *stepdelay*, *buttons*)
-  :ref:`tryCompareFunction <sdk_ubuntu_test_ubuntutestcase13_tryCompareFunction-method>`\ (*func*,
   *expectedResult*, *timeout*)
-  :ref:`typeString <sdk_ubuntu_test_ubuntutestcase13_typeString-method>`\ (*string*)
-  :ref:`waitForHeaderAnimation <sdk_ubuntu_test_ubuntutestcase13_waitForHeaderAnimation-method>`\ (*mainView*)
-  :ref:`warningFormat <sdk_ubuntu_test_ubuntutestcase13_warningFormat-method>`\ (*line*,
   *column*, *message*)

Detailed Description
--------------------

**This component is under heavy development.**

This class extends the default QML :ref:`TestCase <sdk_qttest_testcase>`
class which is available in
`QtTest <http://doc.qt.io/qt-5/qttest-qmlmodule.html>`_  1.0.

Property Documentation
----------------------

.. _sdk_ubuntu_test_ubuntutestcase13_testUtil-prop:

+--------------------------------------------------------------------------+
|        \ testUtil : alias                                                |
+--------------------------------------------------------------------------+

This property holds the inner TestUtil instance.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_test_ubuntutestcase13_centerOf-method:

+--------------------------------------------------------------------------+
|        \ centerOf( *item*)                                               |
+--------------------------------------------------------------------------+

Returns the center point of the *item*.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_findChild-method:

+--------------------------------------------------------------------------+
|        \ findChild( *obj*, *objectName*)                                 |
+--------------------------------------------------------------------------+

Find a child from the item based on the objectName.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_findChildWithProperty-method:

+--------------------------------------------------------------------------+
|        \ findChildWithProperty( *item*, *property*, *value*)             |
+--------------------------------------------------------------------------+

Finds a visible child of an *item* having a given *property* with a
given *value*.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_findInvisibleChild-method:

+--------------------------------------------------------------------------+
|        \ findInvisibleChild( *obj*, *objectName*)                        |
+--------------------------------------------------------------------------+

Find a non-visual child such as :ref:`QtObject <sdk_qtqml_qtobject>` based
on objectName.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_flick-method:

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
:ref:`TextField <sdk_ubuntu_components_textfield>` or
:ref:`TextArea <sdk_ubuntu_components_textarea>` by specifying at least 400
millisecods to *pressTimeout*.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_mouseLongPress-method:

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

.. _sdk_ubuntu_test_ubuntutestcase13_mouseMoveSlowly-method:

+--------------------------------------------------------------------------+
|        \ mouseMoveSlowly( *item*, *x*, *y*, *dx*, *dy*, *steps*,         |
| *stepdelay*, *buttons*)                                                  |
+--------------------------------------------------------------------------+

Move Mouse from x,y to distance of dx, dy divided to steps with a
stepdelay (ms) and buttons.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_tryCompareFunction-method:

+--------------------------------------------------------------------------+
|        \ tryCompareFunction( *func*, *expectedResult*, *timeout*)        |
+--------------------------------------------------------------------------+

Keeps executing a given parameter-less function until it returns the
given expected result or the timemout is reached (in which case a test
failure is generated)

| 

.. _sdk_ubuntu_test_ubuntutestcase13_typeString-method:

+--------------------------------------------------------------------------+
|        \ typeString( *string*)                                           |
+--------------------------------------------------------------------------+

Convenience function to allow typing a full string instead of single
characters

| 

.. _sdk_ubuntu_test_ubuntutestcase13_waitForHeaderAnimation-method:

+--------------------------------------------------------------------------+
|        \ waitForHeaderAnimation( *mainView*)                             |
+--------------------------------------------------------------------------+

Wait for animations of the header and the style inside the header to
finish. The :ref:`MainView <sdk_ubuntu_components_mainview>` that has the
header that may animate must be passed as an argument.

| 

.. _sdk_ubuntu_test_ubuntutestcase13_warningFormat-method:

+--------------------------------------------------------------------------+
|        \ warningFormat( *line*, *column*, *message*)                     |
+--------------------------------------------------------------------------+

Warning message formatter, uses file name, line and column numbers to
build up the message.

| 
