.. _sdk_qtlocation_contactdetails:

QtLocation ContactDetails
=========================

The ContactDetails type holds contact details for a Place.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Methods
-------

-  variant :ref:`keys <sdk_qtlocation_contactdetails_keys>`\ ()

Detailed Description
--------------------

The :ref:`ContactDetails <sdk_qtlocation_contactdetails>` type is a map of :ref:`ContactDetail <sdk_qtlocation_contactdetail>` objects. To access contact details in the map use the :ref:`keys() <sdk_qtlocation_contactdetails_keys>` method to get the list of keys stored in the map and then use the ``[]`` operator to access the :ref:`ContactDetail <sdk_qtlocation_contactdetail>` items.

The following keys are defined in the API. `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  implementations are free to define additional keys.

-  phone
-  fax
-  email
-  website

:ref:`ContactDetails <sdk_qtlocation_contactdetails>` instances are only ever used in the context of `Places </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ . It is not possible to create a :ref:`ContactDetails <sdk_qtlocation_contactdetails>` instance directly or re-assign :ref:`ContactDetails <sdk_qtlocation_contactdetails>` instances to `Places </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ . Modification of :ref:`ContactDetails <sdk_qtlocation_contactdetails>` can only be accomplished via Javascript.

Examples
--------

The following example shows how to access all :ref:`ContactDetails <sdk_qtlocation_contactdetail>` and print them to the console:

.. code:: qml

    import QtPositioning 5.2
    import QtLocation 5.3
    function printContactDetails(contactDetails) {
        var keys = contactDetails.keys();
        for (var i = 0; i < keys.length; ++i) {
            var contactList = contactDetails[keys[i]];
            for (var j = 0; j < contactList.length; ++j) {
                console.log(contactList[j].label + ": " + contactList[j].value);
            }
        }
    }

The returned list of contact details is an object list and so can be used directly as a data model. For example, the following demonstrates how to display a list of contact phone numbers in a list view:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    ListView {
        model: place.contactDetails.phone;
        delegate: Text { text: modelData.label + ": " + modelData.value }
    }

The following example demonstrates how to assign a single phone number to a place in JavaScript:

.. code:: qml

    function writeSingle() {
        var phoneNumber = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
        phoneNumber.label = "Phone";
        phoneNumber.value = "555-5555"
        place.contactDetails.phone = phoneNumber;
    }

The following demonstrates how to assign multiple phone numbers to a place in JavaScript:

.. code:: qml

    function writeMultiple() {
        var bob = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
        bob.label = "Bob";
        bob.value = "555-5555"
        var alice = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
        alice.label = "Alice";
        alice.value = "555-8745"
        var numbers = new Array();
        numbers.push(bob);
        numbers.push(alice);
        place.contactDetails.phone = numbers;
    }

Method Documentation
--------------------

.. _sdk_qtlocation_contactdetails_keys:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| variant keys()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns an array of contact detail keys currently stored in the map.

