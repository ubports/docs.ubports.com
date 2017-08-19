Ubuntu.Content.index
====================

 Content Management & Exchange

.. raw:: html

   <h2 id="introduction">

Introduction

.. raw:: html

   </h2>

.. raw:: html

   <p>

Unity and the overall Ubuntu experience put heavy emphasis on the notion
of content, with Unity's dash offering streamlined access to arbitrary
content, both local to the device or online. More to this, Unity's dash
is the primary way of surfacing content on mobile form factors without
the need to access individual applications and their respective content
silos. The content-hub deals with application-specific content
management and implements an architecture that allows an app to define
its own content silo, exchange content with other applications/the
system, and a way to provide the user with content picking
functionality.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="definitions">

Definitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

To ease conversations, we start over with a set of definitions:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Content item: A content item is an entity that consists of meta-data and
data. E.g., an image is a content item, where the actual pixels are the
data, and information like size, image format, bit depth, location etc.
is considered meta data. See also ContentItem.

.. raw:: html

   </li>

.. raw:: html

   <li>

Content types: A set of well-known content types. E.g., images or music
files. See also ContentType

.. raw:: html

   </li>

.. raw:: html

   <li>

Content set: A set of unique content items. Can be considered a content
item itself, e.g., in the case of playlists.

.. raw:: html

   </li>

.. raw:: html

   <li>

Content owner: The unique owner of a content item. A content item has to
be owned by exactly one app. See also ContentPeer

.. raw:: html

   </li>

.. raw:: html

   <li>

Content store: A container (think of it as a top-level folder in the
filesystem) that contains content items of a certain type. Different
stores exist for different scopes, where scope refers to either
system-wide, user-wide or app-specific storage locations. See also
ContentStore

.. raw:: html

   </li>

.. raw:: html

   <li>

Content transfer: Transferring content item/s to and from a source or
destination. A transfer is uniquely defined by a source, destination,
direction (import or export), and a set of items that should be
exchanged. See also ContentTransfer

.. raw:: html

   </li>

.. raw:: html

   <li>

Content picking: Operation that allows a user to select content for
subsequent import from a content source (e.g., an application). The
content source is responsible for providing a UI to the user.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="architectural-overview">

Architectural Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The architecture enforces complete application isolation, both in terms
of content separation, sandboxing/confinement and in terms of the
application lifecycle. As we cannot assume that two apps that want to
exchange content are running at the same time, a system-level component
needs to mediate and control the content exchange operation, making sure
that neither app instance assumes the existence of the other one. We
refer to this component as the content hub.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage-importing-pictures">

Example usage - Importing Pictures

.. raw:: html

   </h2>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.Components 1.1
   import Ubuntu.Content 1.1
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
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
   <span class="name">root</span>.<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceSingle</span>.<span class="name">request</span>()
   }
   }
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="string">&quot;Import multiple items&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="name">root</span>.<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceMulti</span>.<span class="name">request</span>()
   }
   }
   }
   <span class="type"><a href="Ubuntu.Content.ContentTransferHint.md">ContentTransferHint</a></span> {
   <span class="name">id</span>: <span class="name">transferHint</span>
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

General Topics

.. raw:: html

   <ul>

.. raw:: html

   <li>

ContentHub

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentPeer

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentPeerModel

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentPeerPicker

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentStore

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentTransfer

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentTransferHint

.. raw:: html

   </li>

.. raw:: html

   <li>

ContentType

.. raw:: html

   </li>

.. raw:: html

   </ul>

Reporting Bugs

.. raw:: html

   <p>

If you find any problems with the or this documentation, please file a
bug in Ubuntu Content API Launchpad page

.. raw:: html

   </p>

Components

.. raw:: html

   <p>

Available through:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    import Ubuntu<span class="operator">.</span>Content <span class="number">1.1</span></pre>

.. raw:: html

   <p>

See also ContentHub.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   </p>
