QtLocation.Plugin
=================

.. raw:: html

   <p>

The Plugin type describes a Location based services plugin. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Plugin -->

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

allowExperimental : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availableServiceProviders : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isAttached : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locales : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parameters : list<PluginParameter>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preferred : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

required : enumeration

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

bool supportsGeocoding(GeocodingFeatures features)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool supportsMapping(MappingFeatures features)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool supportsPlaces(PlacesFeatures features)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool supportsRouting(RoutingFeatures features)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Plugin-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Plugin type is used to declaratively specify which available
GeoServices plugin should be used for various tasks in the Location API.
Plugins are used by Map, RouteModel, and GeocodeModel types, as well as
a variety of others.

.. raw:: html

   </p>

.. raw:: html

   <p>

Plugins recognized by the system have a supportsPlaces() methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a Plugin object is created, it is "detached" and not associated
with any actual service plugin. Once it has received information via
setting its required properties, it will choose an appropriate service
plugin to attach to. Plugin objects can only be attached once; to use
multiple plugins, create multiple Plugin objects.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a Plugin object being created with the
preferred properties set. This Plugin will attach to the first plugin
found plugin that supports both mapping and geocoding, and will prefer
plugins named "nokia" or "foo" to any others.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Plugin {
   id: plugin
   preferred: <span class="operator">[</span><span class="string">&quot;nokia&quot;</span><span class="operator">,</span> <span class="string">&quot;foo&quot;</span><span class="operator">]</span>
   required: Plugin<span class="operator">.</span>AnyMappingFeatures <span class="operator">|</span> Plugin<span class="operator">.</span>AnyGeocodingFeatures
   }</pre>

.. raw:: html

   <!-- @@@Plugin -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$allowExperimental -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="allowExperimental-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

allowExperimental : bool

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

This property indicates if experimental plugins can be used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@allowExperimental -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableServiceProviders-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availableServiceProviders : stringlist

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

This property holds a list of all available service plugins' names. This
can be used to manually enumerate the available plugins if the control
provided by required is not sufficient for your needs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@availableServiceProviders -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isAttached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

isAttached : bool

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

This property indicates if the Plugin is attached to another Plugin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isAttached -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locales-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locales : stringlist

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

This property contains an ordered list of preferred plugin locales. If
the first locale cannot be accommodated, then the backend falls back to
using the second, and so on. By default the locales property contains
the system locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

The locales are specified as strings which have the format
"language[\_script][\_country]" or "C", where:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

language is a lowercase, two-letter, ISO 639 language code,

.. raw:: html

   </li>

.. raw:: html

   <li>

script is a titlecase, four-letter, ISO 15924 script code,

.. raw:: html

   </li>

.. raw:: html

   <li>

country is an uppercase, two- or three-letter, ISO 3166 country code
(also "419" as defined by United Nations),

.. raw:: html

   </li>

.. raw:: html

   <li>

the "C" locale is identical in behavior to English/UnitedStates as per
QLocale

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the first specified locale cannot be accommodated, the Plugin falls
back to the next and so forth. Some Plugin backends may not support a
set of locales which are rigidly defined. An arbitrary example is that
some Place's in France could have French and English localizations,
while certain areas in America may only have the English localization
available. In the above scenario, the set of supported locales is
context dependent on the search location.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the Plugin cannot accommodate any of the preferred locales, the
manager falls back to using a supported language that is backend
specific.

.. raw:: html

   </p>

.. raw:: html

   <p>

For Plugin's that do not support locales, the locales list is always
empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code demonstrates how to set a single and multiple
locales:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//single locale</span>
   <span class="type"><a href="#">Plugin</a></span> {
   <span class="name">locales</span>: <span class="string">&quot;en_US&quot;</span>
   }
   <span class="comment">//multiple locales</span>
   <span class="type"><a href="#">Plugin</a></span> {
   <span class="name">locales</span>: [<span class="string">&quot;fr_FR&quot;</span>,<span class="string">&quot;en_US&quot;</span>]
   }</pre>

.. raw:: html

   <!-- @@@locales -->

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

This property holds the name of the plugin. Setting this property will
cause the Plugin to only attach to a plugin with exactly this name. The
value of required will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parameters-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultparameters : list<PluginParameter>

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

This property holds the list of plugin parameters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parameters -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preferred-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preferred : stringlist

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

This property contains an ordered list of preferred plugin names, which
will be checked for the required features set in required before any
other available plugins are checked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preferred -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="required-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

required : enumeration

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

This property contains the set of features that will be required by the
Plugin object when choosing which service plugin to attach to. If the
name property is set, this has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

Any of the following values or a bitwise combination of multiple values
may be set:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Plugin.NoFeatures

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugin.GeocodingFeature

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugin.ReverseGeocodingFeature

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugin.RoutingFeature

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugin.MappingFeature

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugin.AnyPlacesFeature

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@required -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$supportsGeocoding -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportsGeocoding-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool supportsGeocoding(GeocodingFeatures features)

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

This method returns a boolean indicating whether the specified set of
features are supported by the geo service provider plugin. True is
returned if all specified features are supported; otherwise false is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The features parameter can be any flag combination of:

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

Feature

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

Plugin.NoGeocodingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

No geocoding features are supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OnlineGeocodingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Online geocoding is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OfflineGeocodingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Offline geocoding is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.ReverseGeocodingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Reverse geocoding is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.LocalizedGeocodingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports returning geocoding results with localized addresses.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.AnyGeocodingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

Matches a geo service provider that provides any geocoding features.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@supportsGeocoding -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportsMapping-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool supportsMapping(MappingFeatures features)

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

This method returns a boolean indicating whether the specified set of
features are supported by the geo service provider plugin. True is
returned if all specified features are supported; otherwise false is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The features parameter can be any flag combination of:

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

Feature

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

Plugin.NoMappingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

No mapping features are supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OnlineMappingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Online mapping is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OfflineMappingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Offline mapping is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.LocalizedMappingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports returning localized map data.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.AnyMappingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

Matches a geo service provider that provides any mapping features.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@supportsMapping -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportsPlaces-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool supportsPlaces(PlacesFeatures features)

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

This method returns a boolean indicating whether the specified set of
features are supported by the geo service provider plugin. True is
returned if all specified features are supported; otherwise false is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The features parameter can be any flag combination of:

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

Feature

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

Plugin.NoPlacesFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

No places features are supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OnlinePlacesFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Online places is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OfflinePlacesFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Offline places is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.SavePlaceFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Saving categories is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.RemovePlaceFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Removing or deleting places is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.PlaceRecommendationsFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Searching for recommended places similar to another place is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.SearchSuggestionsFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Search suggestions is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.LocalizedPlacesFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports returning localized place data.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.NotificationsFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Notifications of place and category changes is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.PlaceMatchingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports matching places from two different geo service providers.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.AnyPlacesFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

Matches a geo service provider that provides any places features.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@supportsPlaces -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportsRouting-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool supportsRouting(RoutingFeatures features)

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

This method returns a boolean indicating whether the specified set of
features are supported by the geo service provider plugin. True is
returned if all specified features are supported; otherwise false is
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The features parameter can be any flag combination of:

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

Feature

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

Plugin.NoRoutingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

No routing features are supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OnlineRoutingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Online routing is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.OfflineRoutingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Offline routing is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.LocalizedRoutingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports returning routes with localized addresses and instructions.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.RouteUpdatesFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Updating an existing route based on the current position is supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.AlternativeRoutesFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports returning alternative routes.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.ExcludeAreasRoutingFeature

.. raw:: html

   </td>

.. raw:: html

   <td>

Supports specifying a areas which the returned route must not cross.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Plugin.AnyRoutingFeatures

.. raw:: html

   </td>

.. raw:: html

   <td>

Matches a geo service provider that provides any routing features.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@supportsRouting -->


