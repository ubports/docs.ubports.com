.. _sdk_ubuntu_downloadmanager_metadata:

Ubuntu.DownloadManager Metadata
===============================

Provides additional properties for downloads

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  :ref:`custom <sdk_ubuntu_downloadmanager_metadata_custom>` : array
-  :ref:`extract <sdk_ubuntu_downloadmanager_metadata_extract>` : bool
-  :ref:`showInIndicator <sdk_ubuntu_downloadmanager_metadata_showInIndicator>` : bool
-  :ref:`title <sdk_ubuntu_downloadmanager_metadata_title>` : string

Detailed Description
--------------------

Metadata provides the ability to set a number of special properties on a :ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>`, e.g. to display a download in the transfer indicator, or automatically extract a download of a zip file upon completion.

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

**See also** :ref:`DownloadManager <sdk_ubuntu_downloadmanager_downloadmanager>`.

Property Documentation
----------------------

.. _sdk_ubuntu_downloadmanager_metadata_custom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| custom : array                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Metadata specific to your application that you wish to associate with this download. This metadata will persist across application restarts.

.. _sdk_ubuntu_downloadmanager_metadata_extract:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| extract : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

When set to True the download manager will attempt to automatically extract zip files when the download finishes. This property defaults to False.

.. _sdk_ubuntu_downloadmanager_metadata_showInIndicator:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showInIndicator : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies whether this download should be displayed in the transfers indicator, defaults to False.

.. _sdk_ubuntu_downloadmanager_metadata_title:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This sets the name to display in the transfer indicator for this download, this property is only used if :ref:`showInIndicator <sdk_ubuntu_downloadmanager_metadata_showInIndicator>` is True.

