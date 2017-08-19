Ubuntu.Content.ContentPeer
==========================

.. raw:: html

   <p>

An application that can export or import a ContentType More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentPeer -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

appId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentType : ContentType

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

handler : ContentHandler

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionType : ContentTransfer.SelectionType

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

request(ContentStore)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

request()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContentPeer-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A ContentPeer is an application that is registered in the ContentHub as
a source or destination of a ContentType

.. raw:: html

   </p>

.. raw:: html

   <p>

See documentation for ContentHub

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentPeer -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$appId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="appId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

appId : string

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

When set, this property allows for a specific application to be used as
a peer.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@appId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentType : ContentType

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

Specifies the ContentType this peer should support.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="handler-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

handler : ContentHandler

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

Specifies which ContentHandler this peer should support (e.g. Source,
Destination, Share).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@handler -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

Returns user friendly name of the peer.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectionType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectionType : ContentTransfer.SelectionType

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

Specifies whether this peer is allowed to return multiple items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectionType -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$request -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="request-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

request(ContentStore)

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

Request to an active transfer from this ContentPeer and use a
ContentStore for permanent storage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@request -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="request-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

request()

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

Request an active transfer from this ContentPeer.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@request -->


