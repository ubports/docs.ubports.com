Ubuntu.Test.UbuntuTestCase13
============================

.. raw:: html

   <p>

The UbuntuTestCase class expands the default TestCase class. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuTestCase13 -->

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

import Ubuntu.Test .

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

TestCase

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

testUtil : alias

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

centerOf(item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

findChild(obj, objectName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

findChildWithProperty(item, property, value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

findInvisibleChild(obj, objectName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flick(item, x, y, dx, dy, pressTimeout, steps, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseLongPress(item, x, y, button, modifiers, delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mouseMoveSlowly(item, x, y, dx, dy, steps, stepdelay, buttons)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tryCompareFunction(func, expectedResult, timeout)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

typeString(string)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waitForHeaderAnimation(mainView)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

warningFormat(line, column, message)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UbuntuTestCase13-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This component is under heavy development.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class extends the default QML TestCase class which is available in
QtTest 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuTestCase13 -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$testUtil -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="testUtil-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

testUtil : alias

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

This property holds the inner TestUtil instance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@testUtil -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$centerOf -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="centerOf-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

centerOf( item)

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

Returns the center point of the item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@centerOf -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="findChild-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

findChild( obj, objectName)

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

Find a child from the item based on the objectName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@findChild -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="findChildWithProperty-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

findChildWithProperty( item, property, value)

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

Finds a visible child of an item having a given property with a given
value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@findChildWithProperty -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="findInvisibleChild-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

findInvisibleChild( obj, objectName)

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

Find a non-visual child such as QtObject based on objectName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@findInvisibleChild -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flick( item, x, y, dx, dy, pressTimeout, steps, button, modifiers,
delay)

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

The function produces a flick event when executed on Flickables. When
used on other components it provides the same functionality as
mouseDrag() function. The optional pressTimeout parameter can be used to
introduce a small delay between the mouse press and the first mouse
move. Setting a negative or zero value will disable the timeout.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default flick velocity is built up using 5 move points. This can be
altered by setting a positive value to steps parameter. The bigger the
number the longer the flick will be. When a negative or zero value is
given, the default of 5 move points will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The function can be used to select a text in a TextField or
TextArea by specifying at least 400 millisecods to pressTimeout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseLongPress-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseLongPress( item, x, y, button, modifiers, delay)

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

Simulates a long press on a mouse button with an optional modifier on an
item. The position is defined by x and y. If delay is specified, the
test will wait the specified amount of milliseconds before the press.

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

   <!-- @@@mouseLongPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseMoveSlowly-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mouseMoveSlowly( item, x, y, dx, dy, steps, stepdelay, buttons)

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

Move Mouse from x,y to distance of dx, dy divided to steps with a
stepdelay (ms) and buttons.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseMoveSlowly -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tryCompareFunction-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

tryCompareFunction( func, expectedResult, timeout)

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

Keeps executing a given parameter-less function until it returns the
given expected result or the timemout is reached (in which case a test
failure is generated)

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tryCompareFunction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="typeString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

typeString( string)

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

Convenience function to allow typing a full string instead of single
characters

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@typeString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waitForHeaderAnimation-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

waitForHeaderAnimation( mainView)

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

Wait for animations of the header and the style inside the header to
finish. The MainView that has the header that may animate must be passed
as an argument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waitForHeaderAnimation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="warningFormat-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

warningFormat( line, column, message)

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

Warning message formatter, uses file name, line and column numbers to
build up the message.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@warningFormat -->


