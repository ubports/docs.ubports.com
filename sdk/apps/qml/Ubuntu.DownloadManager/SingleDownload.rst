.. _sdk_ubuntu_downloadmanager_singledownload:

Ubuntu.DownloadManager SingleDownload
=====================================

Manage file downloads and tracking the progress.

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  :ref:`algorithm <sdk_ubuntu_downloadmanager_singledownload_algorithm>` : string
-  :ref:`allowMobileDownload <sdk_ubuntu_downloadmanager_singledownload_allowMobileDownload>` : bool
-  :ref:`autoStart <sdk_ubuntu_downloadmanager_singledownload_autoStart>` : bool
-  :ref:`downloadId <sdk_ubuntu_downloadmanager_singledownload_downloadId>` : string
-  :ref:`downloadInProgress <sdk_ubuntu_downloadmanager_singledownload_downloadInProgress>` : bool
-  :ref:`downloading <sdk_ubuntu_downloadmanager_singledownload_downloading>` : bool
-  :ref:`errorMessage <sdk_ubuntu_downloadmanager_singledownload_errorMessage>` : string
-  :ref:`hash <sdk_ubuntu_downloadmanager_singledownload_hash>` : string
-  :ref:`headers <sdk_ubuntu_downloadmanager_singledownload_headers>` : QVariantMap
-  :ref:`isCompleted <sdk_ubuntu_downloadmanager_singledownload_isCompleted>` : bool
-  :ref:`metadata <sdk_ubuntu_downloadmanager_singledownload_metadata>` : Metadata
-  :ref:`progress <sdk_ubuntu_downloadmanager_singledownload_progress>` : int
-  :ref:`throttle <sdk_ubuntu_downloadmanager_singledownload_throttle>` : long

Signals
-------

-  :ref:`finished <sdk_ubuntu_downloadmanager_singledownload_finished>`\ (QString *path*)

Methods
-------

-  void :ref:`cancel <sdk_ubuntu_downloadmanager_singledownload_cancel>`\ ()
-  void :ref:`download <sdk_ubuntu_downloadmanager_singledownload_download>`\ (string *url*)
-  void :ref:`pause <sdk_ubuntu_downloadmanager_singledownload_pause>`\ ()
-  void :ref:`resume <sdk_ubuntu_downloadmanager_singledownload_resume>`\ ()
-  void :ref:`start <sdk_ubuntu_downloadmanager_singledownload_start>`\ ()

Detailed Description
--------------------

:ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>` provides facilities for downloading a single file, track the process, react to error conditions, etc.

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
            }
        }
    }

**See also** :ref:`DownloadManager <sdk_ubuntu_downloadmanager_downloadmanager>`.

Property Documentation
----------------------

.. _sdk_ubuntu_downloadmanager_singledownload_algorithm:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| algorithm : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates the algorithm to use when verifying a hash. The algorithm can be of one of the following string values:

- "md5" - "sha1" - "sha224" - "sha256" - "sha384" - "sha512"

If no value is specified md5 will be used. If used, this should be set prior to calling the :ref:`download() <sdk_ubuntu_downloadmanager_singledownload_download>` method.

This QML property was introduced in Ubuntu.DownloadManager 1.3.

.. _sdk_ubuntu_downloadmanager_singledownload_allowMobileDownload:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| allowMobileDownload : bool                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets if the download handled by this object will work under mobile data connection.

.. _sdk_ubuntu_downloadmanager_singledownload_autoStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoStart : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets if the downloads should start automatically, or let the user decide when to start them calling the ":ref:`start() <sdk_ubuntu_downloadmanager_singledownload_start>`" method.

.. _sdk_ubuntu_downloadmanager_singledownload_downloadId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadId : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides the unique identifier that represents the download within the download manager.

.. _sdk_ubuntu_downloadmanager_singledownload_downloadInProgress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadInProgress : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property represents if the download is active, no matter if it's paused or anything. If a download is active, the value will be True. It will become False when the download finished or get canceled.

.. _sdk_ubuntu_downloadmanager_singledownload_downloading:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloading : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property represents the current state of the download. False if paused or not downloading anything. True if the file is currently being downloaded.

.. _sdk_ubuntu_downloadmanager_singledownload_errorMessage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorMessage : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The error message associated with the current download, if there is any.

.. _sdk_ubuntu_downloadmanager_singledownload_hash:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hash : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property specifies a hash to check against the downloaded file. If used, this should be set prior to calling the :ref:`download() <sdk_ubuntu_downloadmanager_singledownload_download>` method.

This QML property was introduced in Ubuntu.DownloadManager 1.3.

.. _sdk_ubuntu_downloadmanager_singledownload_headers:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| headers : QVariantMap                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows to get and set the headers that will be used to perform the download request. All headers must be strings or at least QVariant should be able to convert them to strings.

.. _sdk_ubuntu_downloadmanager_singledownload_isCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isCompleted : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The current state of the download. True if the download already finished, False otherwise.

.. _sdk_ubuntu_downloadmanager_singledownload_metadata:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metadata : :ref:`Metadata <sdk_ubuntu_downloadmanager_metadata>`                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows to get and set the metadata that will be linked to the download request.

.. _sdk_ubuntu_downloadmanager_singledownload_progress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progress : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property reports the current progress in percentage of the download, from 0 to 100.

.. _sdk_ubuntu_downloadmanager_singledownload_throttle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| throttle : long                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property can be used to limit the bandwidth used for the download.

Signal Documentation
--------------------

.. _sdk_ubuntu_downloadmanager_singledownload_finished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finished(QString *path*)                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a download has finished. The downloaded file path is provided via the 'path' paremeter. The corresponding handler is ``onFinished``

Method Documentation
--------------------

.. _sdk_ubuntu_downloadmanager_singledownload_cancel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void cancel()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancels a download.

.. _sdk_ubuntu_downloadmanager_singledownload_download:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void download(string *url*)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Creates the download for the given url and reports the different states through the properties.

.. _sdk_ubuntu_downloadmanager_singledownload_pause:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void pause()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Pauses the download. An error is returned if the download was already paused.

.. _sdk_ubuntu_downloadmanager_singledownload_resume:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void resume()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resumes and already paused download. An error is returned if the download was already resumed or not paused.

.. _sdk_ubuntu_downloadmanager_singledownload_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void start()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts the download, used when :ref:`autoStart <sdk_ubuntu_downloadmanager_singledownload_autoStart>` is False.

