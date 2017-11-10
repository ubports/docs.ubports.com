.. _sdk_qtlocation_extendedattributes:

QtLocation ExtendedAttributes
=============================

The ExtendedAttributes type holds additional data about a Place.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Signals
-------

-  void :ref:`valueChanged <sdk_qtlocation_extendedattributes_valueChanged>`\ (string *key*, variant *value*)

Methods
-------

-  variant :ref:`keys <sdk_qtlocation_extendedattributes_keys>`\ ()

Detailed Description
--------------------

The :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` type is a map of `PlaceAttributes </sdk/apps/qml/QtLocation/location-cpp-qml/#placeattribute>`_ . To access attributes in the map use the :ref:`keys() <sdk_qtlocation_extendedattributes_keys>` method to get the list of keys stored in the map and use the ``[]`` operator to access the `PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml/#placeattribute>`_  items.

The following are standard keys that are defined by the API. `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  implementations are free to define additional keys. Custom keys should be qualified by a unique prefix to avoid clashes.

+------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| key                                            | description                                                                                            |
+================================================+========================================================================================================+
| openingHours                                   | The trading hours of the place                                                                         |
+------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| payment                                        | The types of payment the place accepts, for example visa, mastercard.                                  |
+------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| x\_provider                                    | The name of the provider that a place is sourced from                                                  |
+------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| x\_id\_<provider> (for example x\_id\_nokia)   | An alternative identifier which identifies the place from the perspective of the specified provider.   |
+------------------------------------------------+--------------------------------------------------------------------------------------------------------+

Some plugins may not support attributes at all, others may only support a certain set, others still may support a dynamically changing set of attributes over time or even allow attributes to be arbitrarily defined by the client application. The attributes could also vary on a place by place basis, for example one place may have opening hours while another does not. Consult the `plugin references </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_  for details.

Some attributes may not be intended to be readable by end users, the label field of such attributes is empty to indicate this fact.

**Note:** :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` instances are only ever used in the context of `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ \ s. It is not possible to create an :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` instance directly or re-assign a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ 's :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` property. Modification of :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>` can only be accomplished via Javascript.

The following example shows how to access all `PlaceAttributes </sdk/apps/qml/QtLocation/location-cpp-qml/#placeattribute>`_  and print them to the console:

.. code:: qml

    import QtPositioning 5.2
    import QtLocation 5.3
    function printExtendedAttributes(extendedAttributes) {
        var keys = extendedAttributes.keys();
        for (var i = 0; i < keys.length; ++i) {
            var key = keys[i];
            if (extendedAttributes[key].label !== "")
                console.log(extendedAttributes[key].label + ": " + extendedAttributes[key].text);
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

**See also** `PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml/#placeattribute>`_  and QQmlPropertyMap.

Signal Documentation
--------------------

.. _sdk_qtlocation_extendedattributes_valueChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void valueChanged(string *key*, variant *value*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the set of attributes changes. *key* is the key corresponding to the *value* that was changed.

The corresponding handler is ``onValueChanged``.

Method Documentation
--------------------

.. _sdk_qtlocation_extendedattributes_keys:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| variant keys()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns an array of place attribute keys currently stored in the map.

