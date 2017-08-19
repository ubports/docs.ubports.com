QtOrganizer.FetchHint
=====================

.. raw:: html

   <p>

The FetchHint element provides hints to the manager about which
organizer item information needs to be retrieved in an asynchronous
fetch request or a synchronous function call. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FetchHint -->

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

import QtOrganizer 5.0

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

detailTypesHint : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

optimizationHints : enumeration

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

onFetchHintChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FetchHint-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FetchHint -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$detailTypesHint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detailTypesHint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detailTypesHint : list<int>

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

This property holds a list of organizer item detail types the manager
should (at a minimum) retrieve when fetching contacts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detailTypesHint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="optimizationHints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

optimizationHints : enumeration

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

This property holds the optimization hint flags specified by the client.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

AllRequired Tells the backend that all information is required.

.. raw:: html

   </li>

.. raw:: html

   <li>

NoActionPreferences Tells the backend that the client does not require
retrieved organizer items to include a cache of action preferences.

.. raw:: html

   </li>

.. raw:: html

   <li>

NoBinaryBlobs Tells the backend that the client does not require
retrieved organizer items to include binary blobs such as thumbnail
images.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@optimizationHints -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onFetchHintChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onFetchHintChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onFetchHintChanged()

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

This signal is emitted, when any of the FetchHint's properties have been
changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onFetchHintChanged -->


