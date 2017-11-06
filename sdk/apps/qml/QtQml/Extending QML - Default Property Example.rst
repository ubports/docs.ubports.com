.. _sdk_qtqml_extending_qml_-_default_property_example:

QtQml Extending QML - Default Property Example
==============================================


This example builds on:

-  `Extending QML - Inheritance and Coercion Example </sdk/apps/qml/QtQml/referenceexamples-coercion/>`_ 
-  `Extending QML - Object and List Property Types Example </sdk/apps/qml/QtQml/referenceexamples-properties/>`_ 
-  `Extending QML - Adding Types Example </sdk/apps/qml/QtQml/referenceexamples-adding/>`_ 

The Default Property Example is a minor modification of the `Extending QML - Inheritance and Coercion Example </sdk/apps/qml/QtQml/referenceexamples-coercion/>`_  that simplifies the specification of a BirthdayParty through the use of a default property.

.. code:: qml

    BirthdayParty {
        host: Boy {
            name: "Bob Jones"
            shoeSize: 12
        }
        Boy { name: "Leo Hodges" }
        Boy { name: "Jack Smith" }
        Girl { name: "Anne Brown" }
    }

The only difference between this example and the last, is the addition of the ``DefaultProperty`` class info annotation.

.. code:: cpp

    class BirthdayParty : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(Person *host READ host WRITE setHost)
        Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
        Q_CLASSINFO("DefaultProperty", "guests")
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

The default property specifies the property to assign to whenever an explicit property is not specified, in the case of the BirthdayParty type the guest property. It is purely a syntactic simplification, the behavior is identical to specifying the property by name, but it can add a more natural feel in many situations. The default property must be either an object or list property.

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-  referenceexamples/default/birthdayparty.cpp
-  referenceexamples/default/birthdayparty.h
-  referenceexamples/default/example.qml
-  referenceexamples/default/person.cpp
-  referenceexamples/default/person.h
-  referenceexamples/default/main.cpp
-  referenceexamples/default/default.pro
-  referenceexamples/default/default.qrc

