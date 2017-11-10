.. _sdk_qtlocation_editorialmodel:

QtLocation EditorialModel
=========================

The EditorialModel type provides a model of place editorials.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`batchSize <sdk_qtlocation_editorialmodel_batchSize>` : int
-  :ref:`place <sdk_qtlocation_editorialmodel_place>` : Place
-  :ref:`totalCount <sdk_qtlocation_editorialmodel_totalCount>` : int

Detailed Description
--------------------

The :ref:`EditorialModel <sdk_qtlocation_editorialmodel>` is a read-only model used to fetch editorials related to a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ . Binding a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  via :ref:`EditorialModel::place <sdk_qtlocation_editorialmodel_place>` initiates an initial fetch of editorials. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the editorials currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the editorials are received. The number of editorials which are fetched at a time is specified by the :ref:`batchSize <sdk_qtlocation_editorialmodel_batchSize>` property. The total number of editorials available can be accessed via the :ref:`totalCount <sdk_qtlocation_editorialmodel_totalCount>` property.

The model returns data for the following roles:

+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| Role          | Type                                     | Description                                                                                                                               |
+===============+==========================================+===========================================================================================================================================+
| text          | string                                   | The editorial's textual description of the place. It can be either rich (HTML based) text or plain text depending upon the provider.      |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| title         | string                                   | The title of the editorial.                                                                                                               |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| language      | string                                   | The language that the editorial is written in.                                                                                            |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| supplier      | :ref:`Supplier <sdk_qtlocation_supplier>`   | The supplier of the editorial.                                                                                                         |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| user          | :ref:`User <sdk_qtlocation_user>`           | The user who contributed the editorial.                                                                                                |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| attribution   | string                                   | Attribution text which must be displayed when displaying the editorial.                                                                   |
+---------------+------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

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

.. _sdk_qtlocation_editorialmodel_batchSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| batchSize : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the batch size to use when fetching more editorials items.

.. _sdk_qtlocation_editorialmodel_place:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| place : :ref:`Place <sdk_qtlocation_place>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the Place that the editorials are for.

.. _sdk_qtlocation_editorialmodel_totalCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| totalCount : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the total number of editorial items for the place.

