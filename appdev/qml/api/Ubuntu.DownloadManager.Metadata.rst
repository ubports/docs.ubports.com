Ubuntu.DownloadManager.Metadata
===============================

.. raw:: html

   <p>

Provides additional properties for downloads More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Metadata -->

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

custom : array

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extract : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showInIndicator : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Metadata-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Metadata provides the ability to set a number of special properties on a
SingleDownload, e.g. to display a download in the transfer indicator, or
automatically extract a download of a zip file upon completion.

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
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
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
   <span class="name">single</span>.<span class="name">download</span>(<span class="name">text</span>.<span class="name">text</span>);
   }
   }
   <span class="type">ProgressBar</span> {
   <span class="name">minimumValue</span>: <span class="number">0</span>
   <span class="name">maximumValue</span>: <span class="number">100</span>
   <span class="name">value</span>: <span class="name">single</span>.<span class="name">progress</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> {
   <span class="name">id</span>: <span class="name">single</span>
   <span class="name">metadata</span>: <span class="name">Metadata</span> {
   <span class="name">showInIndicator</span>: <span class="number">true</span>
   <span class="name">title</span>: <span class="string">&quot;Example download&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See also DownloadManager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Metadata -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$custom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="custom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

custom : array

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

Metadata specific to your application that you wish to associate with
this download. This metadata will persist across application restarts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@custom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extract-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extract : bool

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

When set to True the download manager will attempt to automatically
extract zip files when the download finishes. This property defaults to
False.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extract -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showInIndicator-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showInIndicator : bool

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

Specifies whether this download should be displayed in the transfers
indicator, defaults to False.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showInIndicator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : string

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

This sets the name to display in the transfer indicator for this
download, this property is only used if showInIndicator is True.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->


