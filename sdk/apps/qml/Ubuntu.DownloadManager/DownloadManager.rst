Manage downloads for several files.

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  ****`autoStart </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#autoStart-prop>`__****
   : bool
-  ****`cleanDownloads </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#cleanDownloads-prop>`__****
   : bool
-  ****`downloads </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#downloads-prop>`__****
   : list
-  ****`errorMessage </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#errorMessage-prop>`__****
   : string

Signals
-------

-  ****`downloadCanceled </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#downloadCanceled-signal>`__****\ (SingleDownload
   *download*)
-  ****`downloadFinished </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#downloadFinished-signal>`__****\ (SingleDownload
   *download*, QString *path*)
-  ****`downloadPaused </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#downloadPaused-signal>`__****\ (SingleDownload
   *download*)
-  ****`downloadResumed </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#downloadResumed-signal>`__****\ (SingleDownload
   *download*)
-  ****`errorFound </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#errorFound-signal>`__****\ (SingleDownload
   *download*)

Methods
-------

-  void
   ****`download </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#download-method>`__****\ (string
   *url*)

Detailed Description
--------------------

`DownloadManager </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager/>`__
provides facilities for downloading a several files, connect the
downloads property to any Item that works with models, and dynamically
update the content of those lists/repeaters/etc to show the current
downloads and connect any UI to the
`SingleDownload </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload/>`__
properties in the delegates.

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

**See also**
`SingleDownload </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoStart : bool                                                |
+--------------------------------------------------------------------------+

This property sets if the downloads should start automatically, or let
the user decide when to start them calling the "start()" method on each
download.

| 

+--------------------------------------------------------------------------+
|        \ cleanDownloads : bool                                           |
+--------------------------------------------------------------------------+

This property sets if the model with the list of downloads should be
cleaned when a download finish. Removing those completed transfers, and
only showing current downloads.

| 

+--------------------------------------------------------------------------+
|        \ downloads : list                                                |
+--------------------------------------------------------------------------+

This property provides a model that can be used for Lists, Repeaters,
etc. To handle those downloads in a UI component that changes
automatically when a new download is started, and let a custom delegate
how to represent the UI for each download.

| 

+--------------------------------------------------------------------------+
|        \ errorMessage : string                                           |
+--------------------------------------------------------------------------+

The error message associated with the current download, if there is any.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ downloadCanceled(`SingleDownload </sdk/apps/qml/Ubuntu.Download |
| Manager/SingleDownload/>`__                                              |
| *download*)                                                              |
+--------------------------------------------------------------------------+

This signal is emitted when a download has been canceled. The canceled
download is provided via the 'download' parameter. The corresponding
handler is ``onDownloadCanceled``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

| 

+--------------------------------------------------------------------------+
|        \ downloadFinished(`SingleDownload </sdk/apps/qml/Ubuntu.Download |
| Manager/SingleDownload/>`__                                              |
| *download*, QString *path*)                                              |
+--------------------------------------------------------------------------+

This signal is emitted when a download has finished. The finished
download is provided via the 'download' parameter and the downloaded
file path is provided via the 'path' paremeter. The corresponding
handler is ``onDownloadFinished``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

| 

+--------------------------------------------------------------------------+
|        \ downloadPaused(`SingleDownload </sdk/apps/qml/Ubuntu.DownloadMa |
| nager/SingleDownload/>`__                                                |
| *download*)                                                              |
+--------------------------------------------------------------------------+

This signal is emitted when a download has been paused. The paused
download is provided via the 'download' parameter. The corresponding
handler is ``onDownloadPaused``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

| 

+--------------------------------------------------------------------------+
|        \ downloadResumed(`SingleDownload </sdk/apps/qml/Ubuntu.DownloadM |
| anager/SingleDownload/>`__                                               |
| *download*)                                                              |
+--------------------------------------------------------------------------+

This signal is emitted when a download has been resumed. The resumed
download is provided via the 'download' parameter. The corresponding
handler is ``onDownloadResumed``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

| 

+--------------------------------------------------------------------------+
|        \ errorFound(`SingleDownload </sdk/apps/qml/Ubuntu.DownloadManage |
| r/SingleDownload/>`__                                                    |
| *download*)                                                              |
+--------------------------------------------------------------------------+

This signal is emitted when an error occurs in a download. The download
in which the error occurred is provided via the 'download' parameter,
from which the error message can be accessed via
download.\ `errorMessage </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager#errorMessage-prop>`__.
The corresponding handler is ``onErrorFound``

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void download(string *url*)                                     |
+--------------------------------------------------------------------------+

Starts the download for the given url and update the model with the list
of the different downloads.

| 
