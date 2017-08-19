QtLocation.location-plugin-nokia
================================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

Included with Qt Location is a geo services plugin which accesses the
relevant Nokia services provided by Nokia. The use of these services is
governed by the terms and conditions available at Qt Location Nokia
Plugin - Nokia Services Terms and Conditions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that accepting the terms and conditions only applies those terms
and conditions to the use of the Nokia geo services plugin and does not
limit the use of the other geo services plugins that may be included
with Qt.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Nokia geo services plugin can be loaded by using the plugin key
"nokia".

.. raw:: html

   </p>

.. raw:: html

   <p>

The online plugin uses the tiled map classes, which caches tile data in
heap memory and texture memory.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="parameters">

Parameters

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Mandatory parameters

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following table lists mandatory parameters that must be passed to
the Nokia plugin.

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

Parameter

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

app\_id

.. raw:: html

   </td>

.. raw:: html

   <td>

Client app\_id part of the app\_id/token pair used for authentication by
all managers.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

token

.. raw:: html

   </td>

.. raw:: html

   <td>

Client token part of the app\_id/token pair for the service used for
authentication by all managers.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The Nokia geo services plugin requires an application id and token pair
to authenticate the application with the Nokia services. To obtain an
application id and token pair visit
https://networks.nokia.com/developer/mn/

.. raw:: html

   </p>

.. raw:: html

   <h3>

Optional parameters

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following table lists optional parameters that can be passed to the
Nokia plugin.

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

Parameter

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

proxy

.. raw:: html

   </td>

.. raw:: html

   <td>

Proxy server URL used by all managers. For usage of the system proxy
just pass "system" as value.

.. raw:: html

   <p>

Note: See the notes in QNetworkProxyFactory::systemProxyForQuery() for
further information.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.host

.. raw:: html

   </td>

.. raw:: html

   <td>

Base map tile service URL used by mapping manager.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.host.aerial

.. raw:: html

   </td>

.. raw:: html

   <td>

Aerial map tile service URL used by mapping manager. For all satellite,
hybrid and terrain schemes.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.cache.directory

.. raw:: html

   </td>

.. raw:: html

   <td>

Map tile cache directory used as network disk cache.

.. raw:: html

   <p>

Default place for the cache is "QtLocation" directory in
QStandardPaths::writableLocation(QStandardPaths::GenericCacheLocation).

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.cache.disk.size

.. raw:: html

   </td>

.. raw:: html

   <td>

Map tile disk cache size in bytes. Default size of the cache is 20MB.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.cache.memory.size

.. raw:: html

   </td>

.. raw:: html

   <td>

Map tile memory cache size in bytes. Default size of the cache is 3MB.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

mapping.cache.texture.size

.. raw:: html

   </td>

.. raw:: html

   <td>

Map tile texture cache size in bytes. Default size of the cache is 6MB.
Note that the texture cache has a hard minimum size which depends on the
size of the map viewport (it must contain enough data to display the
tiles currently visible on the display). This value is the amount of
cache to be used in addition to the bare minimum.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

geocoding.host

.. raw:: html

   </td>

.. raw:: html

   <td>

Geocoding service URL used by geocoding manager.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

routing.host

.. raw:: html

   </td>

.. raw:: html

   <td>

Routing service URL used by routing manager.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

places.host

.. raw:: html

   </td>

.. raw:: html

   <td>

Search service URL used by search manager.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

places.api\_version

.. raw:: html

   </td>

.. raw:: html

   <td>

Version of the REST API used by the places manager. Currently versions 1
and 2 are supported. The version 1 is deprecated and will not be part of
the final Qt release. The default is version 2.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

places.theme

.. raw:: html

   </td>

.. raw:: html

   <td>

Specifies the icon theme to be used for places and categories. If no
theme is explicitly provided then the platform theme is used. A default
non-platform specific theme can be specified using a value of "default".
The supported themes are "wp7\_dark" and "default". On desktop platforms
the "default" theme is the platform theme.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="parameter-usage-example">

Parameter Usage Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following two examples show how to create a Nokia plugin instance
with parameters supplied for an application id and token, which is
required for authentication.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QML

.. raw:: html

   </h3>

.. raw:: html

   <pre class="cpp">Plugin {
   name: <span class="string">&quot;nokia&quot;</span>
   PluginParameter { name: <span class="string">&quot;app_id&quot;</span>; value: <span class="string">&quot;myapp&quot;</span> }
   PluginParameter { name: <span class="string">&quot;token&quot;</span>; value: <span class="string">&quot;abcdefg12345&quot;</span> }
   }</pre>

.. raw:: html

   <h3>

C++

.. raw:: html

   </h3>

.. raw:: html

   <pre class="cpp"><span class="type">QMap</span><span class="operator">&lt;</span><span class="type">QString</span><span class="operator">,</span><span class="type">QVariant</span><span class="operator">&gt;</span> params;
   params<span class="operator">[</span><span class="string">&quot;app_id&quot;</span><span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;myapp&quot;</span>;
   params<span class="operator">[</span><span class="string">&quot;token&quot;</span><span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;abcdefg12345&quot;</span>;
   <span class="type">QGeoServiceProvider</span> <span class="operator">*</span>gsp <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QGeoServiceProvider</span>(<span class="string">&quot;nokia&quot;</span><span class="operator">,</span> params);</pre>

.. raw:: html

   <h2 id="places">

Places

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Nokia provider remotely accesses places (read-only) from a REST
based server. The specific capabilities and behaviours are outlined
below:

.. raw:: html

   </p>

.. raw:: html

   <h3>

Capabilities

.. raw:: html

   </h3>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Storage

.. raw:: html

   </td>

.. raw:: html

   <td>

remote

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Read/Write

.. raw:: html

   </td>

.. raw:: html

   <td>

read-only

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Icons

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Search term suggestions

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Recommendations

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category structure

.. raw:: html

   </td>

.. raw:: html

   <td>

Hierarchical

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

(Rich) Content images

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

(Rich) Content reviews

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

(Rich) Content editorials

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

All details fetched during search

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Paging offset index

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Paging limit

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Distance relevance hint

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Lexical name relevance hint

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Extended Attributes

.. raw:: html

   </td>

.. raw:: html

   <td>

yes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Notifications for added/removed places/categories

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

visibility scopes

.. raw:: html

   </td>

.. raw:: html

   <td>

public

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

favorites matching/(usable as favoritesPlugin)

.. raw:: html

   </td>

.. raw:: html

   <td>

no

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Plugin Specific Behaviors and Limitations.

.. raw:: html

   </h3>

.. raw:: html

   <h4>

Search

.. raw:: html

   </h4>

.. raw:: html

   <p>

The following list shows what core place data is returned during a place
search:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

name

.. raw:: html

   </li>

.. raw:: html

   <li>

location

.. raw:: html

   </li>

.. raw:: html

   <li>

contact information

.. raw:: html

   </li>

.. raw:: html

   <li>

attribution

.. raw:: html

   </li>

.. raw:: html

   <li>

categories

.. raw:: html

   </li>

.. raw:: html

   <li>

rating

.. raw:: html

   </li>

.. raw:: html

   <li>

visibility

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The following list shows further details that may be retrieved via
QPlaceManager::getDetails()

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

supplier

.. raw:: html

   </li>

.. raw:: html

   <li>

extended attributes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h4>

Searching for Places

.. raw:: html

   </h4>

.. raw:: html

   <h5>

Search Term and Categories

.. raw:: html

   </h5>

.. raw:: html

   <p>

The nokia plugin supports searching with a search term and category or
categories, however both are not supported simultaneously.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Valid usage: search term + search center

.. raw:: html

   </li>

.. raw:: html

   <li>

Valid usage: category + search center

.. raw:: html

   </li>

.. raw:: html

   <li>

Invalid usage: search term + category + search center

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This limitation applies when using the nokia plugin with
PlaceSearchModel and QPlaceManager::search().

.. raw:: html

   </p>

.. raw:: html

   <h5>

Search Area

.. raw:: html

   </h5>

.. raw:: html

   <p>

The nokia plugin only supports provision of a search center when
searching for places via PlaceSearchModel and QPlaceManager::search(). A
search center can be provided via a bounding circle, however the radius
should be kept at the default value of -1. Typically a developer should
not have to set the radius at all. If a developer sets a radius, it is
ignored by the plugin and the boundaries are not honored.

.. raw:: html

   </p>

.. raw:: html

   <p>

In a similar manner only the center of a bounding box is taken into
consideration when searching. The boundaries of the box are not honored.

.. raw:: html

   </p>

.. raw:: html

   <p>

A search center must be provided for all searches.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Relevancy Hints

.. raw:: html

   </h5>

.. raw:: html

   <p>

The nokia plugin does not support relevancy hints. Any relevancy hints
supplied to a search request are consequently ignored.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Search Term suggestions

.. raw:: html

   </h4>

.. raw:: html

   <p>

Only a partial search term and search center is supported when
retrieving suggestions. This limitation applies when using the nokia
plugin with the PlaceSearchSuggestionModel and
QPlaceManager::searchSuggestions().

.. raw:: html

   </p>

.. raw:: html

   <p>

Both search term and search center must be provided when retrieving
search term suggestions.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Recommendations

.. raw:: html

   </h4>

.. raw:: html

   <p>

Only a given place identifier is supported as a parameter for a
recommendations. No other parameters such as limit, offset, and search
area are supported. This limitation applies when using the nokia plugin
with PlaceSearchModel and QPlaceManager::search().

.. raw:: html

   </p>

.. raw:: html

   <h4>

Icons themes, base urls and variants

.. raw:: html

   </h4>

.. raw:: html

   <p>

Icons are provided in the form of "base urls" which reference valid icon
images. For example, if the "wp7\_dark" theme was specified, then an
icon url might look something like http://<server>/01.icon.wp7\_dark and
this references an actual icon image.

.. raw:: html

   </p>

.. raw:: html

   <p>

However these urls are "base urls" in the sense that they can be
appended onto, to provide variants. For example, one could add
".list.png" to the above url to get the list variant of the icon,
http://<server>/01.icon.wp7\_dark.list.png.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following table shows the themes provided by the nokia plugin, along
with any variants supported for those themes:

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

Theme

.. raw:: html

   </th>

.. raw:: html

   <th>

Supported type variants and appendage strings

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

"default"

.. raw:: html

   </td>

.. raw:: html

   <td>

no variants supported

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

"wp7\_dark"

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <ul>

.. raw:: html

   <li>

list : ".list.png"

.. raw:: html

   </li>

.. raw:: html

   <li>

map: ".map.png"

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

(Note: the default base urls reference a map type icons)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h4>

Extended Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

The supported set of attributes provided by nokia plugin are not fixed
and may grow over time. Also the attributes provided may vary according
to a place by place basis, e.g one place may provide opening hours while
another does not. At the time of writing, it is known that some places
provide openingHours (QPlaceAttribute::OpeningHours) and payment
(QPlaceAttribute::Payment) methods but other attributes may be made
available by the backend server. All places provided by the plugin will
have the x\_provider (QPlaceAttribute::Provider) attribute set to nokia.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Restrictions of Usage - ExtendedAttributes and Content

.. raw:: html

   </h4>

.. raw:: html

   <p>

The extended attributes and rich content of places are not permitted to
be saved. For QML this is related to Place::extendedAttributes,
ImageModel, ReviewModel, and EditorialModel. For C++ this relates to
QPlace::extendedAttribute(), QPlace::content() and
QPlaceManager::getPlaceContent().

.. raw:: html

   </p>

.. raw:: html

   <p>

(Note that the nokia plugin is a read-only source of places and does not
support saving functionality at all.)

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@location-plugin-nokia.html -->
