The ContactDetail type holds a contact detail such as a phone number or
a website address.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`contactDetail </sdk/apps/qml/QtLocation/ContactDetail#contactDetail-prop>`__****
   : QPlaceContactDetail
-  ****`label </sdk/apps/qml/QtLocation/ContactDetail#label-prop>`__****
   : string
-  ****`value </sdk/apps/qml/QtLocation/ContactDetail#value-prop>`__****
   : string

Detailed Description
--------------------

The `ContactDetail </sdk/apps/qml/QtLocation/ContactDetail/>`__ provides
a single detail on how one could contact a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__. The
`ContactDetail </sdk/apps/qml/QtLocation/ContactDetail/>`__ consists of
a `label </sdk/apps/qml/QtLocation/ContactDetail#label-prop>`__, which
is a localized string describing the contact method, and a
`value </sdk/apps/qml/QtLocation/ContactDetail#value-prop>`__
representing the actual contact detail.

Examples
--------

The following example demonstrates how to assign a single phone number
to a place in JavaScript:

.. code:: qml

    function writeSingle() {
        var phoneNumber = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
        phoneNumber.label = "Phone";
        phoneNumber.value = "555-5555"
        place.contactDetails.phone = phoneNumber;
    }

The following demonstrates how to assign multiple phone numbers to a
place in JavaScript:

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

Note, due to limitations of the QQmlPropertyMap, it is not possible to
declaratively specify the contact details in QML, it can only be
accomplished via JavaScript.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contactDetail : QPlaceContactDetail                             |
+--------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

| 

+--------------------------------------------------------------------------+
|        \ label : string                                                  |
+--------------------------------------------------------------------------+

This property holds a label describing the contact detail.

The label can potentially be localized. The language is dependent on the
entity that sets it, typically this is the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__. The
`Plugin::locales </sdk/apps/qml/QtLocation/Plugin#locales-prop>`__
property defines what language is used.

| 

+--------------------------------------------------------------------------+
|        \ value : string                                                  |
+--------------------------------------------------------------------------+

This property holds the value of the contact detail which may be a phone
number, an email address, a website url and so on.

| 
