

The QML JavaScript host environment implements the following host
objects and functions. These are built in and can be used from any
JavaScript code loaded in QML, without additional imports:

-  The `Qt object </sdk/apps/qml/QtQml/Qt#qmlglobalqtobject>`__: This
   object is specific to QML, and provides helper methods and properties
   specific to the QML environment.
-  qsTr(), qsTranslate(), qsTrId(), QT\_TR\_NOOP(),
   QT\_TRANSLATE\_NOOP(), and QT\_TRID\_NOOP() functions: These
   functions are specific to QML, and provide translation capabilities
   to the QML environment.
-  gc() function: This function is specific to QML, and provides a way
   to manually trigger garbage collection.
-  print() function: This function is specific to QML, and provides a
   simple way to output information to the console.
-  The console object: This object implements a subset of the `FireBug
   Console API <http://getfirebug.com/wiki/index.php/Console_API>`__.
-  `XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__,
   DOMException: These objects implement a subset of the `W3C
   XMLHttpRequest
   specification <http://www.w3.org/TR/XMLHttpRequest/>`__.

       \        
.. rubric:: XMLHttpRequest
   :name: xmlhttprequest

The
`XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__
object, which can be used to asynchronously obtain data from over a
network.

The
`XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__
API implements the same `W3C
standard <http://www.w3.org/TR/XMLHttpRequest/>`__ as many popular web
browsers with following exceptions:

-  QML's
   `XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__
   does not enforce the same origin policy.
-  QML's
   `XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__
   does not support *synchronous* requests.

Additionally, the ``responseXML`` XML DOM tree currently supported by
QML is a reduced subset of the `DOM Level 3
Core <http://www.w3.org/TR/DOM-Level-3-Core/>`__ API supported in a web
browser. The following objects and properties are supported by the QML
implementation:

+--------------+--------------+--------------+--------------+--------------+--------------+
| **Node**     | **Document** | **Element**  | **Attr**     | **CharacterD | **Text**     |
|              |              |              |              | ata**        |              |
+==============+==============+==============+==============+==============+==============+
| -  nodeName  | -  xmlVersio | -  tagName   | -  name      | -  data      | -  isElement |
| -  nodeValue | n            |              | -  value     | -  length    | ContentWhite |
| -  nodeType  | -  xmlEncodi |              | -  ownerElem |              | space        |
| -  parentNod | ng           |              | ent          |              | -  wholeText |
| e            | -  xmlStanda |              |              |              |              |
| -  childNode | lone         |              |              |              |              |
| s            | -  documentE |              |              |              |              |
| -  firstChil | lement       |              |              |              |              |
| d            |              |              |              |              |              |
| -  lastChild |              |              |              |              |              |
| -  previousS |              |              |              |              |              |
| ibling       |              |              |              |              |              |
| -  nextSibli |              |              |              |              |              |
| ng           |              |              |              |              |              |
| -  attribute |              |              |              |              |              |
| s            |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

The `XMLHttpRequest example </sdk/apps/qml/QtQml/xmlhttprequest/>`__
demonstrates how to use the
`XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject#xmlhttprequest>`__
object to make a request and read the response headers.

