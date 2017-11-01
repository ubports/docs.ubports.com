The MapType type holds information about a map type.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`description </sdk/apps/qml/QtLocation/MapType#description-prop>`__****
   : string
-  ****`mobile </sdk/apps/qml/QtLocation/MapType#mobile-prop>`__**** :
   bool
-  ****`name </sdk/apps/qml/QtLocation/MapType#name-prop>`__**** :
   string
-  ****`night </sdk/apps/qml/QtLocation/MapType#night-prop>`__**** :
   bool
-  ****`style </sdk/apps/qml/QtLocation/MapType#style-prop>`__**** :
   enumeration

Detailed Description
--------------------

This includes the map type's
`name </sdk/apps/qml/QtLocation/MapType#name-prop>`__ and
`description </sdk/apps/qml/QtLocation/MapType#description-prop>`__, the
`style </sdk/apps/qml/QtLocation/MapType#style-prop>`__ and a flag to
indicate if the map type is optimized for mobile devices
(`mobile </sdk/apps/qml/QtLocation/MapType#mobile-prop>`__).

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This read-only property holds the description of the map type as a
single formatted string.

| 

+--------------------------------------------------------------------------+
|        \ mobile : bool                                                   |
+--------------------------------------------------------------------------+

Whether the map type is optimized for the use on a mobile device.

Map types for mobile devices usually have higher constrast to counteract
the effects of sunlight and a reduced color for improved readability.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This read-only property holds the name of the map type as a single
formatted string.

| 

+--------------------------------------------------------------------------+
|        \ night : bool                                                    |
+--------------------------------------------------------------------------+

Whether the map type is optimized for use at night.

Map types suitable for use at night usually have a dark background.

This QML property was introduced in Qt Location 5.4.

| 

+--------------------------------------------------------------------------+
|        \ style : enumeration                                             |
+--------------------------------------------------------------------------+

This read-only property gives access to the style of the map type.

-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.NoMap - No map.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.StreetMap - A street
   map.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.SatelliteMapDay - A
   map with day-time satellite imagery.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.SatelliteMapNight - A
   map with night-time satellite imagery.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.TerrainMap - A
   terrain map.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.HybridMap - A map
   with satellite imagery and street information.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.GrayStreetMap - A
   gray-shaded street map.
-  MapType::PedestrianMap - A street map suitable for pedestriants.
-  MapType::CarNavigationMap - A street map suitable for car navigation.
-  MapType::CycleMap - A street map suitable for cyclists.
-  `MapType </sdk/apps/qml/QtLocation/MapType/>`__.CustomMap - A custom
   map type.

| 
