QtLocation.EditorialModel
=========================

.. raw:: html

   <p>

The EditorialModel type provides a model of place editorials. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@EditorialModel -->

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

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

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

batchSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

place : Place

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

totalCount : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$EditorialModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The totalCount property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model returns data for the following roles:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Role

.. raw:: html

   </th>

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

text

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The editorial's textual description of the place. It can be either rich
(HTML based) text or plain text depending upon the provider.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

title

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The title of the editorial.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

language

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The language that the editorial is written in.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

supplier

.. raw:: html

   </td>

.. raw:: html

   <td>

Supplier

.. raw:: html

   </td>

.. raw:: html

   <td>

The supplier of the editorial.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

user

.. raw:: html

   </td>

.. raw:: html

   <td>

User

.. raw:: html

   </td>

.. raw:: html

   <td>

The user who contributed the editorial.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

attribution

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

Attribution text which must be displayed when displaying the editorial.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how to display editorials for a place:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">EditorialModel</a></span> {
   <span class="name">id</span>: <span class="name">editorialModel</span>
   <span class="name">batchSize</span>: <span class="number">3</span>
   <span class="name">place</span>: <span class="name">place</span>
   }
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">editorialModel</span>
   <span class="name">delegate</span>: <span class="name">Item</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type">Column</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">clip</span>: <span class="number">true</span>
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">title</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">font</span>.pixelSize: <span class="number">24</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">text</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">font</span>.pixelSize: <span class="number">20</span>
   }
   <span class="type">Row</span> {
   <span class="type">Image</span> {
   <span class="name">width</span>: <span class="number">16</span>
   <span class="name">height</span>: <span class="number">16</span>
   <span class="name">source</span>: <span class="name">supplier</span>.<span class="name">icon</span>.<span class="name">url</span>(<span class="name">Qt</span>.<span class="name">size</span>(<span class="name">width</span>, <span class="name">height</span>), <span class="name">Icon</span>.<span class="name">List</span>)
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Provided by &quot;</span> <span class="operator">+</span> <span class="name">supplier</span>.<span class="name">name</span>
   <span class="name">font</span>.pixelSize: <span class="number">16</span>
   }
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Contributed by &quot;</span> <span class="operator">+</span> <span class="name">user</span>.<span class="name">name</span>
   <span class="name">font</span>.pixelSize: <span class="number">16</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">attribution</span>
   <span class="name">font</span>.pixelSize: <span class="number">8</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@EditorialModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$batchSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="batchSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

batchSize : int

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

This property holds the batch size to use when fetching more editorials
items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@batchSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="place-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

place : Place

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

This property holds the Place that the editorials are for.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@place -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="totalCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

totalCount : int

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

This property holds the total number of editorial items for the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@totalCount -->


