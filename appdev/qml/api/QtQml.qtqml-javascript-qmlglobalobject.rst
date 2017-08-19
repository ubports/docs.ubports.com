QtQml.qtqml-javascript-qmlglobalobject
======================================

.. raw:: html

   <p>

The QML JavaScript host environment implements the following host
objects and functions. These are built in and can be used from any
JavaScript code loaded in QML, without additional imports:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Qt object: This object is specific to QML, and provides helper
methods and properties specific to the QML environment.

.. raw:: html

   </li>

.. raw:: html

   <li>

qsTr(), qsTranslate(), qsTrId(), QT\_TR\_NOOP(), QT\_TRANSLATE\_NOOP(),
and QT\_TRID\_NOOP() functions: These functions are specific to QML, and
provide translation capabilities to the QML environment.

.. raw:: html

   </li>

.. raw:: html

   <li>

gc() function: This function is specific to QML, and provides a way to
manually trigger garbage collection.

.. raw:: html

   </li>

.. raw:: html

   <li>

print() function: This function is specific to QML, and provides a
simple way to output information to the console.

.. raw:: html

   </li>

.. raw:: html

   <li>

The console object: This object implements a subset of the FireBug
Console API.

.. raw:: html

   </li>

.. raw:: html

   <li>

XMLHttpRequest, DOMException: These objects implement a subset of the
W3C XMLHttpRequest specification.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="xmlhttprequest">

XMLHttpRequest

.. raw:: html

   </h2>

.. raw:: html

   <p>

The XMLHttpRequest object, which can be used to asynchronously obtain
data from over a network.

.. raw:: html

   </p>

.. raw:: html

   <p>

The XMLHttpRequest API implements the same W3C standard as many popular
web browsers with following exceptions:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML's XMLHttpRequest does not enforce the same origin policy.

.. raw:: html

   </li>

.. raw:: html

   <li>

QML's XMLHttpRequest does not support synchronous requests.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Additionally, the responseXML XML DOM tree currently supported by QML is
a reduced subset of the DOM Level 3 Core API supported in a web browser.
The following objects and properties are supported by the QML
implementation:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Node

.. raw:: html

   </th>

.. raw:: html

   <th>

Document

.. raw:: html

   </th>

.. raw:: html

   <th>

Element

.. raw:: html

   </th>

.. raw:: html

   <th>

Attr

.. raw:: html

   </th>

.. raw:: html

   <th>

CharacterData

.. raw:: html

   </th>

.. raw:: html

   <th>

Text

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

nodeName

.. raw:: html

   </li>

.. raw:: html

   <li>

nodeValue

.. raw:: html

   </li>

.. raw:: html

   <li>

nodeType

.. raw:: html

   </li>

.. raw:: html

   <li>

parentNode

.. raw:: html

   </li>

.. raw:: html

   <li>

childNodes

.. raw:: html

   </li>

.. raw:: html

   <li>

firstChild

.. raw:: html

   </li>

.. raw:: html

   <li>

lastChild

.. raw:: html

   </li>

.. raw:: html

   <li>

previousSibling

.. raw:: html

   </li>

.. raw:: html

   <li>

nextSibling

.. raw:: html

   </li>

.. raw:: html

   <li>

attributes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

xmlVersion

.. raw:: html

   </li>

.. raw:: html

   <li>

xmlEncoding

.. raw:: html

   </li>

.. raw:: html

   <li>

xmlStandalone

.. raw:: html

   </li>

.. raw:: html

   <li>

documentElement

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

tagName

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

name

.. raw:: html

   </li>

.. raw:: html

   <li>

value

.. raw:: html

   </li>

.. raw:: html

   <li>

ownerElement

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

data

.. raw:: html

   </li>

.. raw:: html

   <li>

length

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

isElementContentWhitespace

.. raw:: html

   </li>

.. raw:: html

   <li>

wholeText

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The XMLHttpRequest example demonstrates how to use the XMLHttpRequest
object to make a request and read the response headers.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-javascript-qmlglobalobject.html -->
