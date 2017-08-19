QtContacts.FetchHint
====================

.. raw:: html

   <p>

The FetchHint element provides hints to the manager about which contact
information needs to be retrieved in an asynchronous fetch request or a
synchronous function call. More...

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

import QtContacts 5.0

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

imageHeight : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageWidth : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

optimizationHints : FetchHint::OptimizationHints

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relationshipTypesHint : list<string>

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

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContactFetchHint.

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

This property holds a list of contact detail types the manager should
(at a minimum) retrieve when fetching contacts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detailTypesHint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

imageHeight : int

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

This property holds the preferred pixel height for any images returned
by the manager for a given request. This hint may be ignored by the
manager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

imageWidth : int

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

This property holds the preferred pixel width for any images returned by
the manager for a given request. This hint may be ignored by the
manager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="optimizationHints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

optimizationHints : FetchHint::OptimizationHints

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
These hints may be ignored by the backend, in which case it will return
the full set of information accessible in a contact, including
relationships, action preferences, and binary blobs. The value of the
flags can be:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

FetchHint.AllRequired - (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

FetchHint.NoRelationships

.. raw:: html

   </li>

.. raw:: html

   <li>

FetchHint.NoActionPreferences

.. raw:: html

   </li>

.. raw:: html

   <li>

FetchHint.NoBinaryBlobs

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@optimizationHints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relationshipTypesHint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relationshipTypesHint : list<string>

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

This property holds a list of relationship types that the manager should
(at a minimum) retrieve when fetching contacts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relationshipTypesHint -->


