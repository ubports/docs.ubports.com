QtLocation.MapType
==================

.. raw:: html

   <p>

The MapType type holds information about a map type. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapType -->

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

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mobile : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

night : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

style : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapType-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This includes the map type's mobile).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapType -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$description -->

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

This read-only property holds the description of the map type as a
single formatted string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mobile-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mobile : bool

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

Whether the map type is optimized for the use on a mobile device.

.. raw:: html

   </p>

.. raw:: html

   <p>

Map types for mobile devices usually have higher constrast to counteract
the effects of sunlight and a reduced color for improved readability.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mobile -->

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

This read-only property holds the name of the map type as a single
formatted string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="night-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

night : bool

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

Whether the map type is optimized for use at night.

.. raw:: html

   </p>

.. raw:: html

   <p>

Map types suitable for use at night usually have a dark background.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt Location 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@night -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="style-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

style : enumeration

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

This read-only property gives access to the style of the map type.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MapType.NoMap - No map.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.StreetMap - A street map.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.SatelliteMapDay - A map with day-time satellite imagery.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.SatelliteMapNight - A map with night-time satellite imagery.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.TerrainMap - A terrain map.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.HybridMap - A map with satellite imagery and street information.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.GrayStreetMap - A gray-shaded street map.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType::PedestrianMap - A street map suitable for pedestriants.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType::CarNavigationMap - A street map suitable for car navigation.

.. raw:: html

   </li>

.. raw:: html

   <li>

MapType.CustomMap - A custom map type.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@style -->


