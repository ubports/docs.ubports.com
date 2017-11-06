.. _sdk_qtqml_extending_qml_-_adding_types_example:

QtQml Extending QML - Adding Types Example
==========================================


The Adding Types Example shows how to add a new object type, ``Person``, to QML. The ``Person`` type can be used from QML like this:

.. code:: qml

    import People 1.0
    Person {
        name: "Bob Jones"
        shoeSize: 12
    }

All QML types map to C++ types. Here we declare a basic C++ Person class with the two properties we want accessible on the QML type - name and shoeSize. Although in this example we use the same name for the C++ class as the QML type, the C++ class can be named differently, or appear in a namespace.

.. code:: cpp

    class Person : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QString name READ name WRITE setName)
        Q_PROPERTY(int shoeSize READ shoeSize WRITE setShoeSize)
    public:
        Person(QObject *parent = 0);
        QString name() const;
        void setName(const QString &);
        int shoeSize() const;
        void setShoeSize(int);
    private:
        QString m_name;
        int m_shoeSize;
    };

.. code:: cpp

    Person::Person(QObject *parent)
    : QObject(parent), m_shoeSize(0)
    {
    }
    QString Person::name() const
    {
        return m_name;
    }
    void Person::setName(const QString &n)
    {
        m_name = n;
    }
    int Person::shoeSize() const
    {
        return m_shoeSize;
    }
    void Person::setShoeSize(int s)
    {
        m_shoeSize = s;
    }

The Person class implementation is quite basic. The property accessors simply return members of the object instance.

The ``main.cpp`` file also calls the ``qmlRegisterType()`` function to register the ``Person`` type with QML as a type in the People library version 1.0, and defines the mapping between the C++ and QML class names.

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-  referenceexamples/adding/example.qml
-  referenceexamples/adding/person.cpp
-  referenceexamples/adding/person.h
-  referenceexamples/adding/main.cpp
-  referenceexamples/adding/adding.pro
-  referenceexamples/adding/adding.qrc

