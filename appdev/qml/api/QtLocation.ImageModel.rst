QtLocation.ImageModel
=====================

.. raw:: html

   <p>

The ImageModel type provides a model of place images. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ImageModel -->

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

   <!-- $$$ImageModel-description -->

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

url

.. raw:: html

   </td>

.. raw:: html

   <td>

url

.. raw:: html

   </td>

.. raw:: html

   <td>

The URL of the image.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

imageId

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The identifier of the image.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mimeType

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The MIME type of the image.

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

The supplier of the image.

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

The user who contributed the image.

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

Attribution text which must be displayed when displaying the image.

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

The following example shows how to display images for a place:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">ImageModel</a></span> {
   <span class="name">id</span>: <span class="name">imageModel</span>
   <span class="name">batchSize</span>: <span class="number">3</span>
   <span class="name">place</span>: <span class="name">place</span>
   }
   <span class="type">ListView</span> {
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="name">model</span>: <span class="name">imageModel</span>
   <span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
   <span class="name">snapMode</span>: <span class="name">ListView</span>.<span class="name">SnapOneItem</span>
   <span class="name">delegate</span>: <span class="name">Item</span> {
   <span class="name">width</span>: <span class="name">listView</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">listView</span>.<span class="name">height</span>
   <span class="type">Image</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="name">url</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">supplier</span>.<span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;\n&quot;</span> <span class="operator">+</span> <span class="name">supplier</span>.<span class="name">url</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ImageModel -->

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

This property holds the batch size to use when fetching more image
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

This property holds the Place that the images are for.

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

This property holds the total number of image items for the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@totalCount -->


