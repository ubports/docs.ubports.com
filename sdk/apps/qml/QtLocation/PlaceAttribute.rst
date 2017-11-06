.. _sdk_qtlocation_placeattribute:

QtLocation PlaceAttribute
=========================

The PlaceAttribute type holds generic place attribute information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`attribute <sdk_qtlocation_placeattribute_attribute>` : QPlaceAttribute
-  :ref:`label <sdk_qtlocation_placeattribute_label>` : string
-  :ref:`text <sdk_qtlocation_placeattribute_text>` : string

Detailed Description
--------------------

A place attribute stores an additional piece of information about a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  that is not otherwise exposed through the `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  type. A `PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml/#placeattribute>`_  is a textual piece of data, accessible through the :ref:`text <sdk_qtlocation_placeattribute_text>` property, and a :ref:`label <sdk_qtlocation_placeattribute_label>`. Both the :ref:`text <sdk_qtlocation_placeattribute_text>` and :ref:`label <sdk_qtlocation_placeattribute_label>` properties are intended to be displayed to the user. PlaceAttributes are stored in an :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` map with a unique key.

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

.. _sdk_qtlocation_placeattribute_attribute:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| attribute : QPlaceAttribute                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_placeattribute_label:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| label : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the attribute label which is a user visible string describing the attribute.

.. _sdk_qtlocation_placeattribute_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the attribute text which can be used to show additional information about the place.

