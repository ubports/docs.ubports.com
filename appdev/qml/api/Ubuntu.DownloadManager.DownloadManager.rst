Ubuntu.DownloadManager.DownloadManager
======================================

.. raw:: html

   <p>

Manage downloads for several files. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DownloadManager -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.DownloadManager 1.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

autoStart : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cleanDownloads : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downloads : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorMessage : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

downloadCanceled(SingleDownload download)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downloadFinished(SingleDownload download, QString path)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downloadPaused(SingleDownload download)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downloadResumed(SingleDownload download)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorFound(SingleDownload download)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void download(string url)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DownloadManager-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

DownloadManager provides facilities for downloading a several files,
connect the downloads property to any Item that works with models, and
dynamically update the content of those lists/repeaters/etc to show the
current downloads and connect any UI to the SingleDownload properties in
the delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.Components 1.2
   import Ubuntu.DownloadManager 1.2
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="index.html">DownloadManager</a></span> {
   <span class="name">id</span>: <span class="name">manager</span>
   }
   <span class="type">TextField</span> {
   <span class="name">id</span>: <span class="name">text</span>
   <span class="name">placeholderText</span>: <span class="string">&quot;File URL to download...&quot;</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">button</span>.<span class="name">left</span>
   <span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   }
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">text</span>: <span class="string">&quot;Download&quot;</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">onClicked</span>: {
   <span class="name">manager</span>.<span class="name">download</span>(<span class="name">text</span>.<span class="name">text</span>);
   }
   }
   <span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">list</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">top</span>: <span class="name">text</span>.<span class="name">bottom</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">model</span>: <span class="name">manager</span>.<span class="name">downloads</span>
   <span class="name">delegate</span>: <span class="name">ProgressBar</span> {
   <span class="name">minimumValue</span>: <span class="number">0</span>
   <span class="name">maximumValue</span>: <span class="number">100</span>
   <span class="name">value</span>: <span class="name">modelData</span>.<span class="name">progress</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

See also SingleDownload.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DownloadManager -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoStart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoStart-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoStart : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property sets if the downloads should start automatically, or let
the user decide when to start them calling the "start()" method on each
download.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoStart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cleanDownloads-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cleanDownloads : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property sets if the model with the list of downloads should be
cleaned when a download finish. Removing those completed transfers, and
only showing current downloads.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cleanDownloads -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloads-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

downloads : list

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property provides a model that can be used for Lists, Repeaters,
etc. To handle those downloads in a UI component that changes
automatically when a new download is started, and let a custom delegate
how to represent the UI for each download.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloads -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorMessage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorMessage : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The error message associated with the current download, if there is any.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorMessage -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$downloadCanceled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloadCanceled-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

downloadCanceled(SingleDownload download)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a download has been canceled. The canceled
download is provided via the 'download' parameter. The corresponding
handler is onDownloadCanceled

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloadCanceled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloadFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

downloadFinished(SingleDownload download, QString path)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a download has finished. The finished
download is provided via the 'download' parameter and the downloaded
file path is provided via the 'path' paremeter. The corresponding
handler is onDownloadFinished

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloadFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloadPaused-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

downloadPaused(SingleDownload download)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a download has been paused. The paused
download is provided via the 'download' parameter. The corresponding
handler is onDownloadPaused

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloadPaused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloadResumed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

downloadResumed(SingleDownload download)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a download has been resumed. The resumed
download is provided via the 'download' parameter. The corresponding
handler is onDownloadResumed

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloadResumed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorFound-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

errorFound(SingleDownload download)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when an error occurs in a download. The download
in which the error occurred is provided via the 'download' parameter,
from which the error message can be accessed via download.errorMessage.
The corresponding handler is onErrorFound

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorFound -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$download -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="download-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void download(string url)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts the download for the given url and update the model with the list
of the different downloads.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@download -->


