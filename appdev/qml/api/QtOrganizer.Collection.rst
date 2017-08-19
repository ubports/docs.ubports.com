QtOrganizer.Collection
======================

.. raw:: html

   <p>

The Collection element represents a collection of items in an organizer
manager. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Collection -->

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

collectionId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

image : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

secondaryColor : color

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

var extendedMetaData(key)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

var metaData(key)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setExtendedMetaData(key, value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setMetaData(key, value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Collection-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Collection -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collectionId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collectionId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collectionId : string

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

This property holds the ID of the collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collectionId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

This property holds the color meta data of a collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="description-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

description : string

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

This property holds the description meta data of a collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="image-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

image : url

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

This property holds the image url meta data of a collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@image -->

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

This property holds the name meta data of a collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="secondaryColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

secondaryColor : color

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

This property holds the secondary color meta data of a collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@secondaryColor -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$extendedMetaData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extendedMetaData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

var extendedMetaData(key)

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

Returns the value of extended metadata with the given key.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extendedMetaData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

var metaData(key)

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

Returns the meta data stored in this collection for the given key.
Possible keys include:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Collection.KeyName

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyDescription

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyColor

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyImage

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyExtended

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@metaData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setExtendedMetaData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setExtendedMetaData(key, value)

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

Sets the value of the extended metadata with the given key to value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setExtendedMetaData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setMetaData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setMetaData(key, value)

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

Sets the meta data of the collection for the given key to the given
value. Possible keys include:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Collection.KeyName

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyDescription

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyColor

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeySecondaryColor

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyImage

.. raw:: html

   </li>

.. raw:: html

   <li>

Collection.KeyExtended

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@setMetaData -->


