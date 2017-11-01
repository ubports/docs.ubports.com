The PlaceAttribute type holds generic place attribute information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`attribute </sdk/apps/qml/QtLocation/PlaceAttribute#attribute-prop>`__****
   : QPlaceAttribute
-  ****`label </sdk/apps/qml/QtLocation/PlaceAttribute#label-prop>`__****
   : string
-  ****`text </sdk/apps/qml/QtLocation/PlaceAttribute#text-prop>`__****
   : string

Detailed Description
--------------------

A place attribute stores an additional piece of information about a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ that is not
otherwise exposed through the
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ type. A
`PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml#placeattribute>`__
is a textual piece of data, accessible through the
`text </sdk/apps/qml/QtLocation/PlaceAttribute#text-prop>`__ property,
and a `label </sdk/apps/qml/QtLocation/PlaceAttribute#label-prop>`__.
Both the `text </sdk/apps/qml/QtLocation/PlaceAttribute#text-prop>`__
and `label </sdk/apps/qml/QtLocation/PlaceAttribute#label-prop>`__
properties are intended to be displayed to the user. PlaceAttributes are
stored in an
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
map with a unique key.

The following example shows how to display all attributes in a list:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    ListView {
        model: place.extendedAttributes.keys()
        delegate: Text {
            text: "<b>" + place.extendedAttributes[modelData].label + ": </b>" +
                  place.extendedAttributes[modelData].text
        }
    }

The following example shows how to assign and modify an attribute:

.. code:: qml

        //assign a new attribute to a place
        var smokingAttrib = Qt.createQmlObject('import QtLocation 5.3; PlaceAttribute {}', place);
        smokingAttrib.label = "Smoking Allowed"
        smokingAttrib.text = "No"
        place.extendedAttributes.smoking = smokingAttrib;
        //modify an existing attribute
        place.extendedAttributes.smoking.text = "Yes"

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ attribute : QPlaceAttribute                                     |
+--------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

| 

+--------------------------------------------------------------------------+
|        \ label : string                                                  |
+--------------------------------------------------------------------------+

This property holds the attribute label which is a user visible string
describing the attribute.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

This property holds the attribute text which can be used to show
additional information about the place.

| 
