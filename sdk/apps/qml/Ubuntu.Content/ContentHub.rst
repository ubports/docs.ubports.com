The central manager for all content operations

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Signals
-------

-  ****`exportRequested </sdk/apps/qml/Ubuntu.Content/ContentHub#exportRequested-signal>`__****\ (ContentTransfer
   *transfer*)
-  ****`importRequested </sdk/apps/qml/Ubuntu.Content/ContentHub#importRequested-signal>`__****\ (ContentTransfer
   *transfer*)
-  ****`shareRequested </sdk/apps/qml/Ubuntu.Content/ContentHub#shareRequested-signal>`__****\ (ContentTransfer
   *transfer*)

Detailed Description
--------------------

Example usage for importing content:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 0.1
    import Ubuntu.Content 0.1
    MainView {
        id: root
        width: units.gu(60)
        height: units.gu(90)
        property list<ContentItem> importItems
        property var activeTransfer
        ContentPeer {
            id: picSourceSingle
            contentType: ContentType.Pictures
            handler: ContentHandler.Source
            selectionType: ContentTransfer.Single
        }
        ContentPeer {
            id: picSourceMulti
            contentType: ContentType.Pictures
            handler: ContentHandler.Source
            selectionType: ContentTransfer.Multiple
        }
        Row {
            Button {
                text: "Import single item"
                onClicked: {
                    activeTransfer = picSourceSingle.request()
                }
            }
            Button {
                text: "Import multiple items"
                onClicked: {
                    activeTransfer = picSourceMulti.request()
                }
            }
        }
        ContentTransferHint {
            id: importHint
            anchors.fill: parent
            activeTransfer: root.activeTransfer
        }
        Connections {
            target: root.activeTransfer
            onStateChanged: {
                if (root.activeTransfer.state === ContentTransfer.Charged)
                    importItems = root.activeTransfer.items;
            }
        }
    }

Example usage for providing a content export:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Content 0.1
    Rectangle {
        property list<ContentItem> selectedItems
        Connections {
            target: ContentHub
            onExportRequested: {
                // show content picker
                transfer.items = selectedItems;
                transfer.state = ContentTransfer.Charged;
            }
        }
    }

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ exportRequested(`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ |
| ContentTransfer/>`__                                                     |
| *transfer*)                                                              |
+--------------------------------------------------------------------------+

The signal is triggered when an export is requested.

| 

+--------------------------------------------------------------------------+
|        \ importRequested(`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ |
| ContentTransfer/>`__                                                     |
| *transfer*)                                                              |
+--------------------------------------------------------------------------+

The signal is triggered when an import is requested.

| 

+--------------------------------------------------------------------------+
|        \ shareRequested(`ContentTransfer </sdk/apps/qml/Ubuntu.Content/C |
| ontentTransfer/>`__                                                      |
| *transfer*)                                                              |
+--------------------------------------------------------------------------+

The signal is triggered when a share is requested.

| 
