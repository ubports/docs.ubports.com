.. _sdk_qtlocation_maptype:

QtLocation MapType
==================

The MapType type holds information about a map type.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`description <sdk_qtlocation_maptype_description>` : string
-  :ref:`mobile <sdk_qtlocation_maptype_mobile>` : bool
-  :ref:`name <sdk_qtlocation_maptype_name>` : string
-  :ref:`night <sdk_qtlocation_maptype_night>` : bool
-  :ref:`style <sdk_qtlocation_maptype_style>` : enumeration

Detailed Description
--------------------

This includes the map type's :ref:`name <sdk_qtlocation_maptype_name>` and :ref:`description <sdk_qtlocation_maptype_description>`, the :ref:`style <sdk_qtlocation_maptype_style>` and a flag to indicate if the map type is optimized for mobile devices (:ref:`mobile <sdk_qtlocation_maptype_mobile>`).

Property Documentation
----------------------

.. _sdk_qtlocation_maptype_description:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| description : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the description of the map type as a single formatted string.

.. _sdk_qtlocation_maptype_mobile:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mobile : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the map type is optimized for the use on a mobile device.

Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.

.. _sdk_qtlocation_maptype_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the name of the map type as a single formatted string.

.. _sdk_qtlocation_maptype_night:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| night : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the map type is optimized for use at night.

Map types suitable for use at night usually have a dark background.

This QML property was introduced in Qt Location 5.4.

.. _sdk_qtlocation_maptype_style:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| style : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property gives access to the style of the map type.

-  :ref:`MapType <sdk_qtlocation_maptype>`.NoMap - No map.
-  :ref:`MapType <sdk_qtlocation_maptype>`.StreetMap - A street map.
-  :ref:`MapType <sdk_qtlocation_maptype>`.SatelliteMapDay - A map with day-time satellite imagery.
-  :ref:`MapType <sdk_qtlocation_maptype>`.SatelliteMapNight - A map with night-time satellite imagery.
-  :ref:`MapType <sdk_qtlocation_maptype>`.TerrainMap - A terrain map.
-  :ref:`MapType <sdk_qtlocation_maptype>`.HybridMap - A map with satellite imagery and street information.
-  :ref:`MapType <sdk_qtlocation_maptype>`.GrayStreetMap - A gray-shaded street map.
-  MapType::PedestrianMap - A street map suitable for pedestriants.
-  MapType::CarNavigationMap - A street map suitable for car navigation.
-  MapType::CycleMap - A street map suitable for cyclists.
-  :ref:`MapType <sdk_qtlocation_maptype>`.CustomMap - A custom map type.

