Provides additional properties for downloads

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  ****`custom </sdk/apps/qml/Ubuntu.DownloadManager/Metadata#custom-prop>`__****
   : array
-  ****`extract </sdk/apps/qml/Ubuntu.DownloadManager/Metadata#extract-prop>`__****
   : bool
-  ****`showInIndicator </sdk/apps/qml/Ubuntu.DownloadManager/Metadata#showInIndicator-prop>`__****
   : bool
-  ****`title </sdk/apps/qml/Ubuntu.DownloadManager/Metadata#title-prop>`__****
   : string

Detailed Description
--------------------

Metadata provides the ability to set a number of special properties on a
`SingleDownload </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload/>`__,
e.g. to display a download in the transfer indicator, or automatically
extract a download of a zip file upon completion.

Example usage:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.2
    import Ubuntu.DownloadManager 1.2
    Rectangle {
        width: units.gu(100)
        height: units.gu(20)
        TextField {
            id: text
            placeholderText: "File URL to download..."
            height: 50
            anchors {
                left: parent.left
                right: button.left
                rightMargin: units.gu(2)
            }
        }
        Button {
            id: button
            text: "Download"
            height: 50
            anchors.right: parent.right
            onClicked: {
                single.download(text.text);
            }
        }
        ProgressBar {
            minimumValue: 0
            maximumValue: 100
            value: single.progress
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            SingleDownload {
                id: single
                metadata: Metadata {
                    showInIndicator: true
                    title: "Example download"
                }
            }
        }
    }

**See also**
`DownloadManager </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ custom : array                                                  |
+--------------------------------------------------------------------------+

Metadata specific to your application that you wish to associate with
this download. This metadata will persist across application restarts.

| 

+--------------------------------------------------------------------------+
|        \ extract : bool                                                  |
+--------------------------------------------------------------------------+

When set to True the download manager will attempt to automatically
extract zip files when the download finishes. This property defaults to
False.

| 

+--------------------------------------------------------------------------+
|        \ showInIndicator : bool                                          |
+--------------------------------------------------------------------------+

Specifies whether this download should be displayed in the transfers
indicator, defaults to False.

| 

+--------------------------------------------------------------------------+
|        \ title : string                                                  |
+--------------------------------------------------------------------------+

This sets the name to display in the transfer indicator for this
download, this property is only used if
`showInIndicator </sdk/apps/qml/Ubuntu.DownloadManager/Metadata#showInIndicator-prop>`__
is True.

| 
