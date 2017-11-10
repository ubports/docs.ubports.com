.. _sdk_qtqml_the_qml_type_system:

QtQml The QML Type System
=========================


The types which may be used in the definition of an object hierarchy in a QML document can come from various sources. They may be:

-  provided natively by the QML language
-  registered via C++ by QML modules
-  provided as QML documents by QML modules

Furthermore, application developers can provide their own types, either by registering C++ types directly, or by defining reusable components in QML documents which can then be imported.

Wherever the type definitions come from, the engine will enforce type-safety for properties and instances of those types.

The QML language has built-in support for various primitive types including integers, double-precision floating point numbers, strings, and boolean values. Objects may have properties of these types, and values of these types may be passed as arguments to methods of objects.

See the `QML Basic Types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  documentation for more information about basic types.

JavaScript objects and arrays are supported by the QML engine. Any standard JavaScript type can be created and stored using the generic var type.

For example, the standard ``Date`` and ``Array`` types are available, as below:

.. code:: qml

    import QtQuick 2.0
    Item {
        property var theArray: new Array()
        property var theDate: new Date()
        Component.onCompleted: {
            for (var i = 0; i < 10; i++)
                theArray.push("Item " + i)
            console.log("There are", theArray.length, "items in the array")
            console.log("The time is", theDate.toUTCString())
        }
    }

See `JavaScript Expressions in QML Documents </sdk/apps/qml/QtQml/qtqml-javascript-expressions/>`_  for more details.

A QML object type is a type from which a QML object can be instantiated. QML object types are derived from :ref:`QtObject <sdk_qtqml_qtobject>`, and are provided by QML modules. Applications can import these modules to use the object types they provide. The ``QtQuick`` module provides the most common object types needed to create user interfaces in QML.

Finally, every QML document implicitly defines a QML object type, which can be re-used in other QML documents. See the documentation about `object types in the QML type system </sdk/apps/qml/QtQml/qtqml-typesystem-objecttypes/>`_  for in-depth information about object types.

