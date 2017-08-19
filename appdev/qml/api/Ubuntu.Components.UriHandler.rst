Ubuntu.Components.UriHandler
============================

.. raw:: html

   <p>

Singleton signalling for opened URIs. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UriHandler -->

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

import Ubuntu.Components 1.3

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

onOpened(list<string> uris)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UriHandler-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

UriHandler is a singleton handling opened URIs. The application can be
signalled of opened URIs through the opened signal. The content of the
"APP\_ID" environment variable is used to determine the object path. If
the D-Bus session bus is not connected or the "APP\_ID" variable is not
set or empty, the handler stays uninitialized.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of use:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
   <span class="name">target</span>: <span class="name">UriHandler</span>
   <span class="name">onOpened</span>: <span class="name">print</span>(<span class="name">uris</span>)
   }</pre>

.. raw:: html

   <!-- @@@UriHandler -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onOpened -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onOpened-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onOpened(list<string> uris)

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

The signal is triggered when URIs are opened.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onOpened -->


