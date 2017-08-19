QtLocation.User
===============

.. raw:: html

   <p>

The User type identifies a user who contributed a particular Place
content item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@User -->

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

user : QPlaceUser

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

userId : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$User-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Each Place content item has an associated user who contributed the
content. This type provides information about that user.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how to display information about the user
who submitted an editorial:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="QtLocation.EditorialModel.md">EditorialModel</a></span> {
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

   <p>

See also ImageModel, ReviewModel, and EditorialModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@User -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

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

This property holds the name of a user.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="user-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

user : QPlaceUser

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

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@user -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="userId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

userId : string

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

This property holds the unique identifier of the user.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@userId -->


