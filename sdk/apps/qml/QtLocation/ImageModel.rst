.. _sdk_qtlocation_imagemodel:

QtLocation ImageModel
=====================

The ImageModel type provides a model of place images.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`batchSize <sdk_qtlocation_imagemodel_batchSize>` : int
-  :ref:`place <sdk_qtlocation_imagemodel_place>` : Place
-  :ref:`totalCount <sdk_qtlocation_imagemodel_totalCount>` : int

Detailed Description
--------------------

The :ref:`ImageModel <sdk_qtlocation_imagemodel>` is a read-only model used to fetch images related to a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ . Binding a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  via :ref:`ImageModel::place <sdk_qtlocation_imagemodel_place>` initiates an initial fetch of images. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the images currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the images are received. The number of images which are fetched at a time is specified by the :ref:`batchSize <sdk_qtlocation_imagemodel_batchSize>` property. The total number of images available can be accessed via the :ref:`totalCount <sdk_qtlocation_imagemodel_totalCount>` property.

The model returns data for the following roles:

+---------------+------------------------------------------+--------------------------------------------------------------------------+
| Role          | Type                                     | Description                                                              |
+===============+==========================================+==========================================================================+
| url           | url                                      | The URL of the image.                                                    |
+---------------+------------------------------------------+--------------------------------------------------------------------------+
| imageId       | string                                   | The identifier of the image.                                             |
+---------------+------------------------------------------+--------------------------------------------------------------------------+
| mimeType      | string                                   | The MIME type of the image.                                              |
+---------------+------------------------------------------+--------------------------------------------------------------------------+
| supplier      | :ref:`Supplier <sdk_qtlocation_supplier>`   | The supplier of the image.                                            |
+---------------+------------------------------------------+--------------------------------------------------------------------------+
| user          | :ref:`User <sdk_qtlocation_user>`           | The user who contributed the image.                                   |
+---------------+------------------------------------------+--------------------------------------------------------------------------+
| attribution   | string                                   | Attribution text which must be displayed when displaying the image.      |
+---------------+------------------------------------------+--------------------------------------------------------------------------+

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

.. _sdk_qtlocation_imagemodel_batchSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| batchSize : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the batch size to use when fetching more image items.

.. _sdk_qtlocation_imagemodel_place:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| place : :ref:`Place <sdk_qtlocation_place>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the Place that the images are for.

.. _sdk_qtlocation_imagemodel_totalCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| totalCount : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the total number of image items for the place.

