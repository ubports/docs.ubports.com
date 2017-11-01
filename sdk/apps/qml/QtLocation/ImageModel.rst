The ImageModel type provides a model of place images.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`batchSize </sdk/apps/qml/QtLocation/ImageModel#batchSize-prop>`__****
   : int
-  ****`place </sdk/apps/qml/QtLocation/ImageModel#place-prop>`__**** :
   Place
-  ****`totalCount </sdk/apps/qml/QtLocation/ImageModel#totalCount-prop>`__****
   : int

Detailed Description
--------------------

The `ImageModel </sdk/apps/qml/QtLocation/ImageModel/>`__ is a read-only
model used to fetch images related to a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__. Binding a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ via
`ImageModel::place </sdk/apps/qml/QtLocation/ImageModel#place-prop>`__
initiates an initial fetch of images. The model performs fetches
incrementally and is intended to be used in conjunction with a View such
as a ListView. When the View reaches the last of the images currently in
the model, a fetch is performed to retrieve more if they are available.
The View is automatically updated as the images are received. The number
of images which are fetched at a time is specified by the
`batchSize </sdk/apps/qml/QtLocation/ImageModel#batchSize-prop>`__
property. The total number of images available can be accessed via the
`totalCount </sdk/apps/qml/QtLocation/ImageModel#totalCount-prop>`__
property.

The model returns data for the following roles:

+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| Role          | Type                                                | Description                                                           |
+===============+=====================================================+=======================================================================+
| url           | url                                                 | The URL of the image.                                                 |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| imageId       | string                                              | The identifier of the image.                                          |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| mimeType      | string                                              | The MIME type of the image.                                           |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| supplier      | `Supplier </sdk/apps/qml/QtLocation/Supplier/>`__   | The supplier of the image.                                            |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| user          | `User </sdk/apps/qml/QtLocation/User/>`__           | The user who contributed the image.                                   |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+
| attribution   | string                                              | Attribution text which must be displayed when displaying the image.   |
+---------------+-----------------------------------------------------+-----------------------------------------------------------------------+

Example
-------

The following example shows how to display images for a place:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    ImageModel {
        id: imageModel
        batchSize: 3
        place: place
    }
    ListView {
        anchors.top: parent.top
        width: parent.width
        spacing: 10
        model: imageModel
        orientation: ListView.Horizontal
        snapMode: ListView.SnapOneItem
        delegate: Item {
            width: listView.width
            height: listView.height
            Image {
                anchors.fill: parent
                source: url
                fillMode: Image.PreserveAspectFit
            }
            Text {
                text: supplier.name + "\n" + supplier.url
                width: parent.width
                anchors.bottom: parent.bottom
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ batchSize : int                                                 |
+--------------------------------------------------------------------------+

This property holds the batch size to use when fetching more image
items.

| 

+--------------------------------------------------------------------------+
|        \ place : `Place </sdk/apps/qml/QtLocation/Place/>`__             |
+--------------------------------------------------------------------------+

This property holds the Place that the images are for.

| 

+--------------------------------------------------------------------------+
|        \ totalCount : int                                                |
+--------------------------------------------------------------------------+

This property holds the total number of image items for the place.

| 
