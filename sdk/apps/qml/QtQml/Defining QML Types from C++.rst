.. _sdk_qtqml_defining_qml_types_from_c++:

QtQml Defining QML Types from C++
=================================


When extending QML with C++ code, a C++ class can be registered with the QML type system to enable the class to be used as a data type within QML code. While the properties, methods and signals of any QObject-derived class are accessible from QML, as discussed in `Exposing Attributes of C++ Types to QML </sdk/apps/qml/QtQml/qtqml-cppintegration-exposecppattributes/>`_ , such a class cannot be used as a data type from QML until it is registered with the type system. Additionally registration can provide other features, such as allowing a class to be used as an instantiable `QML object type </sdk/apps/qml/QtQml/qtqml-typesystem-objecttypes/>`_  from QML, or enabling a singleton instance of the class to be imported and used from QML.

Additionally, the `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  module provides mechanisms for implementing QML-specific features such as *attached properties* and *default properties* in C++.

(Note that a number of the important concepts covered in this document are demonstrated in the `Writing QML Extensions with C++ </sdk/apps/qml/QtQml/tutorials-extending-qml/>`_  tutorial.)

A QObject-derived class can be registered with the QML type system to enable the type to be used as a data type from within QML code.

The engine allows the registration of both instantiable and non-instantiable types. Registering an instantiable type enables a C++ class to be used as the definition of a QML object type, allowing it to be used in object declarations from QML code to create objects of this type. Registration also provides the engine with additional type metadata, enabling the type (and any enums declared by the class) to be used as a data type for property values, method parameters and return values, and signal parameters that are exchanged between QML and C++.

Registering a non-instantiable type also registers the class as a data type in this manner, but the type cannot be used instantiated as a QML object type from QML. This is useful, for example, if a type has enums that should be exposed to QML but the type itself should not be instantiable.

**Any QObject-derived C++ class can be registered as the definition of a `QML object type </sdk/apps/qml/QtQml/qtqml-typesystem-objecttypes/>`_ **. Once a class is registered with the QML type system, the class can be declared and instantiated like any other object type from QML code. Once created, a class instance can be manipulated from QML; as `Exposing Attributes of C++ Types to QML </sdk/apps/qml/QtQml/qtqml-cppintegration-exposecppattributes/>`_  explains, the properties, methods and signals of any QObject-derived class are accessible from QML code.

To register a QObject-derived class as an instantiable QML object type, call qmlRegisterType() to register the class as QML type into a particular type namespace. Clients can then import that namespace in order to use the type.

For example, suppose there is a ``Message`` class with ``author`` and ``creationDate`` properties:

.. code:: cpp

    class Message : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)
        Q_PROPERTY(QDateTime creationDate READ creationDate WRITE setCreationDate NOTIFY creationDateChanged)
    public:
        // ...
    };

This type can be registered by calling qmlRegisterType() with an appropriate type namespace and version number. For example, to make the type available in the ``com.mycompany.messaging`` namespace with version 1.0:

.. code:: cpp

    qmlRegisterType<Message>("com.mycompany.messaging", 1, 0, "Message");

The type can be used in an `object declaration </sdk/apps/qml/QtQml/qtqml-syntax-basics/#object-declarations>`_  from QML, and its properties can be read and written to, as per the example below:

.. code:: qml

    import com.mycompany.messaging 1.0
    Message {
        author: "Amelie"
        creationDate: new Date()
    }

Sometimes a QObject-derived class may need to be registered with the QML type system but not as an instantiable type. For example, this is the case if a C++ class:

-  is an interface type that should not be instantiable
-  is a base class type that does not need to be exposed to QML
-  declares some enum that should be accessible from QML, but otherwise should not be instantiable
-  is a type that should be provided to QML through a singleton instance, and should not be instantiable from QML

The `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  module provides several methods for registering non-instantiable types:

-  qmlRegisterType() (with no parameters) registers a C++ type that is not instantiable and cannot be referred to from QML. This enables the engine to coerce any inherited types that are instantiable from QML.
-  qmlRegisterInterface() registers a Qt interface type with a specific QML type name. The type is not instantiable from QML but can be referred to by its type name.
-  qmlRegisterUncreatableType() registers a named C++ type that is not instantiable but should be identifiable as a type to the QML type system. This is useful if a type's enums or attached properties should be accessible from QML but the type itself should not be instantiable.
-  qmlRegisterSingletonType() registers a singleton type that can be imported from QML, as discussed below.

Note that all C++ types registered with the QML type system must be QObject-derived, even if they are non-instantiable.

A singleton type enables properties, signals and methods to be exposed in a namespace without requiring the client to manually instantiate an object instance. QObject singleton types in particular are an efficient and convenient way to provide functionality or global property values.

Note that singleton types do not have an associated QQmlContext as they are shared across all contexts in an engine. QObject singleton type instances are constructed and owned by the QQmlEngine, and will be destroyed when the engine is destroyed.

A QObject singleton type can be interacted with in a manner similar to any other QObject or instantiated type, except that only one (engine constructed and owned) instance will exist, and it must be referenced by type name rather than id. Q\_PROPERTYs of QObject singleton types may be bound to, and Q\_INVOKABLE functions of QObject module APIs may be used in signal handler expressions. This makes singleton types an ideal way to implement styling or theming, and they can also be used instead of ".pragma library" script imports to store global state or to provide global functionality.

Once registered, a QObject singleton type may be imported and used like any other QObject instance exposed to QML. The following example assumes that a QObject singleton type was registered into the "MyThemeModule" namespace with version 1.0, where that QObject has a QColor "color" Q\_PROPERTY:

.. code:: qml

    import MyThemeModule 1.0 as Theme
    Rectangle {
        color: Theme.color // binding.
    }

A QJSValue may also be exposed as a singleton type, however clients should be aware that properties of such a singleton type cannot be bound to.

See qmlRegisterSingletonType() for more information on how implement and register a new singleton type, and how to use an existing singleton type.

Many of the type registration functions require versions to be specified for the registered type. Type revisions and versions allow new properties or methods to exist in the new version while remaining compatible with previous versions.

Consider these two QML files:

.. code:: cpp

    // main.qml
    import QtQuick 1.0
    Item {
        id: root
        MyType {}
    }

.. code:: cpp

    // MyType.qml
    import MyTypes 1.0
    CppType {
        value: root.x
    }

where ``CppType`` maps to the C++ class ``CppType``.

If the author of CppType adds a ``root`` property to CppType in a new version of their type definition, ``root.x`` now resolves to a different value because ``root`` is also the ``id`` of the top level component. The author could specify that the new ``root`` property is available from a specific minor version. This permits new properties and features to be added to existing types without breaking existing programs.

The REVISION tag is used to mark the ``root`` property as added in revision 1 of the type. Methods such as Q\_INVOKABLE's, signals and slots can also be tagged for a revision using the ``Q_REVISION(x)`` macro:

.. code:: cpp

    class CppType : public BaseType
    {
        Q_OBJECT
        Q_PROPERTY(int root READ root WRITE setRoot NOTIFY rootChanged REVISION 1)
    signals:
        Q_REVISION(1) void rootChanged();
    };

To register the new class revision to a particular version the following function is used:

.. code:: cpp

    template<typename T, int metaObjectRevision>
    int qmlRegisterType(const char *uri, int versionMajor, int versionMinor, const char *qmlName)

To register ``CppType`` version 1 for ``MyTypes 1.1``:

.. code:: cpp

    qmlRegisterType<CppType,1>("MyTypes", 1, 1, "CppType")

``root`` is only available when ``MyTypes`` version 1.1 is imported.

For the same reason, new types introduced in later versions should use the minor version argument of qmlRegisterType.

This feature of the language allows for behavioural changes to be made without breaking existing applications. Consequently QML module authors should always remember to document what changed between minor versions, and QML module users should check that their application still runs correctly before deploying an updated import statement.

You may also register the revision of a base class that your type depends upon using the qmlRegisterRevision() function:

.. code:: cpp

    template<typename T, int metaObjectRevision>
    int qmlRegisterRevision(const char *uri, int versionMajor, int versionMinor)
    template<typename T, int metaObjectRevision>
    int qmlRegisterUncreatableType(const char *uri, int versionMajor, int versionMinor, const char *qmlName, const QString& reason)

For example, if ``BaseType`` is changed and now has a revision 1, you can specify that your type uses the new revision:

.. code:: cpp

    qmlRegisterRevision<BaseType,1>("MyTypes", 1, 1);

This is useful when deriving from base classes provided by other authors, e.g. when extending classes from the Qt Quick module.

When integrating existing classes and technology into QML, APIs will often need tweaking to fit better into the declarative environment. Although the best results are usually obtained by modifying the original classes directly, if this is either not possible or is complicated by some other concerns, extension objects allow limited extension possibilities without direct modifications.

*Extension objects* add additional properties to an existing type. Extension objects can only add properties, not signals or methods. An extended type definition allows the programmer to supply an additional type, known as the *extension type*, when registering the class. The properties are transparently merged with the original target class when used from within QML. For example:

.. code:: qml

    QLineEdit {
        leftMargin: 20
    }

The ``leftMargin`` property is a new property added to an existing C++ type, QLineEdit, without modifying its source code.

The qmlRegisterExtendedType() function is for registering extended types. Note that it has two forms.

.. code:: cpp

    template<typename T, typename ExtendedT>
    int qmlRegisterExtendedType(const char *uri, int versionMajor, int versionMinor, const char *qmlName)
    template<typename T, typename ExtendedT>
    int qmlRegisterExtendedType()

This functions should be used instead of the regular ``qmlRegisterType()`` variations. The arguments are identical to the corresponding non-extension registration functions, except for the ExtendedT parameter which is the type of the extension object.

An extension class is a regular QObject, with a constructor that takes a QObject pointer. However, the extension class creation is delayed until the first extended property is accessed. The extension class is created and the target object is passed in as the parent. When the property on the original is accessed, the corresponding property on the extension object is used instead.

The `Extension Objects Example </sdk/apps/qml/QtQml/referenceexamples-extended/>`_  demonstrates a usage of extension objects.

In the QML language syntax, there is a notion of `*attached properties* and *attached signal handlers* </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#attached-properties-and-attached-signal-handlers>`_ , which are additional attributes that are attached to an object. Essentially, such attributes are implemented and provided by an *attaching type*, and these attributes may be *attached* to an object of another type. This contrasts with ordinary object properties which are provided by the object type itself (or the object's inherited type).

For example, the Item below uses attached properties and attached handlers:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 100; height: 100
        focus: true
        Keys.enabled: false
        Keys.onReturnPressed: console.log("Return key was pressed")
    }

Here, the Item object is able to access and set the values of ``Keys.enabled`` and ``Keys.onReturnPressed``. This allows the Item object to access these extra attributes as an extension to its own existing attributes.

When considering the above example, there are several parties involved:

-  There is an instance of an anonymous *attached object type*, with an ``enabled`` and a ``returnPressed`` signal, that has been attached to the Item object to enable it to access and set these attributes.
-  The Item object is the *attachee*, to which the instance of the *attached object type* has been attached.
-  Keys is the *attaching type*, which provides the *attachee* with a named qualifier, "Keys", through which it may access the attributes of the *attached object type*.

When the QML engine processes this code, it creates a single instance of the *attached object type* and attaches this instance to the Item object, thereby providing it with access to the ``enabled`` and ``returnPressed`` attributes of the instance.

The mechanisms for providing attached objects can be implemented from C++ by providing classes for the *attached object type* and *attaching type*. For the *attached object type*, provide a QObject-derived class that defines the attributes to be made accessible to *attachee* objects. For the *attaching type*, provide a QObject-derived class that:

-  implements a static qmlAttachedProperties() with the following signature:

   .. code:: cpp

           static <AttachedPropertiesType> *qmlAttachedProperties(QObject *object);

   This method should return an instance of the *attached object type*.

   The QML engine invokes this method in order to attach an instance of the attached object type to the *attachee* specified by the ``object`` parameter. It is customary, though not strictly required, for this method implementation to parent the returned instance to ``object`` in order to prevent memory leaks.

   This method is called at most once by the engine for each attachee object instance, as the engine caches the returned instance pointer for subsequent attached property accesses. Consequently the attachment object may not be deleted until the attachee ``object`` is destroyed.

-  is declared as an attaching type, by calling the QML\_DECLARE\_TYPEINFO() macro with the QML\_HAS\_ATTACHED\_PROPERTIES flag

For example, take the ``Message`` type described in an `earlier example </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/#registering-an-instantiable-object-type>`_ :

.. code:: cpp

    class Message : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)
        Q_PROPERTY(QDateTime creationDate READ creationDate WRITE setCreationDate NOTIFY creationDateChanged)
    public:
        // ...
    };

Suppose it is necessary to trigger a signal on a ``Message`` when it is published to a message board, and also track when the message has expired on the message board. Since it doesn't make sense to add these attributes directly to a ``Message``, as the attributes are more relevant to the message board context, they could be implemented as *attached* attributes on a ``Message`` object that are provided through a "MessageBoard" qualifier. In terms of the concepts described earlier, the parties involved here are:

-  An instance of an anonymous *attached object type*, which provides a ``published`` signal and an expired property. This type is implemented by ``MessageBoardAttachedType`` below
-  A ``Message`` object, which will be the *attachee*
-  The ``MessageBoard`` type, which will be the *attaching type* that is used by ``Message`` objects to access the attached attributes

Following is an example implementation. First, there needs to be an *attached object type* with the necessary properties and signals that will be accessible to the *attachee*:

.. code:: cpp

    class MessageBoardAttachedType : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(bool expired READ expired WRITE expired NOTIFY expiredChanged)
    public:
        MessageBoardAttachedType(QObject *parent);
        bool expired() const;
        void setExpired(bool expired);
    signals:
        void published();
        void expiredChanged();
    };

Then the *attaching type*, ``MessageBoard``, must declare a ``qmlAttachedProperties()`` method that returns an instance of the *attached object type* as implemented by MessageBoardAttachedType. Additionally, ``Message`` board must be declared as an attached type through the QML\_DECLARE\_TYPEINFO() macro:

.. code:: cpp

    class MessageBoard : public QObject
    {
        Q_OBJECT
    public:
        static MessageBoard *qmlAttachedProperties(QObject *object)
        {
            return new MessageBoardAttachedType(object);
        }
    };
    QML_DECLARE_TYPEINFO(MessageBoard, QML_HAS_ATTACHED_PROPERTIES)

Now, a ``Message`` type can access the properties and signals of the attached object type:

.. code:: qml

    Message {
        author: "Amelie"
        creationDate: new Date()
        MessageBoard.expired: creationDate < new Date("January 01, 2015 10:45:00")
        MessageBoard.onPublished: console.log("Message by", author, "has been
    published!")
    }

Additionally, the C++ implementation may access the attached object instance that has been attached to any object by calling the qmlAttachedPropertiesObject() function.

For example:

.. code:: cpp

    Message *msg = someMessageInstance();
    MessageBoardAttachedType *attached =
            qobject_cast<MessageBoardAttachedType*>(qmlAttachedPropertiesObject<MessageBoard>(msg));
    qDebug() << "Value of MessageBoard.expired:" << attached->expired();

A property modifier type is a special kind of QML object type. A property modifier type instance affects a property (of a QML object instance) which it is applied to. There are two different kinds of property modifier types:

-  property value write interceptors
-  property value sources

A property value write interceptor can be used to filter or modify values as they are written to properties. Currently, the only supported property value write interceptor is the Behavior type provided by the ``QtQuick`` import.

A property value source can be used to automatically update the value of a property over time. Clients can define their own property value source types. The various property animation types provided by the ``QtQuick`` import are examples of property value sources.

Property modifier type instances can be created and applied to a property of a QML object through the "<ModifierType> on <propertyName>" syntax, as the following example shows:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 400
        height: 50
        Rectangle {
            width: 50
            height: 50
            color: "red"
            NumberAnimation on x {
                from: 0
                to: 350
                loops: Animation.Infinite
                duration: 2000
            }
        }
    }

Clients can register their own property value source types, but currently not property value write interceptors.

*Property value sources* are QML types that can automatically update the value of a property over time, using the ``<PropertyValueSource> on <property>`` syntax. For example, the various property animation types provided by the ``QtQuick`` module are examples of property value sources.

A property value source can be implemented in C++ by subclassing QQmlPropertyValueSource and providing an implementation that writes different values to a property over time. When the property value source is applied to a property using the ``<PropertyValueSource> on <property>`` syntax in QML, it is given a reference to this property by the engine so that the property value can be updated.

For example, suppose there is a ``RandomNumberGenerator`` class to be made available as a property value source, so that when applied to a QML property, it will update the property value to a different random number every 500 milliseconds. Additionally, a maxValue can be provided to this random number generator. This class can be implemented as follows:

.. code:: cpp

    class RandomNumberGenerator : public QObject, public QQmlPropertyValueSource
    {
        Q_OBJECT
        Q_INTERFACES(QQmlPropertyValueSource)
        Q_PROPERTY(int maxValue READ maxValue WRITE setMaxValue NOTIFY maxValueChanged);
    public:
        RandomNumberGenerator(QObject *parent)
            : QObject(parent), m_maxValue(100)
        {
            qsrand(QDateTime::currentDateTime().toTime_t());
            QObject::connect(&m_timer, SIGNAL(timeout()), SLOT(updateProperty()));
            m_timer.start(500);
        }
        int maxValue() const;
        void setMaxValue(int maxValue);
        virtual void setTarget(const QQmlProperty &prop) { m_targetProperty = prop; }
    signals:
        void maxValueChanged();
    private slots:
        void updateProperty() {
            m_targetProperty.write(qrand() % m_maxValue);
        }
    private:
        QQmlProperty m_targetProperty;
        QTimer m_timer;
        int m_maxValue;
    };

When the QML engine encounters a use of ``RandomNumberGenerator`` as a property value source, it invokes ``RandomNumberGenerator::setTarget()`` to provide the type with the property to which the value source has been applied. When the internal timer in ``RandomNumberGenerator`` triggers every 500 milliseconds, it will write a new number value to that specified property.

Once the ``RandomNumberGenerator`` class has been registered with the QML type system, it can be used from QML as a property value source. Below, it is used to change the width of a Rectangle every 500 milliseconds:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 300; height: 300
        Rectangle {
            RandomNumberGenerator on width { maxValue: 300 }
            height: 100
            color: "red"
        }
    }

In all other respects, property value sources are regular QML types that can have properties, signals methods and so on, but with the added capability that they can be used to change property values using the ``<PropertyValueSource> on <property>`` syntax.

When a property value source object is assigned to a property, QML first tries to assign it normally, as though it were a regular QML type. Only if this assignment fails does the engine call the setTarget() method. This allows the type to also be used in contexts other than just as a value source.

Any QObject-derived type that is registered as an instantiable QML object type can optionally specify a *default property* for the type. A default property is the property to which an object's children are automatically assigned if they are not assigned to any specific property.

The default property can be set by calling the Q\_CLASSINFO() macro for a class with a specific "DefaultProperty" value. For example, the ``MessageBoard`` class below specifies its ``messages`` property as the default property for the class:

.. code:: cpp

    class MessageBoard : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QQmlListProperty<Message> messages READ messages)
        Q_CLASSINFO("DefaultProperty", "messages")
    public:
        QQmlListProperty<Message> messages() const;
    private:
        QList<Message *> messages;
    };

This enables children of a ``MessageBoard`` object to be automatically assigned to its ``messages`` property if they are not assigned to a specific property. For example:

.. code:: qml

    MessageBoard {
        Message { author: "Naomi" }
        Message { author: "Clancy" }
    }

If ``messages`` was not set as the default property, then any ``Message`` objects would have to be explicitly assigned to the ``messages`` property instead, as follows:

.. code:: qml

    MessageBoard {
        messages: [
            Message { author: "Naomi" },
            Message { author: "Clancy" }
        ]
    }

(Incidentally, the Item::data property is its default property. Any Item objects added to this ``data`` property are also added to the list of Item::children, so the use of the default property enables visual children to be declared for an item without explicitly assigning them to the children property.)

When building user interfaces with the Qt Quick module, all QML objects that are to be visually rendered must derive from the Item type, as it is the base type for all visual objects in Qt Quick. This Item type is implemented by the QQuickItem C++ class, which is provided by the Qt Quick module. Therefore, this class should be subclassed when it is necessary to implement a visual type in C++ that can be integrated into a QML-based user interface.

See the QQuickItem documentation for more information. Additionally, the `Writing QML Extensions with C++ </sdk/apps/qml/QtQml/tutorials-extending-qml/>`_  tutorial demonstrates how a QQuickItem-based visual item can be implemented in C++ and integrated into a Qt Quick-based user interface.

For some custom QML object types, it may be beneficial to delay the initialization of particular data until the object has been created and all of its properties have been set. For example, this may be the case if the initialization is costly, or if the initialization should not be performed until all property values have been initialized.

The Qt QML module provides the QQmlParserStatus to be subclassed for these purposes. It defines a number of virtual methods that are invoked at various stages during component instantiation. To receive these notifications, a C++ class should inherit QQmlParserStatus and also notify the Qt meta system using the Q\_INTERFACES() macro.

For example:

.. code:: cpp

    class MyQmlType : public QObject, public QQmlParserStatus
    {
        Q_OBJECT
        Q_INTERFACES(QQmlParserStatus)
    public:
        virtual void componentComplete()
        {
            // Perform some initialization here now that the object is fully created
        }
    };

