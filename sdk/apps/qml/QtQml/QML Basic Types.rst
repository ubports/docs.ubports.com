.. _sdk_qtqml_qml_basic_types:

QtQml QML Basic Types
=====================


QML supports a number of basic types.

A *basic type* is one that refers to a simple value, such as an ``int`` or a ``string``. This contrasts with a `QML Object Types </sdk/apps/qml/QtQml/qtqml-typesystem-topic/#qml-object-types>`_ , which refers to an object with properties, signals, methods and so on. Unlike an object type, a basic type cannot be used to declare QML objects: it is not possible, for example, to declare an ``int{}`` object or a ``size{}`` object.

Basic types can be used to refer to:

-  A single value (e.g. int refers to a single number, var can refer to a single list of items)
-  A value that contains a simple set of property-value pairs (e.g. size refers to a value with ``width`` and ``height`` attributes)

Some basic types are supported by the engine by default and do not require an `import statement </sdk/apps/qml/QtQml/qtqml-syntax-imports/>`_  to be used, while others do require the client to import the module which provides them. All of the basic types listed below may be used as a ``property`` type in a QML document, with the following exceptions:

-  ``list`` must be used in conjunction with a QML object type
-  ``enumeration`` cannot be used directly as the enumeration must be defined by a registered QML object type

The basic types supported natively in the QML language are listed below:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool                                                                                                                                                   | Binary true/false value                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| double                                                                                                                                                 | Number with a decimal point, stored in double precision                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| enumeration                                                                                                                                            | Named enumeration value                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| int                                                                                                                                                    | Whole number, e.g. 0, 10, or -20                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| list                                                                                                                                                   | List of QML objects                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| real                                                                                                                                                   | Number with a decimal point                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| string                                                                                                                                                 | Free form text string                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| url                                                                                                                                                    | Resource locator                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| var                                                                                                                                                    | Generic property type                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

QML modules may extend the QML language with more basic types. For example, the basic types provided by the ``QtQuick`` module are listed below:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| date                                                                                                                                                   | Date value                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| point                                                                                                                                                  | Value with x and y attributes                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| rect                                                                                                                                                   | Value with x, y, width and height attributes                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| size                                                                                                                                                   | Value with width and height attributes                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`Qt <sdk_qtqml_qt>` global object provides useful functions for manipulating values of basic types.

Currently only QML modules which are provided by Qt may provide their own basic types, however this may change in future releases of Qt QML. In order to use types provided by a particular QML module, clients must import that module in their QML documents.

Some basic types have properties: for example, the font type has ``pixelSize``, ``family`` and ``b`` properties. Unlike properties of `object types </sdk/apps/qml/QtQml/qtqml-typesystem-topic/#qml-object-types>`_ , properties of basic types do not provide their own property change signals. It is only possible to create a property change signal handler for the basic type property itself:

.. code:: cpp

    Text {
        // invalid!
        onFont.pixelSizeChanged: doSomething()
        // also invalid!
        font {
            onPixelSizeChanged: doSomething()
        }
        // but this is ok
        onFontChanged: doSomething()
    }

Be aware, however, that a property change signal for a basic type is emitted whenever *any* of its attributes have changed, as well as when the property itself changes. Take the following code, for example:

.. code:: qml

    Text {
        onFontChanged: console.log("font changed")
        Text { id: otherText }
        focus: true
        // changing any of the font attributes, or reassigning the property
        // to a different font value, will invoke the onFontChanged handler
        Keys.onDigit1Pressed: font.pixelSize += 1
        Keys.onDigit2Pressed: font.b = !font.b
        Keys.onDigit3Pressed: font = otherText.font
    }

In contrast, properties of an `object type </sdk/apps/qml/QtQml/qtqml-typesystem-topic/#qml-object-types>`_  emit their own property change signals, and a property change signal handler for an object-type property is only invoked when the property is reassigned to a different object value.

**See also** `The QML Type System </sdk/apps/qml/QtQml/qtqml-typesystem-topic/>`_ .
