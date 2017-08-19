Ubuntu.Content.ContentPeerPicker
================================

.. raw:: html

   <p>

Component that allows users to select a source/destination for content
transfer More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentPeerPicker -->

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

contentType : ContentType

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

customerPeerModelLoader : Loader

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

handler : ContentHandler

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

headerText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

peer : ContentPeer

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showTitle : bool

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

cancelPressed()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

peerSelected()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContentPeerPicker-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This component displays a list of applications, devices and services
which are appropriate for transferring a given content type with.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentPeerPicker -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contentType -->

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

The ContentType to use when finding peers.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="customerPeerModelLoader-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

customerPeerModelLoader : Loader

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

A Loader containing a ContentPeerModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can optionally be used to provide a pre-populated ContentPeerModel
to this ContentPeerPicker.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@customerPeerModelLoader -->

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

The ContentHandler to use when finding peers.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@handler -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="headerText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

headerText : string

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

Text to display in the header.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@headerText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="peer-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

peer : ContentPeer

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

The peer selected by the user.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once the peerSelected signal has been sent, this provides the
ContentPeer which the user has selected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@peer -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showTitle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showTitle : bool

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

Determines whether the header should be displayed.

.. raw:: html

   </p>

.. raw:: html

   <p>

This makes it possible to hide the header, which can be useful if
embedding the picker within another page or popup.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showTitle -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelPressed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelPressed()

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

Emitted when the user clicks the cancel button.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ContentPeerPicker will be hidden automatically when the user cancels
the operations and the active ContentTransfer will be set to Aborted.
onCancelPressed

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="peerSelected-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

peerSelected()

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

Emitted when a user selects a peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once this signal has been emitted the selected peer can be accessed via
the peer property. onPeerSelected

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@peerSelected -->


