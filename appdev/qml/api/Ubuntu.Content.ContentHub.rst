Ubuntu.Content.ContentHub
=========================

.. raw:: html

   <p>

The central manager for all content operations More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentHub -->

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

import Ubuntu.Content 1.1

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

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

exportRequested(ContentTransfer transfer)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

importRequested(ContentTransfer transfer)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shareRequested(ContentTransfer transfer)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContentHub-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage for importing content:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.Components 0.1
   import Ubuntu.Content 0.1
   <span class="type">MainView</span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
   property list&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt; <span class="name">importItems</span>
   property <span class="type">var</span> <span class="name">activeTransfer</span>
   <span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span> {
   <span class="name">id</span>: <span class="name">picSourceSingle</span>
   <span class="name">contentType</span>: <span class="name">ContentType</span>.<span class="name">Pictures</span>
   <span class="name">handler</span>: <span class="name">ContentHandler</span>.<span class="name">Source</span>
   <span class="name">selectionType</span>: <span class="name">ContentTransfer</span>.<span class="name">Single</span>
   }
   <span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span> {
   <span class="name">id</span>: <span class="name">picSourceMulti</span>
   <span class="name">contentType</span>: <span class="name">ContentType</span>.<span class="name">Pictures</span>
   <span class="name">handler</span>: <span class="name">ContentHandler</span>.<span class="name">Source</span>
   <span class="name">selectionType</span>: <span class="name">ContentTransfer</span>.<span class="name">Multiple</span>
   }
   <span class="type">Row</span> {
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="string">&quot;Import single item&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceSingle</span>.<span class="name">request</span>()
   }
   }
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="string">&quot;Import multiple items&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceMulti</span>.<span class="name">request</span>()
   }
   }
   }
   <span class="type"><a href="Ubuntu.Content.ContentTransferHint.md">ContentTransferHint</a></span> {
   <span class="name">id</span>: <span class="name">importHint</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">activeTransfer</span>: <span class="name">root</span>.<span class="name">activeTransfer</span>
   }
   <span class="type">Connections</span> {
   <span class="name">target</span>: <span class="name">root</span>.<span class="name">activeTransfer</span>
   <span class="name">onStateChanged</span>: {
   <span class="keyword">if</span> (<span class="name">root</span>.<span class="name">activeTransfer</span>.<span class="name">state</span> <span class="operator">===</span> <span class="name">ContentTransfer</span>.<span class="name">Charged</span>)
   <span class="name">importItems</span> <span class="operator">=</span> <span class="name">root</span>.<span class="name">activeTransfer</span>.<span class="name">items</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Example usage for providing a content export:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.Content 0.1
   <span class="type">Rectangle</span> {
   property list&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt; <span class="name">selectedItems</span>
   <span class="type">Connections</span> {
   <span class="name">target</span>: <span class="name">ContentHub</span>
   <span class="name">onExportRequested</span>: {
   <span class="comment">// show content picker</span>
   <span class="name">transfer</span>.<span class="name">items</span> <span class="operator">=</span> <span class="name">selectedItems</span>;
   <span class="name">transfer</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">ContentTransfer</span>.<span class="name">Charged</span>;
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ContentHub -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$exportRequested -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exportRequested-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

exportRequested(ContentTransfer transfer)

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

The signal is triggered when an export is requested.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exportRequested -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="importRequested-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

importRequested(ContentTransfer transfer)

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

The signal is triggered when an import is requested.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@importRequested -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shareRequested-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

shareRequested(ContentTransfer transfer)

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

The signal is triggered when a share is requested.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shareRequested -->


