.. _sdk_qtlocation_user:

QtLocation User
===============

The User type identifies a user who contributed a particular Place content item.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`name <sdk_qtlocation_user_name>` : string
-  :ref:`user <sdk_qtlocation_user_user>` : QPlaceUser
-  :ref:`userId <sdk_qtlocation_user_userId>` : string

Detailed Description
--------------------

Each `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  content item has an associated user who contributed the content. This type provides information about that user.

Example
-------

The following example shows how to display information about the user who submitted an editorial:

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

**See also** :ref:`ImageModel <sdk_qtlocation_imagemodel>`, :ref:`ReviewModel <sdk_qtlocation_reviewmodel>`, and :ref:`EditorialModel <sdk_qtlocation_editorialmodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_user_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of a user.

.. _sdk_qtlocation_user_user:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| user : QPlaceUser                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_user_userId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| userId : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the unique identifier of the user.

