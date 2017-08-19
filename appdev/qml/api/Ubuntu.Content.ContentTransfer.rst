Ubuntu.Content.ContentTransfer
==============================

.. raw:: html

   <p>

Represents a transfer of content between two ContentPeers More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentTransfer -->

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

destination : QString

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

direction : ContentTransfer.Direction

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

downloadId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

items : list<ContentItem>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionType : ContentTransfer.SelectionType

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : QString

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : ContentTransfer.State

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

store : string

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

finalize()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

start()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContentTransfer-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See documentation for ContentHub

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentTransfer -->

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

Specifies the ContentType requested.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="destination-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

destination : QString

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

Provides the app id of the destination application for this transfer

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@destination -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : ContentTransfer.Direction

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

ContentTransfer::direction indicates if this transferobject is used for
import or export transaction

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

ContentTransfer.Direction is an enumeration:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Direction

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Import

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is a request to import content.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Export

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is a request to export content.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Share

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is a request to share content.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="downloadId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

downloadId : string

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

The Download Manager ID of a SingleDownload, which will then be
transfered to the selected peer.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@downloadId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="items-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

items : list<ContentItem>

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

List of items included in the ContentTransfer

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@items -->

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

ContentTransfer::selectionType indicates if this transfer object allows
single or multiple selection of items

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

ContentTransfer.SelectionType is an enumeration:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Single

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer should contain a single item.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Multiple

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer can contain multiple items.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@selectionType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : QString

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

Provides the app id of the source application for this transfer

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="state-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

state : ContentTransfer.State

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

ContentTransfer.State is an enumeration:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

State

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Created

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer created, waiting to be initiated.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Initiated

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer has been initiated.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.InProgress

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is in progress.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Downloading

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is downloading item specified by downloadId.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Downloaded

.. raw:: html

   </td>

.. raw:: html

   <td>

Download specified by downloadId has completed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Charged

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer is charged with items and ready to be collected.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Collected

.. raw:: html

   </td>

.. raw:: html

   <td>

Items in the transfer have been collected.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Aborted

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer has been aborted.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ContentTransfer.Finalized

.. raw:: html

   </td>

.. raw:: html

   <td>

Transfer has been finished and cleaned up.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="store-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

store : string

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

ContentStore where the ContentTransfer will add items

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@store -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$finalize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="finalize-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

finalize()

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

Sets State to ContentTransfer.Finalized and cleans up temporary files

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@finalize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

start()

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

Start the transfer, this sets the State to ContentTransfer.Initiated

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->


