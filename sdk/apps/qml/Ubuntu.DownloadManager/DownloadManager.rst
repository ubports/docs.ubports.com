.. _sdk_ubuntu_downloadmanager_downloadmanager:

Ubuntu.DownloadManager DownloadManager
======================================

Manage downloads for several files.

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  :ref:`autoStart <sdk_ubuntu_downloadmanager_downloadmanager_autoStart>` : bool
-  :ref:`cleanDownloads <sdk_ubuntu_downloadmanager_downloadmanager_cleanDownloads>` : bool
-  :ref:`downloads <sdk_ubuntu_downloadmanager_downloadmanager_downloads>` : list
-  :ref:`errorMessage <sdk_ubuntu_downloadmanager_downloadmanager_errorMessage>` : string

Signals
-------

-  :ref:`downloadCanceled <sdk_ubuntu_downloadmanager_downloadmanager_downloadCanceled>`\ (SingleDownload *download*)
-  :ref:`downloadFinished <sdk_ubuntu_downloadmanager_downloadmanager_downloadFinished>`\ (SingleDownload *download*, QString *path*)
-  :ref:`downloadPaused <sdk_ubuntu_downloadmanager_downloadmanager_downloadPaused>`\ (SingleDownload *download*)
-  :ref:`downloadResumed <sdk_ubuntu_downloadmanager_downloadmanager_downloadResumed>`\ (SingleDownload *download*)
-  :ref:`errorFound <sdk_ubuntu_downloadmanager_downloadmanager_errorFound>`\ (SingleDownload *download*)

Methods
-------

-  void :ref:`download <sdk_ubuntu_downloadmanager_downloadmanager_download>`\ (string *url*)

Detailed Description
--------------------

:ref:`DownloadManager <sdk_ubuntu_downloadmanager_downloadmanager>` provides facilities for downloading a several files, connect the downloads property to any Item that works with models, and dynamically update the content of those lists/repeaters/etc to show the current downloads and connect any UI to the :ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` properties in the delegates.

Example usage:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.2
    import Ubuntu.DownloadManager 1.2
    Rectangle {
        width: units.gu(100)
        height: units.gu(80)
        DownloadManager {
            id: manager
        }
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
                manager.download(text.text);
            }
        }
        ListView {
            id: list
            anchors {
                left: parent.left
                right: parent.right
                top: text.bottom
                bottom: parent.bottom
            }
            model: manager.downloads
            delegate: ProgressBar {
                minimumValue: 0
                maximumValue: 100
                value: modelData.progress
            }
        }
    }

**See also** :ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>`.

Property Documentation
----------------------

.. _sdk_ubuntu_downloadmanager_downloadmanager_autoStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoStart : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets if the downloads should start automatically, or let the user decide when to start them calling the "start()" method on each download.

.. _sdk_ubuntu_downloadmanager_downloadmanager_cleanDownloads:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cleanDownloads : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets if the model with the list of downloads should be cleaned when a download finish. Removing those completed transfers, and only showing current downloads.

.. _sdk_ubuntu_downloadmanager_downloadmanager_downloads:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloads : list                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides a model that can be used for Lists, Repeaters, etc. To handle those downloads in a UI component that changes automatically when a new download is started, and let a custom delegate how to represent the UI for each download.

.. _sdk_ubuntu_downloadmanager_downloadmanager_errorMessage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorMessage : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The error message associated with the current download, if there is any.

Signal Documentation
--------------------

.. _sdk_ubuntu_downloadmanager_downloadmanager_downloadCanceled:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadCanceled(:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` *download*)                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a download has been canceled. The canceled download is provided via the 'download' parameter. The corresponding handler is ``onDownloadCanceled``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. _sdk_ubuntu_downloadmanager_downloadmanager_downloadFinished:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadFinished(:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` *download*, QString *path*)                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a download has finished. The finished download is provided via the 'download' parameter and the downloaded file path is provided via the 'path' paremeter. The corresponding handler is ``onDownloadFinished``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. _sdk_ubuntu_downloadmanager_downloadmanager_downloadPaused:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadPaused(:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` *download*)                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a download has been paused. The paused download is provided via the 'download' parameter. The corresponding handler is ``onDownloadPaused``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. _sdk_ubuntu_downloadmanager_downloadmanager_downloadResumed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadResumed(:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` *download*)                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a download has been resumed. The resumed download is provided via the 'download' parameter. The corresponding handler is ``onDownloadResumed``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. _sdk_ubuntu_downloadmanager_downloadmanager_errorFound:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorFound(:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` *download*)                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an error occurs in a download. The download in which the error occurred is provided via the 'download' parameter, from which the error message can be accessed via download.\ :ref:`errorMessage <sdk_ubuntu_downloadmanager_downloadmanager_errorMessage>`. The corresponding handler is ``onErrorFound``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

Method Documentation
--------------------

.. _sdk_ubuntu_downloadmanager_downloadmanager_download:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void download(string *url*)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts the download for the given url and update the model with the list of the different downloads.

