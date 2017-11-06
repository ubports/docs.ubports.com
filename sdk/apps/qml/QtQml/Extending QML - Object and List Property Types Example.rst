.. _sdk_qtqml_extending_qml_-_object_and_list_property_types_example:

QtQml Extending QML - Object and List Property Types Example
============================================================


This example builds on:

-  `Extending QML - Adding Types Example </sdk/apps/qml/QtQml/referenceexamples-adding/>`_ 

The Object and List Property Types example shows how to add object and list properties in QML. This example adds a BirthdayParty type that specifies a birthday party, consisting of a celebrant and a list of guests. People are specified using the People QML type built in the previous example.

.. code:: qml

    BirthdayParty {
        host: Person {
            name: "Bob Jones"
            shoeSize: 12
        }
        guests: [
            Person { name: "Leo Hodges" },
            Person { name: "Jack Smith" },
            Person { name: "Anne Brown" }
        ]
    }

The BirthdayParty class is declared like this:

.. code:: cpp

    class BirthdayParty : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(Person *host READ host WRITE setHost)
        Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
    public:
        BirthdayParty(QObject *parent = 0);
        Person *host() const;
        void setHost(Person *);
        QQmlListProperty<Person> guests();
        int guestCount() const;
        Person *guest(int) const;
    private:
        Person *m_host;
        QList<Person *> m_guests;
    };

The class contains a member to store the celebrant object, and also a QList<Person \*> member.

In QML, the type of a list properties - and the guests property is a list of people - are all of type QQmlListProperty<T>. QQmlListProperty is simple value type that contains a set of function pointers. QML calls these function pointers whenever it needs to read from, write to or otherwise interact with the list. In addition to concrete lists like the people list used in this example, the use of QQmlListProperty allows for "virtual lists" and other advanced scenarios.

The implementation of BirthdayParty property accessors is straight forward.

.. code:: cpp

    Person *BirthdayParty::host() const
    {
        return m_host;
    }
    void BirthdayParty::setHost(Person *c)
    {
        m_host = c;
    }
    QQmlListProperty<Person> BirthdayParty::guests()
    {
        return QQmlListProperty<Person>(this, m_guests);
    }
    int BirthdayParty::guestCount() const
    {
        return m_guests.count();
    }
    Person *BirthdayParty::guest(int index) const
    {
        return m_guests.at(index);
    }

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-  referenceexamples/properties/birthdayparty.cpp
-  referenceexamples/properties/birthdayparty.h
-  referenceexamples/properties/example.qml
-  referenceexamples/properties/person.cpp
-  referenceexamples/properties/person.h
-  referenceexamples/properties/main.cpp
-  referenceexamples/properties/properties.pro
-  referenceexamples/properties/properties.qrc

