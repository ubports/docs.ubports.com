Holds data regarding the supplier of a place, a place's image, review,
or editorial.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`icon </sdk/apps/qml/QtLocation/Supplier#icon-prop>`__**** :
   PlaceIcon
-  ****`name </sdk/apps/qml/QtLocation/Supplier#name-prop>`__**** :
   string
-  ****`supplier </sdk/apps/qml/QtLocation/Supplier#supplier-prop>`__****
   : QPlaceSupplier
-  ****`supplierId </sdk/apps/qml/QtLocation/Supplier#supplierId-prop>`__****
   : string
-  ****`url </sdk/apps/qml/QtLocation/Supplier#url-prop>`__**** : url

Detailed Description
--------------------

Each instance represents a set of data about a supplier, which can
include supplier's name, url and icon. The supplier is typically a
business or organization.

Note: The Places API only supports suppliers as 'retrieve-only' objects.
Submitting suppliers to a provider is not a supported use case.

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

**See also** `ImageModel </sdk/apps/qml/QtLocation/ImageModel/>`__,
`ReviewModel </sdk/apps/qml/QtLocation/ReviewModel/>`__, and
`EditorialModel </sdk/apps/qml/QtLocation/EditorialModel/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ icon : PlaceIcon                                                |
+--------------------------------------------------------------------------+

This property holds the icon of the supplier.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the supplier which can be displayed to
the user.

The name can potentially be localized. The language is dependent on the
entity that sets it, typically this is the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__. The
`Plugin::locales </sdk/apps/qml/QtLocation/Plugin#locales-prop>`__
property defines what language is used.

| 

+--------------------------------------------------------------------------+
|        \ supplier : QPlaceSupplier                                       |
+--------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

| 

+--------------------------------------------------------------------------+
|        \ supplierId : string                                             |
+--------------------------------------------------------------------------+

This property holds the identifier of the supplier. The identifier is
unique to the Plugin backend which provided the supplier and is
generally not suitable for displaying to the user.

| 

+--------------------------------------------------------------------------+
|        \ url : `url </sdk/apps/qml/QtLocation/Supplier#url-prop>`__      |
+--------------------------------------------------------------------------+

This property holds the URL of the supplier's website.

| 
