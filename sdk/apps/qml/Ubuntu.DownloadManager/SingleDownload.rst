Manage file downloads and tracking the progress.

+---------------------+-------------------------------------+
| Import Statement:   | import Ubuntu.DownloadManager 1.2   |
+---------------------+-------------------------------------+

Properties
----------

-  ****`algorithm </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#algorithm-prop>`__****
   : string
-  ****`allowMobileDownload </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#allowMobileDownload-prop>`__****
   : bool
-  ****`autoStart </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#autoStart-prop>`__****
   : bool
-  ****`downloadId </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#downloadId-prop>`__****
   : string
-  ****`downloadInProgress </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#downloadInProgress-prop>`__****
   : bool
-  ****`downloading </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#downloading-prop>`__****
   : bool
-  ****`errorMessage </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#errorMessage-prop>`__****
   : string
-  ****`hash </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#hash-prop>`__****
   : string
-  ****`headers </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#headers-prop>`__****
   : QVariantMap
-  ****`isCompleted </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#isCompleted-prop>`__****
   : bool
-  ****`metadata </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#metadata-prop>`__****
   : Metadata
-  ****`progress </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#progress-prop>`__****
   : int
-  ****`throttle </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#throttle-prop>`__****
   : long

Signals
-------

-  ****`finished </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#finished-signal>`__****\ (QString
   *path*)

Methods
-------

-  void
   ****`cancel </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#cancel-method>`__****\ ()
-  void
   ****`download </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#download-method>`__****\ (string
   *url*)
-  void
   ****`pause </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#pause-method>`__****\ ()
-  void
   ****`resume </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#resume-method>`__****\ ()
-  void
   ****`start </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#start-method>`__****\ ()

Detailed Description
--------------------

`SingleDownload </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload/>`__
provides facilities for downloading a single file, track the process,
react to error conditions, etc.

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

**See also**
`DownloadManager </sdk/apps/qml/Ubuntu.DownloadManager/DownloadManager/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ algorithm : string                                              |
+--------------------------------------------------------------------------+

This property indicates the algorithm to use when verifying a hash. The
algorithm can be of one of the following string values:

- "md5" - "sha1" - "sha224" - "sha256" - "sha384" - "sha512"

If no value is specified md5 will be used. If used, this should be set
prior to calling the
`download() </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#download-method>`__
method.

This QML property was introduced in Ubuntu.DownloadManager 1.3.

| 

+--------------------------------------------------------------------------+
|        \ allowMobileDownload : bool                                      |
+--------------------------------------------------------------------------+

This property sets if the download handled by this object will work
under mobile data connection.

| 

+--------------------------------------------------------------------------+
|        \ autoStart : bool                                                |
+--------------------------------------------------------------------------+

This property sets if the downloads should start automatically, or let
the user decide when to start them calling the
"`start() </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#start-method>`__"
method.

| 

+--------------------------------------------------------------------------+
|        \ downloadId : string                                             |
+--------------------------------------------------------------------------+

This property provides the unique identifier that represents the
download within the download manager.

| 

+--------------------------------------------------------------------------+
|        \ downloadInProgress : bool                                       |
+--------------------------------------------------------------------------+

This property represents if the download is active, no matter if it's
paused or anything. If a download is active, the value will be True. It
will become False when the download finished or get canceled.

| 

+--------------------------------------------------------------------------+
|        \ downloading : bool                                              |
+--------------------------------------------------------------------------+

This property represents the current state of the download. False if
paused or not downloading anything. True if the file is currently being
downloaded.

| 

+--------------------------------------------------------------------------+
|        \ errorMessage : string                                           |
+--------------------------------------------------------------------------+

The error message associated with the current download, if there is any.

| 

+--------------------------------------------------------------------------+
|        \ hash : string                                                   |
+--------------------------------------------------------------------------+

This property specifies a hash to check against the downloaded file. If
used, this should be set prior to calling the
`download() </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#download-method>`__
method.

This QML property was introduced in Ubuntu.DownloadManager 1.3.

| 

+--------------------------------------------------------------------------+
|        \ headers : QVariantMap                                           |
+--------------------------------------------------------------------------+

This property allows to get and set the headers that will be used to
perform the download request. All headers must be strings or at least
QVariant should be able to convert them to strings.

| 

+--------------------------------------------------------------------------+
|        \ isCompleted : bool                                              |
+--------------------------------------------------------------------------+

The current state of the download. True if the download already
finished, False otherwise.

| 

+--------------------------------------------------------------------------+
|        \ metadata :                                                      |
| `Metadata </sdk/apps/qml/Ubuntu.DownloadManager/Metadata/>`__            |
+--------------------------------------------------------------------------+

This property allows to get and set the metadata that will be linked to
the download request.

| 

+--------------------------------------------------------------------------+
|        \ progress : int                                                  |
+--------------------------------------------------------------------------+

This property reports the current progress in percentage of the
download, from 0 to 100.

| 

+--------------------------------------------------------------------------+
|        \ throttle : long                                                 |
+--------------------------------------------------------------------------+

This property can be used to limit the bandwidth used for the download.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ finished(QString *path*)                                        |
+--------------------------------------------------------------------------+

This signal is emitted when a download has finished. The downloaded file
path is provided via the 'path' paremeter. The corresponding handler is
``onFinished``

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void cancel()                                                   |
+--------------------------------------------------------------------------+

Cancels a download.

| 

+--------------------------------------------------------------------------+
|        \ void download(string *url*)                                     |
+--------------------------------------------------------------------------+

Creates the download for the given url and reports the different states
through the properties.

| 

+--------------------------------------------------------------------------+
|        \ void pause()                                                    |
+--------------------------------------------------------------------------+

Pauses the download. An error is returned if the download was already
paused.

| 

+--------------------------------------------------------------------------+
|        \ void resume()                                                   |
+--------------------------------------------------------------------------+

Resumes and already paused download. An error is returned if the
download was already resumed or not paused.

| 

+--------------------------------------------------------------------------+
|        \ void start()                                                    |
+--------------------------------------------------------------------------+

Starts the download, used when
`autoStart </sdk/apps/qml/Ubuntu.DownloadManager/SingleDownload#autoStart-prop>`__
is False.

| 
