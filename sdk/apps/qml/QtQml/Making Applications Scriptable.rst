.. _sdk_qtqml_making_applications_scriptable:

QtQml Making Applications Scriptable
====================================


Qt provides support for application scripting with JavaScript. The following guides and references cover aspects of programming with JavaScript and Qt.

The following classes add scripting capabilities to Qt applications.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QJSEngine                                                                                                                                              | Environment for evaluating JavaScript code                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QJSValue                                                                                                                                               | Acts as a container for Qt/JavaScript data types                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QJSValueIterator                                                                                                                                       | Java-style iterator for QJSValue                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

To evaluate script code, you create a QJSEngine and call its evaluate() function, passing the script code (text) to evaluate as argument.

.. code:: cpp

    QJSEngine engine;
    qDebug() << "the magic number is:" << engine.evaluate("1 + 2").toNumber();

The return value will be the result of the evaluation (represented as a QJSValue object); this can be converted to standard C++ and Qt types.

Custom properties can be made available to scripts by registering them with the script engine. This is most easily done by setting properties of the script engine's *Global Object*:

.. code:: cpp

    engine.globalObject().setProperty("foo", 123);
    qDebug() << "foo times two is:" << engine.evaluate("foo * 2").toNumber();

This places the properties in the script environment, thus making them available to script code.

Any QObject-based instance can be made available for use with scripts.

When a QObject is passed to the QJSEngine::newQObject() function, a Qt Script wrapper object is created that can be used to make the QObject's signals, slots, properties, and child objects available to scripts.

Here's an example of making an instance of a QObject subclass available to script code under the name ``"myObject"``:

.. code:: cpp

    QJSEngine engine;
    QObject *someObject = new MyObject;
    QJSValue objectValue = engine.newQObject(someObject);
    engine.globalObject().setProperty("myObject", objectValue);

This will create a global variable called ``myObject`` in the script environment. The variable serves as a proxy to the underlying C++ object. Note that the name of the script variable can be anything; i.e., it is not dependent upon QObject::objectName().

