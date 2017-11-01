The ExtendedAttributes type holds additional data about a Place.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Signals
-------

-  void
   ****`valueChanged </sdk/apps/qml/QtLocation/ExtendedAttributes#valueChanged-signal>`__****\ (string
   *key*, variant *value*)

Methods
-------

-  variant
   ****`keys </sdk/apps/qml/QtLocation/ExtendedAttributes#keys-method>`__****\ ()

Detailed Description
--------------------

The
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
type is a map of
`PlaceAttributes </sdk/apps/qml/QtLocation/location-cpp-qml#placeattribute>`__.
To access attributes in the map use the
`keys() </sdk/apps/qml/QtLocation/ExtendedAttributes#keys-method>`__
method to get the list of keys stored in the map and use the ``[]``
operator to access the
`PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml#placeattribute>`__
items.

The following are standard keys that are defined by the API.
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
implementations are free to define additional keys. Custom keys should
be qualified by a unique prefix to avoid clashes.

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

Some plugins may not support attributes at all, others may only support
a certain set, others still may support a dynamically changing set of
attributes over time or even allow attributes to be arbitrarily defined
by the client application. The attributes could also vary on a place by
place basis, for example one place may have opening hours while another
does not. Consult the `plugin
references </sdk/apps/qml/QtLocation/qtlocation-index#plugin-references-and-parameters>`__
for details.

Some attributes may not be intended to be readable by end users, the
label field of such attributes is empty to indicate this fact.

**Note:**
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
instances are only ever used in the context of
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__\ s. It is
not possible to create an
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
instance directly or re-assign a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__'s
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
property. Modification of
`ExtendedAttributes </sdk/apps/qml/QtLocation/ExtendedAttributes/>`__
can only be accomplished via Javascript.

The following example shows how to access all
`PlaceAttributes </sdk/apps/qml/QtLocation/location-cpp-qml#placeattribute>`__
and print them to the console:

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

**See also**
`PlaceAttribute </sdk/apps/qml/QtLocation/location-cpp-qml#placeattribute>`__
and QQmlPropertyMap.

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void valueChanged(string *key*, variant *value*)                |
+--------------------------------------------------------------------------+

This signal is emitted when the set of attributes changes. *key* is the
key corresponding to the *value* that was changed.

The corresponding handler is ``onValueChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ variant keys()                                                  |
+--------------------------------------------------------------------------+

Returns an array of place attribute keys currently stored in the map.

| 
