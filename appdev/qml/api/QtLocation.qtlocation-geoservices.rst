QtLocation.qtlocation-geoservices
=================================

.. raw:: html

   <p>

The Qt Location provides the majority of its functionality through
GeoService plugins. This document outlines how to develop a new
GeoService plugin.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="plugin-description">

Plugin Description

.. raw:: html

   </h2>

.. raw:: html

   <p>

Each plugin is described by a json file. The json describes the plugins
capabilities and version. Below is an example of a json file used by the
OpenStreenMap plugin:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">{
   &quot;Keys&quot;: [<span class="string">&quot;osm&quot;</span>],
   &quot;Provider&quot;: <span class="string">&quot;osm&quot;</span>,
   &quot;Version&quot;: <span class="number">100</span>,
   &quot;Experimental&quot;: <span class="number">false</span>,
   &quot;Features&quot;: [
   <span class="string">&quot;OnlineMappingFeature&quot;</span>,
   <span class="string">&quot;OnlineGeocodingFeature&quot;</span>,
   <span class="string">&quot;ReverseGeocodingFeature&quot;</span>,
   <span class="string">&quot;OnlineRoutingFeature&quot;</span>
   ]
   }</pre>

.. raw:: html

   <p>

The entries have the following meaning:

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

Key

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

Keys

.. raw:: html

   </td>

.. raw:: html

   <td>

The unique name/key of the plugin. Each GeoService plugin must have a
unique name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Provider

.. raw:: html

   </td>

.. raw:: html

   <td>

The provider name of the services. Multiple plugins may have the same
name. In such cases the Version string will be used to further
distinguish the plugins.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Experimental

.. raw:: html

   </td>

.. raw:: html

   <td>

Marks the service plugin as experimental. API developers may choose to
ignore such plugins when instanciating
QGeoServiceProvider::QGeoServiceProvider().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Version

.. raw:: html

   </td>

.. raw:: html

   <td>

The plugin version. If multiple plugins have the same provider name, the
plugin with the higest version will be used.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Features

.. raw:: html

   </td>

.. raw:: html

   <td>

List of features provided by the plugin/service. Each feature is a
string representation of the corresponding features in
QGeoServiceProvider. For more details see
QGeoServiceProvider::routingFeatures(),
QGeoServiceProvider::geocodingFeatures() and
QGeoServiceProvider::placesFeatures().

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="implementing-plugins">

Implementing Plugins

.. raw:: html

   </h2>

.. raw:: html

   <p>

A plugin implementer needs to subclass QGeoServiceProviderFactory and as
many of the ManagerEngine classes as they want to provide
implementations for.

.. raw:: html

   </p>

.. raw:: html

   <p>

Subclassing QGeoServiceProviderFactory will only involves overriding of
one of the following methods:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QGeoServiceProviderFactory::createGeocodingManagerEngine()

.. raw:: html

   </li>

.. raw:: html

   <li>

QGeoServiceProviderFactory::createRoutingManagerEngine()

.. raw:: html

   </li>

.. raw:: html

   <li>

QGeoServiceProviderFactory::createPlaceManagerEngine()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If a plugin does not provide an engine the relevant function should
return 0.

.. raw:: html

   </p>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGeoCodingManagerEngine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface and convenience methods to implementers of QGeoServiceProvider
plugins who want to provide support for geocoding operations

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGeoRoutingManagerEngine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface and convenience methods to implementers of QGeoServiceProvider
plugins who want to provide access to geographic routing information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGeoServiceProviderFactory

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Factory class used as the plugin interface for services related to
geographical information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceManagerEngine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for implementers of QGeoServiceProvider plugins who want to
provide access to place functionality

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@qtlocation-geoservices.html -->
