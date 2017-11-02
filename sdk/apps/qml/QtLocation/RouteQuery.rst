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

-  :ref:`excludedAreas <sdk_qtlocation_routequery_excludedAreas-prop>`
   : list<georectangle>
-  :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes-prop>`
   : QList<FeatureType>
-  :ref:`maneuverDetail <sdk_qtlocation_routequery_maneuverDetail-prop>`
   : enumeration
-  :ref:`numberAlternativeRoutes <sdk_qtlocation_routequery_numberAlternativeRoutes-prop>`
   : int
-  :ref:`routeOptimizations <sdk_qtlocation_routequery_routeOptimizations-prop>`
   : enumeration
-  :ref:`segmentDetail <sdk_qtlocation_routequery_segmentDetail-prop>`
   : enumeration
-  :ref:`travelModes <sdk_qtlocation_routequery_travelModes-prop>`
   : enumeration
-  :ref:`waypoints <sdk_qtlocation_routequery_waypoints-prop>` :
   QJSValue

Methods
-------

-  :ref:`addExcludedArea <sdk_qtlocation_routequery_addExcludedArea-method>`\ (georectangle)
-  :ref:`addWaypoint <sdk_qtlocation_routequery_addWaypoint-method>`\ (coordinate)
-  :ref:`clearExcludedAreas <sdk_qtlocation_routequery_clearExcludedAreas-method>`\ ()
-  :ref:`clearWaypoints <sdk_qtlocation_routequery_clearWaypoints-method>`\ ()
-  FeatureWeight
   **:ref:`featureWeight <sdk_qtlocation_routequery#featureWeight-method>`**\ (FeatureType
   *featureType*)
-  :ref:`removeExcludedArea <sdk_qtlocation_routequery_removeExcludedArea-method>`\ (georectangle)
-  :ref:`removeWaypoint <sdk_qtlocation_routequery_removeWaypoint-method>`\ (coordinate)
-  :ref:`resetFeatureWeights <sdk_qtlocation_routequery_resetFeatureWeights-method>`\ ()
-  :ref:`setFeatureWeight <sdk_qtlocation_routequery_setFeatureWeight-method>`\ (FeatureType,
   FeatureWeight)

Detailed Description
--------------------

A :ref:`RouteQuery <sdk_qtlocation_routequery>` contains all the parameters
necessary to make a request to a routing service, which can then
populate the contents of a :ref:`RouteModel <sdk_qtlocation_routemodel>`.

These parameters describe key details of the route, such as
:ref:`waypoints <sdk_qtlocation_routequery#waypoints-prop>` to pass
through,
:ref:`excludedAreas <sdk_qtlocation_routequery#excludedAreas-prop>` to
avoid, the :ref:`travelModes <sdk_qtlocation_routequery#travelModes-prop>`
in use, as well as detailed preferences on how to optimize the route and
what features to prefer or avoid along the path (such as toll roads,
highways, etc).

:ref:`RouteQuery <sdk_qtlocation_routequery>` objects are used exclusively
to fill out the value of a :ref:`RouteModel <sdk_qtlocation_routemodel>`'s
:ref:`query <sdk_qtlocation_routemodel#query-prop>` property, which can
then begin the retrieval process to populate the model.

Example Usage
~~~~~~~~~~~~~

The following snipped shows an incomplete example of creating a
:ref:`RouteQuery <sdk_qtlocation_routequery>` object and setting it as the
value of a :ref:`RouteModel <sdk_qtlocation_routemodel>`'s
:ref:`query <sdk_qtlocation_routemodel#query-prop>` property.

.. code:: cpp

    RouteQuery {
        id: aQuery
    }
    RouteModel {
        query: aQuery
        autoUpdate: false
    }

For a more complete example, see the documentation for the
:ref:`RouteModel <sdk_qtlocation_routemodel>` type, and the Mapviewer
example.

**See also** :ref:`RouteModel <sdk_qtlocation_routemodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_routequery_excludedAreas-prop:

+--------------------------------------------------------------------------+
|        \ excludedAreas : list<georectangle>                              |
+--------------------------------------------------------------------------+

Areas that the route must not cross.

Excluded areas can be set as part of the
:ref:`RouteQuery <sdk_qtlocation_routequery>` type declaration or
dynamically with the functions provided.

**See also**
:ref:`addExcludedArea <sdk_qtlocation_routequery#addExcludedArea-method>`,
:ref:`removeExcludedArea <sdk_qtlocation_routequery#removeExcludedArea-method>`,
and
:ref:`clearExcludedAreas <sdk_qtlocation_routequery#clearExcludedAreas-method>`.

| 

.. _sdk_qtlocation_routequery_featureTypes-prop:

+--------------------------------------------------------------------------+
|        \ featureTypes : QList<FeatureType>                               |
+--------------------------------------------------------------------------+

List of features that will be considered when planning the route.
Features with a weight of NeutralFeatureWeight will not be returned.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoFeature - No features
   will be taken into account when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TollFeature - Consider
   tollways when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.HighwayFeature - Consider
   highways when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PublicTransitFeature -
   Consider public transit when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.FerryFeature - Consider
   ferries when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TunnelFeature - Consider
   tunnels when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.DirtRoadFeature - Consider
   dirt roads when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.ParksFeature - Consider
   parks when planning the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MotorPoolLaneFeature -
   Consider motor pool lanes when planning the route

**See also**
:ref:`setFeatureWeight <sdk_qtlocation_routequery#setFeatureWeight-method>`
and :ref:`featureWeight <sdk_qtlocation_routequery#featureWeight-method>`.

| 

.. _sdk_qtlocation_routequery_maneuverDetail-prop:

+--------------------------------------------------------------------------+
|        \ maneuverDetail : enumeration                                    |
+--------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing
maneuvers.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoManeuvers - No maneuvers
   should be included with the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicManeuvers - Basic
   maneuvers will be included with the route

The default value is
:ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicManeuvers

| 

.. _sdk_qtlocation_routequery_numberAlternativeRoutes-prop:

+--------------------------------------------------------------------------+
|        \ numberAlternativeRoutes : int                                   |
+--------------------------------------------------------------------------+

The number of alternative routes requested when requesting routes. The
default value is 0.

| 

.. _sdk_qtlocation_routequery_routeOptimizations-prop:

+--------------------------------------------------------------------------+
|        \ routeOptimizations : enumeration                                |
+--------------------------------------------------------------------------+

The route optimizations which should be considered during the planning
of the route. Values can be combined with OR ('\|') -operator.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.ShortestRoute - Minimize
   the length of the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.FastestRoute - Minimize
   the traveling time for the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MostEconomicRoute -
   Minimize the cost of the journey
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.MostScenicRoute - Maximize
   the scenic potential of the journey

The default value is
:ref:`RouteQuery <sdk_qtlocation_routequery>`.FastestRoute

| 

.. _sdk_qtlocation_routequery_segmentDetail-prop:

+--------------------------------------------------------------------------+
|        \ segmentDetail : enumeration                                     |
+--------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing
segments.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NoSegmentData - No segment
   data should be included with the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicSegmentData - Basic
   segment data will be included with the route

The default value is
:ref:`RouteQuery <sdk_qtlocation_routequery>`.BasicSegmentData

| 

.. _sdk_qtlocation_routequery_travelModes-prop:

+--------------------------------------------------------------------------+
|        \ travelModes : enumeration                                       |
+--------------------------------------------------------------------------+

The travel modes which should be considered during the planning of the
route. Values can be combined with OR ('\|') -operator.

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.CarTravel - The route will
   be optimized for someone who is driving a car
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PedestrianTravel - The
   route will be optimized for someone who is walking
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.BicycleTravel - The route
   will be optimized for someone who is riding a bicycle
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PublicTransitTravel - The
   route will be optimized for someone who is making use of public
   transit
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.TruckTravel - The route
   will be optimized for someone who is driving a truck

The default value is
:ref:`RouteQuery <sdk_qtlocation_routequery>`.CarTravel

| 

.. _sdk_qtlocation_routequery_waypoints-prop:

+--------------------------------------------------------------------------+
|        \ waypoints : QJSValue                                            |
+--------------------------------------------------------------------------+

The waypoint coordinates of the desired route. The waypoints should be
given in order from origin to destination. Two or more coordinates are
needed.

Waypoints can be set as part of the
:ref:`RouteQuery <sdk_qtlocation_routequery>` type declaration or
dynamically with the functions provided.

**See also**
:ref:`addWaypoint <sdk_qtlocation_routequery#addWaypoint-method>`,
:ref:`removeWaypoint <sdk_qtlocation_routequery#removeWaypoint-method>`,
and
:ref:`clearWaypoints <sdk_qtlocation_routequery#clearWaypoints-method>`.

| 

Method Documentation
--------------------

.. _sdk_qtlocation_routequery_addExcludedArea-method:

+--------------------------------------------------------------------------+
|        \ addExcludedArea(georectangle)                                   |
+--------------------------------------------------------------------------+

Adds the given area to excluded areas (areas that the route must not
cross). Same area can only be added once.

**See also**
:ref:`removeExcludedArea <sdk_qtlocation_routequery#removeExcludedArea-method>`
and
:ref:`clearExcludedAreas <sdk_qtlocation_routequery#clearExcludedAreas-method>`.

| 

.. _sdk_qtlocation_routequery_addWaypoint-method:

+--------------------------------------------------------------------------+
|        \ addWaypoint(coordinate)                                         |
+--------------------------------------------------------------------------+

Appends a coordinate to the list of waypoints. Same coordinate can be
set multiple times.

**See also**
:ref:`removeWaypoint <sdk_qtlocation_routequery#removeWaypoint-method>` and
:ref:`clearWaypoints <sdk_qtlocation_routequery#clearWaypoints-method>`.

| 

.. _sdk_qtlocation_routequery_clearExcludedAreas-method:

+--------------------------------------------------------------------------+
|        \ clearExcludedAreas()                                            |
+--------------------------------------------------------------------------+

Clears all excluded areas (areas that the route must not cross).

**See also**
:ref:`addExcludedArea <sdk_qtlocation_routequery#addExcludedArea-method>`
and
:ref:`removeExcludedArea <sdk_qtlocation_routequery#removeExcludedArea-method>`.

| 

.. _sdk_qtlocation_routequery_clearWaypoints-method:

+--------------------------------------------------------------------------+
|        \ clearWaypoints()                                                |
+--------------------------------------------------------------------------+

Clears all waypoints.

**See also**
:ref:`removeWaypoint <sdk_qtlocation_routequery#removeWaypoint-method>` and
:ref:`addWaypoint <sdk_qtlocation_routequery#addWaypoint-method>`.

| 

.. _sdk_qtlocation_routequery_FeatureWeight featureWeight-method:

+--------------------------------------------------------------------------+
|        \ FeatureWeight featureWeight(FeatureType *featureType*)          |
+--------------------------------------------------------------------------+

Gets the weight for the *featureType*.

**See also**
:ref:`featureTypes <sdk_qtlocation_routequery#featureTypes-prop>`,
:ref:`setFeatureWeight <sdk_qtlocation_routequery#setFeatureWeight-method>`,
and
:ref:`resetFeatureWeights <sdk_qtlocation_routequery#resetFeatureWeights-method>`.

| 

.. _sdk_qtlocation_routequery_removeExcludedArea-method:

+--------------------------------------------------------------------------+
|        \ removeExcludedArea(georectangle)                                |
+--------------------------------------------------------------------------+

Removes the given area to excluded areas (areas that the route must not
cross).

**See also**
:ref:`addExcludedArea <sdk_qtlocation_routequery#addExcludedArea-method>`
and
:ref:`clearExcludedAreas <sdk_qtlocation_routequery#clearExcludedAreas-method>`.

| 

.. _sdk_qtlocation_routequery_removeWaypoint-method:

+--------------------------------------------------------------------------+
|        \ removeWaypoint(coordinate)                                      |
+--------------------------------------------------------------------------+

Removes the given from the list of waypoints. In case same coordinate
appears multiple times, the most recently added coordinate instance is
removed.

**See also**
:ref:`addWaypoint <sdk_qtlocation_routequery#addWaypoint-method>` and
:ref:`clearWaypoints <sdk_qtlocation_routequery#clearWaypoints-method>`.

| 

.. _sdk_qtlocation_routequery_resetFeatureWeights-method:

+--------------------------------------------------------------------------+
|        \ resetFeatureWeights()                                           |
+--------------------------------------------------------------------------+

Resets all feature weights to their default state
(NeutralFeatureWeight).

**See also**
:ref:`featureTypes <sdk_qtlocation_routequery#featureTypes-prop>`,
:ref:`setFeatureWeight <sdk_qtlocation_routequery#setFeatureWeight-method>`,
and :ref:`featureWeight <sdk_qtlocation_routequery#featureWeight-method>`.

| 

.. _sdk_qtlocation_routequery_setFeatureWeight-method:

+--------------------------------------------------------------------------+
|        \ setFeatureWeight(FeatureType, FeatureWeight)                    |
+--------------------------------------------------------------------------+

Defines the weight to associate with a feature during the planning of a
route.

Following lists the possible feature weights:

-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.NeutralFeatureWeight - The
   presence or absence of the feature will not affect the planning of
   the route
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.PreferFeatureWeight -
   Routes which contain the feature will be preferred over those that do
   not
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.RequireFeatureWeight -
   Only routes which contain the feature will be considered, otherwise
   no route will be returned
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.AvoidFeatureWeight -
   Routes which do not contain the feature will be preferred over those
   that do
-  :ref:`RouteQuery <sdk_qtlocation_routequery>`.DisallowFeatureWeight -
   Only routes which do not contain the feature will be considered,
   otherwise no route will be returned

**See also**
:ref:`featureTypes <sdk_qtlocation_routequery#featureTypes-prop>`,
:ref:`resetFeatureWeights <sdk_qtlocation_routequery#resetFeatureWeights-method>`,
and :ref:`featureWeight <sdk_qtlocation_routequery#featureWeight-method>`.

| 
