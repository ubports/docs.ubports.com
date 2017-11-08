.. _sdk_qtlocation_plugin:

QtLocation Plugin
=================

The Plugin type describes a Location based services plugin.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`allowExperimental <sdk_qtlocation_plugin_allowExperimental>` : bool
-  :ref:`availableServiceProviders <sdk_qtlocation_plugin_availableServiceProviders>` : stringlist
-  :ref:`isAttached <sdk_qtlocation_plugin_isAttached>` : bool
-  :ref:`locales <sdk_qtlocation_plugin_locales>` : stringlist
-  :ref:`name <sdk_qtlocation_plugin_name>` : string
-  :ref:`parameters <sdk_qtlocation_plugin_parameters>` : list<PluginParameter>
-  :ref:`preferred <sdk_qtlocation_plugin_preferred>` : stringlist
-  :ref:`required <sdk_qtlocation_plugin_required>` : enumeration

Methods
-------

-  bool :ref:`supportsGeocoding <sdk_qtlocation_plugin_supportsGeocoding>`\ (GeocodingFeatures *features*)
-  bool :ref:`supportsMapping <sdk_qtlocation_plugin_supportsMapping>`\ (MappingFeatures *features*)
-  bool :ref:`supportsPlaces <sdk_qtlocation_plugin_supportsPlaces>`\ (PlacesFeatures *features*)
-  bool :ref:`supportsRouting <sdk_qtlocation_plugin_supportsRouting>`\ (RoutingFeatures *features*)

Detailed Description
--------------------

The Plugin type is used to declaratively specify which available GeoServices plugin should be used for various tasks in the Location API. Plugins are used by :ref:`Map <sdk_qtlocation_map>`, :ref:`RouteModel <sdk_qtlocation_routemodel>`, and :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` types, as well as a variety of others.

Plugins recognized by the system have a :ref:`name <sdk_qtlocation_plugin_name>` property, a simple string normally indicating the name of the service that the Plugin retrieves data from. They also have a variety of features, which can be test for using the :ref:`supportsRouting() <sdk_qtlocation_plugin_supportsRouting>`, :ref:`supportsGeocoding() <sdk_qtlocation_plugin_supportsGeocoding>`, :ref:`supportsMapping() <sdk_qtlocation_plugin_supportsMapping>` and :ref:`supportsPlaces() <sdk_qtlocation_plugin_supportsPlaces>` methods.

When a Plugin object is created, it is "detached" and not associated with any actual service plugin. Once it has received information via setting its :ref:`name <sdk_qtlocation_plugin_name>`, :ref:`preferred <sdk_qtlocation_plugin_preferred>`, or :ref:`required <sdk_qtlocation_plugin_required>` properties, it will choose an appropriate service plugin to attach to. Plugin objects can only be attached once; to use multiple plugins, create multiple Plugin objects.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a Plugin object being created with the :ref:`required <sdk_qtlocation_plugin_required>` and :ref:`preferred <sdk_qtlocation_plugin_preferred>` properties set. This Plugin will attach to the first plugin found plugin that supports both mapping and geocoding, and will prefer plugins named "nokia" or "foo" to any others.

.. code:: cpp

    Plugin {
        id: plugin
        preferred: ["nokia", "foo"]
        required: Plugin.AnyMappingFeatures | Plugin.AnyGeocodingFeatures
    }

Property Documentation
----------------------

.. _sdk_qtlocation_plugin_allowExperimental:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| allowExperimental : bool                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates if experimental plugins can be used.

.. _sdk_qtlocation_plugin_availableServiceProviders:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availableServiceProviders : stringlist                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of all available service plugins' names. This can be used to manually enumerate the available plugins if the control provided by :ref:`name <sdk_qtlocation_plugin_name>` and :ref:`required <sdk_qtlocation_plugin_required>` is not sufficient for your needs.

.. _sdk_qtlocation_plugin_isAttached:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isAttached : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates if the Plugin is attached to another Plugin.

.. _sdk_qtlocation_plugin_locales:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| locales : stringlist                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains an ordered list of preferred plugin locales. If the first locale cannot be accommodated, then the backend falls back to using the second, and so on. By default the locales property contains the system locale.

The locales are specified as strings which have the format "language[\_script][\_country]" or "C", where:

-  language is a lowercase, two-letter, ISO 639 language code,
-  script is a titlecase, four-letter, ISO 15924 script code,
-  country is an uppercase, two- or three-letter, ISO 3166 country code (also "419" as defined by United Nations),
-  the "C" locale is identical in behavior to English/UnitedStates as per QLocale

If the first specified locale cannot be accommodated, the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  falls back to the next and so forth. Some `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  backends may not support a set of locales which are rigidly defined. An arbitrary example is that some `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ 's in France could have French and English localizations, while certain areas in America may only have the English localization available. In the above scenario, the set of supported locales is context dependent on the search location.

If the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  cannot accommodate any of the preferred locales, the manager falls back to using a supported language that is backend specific.

For `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ 's that do not support locales, the locales list is always empty.

The following code demonstrates how to set a single and multiple locales:

.. code:: qml

    //single locale
    Plugin {
        locales: "en_US"
    }
    //multiple locales
    Plugin {
        locales: ["fr_FR","en_US"]
    }

.. _sdk_qtlocation_plugin_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the plugin. Setting this property will cause the Plugin to only attach to a plugin with exactly this name. The value of :ref:`required <sdk_qtlocation_plugin_required>` will be ignored.

.. _sdk_qtlocation_plugin_parameters:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] parameters : list<:ref:`PluginParameter <sdk_qtlocation_pluginparameter>`>                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of plugin parameters.

.. _sdk_qtlocation_plugin_preferred:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferred : stringlist                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains an ordered list of preferred plugin names, which will be checked for the required features set in :ref:`required <sdk_qtlocation_plugin_required>` before any other available plugins are checked.

.. _sdk_qtlocation_plugin_required:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| required : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the set of features that will be required by the Plugin object when choosing which service plugin to attach to. If the :ref:`name <sdk_qtlocation_plugin_name>` property is set, this has no effect.

Any of the following values or a bitwise combination of multiple values may be set:

-  Plugin.NoFeatures
-  Plugin.GeocodingFeature
-  Plugin.ReverseGeocodingFeature
-  Plugin.RoutingFeature
-  Plugin.MappingFeature
-  Plugin.AnyPlacesFeature

Method Documentation
--------------------

.. _sdk_qtlocation_plugin_supportsGeocoding:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool supportsGeocoding(GeocodingFeatures *features*)                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

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

.. _sdk_qtlocation_plugin_supportsMapping:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool supportsMapping(MappingFeatures *features*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

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

.. _sdk_qtlocation_plugin_supportsPlaces:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool supportsPlaces(PlacesFeatures *features*)                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

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

.. _sdk_qtlocation_plugin_supportsRouting:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool supportsRouting(RoutingFeatures *features*)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

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

