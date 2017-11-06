.. _sdk_qtqml_data_type_conversion_between_qml_and_c++:

QtQml Data Type Conversion Between QML and C++
==============================================


When data values are exchanged between QML and C++, they are converted by the QML engine to have the correct data types as appropriate for use in QML or C++. This requires the exchanged data to be of a type that is recognizable by the engine.

The QML engine provides built-in support for a large number of Qt C++ data types. Additionally, custom C++ types may be registered with the QML type system to make them available to the engine.

This page discusses the data types supported by the QML engine and how they are converted between QML and C++.

When data is transferred from C++ to QML, the ownership of the data always remains with C++. The exception to this rule is when a QObject is returned from an explicit C++ method call: in this case, the QML engine assumes ownership of the object, unless the ownership of the object has explicitly been set to remain with C++ by invoking QQmlEngine::setObjectOwnership() with QQmlEngine::CppOwnership specified.

Additionally, the QML engine respects the normal QObject parent ownership semantics of Qt C++ objects, and will not ever take ownership of a QObject instance which already has a parent.

By default, QML recognizes the following Qt data types, which are automatically converted to a corresponding `QML basic type </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  when passed from C++ to QML and vice-versa:

+-----------------------------------+--------------------------------+
| Qt Type                           | QML Basic Type                 |
+-----------------------------------+--------------------------------+
| bool                              | bool                           |
+-----------------------------------+--------------------------------+
| unsigned int, int                 | int                            |
+-----------------------------------+--------------------------------+
| double                            | double                         |
+-----------------------------------+--------------------------------+
| float, qreal                      | real                           |
+-----------------------------------+--------------------------------+
| QString                           | string                         |
+-----------------------------------+--------------------------------+
| QUrl                              | url                            |
+-----------------------------------+--------------------------------+
| QColor                            | color                          |
+-----------------------------------+--------------------------------+
| QFont                             | font                           |
+-----------------------------------+--------------------------------+
| QDate                             | date                           |
+-----------------------------------+--------------------------------+
| QPoint, QPointF                   | point                          |
+-----------------------------------+--------------------------------+
| QSize, QSizeF                     | size                           |
+-----------------------------------+--------------------------------+
| QRect, QRectF                     | rect                           |
+-----------------------------------+--------------------------------+
| QMatrix4x4                        | matrix4x4                      |
+-----------------------------------+--------------------------------+
| QQuaternion                       | quaternion                     |
+-----------------------------------+--------------------------------+
| QVector2D, QVector3D, QVector4D   | vector2d, vector3d, vector4d   |
+-----------------------------------+--------------------------------+
| Enums declared with Q\_ENUMS()    | enumeration                    |
+-----------------------------------+--------------------------------+

**Note:** Classes provided by the Qt GUI module, such as QColor, QFont, QQuaternion and QMatrix4x4, are only available from QML when the Qt Quick module is included.

As a convenience, many of these types can be specified in QML by string values, or by a related method provided by the QtQml::Qt object. For example, the Image::sourceSize property is of type size (which automatically translates to the QSize type) and can be specified by a string value formatted as "width``x``\ height", or by the Qt.size() function:

.. code:: qml

    Item {
        Image { sourceSize: "100x200" }
        Image { sourceSize: Qt.size(100, 200) }
    }

See documentation for each individual type under `QML Basic Types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  for more information.

Any QObject-derived class may be used as a type for the exchange of data between QML and C++, providing the class has been registered with the QML type system.

The engine allows the registration of both instantiable and non-instantiable types. Once a class is registered as a QML type, it can be used as a data type for exchanging data between QML and C++. See `Registering C++ types with the QML type system </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/#registering-c-types-with-the-qml-type-system>`_  for further details on type registration.

The QML engine has built-in support for converting a number of Qt types to related JavaScript types, and vice-versa, when transferring data between QML and C++. This makes it possible to use these types and receive them in C++ or JavaScript without needing to implement custom types that provide access to the data values and their attributes.

(Note that the JavaScript environment in QML modifies native JavaScript object prototypes, including those of ``String``, ``Date`` and ``Number``, to provide additional features. See the `JavaScript Host Environment </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/>`_  for further details.)

The QML engine provides automatic type conversion between QVariantList and JavaScript arrays, and between QVariantMap and JavaScript objects.

For example, the function defined in QML below left expects two arguments, an array and an object, and prints their contents using the standard JavaScript syntax for array and object item access. The C++ code below right calls this function, passing a QVariantList and a QVariantMap, which are automatically converted to JavaScript array and object values, repectively:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // MyItem.qml                                                                                                                                      |     // C++                                                                                                                                             |
|     Item {                                                                                                                                             |     QQuickView view(QUrl::fromLocalFile("MyItem.qml"));                                                                                                |
|         function readValues(anArray, anObject) {                                                                                                       |     QVariantList list;                                                                                                                                 |
|             for (var i=0; i<anArray.length; i++)                                                                                                       |     list << 10 << QColor(Qt::green) << "bottles";                                                                                                      |
|                 console.log("Array item:", anArray[i])                                                                                                 |     QVariantMap map;                                                                                                                                   |
|             for (var prop in anObject) {                                                                                                               |     map.insert("language", "QML");                                                                                                                     |
|                 console.log("Object item:", prop, "=", anObject[prop])                                                                                 |     map.insert("released", QDate(2010, 9, 21));                                                                                                        |
|             }                                                                                                                                          |     QMetaObject::invokeMethod(view.rootObject(), "readValues",                                                                                         |
|         }                                                                                                                                              |             Q_ARG(QVariant, QVariant::fromValue(list)),                                                                                                |
|     }                                                                                                                                                  |             Q_ARG(QVariant, QVariant::fromValue(map)));                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

This produces output like:

.. code:: cpp

    Array item: 10
    Array item: #00ff00
    Array item: bottles
    Object item: language = QML
    Object item: released = Tue Sep 21 2010 00:00:00 GMT+1000 (EST)

Similarly, if a C++ type uses a QVariantList or QVariantMap type for a property type or method parameter, the value can be created as a JavaScript array or object in QML, and is automatically converted to a QVariantList or QVariantMap when it is passed to C++.

The QML engine provides automatic type conversion between QDateTime values and JavaScript ``Date`` objects.

For example, the function defined in QML below left expects a JavaScript ``Date`` object, and also returns a new ``Date`` object with the current date and time. The C++ code below right calls this function, passing a QDateTime value that is automatically converted by the engine into a ``Date`` object when it is passed to the ``readDate()`` function. In turn, the readDate() function returns a ``Date`` object that is automatically converted into a QDateTime value when it is received in C++:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // MyItem.qml                                                                                                                                      |     // C++                                                                                                                                             |
|     Item {                                                                                                                                             |     QQuickView view(QUrl::fromLocalFile("MyItem.qml"));                                                                                                |
|         function readDate(dt) {                                                                                                                        |     QDateTime dateTime = QDateTime::currentDateTime();                                                                                                 |
|             console.log("The given date is:", dt.toUTCString());                                                                                       |     QDateTime retValue;                                                                                                                                |
|             return new Date();                                                                                                                         |     QMetaObject::invokeMethod(view.rootObject(), "readDate",                                                                                           |
|         }                                                                                                                                              |             Q_RETURN_ARG(QVariant, retValue),                                                                                                          |
|     }                                                                                                                                                  |             Q_ARG(QVariant, QVariant::fromValue(dateTime)));                                                                                           |
|                                                                                                                                                        |     qDebug() << "Value returned from readDate():" << retValue;                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Similarly, if a C++ type uses a QDateTime for a property type or method parameter, the value can be created as a JavaScript ``Date`` object in QML, and is automatically converted to a QDateTime value when it is passed to C++.

Certain C++ sequence types are supported transparently in QML as JavaScript ``Array`` types.

In particular, QML currently supports:

-  ``QList<int>``
-  ``QList<qreal>``
-  ``QList<bool>``
-  ``QList<QString>`` and ``QStringList``
-  ``QList<QUrl>``

These sequence types are implemented directly in terms of the underlying C++ sequence. There are two ways in which such sequences can be exposed to QML: as a Q\_PROPERTY of the given sequence type; or as the return type of a Q\_INVOKABLE method. There are some differences in the way these are implemented, which are important to note.

If the sequence is exposed as a Q\_PROPERTY, accessing any value in the sequence by index will cause the sequence data to be read from the QObject's property, then a read to occur. Similarly, modifying any value in the sequence will cause the sequence data to be read, and then the modification will be performed and the modified sequence will be written back to the QObject's property.

If the sequence is returned from a Q\_INVOKABLE function, access and mutation is much cheaper, as no QObject property read or write occurs; instead, the C++ sequence data is accessed and modified directly.

Other sequence types are not supported transparently, and instead an instance of any other sequence type will be passed between QML and C++ as an opaque QVariantList.

**Important Note:** There are some minor differences between the semantics of such sequence Array types and default JavaScript Array types which result from the use of a C++ storage type in the implementation. In particular, deleting an element from an Array will result in a default-constructed value replacing that element, rather than an Undefined value. Similarly, setting the length property of the Array to a value larger than its current value will result in the Array being padded out to the specified length with default-constructed elements rather than Undefined elements. Finally, the Qt container classes support signed (rather than unsigned) integer indexes; thus, attempting to access any index greater than INT\_MAX will fail.

The default-constructed values for each sequence type are as follows:

+----------------------------------+---------------------------+
| QList<int>                       | integer value 0           |
+----------------------------------+---------------------------+
| QList<qreal>                     | real value 0.0            |
+----------------------------------+---------------------------+
| QList<bool>                      | boolean value ``false``   |
+----------------------------------+---------------------------+
| QList<QString> and QStringList   | empty QString             |
+----------------------------------+---------------------------+
| QList<QUrl>                      | empty QUrl                |
+----------------------------------+---------------------------+

If you wish to remove elements from a sequence rather than simply replace them with default constructed values, do not use the indexed delete operator ("delete sequence[i]") but instead use the ``splice`` function ("sequence.splice(startIndex, deleteCount)").

To use a custom enumeration as a data type, its class must be registered and the enumeration must also be declared with Q\_ENUMS() to register it with Qt's meta object system. For example, the ``Message`` class below has a ``Status`` enum:

.. code:: cpp

     class Message : public QObject
     {
         Q_OBJECT
         Q_ENUMS(Status)
         Q_PROPERTY(Status status READ status NOTIFY statusChanged)
     public:
         enum Status {
             Ready,
             Loading,
             Error
         };
         Status status() const;
     signals:
         void statusChanged();
     };

Providing the ``Message`` class has been `registered </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/#registering-c-types-with-the-qml-type-system>`_  with the QML type system, its ``Status`` enum can be used from QML:

.. code:: qml

    Message {
         onStatusChanged: {
             if (status == Message.Ready)
                 console.log("Message is loaded!")
         }
     }

**Note:** The names of enum values must begin with a capital letter in order to be accessible from QML.

C++ signals and methods with enumeration-type parameters can be used from QML provided that the enumeration and the signal or method are both declared within the same class, or that the enumeration value is one of those declared in the :ref:`Qt Namespace <sdk_qtqml_qt>`.

Additionally, if a C++ signal with an enum parameter should be connectable to a QML function using the `connect() </sdk/apps/qml/QtQml/qtqml-syntax-signals/#connecting-signals-to-methods-and-signals>`_  function, the enum type must be registered using qRegisterMetaType().

For QML signals, enum values may be passed as signal parameters using the ``int`` type:

.. code:: qml

     Message {
         signal someOtherSignal(int statusValue)
         Component.onCompleted: {
             someOtherSignal(Message.Loading)
         }
     }

