Ubuntu.DownloadManager.index
============================

.. raw:: html

   <h2 id="introduction">

Introduction

.. raw:: html

   </h2>

.. raw:: html

   <p>

The application lifecycle model of found in Ubuntu Touch does not ensure
that application will be allowed to perform a long running connection to
a server in order to perform a download. The Ubuntu Download Manager is
a system daemon that leverages the long connections required to perform
downloads from the click applications and provides a set of APIs for the
application to interact with the downloads.

.. raw:: html

   </p>

.. raw:: html

   <p>

The download manager is a centralized daemon and therefore must ensure
that only those applications

.. raw:: html

   </p>

.. raw:: html

   <h2 id="security">

Security

.. raw:: html

   </h2>

.. raw:: html

   <p>

The download manager is a centralized daemon that can be used by all
those applications that are allows to use the networking apparmor
profile, due to this fact the downloading daemon ensures that the
interaction with a download can only be performed either by the
application that originally created the download or by an application
that is not confined and that can therefore interact with all the
daemons of the application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once a download has been created the download manager will ensure that
the data being downloaded is stored in a location that can only be
accessed by the creating application to ensure that the app confinement
is kept.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="components">

Components

.. raw:: html

   </h2>

.. raw:: html

   <p>

Available through:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>DownloadManager <span class="number">1.2</span></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

DownloadManager

.. raw:: html

   </li>

.. raw:: html

   <li>

SingleDownload

.. raw:: html

   </li>

.. raw:: html

   <li>

Metadata

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="example-usage-downloading-a-file">

Example usage - Downloading a file

.. raw:: html

   </h2>

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
   }
   }
   }</pre>

Reporting Bugs

.. raw:: html

   <p>

If you find any problems with the module or this documentation, please
file a bug in the Ubuntu Download Manager Launchpad page

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   </p>
