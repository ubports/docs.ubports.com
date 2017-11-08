.. _sdk_qtlocation_routequery:

QtLocation RouteQuery
=====================

The RouteQuery type is used to provide query parameters to a RouteModel.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`excludedAreas <sdk_qtlocation_routequery_excludedAreas>` : list<georectangle>
-  :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes>` : QList<FeatureType>
-  :ref:`maneuverDetail <sdk_qtlocation_routequery_maneuverDetail>` : enumeration
-  :ref:`numberAlternativeRoutes <sdk_qtlocation_routequery_numberAlternativeRoutes>` : int
-  :ref:`routeOptimizations <sdk_qtlocation_routequery_routeOptimizations>` : enumeration
-  :ref:`segmentDetail <sdk_qtlocation_routequery_segmentDetail>` : enumeration
-  :ref:`travelModes <sdk_qtlocation_routequery_travelModes>` : enumeration
-  :ref:`waypoints <sdk_qtlocation_routequery_waypoints>` : QJSValue

Methods
-------

-  :ref:`addExcludedArea <sdk_qtlocation_routequery_addExcludedArea>`\ (georectangle)
-  :ref:`addWaypoint <sdk_qtlocation_routequery_addWaypoint>`\ (coordinate)
-  :ref:`clearExcludedAreas <sdk_qtlocation_routequery_clearExcludedAreas>`\ ()
-  :ref:`clearWaypoints <sdk_qtlocation_routequery_clearWaypoints>`\ ()
-  FeatureWeight :ref:`featureWeight <sdk_qtlocation_routequery_featureWeight>`\ (FeatureType *featureType*)
-  :ref:`removeExcludedArea <sdk_qtlocation_routequery_removeExcludedArea>`\ (georectangle)
-  :ref:`removeWaypoint <sdk_qtlocation_routequery_removeWaypoint>`\ (coordinate)
-  :ref:`resetFeatureWeights <sdk_qtlocation_routequery_resetFeatureWeights>`\ ()
-  :ref:`setFeatureWeight <sdk_qtlocation_routequery_setFeatureWeight>`\ (FeatureType, FeatureWeight)

Detailed Description
--------------------

A :ref:`RouteQuery <sdk_qtlocation_routequery>` contains all the parameters necessary to make a request to a routing service, which can then populate the contents of a :ref:`RouteModel <sdk_qtlocation_routemodel>`.

These parameters describe key details of the route, such as :ref:`waypoints <sdk_qtlocation_routequery_waypoints>` to pass through, :ref:`excludedAreas <sdk_qtlocation_routequery_excludedAreas>` to avoid, the :ref:`travelModes <sdk_qtlocation_routequery_travelModes>` in use, as well as detailed preferences on how to optimize the route and what features to prefer or avoid along the path (such as toll roads, highways, etc).

:ref:`RouteQuery <sdk_qtlocation_routequery>` objects are used exclusively to fill out the value of a :ref:`RouteModel <sdk_qtlocation_routemodel>`'s :ref:`query <sdk_qtlocation_routemodel_query>` property, which can then begin the retrieval process to populate the model.

Example Usage
~~~~~~~~~~~~~

The following snipped shows an incomplete example of creating a :ref:`RouteQuery <sdk_qtlocation_routequery>` object and setting it as the value of a :ref:`RouteModel <sdk_qtlocation_routemodel>`'s :ref:`query <sdk_qtlocation_routemodel_query>` property.

.. code:: cpp

    RouteQuery {
        id: aQuery
    }
    RouteModel {
        query: aQuery
        autoUpdate: false
    }

For a more complete example, see the documentation for the :ref:`RouteModel <sdk_qtlocation_routemodel>` type, and the Mapviewer example.

**See also** :ref:`RouteModel <sdk_qtlocation_routemodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_routequery_excludedAreas:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| excludedAreas : list<georectangle>                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Areas that the route must not cross.

Excluded areas can be set as part of the :ref:`RouteQuery <sdk_qtlocation_routequery>` type declaration or dynamically with the functions provided.

**See also** :ref:`addExcludedArea <sdk_qtlocation_routequery_addExcludedArea>`, :ref:`removeExcludedArea <sdk_qtlocation_routequery_removeExcludedArea>`, and :ref:`clearExcludedAreas <sdk_qtlocation_routequery_clearExcludedAreas>`.

.. _sdk_qtlocation_routequery_featureTypes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| featureTypes : QList<FeatureType>                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of features that will be considered when planning the route. Features with a weight of NeutralFeatureWeight will not be returned.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoFeature - No features will be taken into account when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TollFeature - Consider tollways when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.HighwayFeature - Consider highways when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PublicTransitFeature - Consider public transit when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.FerryFeature - Consider ferries when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TunnelFeature - Consider tunnels when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.DirtRoadFeature - Consider dirt roads when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.ParksFeature - Consider parks when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MotorPoolLaneFeature - Consider motor pool lanes when planning the route

**See also** :ref:`setFeatureWeight <sdk_qtlocation_routequery_setFeatureWeight>` and :ref:`featureWeight <sdk_qtlocation_routequery_featureWeight>`.

.. _sdk_qtlocation_routequery_maneuverDetail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maneuverDetail : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing maneuvers.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoManeuvers - No maneuvers should be included with the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicManeuvers - Basic maneuvers will be included with the route

The default value is :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicManeuvers

.. _sdk_qtlocation_routequery_numberAlternativeRoutes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| numberAlternativeRoutes : int                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of alternative routes requested when requesting routes. The default value is 0.

.. _sdk_qtlocation_routequery_routeOptimizations:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| routeOptimizations : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The route optimizations which should be considered during the planning of the route. Values can be combined with OR ('\|') -operator.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.ShortestRoute - Minimize the length of the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.FastestRoute - Minimize the traveling time for the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MostEconomicRoute - Minimize the cost of the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MostScenicRoute - Maximize the scenic potential of the journey

The default value is :ref:`RouteQuery <sdk_qtlocation_routequery>`.FastestRoute

.. _sdk_qtlocation_routequery_segmentDetail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| segmentDetail : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing segments.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoSegmentData - No segment data should be included with the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicSegmentData - Basic segment data will be included with the route

The default value is :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicSegmentData

.. _sdk_qtlocation_routequery_travelModes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| travelModes : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The travel modes which should be considered during the planning of the route. Values can be combined with OR ('\|') -operator.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.CarTravel - The route will be optimized for someone who is driving a car
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PedestrianTravel - The route will be optimized for someone who is walking
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BicycleTravel - The route will be optimized for someone who is riding a bicycle
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PublicTransitTravel - The route will be optimized for someone who is making use of public transit
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TruckTravel - The route will be optimized for someone who is driving a truck

The default value is :ref:`RouteQuery <sdk_qtlocation_routequery>`.CarTravel

.. _sdk_qtlocation_routequery_waypoints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| waypoints : QJSValue                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The waypoint coordinates of the desired route. The waypoints should be given in order from origin to destination. Two or more coordinates are needed.

Waypoints can be set as part of the :ref:`RouteQuery <sdk_qtlocation_routequery>` type declaration or dynamically with the functions provided.

**See also** :ref:`addWaypoint <sdk_qtlocation_routequery_addWaypoint>`, :ref:`removeWaypoint <sdk_qtlocation_routequery_removeWaypoint>`, and :ref:`clearWaypoints <sdk_qtlocation_routequery_clearWaypoints>`.

Method Documentation
--------------------

.. _sdk_qtlocation_routequery_addExcludedArea:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addExcludedArea(georectangle)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds the given area to excluded areas (areas that the route must not cross). Same area can only be added once.

**See also** :ref:`removeExcludedArea <sdk_qtlocation_routequery_removeExcludedArea>` and :ref:`clearExcludedAreas <sdk_qtlocation_routequery_clearExcludedAreas>`.

.. _sdk_qtlocation_routequery_addWaypoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addWaypoint(coordinate)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Appends a coordinate to the list of waypoints. Same coordinate can be set multiple times.

**See also** :ref:`removeWaypoint <sdk_qtlocation_routequery_removeWaypoint>` and :ref:`clearWaypoints <sdk_qtlocation_routequery_clearWaypoints>`.

.. _sdk_qtlocation_routequery_clearExcludedAreas:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clearExcludedAreas()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Clears all excluded areas (areas that the route must not cross).

**See also** :ref:`addExcludedArea <sdk_qtlocation_routequery_addExcludedArea>` and :ref:`removeExcludedArea <sdk_qtlocation_routequery_removeExcludedArea>`.

.. _sdk_qtlocation_routequery_clearWaypoints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clearWaypoints()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Clears all waypoints.

**See also** :ref:`removeWaypoint <sdk_qtlocation_routequery_removeWaypoint>` and :ref:`addWaypoint <sdk_qtlocation_routequery_addWaypoint>`.

.. _sdk_qtlocation_routequery_featureWeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FeatureWeight featureWeight(FeatureType *featureType*)                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Gets the weight for the *featureType*.

**See also** :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes>`, :ref:`setFeatureWeight <sdk_qtlocation_routequery_setFeatureWeight>`, and :ref:`resetFeatureWeights <sdk_qtlocation_routequery_resetFeatureWeights>`.

.. _sdk_qtlocation_routequery_removeExcludedArea:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeExcludedArea(georectangle)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the given area to excluded areas (areas that the route must not cross).

**See also** :ref:`addExcludedArea <sdk_qtlocation_routequery_addExcludedArea>` and :ref:`clearExcludedAreas <sdk_qtlocation_routequery_clearExcludedAreas>`.

.. _sdk_qtlocation_routequery_removeWaypoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeWaypoint(coordinate)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the given from the list of waypoints. In case same coordinate appears multiple times, the most recently added coordinate instance is removed.

**See also** :ref:`addWaypoint <sdk_qtlocation_routequery_addWaypoint>` and :ref:`clearWaypoints <sdk_qtlocation_routequery_clearWaypoints>`.

.. _sdk_qtlocation_routequery_resetFeatureWeights:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resetFeatureWeights()                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resets all feature weights to their default state (NeutralFeatureWeight).

**See also** :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes>`, :ref:`setFeatureWeight <sdk_qtlocation_routequery_setFeatureWeight>`, and :ref:`featureWeight <sdk_qtlocation_routequery_featureWeight>`.

.. _sdk_qtlocation_routequery_setFeatureWeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setFeatureWeight(FeatureType, FeatureWeight)                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the weight to associate with a feature during the planning of a route.

Following lists the possible feature weights:

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NeutralFeatureWeight - The presence or absence of the feature will not affect the planning of the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PreferFeatureWeight - Routes which contain the feature will be preferred over those that do not
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.RequireFeatureWeight - Only routes which contain the feature will be considered, otherwise no route will be returned
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.AvoidFeatureWeight - Routes which do not contain the feature will be preferred over those that do
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.DisallowFeatureWeight - Only routes which do not contain the feature will be considered, otherwise no route will be returned

**See also** :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes>`, :ref:`resetFeatureWeights <sdk_qtlocation_routequery_resetFeatureWeights>`, and :ref:`featureWeight <sdk_qtlocation_routequery_featureWeight>`.

