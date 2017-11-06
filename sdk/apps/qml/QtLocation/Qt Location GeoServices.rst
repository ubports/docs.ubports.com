.. _sdk_qtlocation_qt_location_geoservices:

QtLocation Qt Location GeoServices
==================================


The Qt Location provides the majority of its functionality through GeoService plugins. This document outlines how to develop a new GeoService plugin.

Each plugin is described by a json file. The json describes the plugins capabilities and version. Below is an example of a json file used by the OpenStreenMap plugin:

.. code:: cpp

    {
        "Keys": ["osm"],
        "Provider": "osm",
        "Version": 100,
        "Experimental": false,
        "Features": [
            "OnlineMappingFeature",
            "OnlineGeocodingFeature",
            "ReverseGeocodingFeature",
            "OnlineRoutingFeature",
            "OnlinePlacesFeature"
        ]
    }

The entries have the following meaning:

+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Key            | Description                                                                                                                                                                                                                                                                                       |
+================+===================================================================================================================================================================================================================================================================================================+
| Keys           | The unique name/key of the plugin. Each GeoService plugin must have a unique name.                                                                                                                                                                                                                |
+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Provider       | The provider name of the services. Multiple plugins may have the same name. In such cases the Version string will be used to further distinguish the plugins.                                                                                                                                     |
+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Experimental   | Marks the service plugin as experimental. API developers may choose to ignore such plugins when instanciating QGeoServiceProvider::QGeoServiceProvider().                                                                                                                                         |
+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Version        | The plugin version. If multiple plugins have the same provider name, the plugin with the higest version will be used.                                                                                                                                                                             |
+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Features       | List of features provided by the plugin/service. Each feature is a string representation of the corresponding features in QGeoServiceProvider. For more details see QGeoServiceProvider::routingFeatures(), QGeoServiceProvider::geocodingFeatures() and QGeoServiceProvider::placesFeatures().   |
+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A plugin implementer needs to subclass QGeoServiceProviderFactory and as many of the ManagerEngine classes as they want to provide implementations for.

Subclassing QGeoServiceProviderFactory will only involves overriding of one of the following methods:

-  QGeoServiceProviderFactory::createGeocodingManagerEngine()
-  QGeoServiceProviderFactory::createRoutingManagerEngine()
-  QGeoServiceProviderFactory::createPlaceManagerEngine()

If a plugin does not provide an engine the relevant function should return 0.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QGeoCodingManagerEngine                                                                                                                                | Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QGeoRoutingManagerEngine                                                                                                                               | Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QGeoServiceProviderFactory                                                                                                                             | Factory class used as the plugin interface for services related to geographical information                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QPlaceManagerEngine                                                                                                                                    | Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

