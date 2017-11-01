The Plugin type describes a Location based services plugin.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`allowExperimental </sdk/apps/qml/QtLocation/Plugin#allowExperimental-prop>`__****
   : bool
-  ****`availableServiceProviders </sdk/apps/qml/QtLocation/Plugin#availableServiceProviders-prop>`__****
   : stringlist
-  ****`isAttached </sdk/apps/qml/QtLocation/Plugin#isAttached-prop>`__****
   : bool
-  ****`locales </sdk/apps/qml/QtLocation/Plugin#locales-prop>`__**** :
   stringlist
-  ****`name </sdk/apps/qml/QtLocation/Plugin#name-prop>`__**** : string
-  ****`parameters </sdk/apps/qml/QtLocation/Plugin#parameters-prop>`__****
   : list<PluginParameter>
-  ****`preferred </sdk/apps/qml/QtLocation/Plugin#preferred-prop>`__****
   : stringlist
-  ****`required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__****
   : enumeration

Methods
-------

-  bool
   ****`supportsGeocoding </sdk/apps/qml/QtLocation/Plugin#supportsGeocoding-method>`__****\ (GeocodingFeatures
   *features*)
-  bool
   ****`supportsMapping </sdk/apps/qml/QtLocation/Plugin#supportsMapping-method>`__****\ (MappingFeatures
   *features*)
-  bool
   ****`supportsPlaces </sdk/apps/qml/QtLocation/Plugin#supportsPlaces-method>`__****\ (PlacesFeatures
   *features*)
-  bool
   ****`supportsRouting </sdk/apps/qml/QtLocation/Plugin#supportsRouting-method>`__****\ (RoutingFeatures
   *features*)

Detailed Description
--------------------

The Plugin type is used to declaratively specify which available
GeoServices plugin should be used for various tasks in the Location API.
Plugins are used by `Map </sdk/apps/qml/QtLocation/Map/>`__,
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__, and
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ types, as well
as a variety of others.

Plugins recognized by the system have a
`name </sdk/apps/qml/QtLocation/Plugin#name-prop>`__ property, a simple
string normally indicating the name of the service that the Plugin
retrieves data from. They also have a variety of features, which can be
test for using the
`supportsRouting() </sdk/apps/qml/QtLocation/Plugin#supportsRouting-method>`__,
`supportsGeocoding() </sdk/apps/qml/QtLocation/Plugin#supportsGeocoding-method>`__,
`supportsMapping() </sdk/apps/qml/QtLocation/Plugin#supportsMapping-method>`__
and
`supportsPlaces() </sdk/apps/qml/QtLocation/Plugin#supportsPlaces-method>`__
methods.

When a Plugin object is created, it is "detached" and not associated
with any actual service plugin. Once it has received information via
setting its `name </sdk/apps/qml/QtLocation/Plugin#name-prop>`__,
`preferred </sdk/apps/qml/QtLocation/Plugin#preferred-prop>`__, or
`required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__ properties,
it will choose an appropriate service plugin to attach to. Plugin
objects can only be attached once; to use multiple plugins, create
multiple Plugin objects.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a Plugin object being created with the
`required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__ and
`preferred </sdk/apps/qml/QtLocation/Plugin#preferred-prop>`__
properties set. This Plugin will attach to the first plugin found plugin
that supports both mapping and geocoding, and will prefer plugins named
"nokia" or "foo" to any others.

.. code:: cpp

    Plugin {
        id: plugin
        preferred: ["nokia", "foo"]
        required: Plugin.AnyMappingFeatures | Plugin.AnyGeocodingFeatures
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allowExperimental : bool                                        |
+--------------------------------------------------------------------------+

This property indicates if experimental plugins can be used.

| 

+--------------------------------------------------------------------------+
|        \ availableServiceProviders : stringlist                          |
+--------------------------------------------------------------------------+

This property holds a list of all available service plugins' names. This
can be used to manually enumerate the available plugins if the control
provided by `name </sdk/apps/qml/QtLocation/Plugin#name-prop>`__ and
`required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__ is not
sufficient for your needs.

| 

+--------------------------------------------------------------------------+
|        \ isAttached : bool                                               |
+--------------------------------------------------------------------------+

This property indicates if the Plugin is attached to another Plugin.

| 

+--------------------------------------------------------------------------+
|        \ locales : stringlist                                            |
+--------------------------------------------------------------------------+

This property contains an ordered list of preferred plugin locales. If
the first locale cannot be accommodated, then the backend falls back to
using the second, and so on. By default the locales property contains
the system locale.

The locales are specified as strings which have the format
"language[\_script][\_country]" or "C", where:

-  language is a lowercase, two-letter, ISO 639 language code,
-  script is a titlecase, four-letter, ISO 15924 script code,
-  country is an uppercase, two- or three-letter, ISO 3166 country code
   (also "419" as defined by United Nations),
-  the "C" locale is identical in behavior to English/UnitedStates as
   per QLocale

If the first specified locale cannot be accommodated, the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ falls
back to the next and so forth. Some
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
backends may not support a set of locales which are rigidly defined. An
arbitrary example is that some
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__'s in France
could have French and English localizations, while certain areas in
America may only have the English localization available. In the above
scenario, the set of supported locales is context dependent on the
search location.

If the `Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
cannot accommodate any of the preferred locales, the manager falls back
to using a supported language that is backend specific.

For `Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__'s
that do not support locales, the locales list is always empty.

The following code demonstrates how to set a single and multiple
locales:

.. code:: qml

    //single locale
    Plugin {
        locales: "en_US"
    }
    //multiple locales
    Plugin {
        locales: ["fr_FR","en_US"]
    }

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the plugin. Setting this property will
cause the Plugin to only attach to a plugin with exactly this name. The
value of `required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__
will be ignored.

| 

+--------------------------------------------------------------------------+
|        \ [default] parameters :                                          |
| list<`PluginParameter </sdk/apps/qml/QtLocation/PluginParameter/>`__>    |
+--------------------------------------------------------------------------+

This property holds the list of plugin parameters.

| 

+--------------------------------------------------------------------------+
|        \ preferred : stringlist                                          |
+--------------------------------------------------------------------------+

This property contains an ordered list of preferred plugin names, which
will be checked for the required features set in
`required </sdk/apps/qml/QtLocation/Plugin#required-prop>`__ before any
other available plugins are checked.

| 

+--------------------------------------------------------------------------+
|        \ required : enumeration                                          |
+--------------------------------------------------------------------------+

This property contains the set of features that will be required by the
Plugin object when choosing which service plugin to attach to. If the
`name </sdk/apps/qml/QtLocation/Plugin#name-prop>`__ property is set,
this has no effect.

Any of the following values or a bitwise combination of multiple values
may be set:

-  Plugin.NoFeatures
-  Plugin.GeocodingFeature
-  Plugin.ReverseGeocodingFeature
-  Plugin.RoutingFeature
-  Plugin.MappingFeature
-  Plugin.AnyPlacesFeature

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool supportsGeocoding(GeocodingFeatures *features*)            |
+--------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of
*features* are supported by the geo service provider plugin. True is
returned if all specified *features* are supported; otherwise false is
returned.

The *features* parameter can be any flag combination of:

+------------------------------------+------------------------------------------------------------------------+
| Feature                            | Description                                                            |
+====================================+========================================================================+
| Plugin.NoGeocodingFeatures         | No geocoding features are supported.                                   |
+------------------------------------+------------------------------------------------------------------------+
| Plugin.OnlineGeocodingFeature      | Online geocoding is supported.                                         |
+------------------------------------+------------------------------------------------------------------------+
| Plugin.OfflineGeocodingFeature     | Offline geocoding is supported.                                        |
+------------------------------------+------------------------------------------------------------------------+
| Plugin.ReverseGeocodingFeature     | Reverse geocoding is supported.                                        |
+------------------------------------+------------------------------------------------------------------------+
| Plugin.LocalizedGeocodingFeature   | Supports returning geocoding results with localized addresses.         |
+------------------------------------+------------------------------------------------------------------------+
| Plugin.AnyGeocodingFeatures        | Matches a geo service provider that provides any geocoding features.   |
+------------------------------------+------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ bool supportsMapping(MappingFeatures *features*)                |
+--------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of
*features* are supported by the geo service provider plugin. True is
returned if all specified *features* are supported; otherwise false is
returned.

The *features* parameter can be any flag combination of:

+----------------------------------+----------------------------------------------------------------------+
| Feature                          | Description                                                          |
+==================================+======================================================================+
| Plugin.NoMappingFeatures         | No mapping features are supported.                                   |
+----------------------------------+----------------------------------------------------------------------+
| Plugin.OnlineMappingFeature      | Online mapping is supported.                                         |
+----------------------------------+----------------------------------------------------------------------+
| Plugin.OfflineMappingFeature     | Offline mapping is supported.                                        |
+----------------------------------+----------------------------------------------------------------------+
| Plugin.LocalizedMappingFeature   | Supports returning localized map data.                               |
+----------------------------------+----------------------------------------------------------------------+
| Plugin.AnyMappingFeatures        | Matches a geo service provider that provides any mapping features.   |
+----------------------------------+----------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ bool supportsPlaces(PlacesFeatures *features*)                  |
+--------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of
*features* are supported by the geo service provider plugin. True is
returned if all specified *features* are supported; otherwise false is
returned.

The *features* parameter can be any flag combination of:

+--------------------------------------+---------------------------------------------------------------------------+
| Feature                              | Description                                                               |
+======================================+===========================================================================+
| Plugin.NoPlacesFeatures              | No places features are supported.                                         |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.OnlinePlacesFeature           | Online places is supported.                                               |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.OfflinePlacesFeature          | Offline places is supported.                                              |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.SavePlaceFeature              | Saving categories is supported.                                           |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.RemovePlaceFeature            | Removing or deleting places is supported.                                 |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.PlaceRecommendationsFeature   | Searching for recommended places similar to another place is supported.   |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.SearchSuggestionsFeature      | Search suggestions is supported.                                          |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.LocalizedPlacesFeature        | Supports returning localized place data.                                  |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.NotificationsFeature          | Notifications of place and category changes is supported.                 |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.PlaceMatchingFeature          | Supports matching places from two different geo service providers.        |
+--------------------------------------+---------------------------------------------------------------------------+
| Plugin.AnyPlacesFeatures             | Matches a geo service provider that provides any places features.         |
+--------------------------------------+---------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ bool supportsRouting(RoutingFeatures *features*)                |
+--------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of
*features* are supported by the geo service provider plugin. True is
returned if all specified *features* are supported; otherwise false is
returned.

The *features* parameter can be any flag combination of:

+-------------------------------------+--------------------------------------------------------------------------+
| Feature                             | Description                                                              |
+=====================================+==========================================================================+
| Plugin.NoRoutingFeatures            | No routing features are supported.                                       |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.OnlineRoutingFeature         | Online routing is supported.                                             |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.OfflineRoutingFeature        | Offline routing is supported.                                            |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.LocalizedRoutingFeature      | Supports returning routes with localized addresses and instructions.     |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.RouteUpdatesFeature          | Updating an existing route based on the current position is supported.   |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.AlternativeRoutesFeature     | Supports returning alternative routes.                                   |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.ExcludeAreasRoutingFeature   | Supports specifying a areas which the returned route must not cross.     |
+-------------------------------------+--------------------------------------------------------------------------+
| Plugin.AnyRoutingFeatures           | Matches a geo service provider that provides any routing features.       |
+-------------------------------------+--------------------------------------------------------------------------+

| 
