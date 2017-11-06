.. _sdk_qtlocation_supplier:

QtLocation Supplier
===================

Holds data regarding the supplier of a place, a place's image, review, or editorial.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`icon <sdk_qtlocation_supplier_icon>` : PlaceIcon
-  :ref:`name <sdk_qtlocation_supplier_name>` : string
-  :ref:`supplier <sdk_qtlocation_supplier_supplier>` : QPlaceSupplier
-  :ref:`supplierId <sdk_qtlocation_supplier_supplierId>` : string
-  :ref:`url <sdk_qtlocation_supplier_url>` : url

Detailed Description
--------------------

Each instance represents a set of data about a supplier, which can include supplier's name, url and icon. The supplier is typically a business or organization.

Note: The Places API only supports suppliers as 'retrieve-only' objects. Submitting suppliers to a provider is not a supported use case.

Example
-------

The following example shows how to create and display a supplier in QML:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    Supplier {
        id: placeSupplier
        name: "Example"
        url: "http://www.example.com/"
    }
    Text {
        text: "This place is was provided by " + placeSupplier.name + "\n" + placeSupplier.url
    }

**See also** :ref:`ImageModel <sdk_qtlocation_imagemodel>`, :ref:`ReviewModel <sdk_qtlocation_reviewmodel>`, and :ref:`EditorialModel <sdk_qtlocation_editorialmodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_supplier_icon:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon : PlaceIcon                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the icon of the supplier.

.. _sdk_qtlocation_supplier_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the supplier which can be displayed to the user.

The name can potentially be localized. The language is dependent on the entity that sets it, typically this is the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . The :ref:`Plugin::locales <sdk_qtlocation_plugin_locales>` property defines what language is used.

.. _sdk_qtlocation_supplier_supplier:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supplier : QPlaceSupplier                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_supplier_supplierId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supplierId : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the identifier of the supplier. The identifier is unique to the Plugin backend which provided the supplier and is generally not suitable for displaying to the user.

.. _sdk_qtlocation_supplier_url:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| url : :ref:`url <sdk_qtlocation_supplier_url>`                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the URL of the supplier's website.

