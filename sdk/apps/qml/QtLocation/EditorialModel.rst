The EditorialModel type provides a model of place editorials.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`batchSize </sdk/apps/qml/QtLocation/EditorialModel#batchSize-prop>`__****
   : int
-  ****`place </sdk/apps/qml/QtLocation/EditorialModel#place-prop>`__****
   : Place
-  ****`totalCount </sdk/apps/qml/QtLocation/EditorialModel#totalCount-prop>`__****
   : int

Detailed Description
--------------------

The `EditorialModel </sdk/apps/qml/QtLocation/EditorialModel/>`__ is a
read-only model used to fetch editorials related to a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__. Binding a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ via
`EditorialModel::place </sdk/apps/qml/QtLocation/EditorialModel#place-prop>`__
initiates an initial fetch of editorials. The model performs fetches
incrementally and is intended to be used in conjunction with a View such
as a ListView. When the View reaches the last of the editorials
currently in the model, a fetch is performed to retrieve more if they
are available. The View is automatically updated as the editorials are
received. The number of editorials which are fetched at a time is
specified by the
`batchSize </sdk/apps/qml/QtLocation/EditorialModel#batchSize-prop>`__
property. The total number of editorials available can be accessed via
the
`totalCount </sdk/apps/qml/QtLocation/EditorialModel#totalCount-prop>`__
property.

The model returns data for the following roles:

+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| Role          | Type                                                | Description                                                                                                                            |
+===============+=====================================================+========================================================================================================================================+
| text          | string                                              | The editorial's textual description of the place. It can be either rich (HTML based) text or plain text depending upon the provider.   |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| title         | string                                              | The title of the editorial.                                                                                                            |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| language      | string                                              | The language that the editorial is written in.                                                                                         |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| supplier      | `Supplier </sdk/apps/qml/QtLocation/Supplier/>`__   | The supplier of the editorial.                                                                                                         |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| user          | `User </sdk/apps/qml/QtLocation/User/>`__           | The user who contributed the editorial.                                                                                                |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| attribution   | string                                              | Attribution text which must be displayed when displaying the editorial.                                                                |
+---------------+-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

Example
-------

The following example shows how to display editorials for a place:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    EditorialModel {
        id: editorialModel
        batchSize: 3
        place: place
    }
    ListView {
        model: editorialModel
        delegate: Item {
            anchors.fill: parent
            Column {
                width: parent.width
                clip: true
                Text {
                    text: title
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: 24
                }
                Text {
                    text: text
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: 20
                }
                Row {
                    Image {
                        width: 16
                        height: 16
                        source: supplier.icon.url(Qt.size(width, height), Icon.List)
                    }
                    Text {
                        text: "Provided by " + supplier.name
                        font.pixelSize: 16
                    }
                }
                Text {
                    text: "Contributed by " + user.name
                    font.pixelSize: 16
                }
                Text {
                    text: attribution
                    font.pixelSize: 8
                }
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ batchSize : int                                                 |
+--------------------------------------------------------------------------+

This property holds the batch size to use when fetching more editorials
items.

| 

+--------------------------------------------------------------------------+
|        \ place : `Place </sdk/apps/qml/QtLocation/Place/>`__             |
+--------------------------------------------------------------------------+

This property holds the Place that the editorials are for.

| 

+--------------------------------------------------------------------------+
|        \ totalCount : int                                                |
+--------------------------------------------------------------------------+

This property holds the total number of editorial items for the place.

| 
