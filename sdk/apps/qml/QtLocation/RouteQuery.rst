The RouteQuery type is used to provide query parameters to a RouteModel.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`excludedAreas </sdk/apps/qml/QtLocation/RouteQuery#excludedAreas-prop>`__****
   : list<georectangle>
-  ****`featureTypes </sdk/apps/qml/QtLocation/RouteQuery#featureTypes-prop>`__****
   : QList<FeatureType>
-  ****`maneuverDetail </sdk/apps/qml/QtLocation/RouteQuery#maneuverDetail-prop>`__****
   : enumeration
-  ****`numberAlternativeRoutes </sdk/apps/qml/QtLocation/RouteQuery#numberAlternativeRoutes-prop>`__****
   : int
-  ****`routeOptimizations </sdk/apps/qml/QtLocation/RouteQuery#routeOptimizations-prop>`__****
   : enumeration
-  ****`segmentDetail </sdk/apps/qml/QtLocation/RouteQuery#segmentDetail-prop>`__****
   : enumeration
-  ****`travelModes </sdk/apps/qml/QtLocation/RouteQuery#travelModes-prop>`__****
   : enumeration
-  ****`waypoints </sdk/apps/qml/QtLocation/RouteQuery#waypoints-prop>`__****
   : QJSValue

Methods
-------

-  ****`addExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#addExcludedArea-method>`__****\ (georectangle)
-  ****`addWaypoint </sdk/apps/qml/QtLocation/RouteQuery#addWaypoint-method>`__****\ (coordinate)
-  ****`clearExcludedAreas </sdk/apps/qml/QtLocation/RouteQuery#clearExcludedAreas-method>`__****\ ()
-  ****`clearWaypoints </sdk/apps/qml/QtLocation/RouteQuery#clearWaypoints-method>`__****\ ()
-  FeatureWeight
   ****`featureWeight </sdk/apps/qml/QtLocation/RouteQuery#featureWeight-method>`__****\ (FeatureType
   *featureType*)
-  ****`removeExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#removeExcludedArea-method>`__****\ (georectangle)
-  ****`removeWaypoint </sdk/apps/qml/QtLocation/RouteQuery#removeWaypoint-method>`__****\ (coordinate)
-  ****`resetFeatureWeights </sdk/apps/qml/QtLocation/RouteQuery#resetFeatureWeights-method>`__****\ ()
-  ****`setFeatureWeight </sdk/apps/qml/QtLocation/RouteQuery#setFeatureWeight-method>`__****\ (FeatureType,
   FeatureWeight)

Detailed Description
--------------------

A `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ contains all the
parameters necessary to make a request to a routing service, which can
then populate the contents of a
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.

These parameters describe key details of the route, such as
`waypoints </sdk/apps/qml/QtLocation/RouteQuery#waypoints-prop>`__ to
pass through,
`excludedAreas </sdk/apps/qml/QtLocation/RouteQuery#excludedAreas-prop>`__
to avoid, the
`travelModes </sdk/apps/qml/QtLocation/RouteQuery#travelModes-prop>`__
in use, as well as detailed preferences on how to optimize the route and
what features to prefer or avoid along the path (such as toll roads,
highways, etc).

`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ objects are used
exclusively to fill out the value of a
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__'s
`query </sdk/apps/qml/QtLocation/RouteModel#query-prop>`__ property,
which can then begin the retrieval process to populate the model.

Example Usage
~~~~~~~~~~~~~

The following snipped shows an incomplete example of creating a
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ object and setting
it as the value of a
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__'s
`query </sdk/apps/qml/QtLocation/RouteModel#query-prop>`__ property.

.. code:: cpp

    RouteQuery {
        id: aQuery
    }
    RouteModel {
        query: aQuery
        autoUpdate: false
    }

For a more complete example, see the documentation for the
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ type, and the
Mapviewer example.

**See also** `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ excludedAreas : list<georectangle>                              |
+--------------------------------------------------------------------------+

Areas that the route must not cross.

Excluded areas can be set as part of the
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ type declaration
or dynamically with the functions provided.

**See also**
`addExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#addExcludedArea-method>`__,
`removeExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#removeExcludedArea-method>`__,
and
`clearExcludedAreas </sdk/apps/qml/QtLocation/RouteQuery#clearExcludedAreas-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ featureTypes : QList<FeatureType>                               |
+--------------------------------------------------------------------------+

List of features that will be considered when planning the route.
Features with a weight of NeutralFeatureWeight will not be returned.

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.NoFeature - No
   features will be taken into account when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.TollFeature -
   Consider tollways when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.HighwayFeature
   - Consider highways when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.PublicTransitFeature
   - Consider public transit when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.FerryFeature -
   Consider ferries when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.TunnelFeature -
   Consider tunnels when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.DirtRoadFeature
   - Consider dirt roads when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.ParksFeature -
   Consider parks when planning the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.MotorPoolLaneFeature
   - Consider motor pool lanes when planning the route

**See also**
`setFeatureWeight </sdk/apps/qml/QtLocation/RouteQuery#setFeatureWeight-method>`__
and
`featureWeight </sdk/apps/qml/QtLocation/RouteQuery#featureWeight-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ maneuverDetail : enumeration                                    |
+--------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing
maneuvers.

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.NoManeuvers -
   No maneuvers should be included with the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.BasicManeuvers
   - Basic maneuvers will be included with the route

The default value is
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.BasicManeuvers

| 

+--------------------------------------------------------------------------+
|        \ numberAlternativeRoutes : int                                   |
+--------------------------------------------------------------------------+

The number of alternative routes requested when requesting routes. The
default value is 0.

| 

+--------------------------------------------------------------------------+
|        \ routeOptimizations : enumeration                                |
+--------------------------------------------------------------------------+

The route optimizations which should be considered during the planning
of the route. Values can be combined with OR ('\|') -operator.

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.ShortestRoute -
   Minimize the length of the journey
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.FastestRoute -
   Minimize the traveling time for the journey
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.MostEconomicRoute
   - Minimize the cost of the journey
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.MostScenicRoute
   - Maximize the scenic potential of the journey

The default value is
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.FastestRoute

| 

+--------------------------------------------------------------------------+
|        \ segmentDetail : enumeration                                     |
+--------------------------------------------------------------------------+

The level of detail which will be used in the representation of routing
segments.

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.NoSegmentData -
   No segment data should be included with the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.BasicSegmentData
   - Basic segment data will be included with the route

The default value is
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.BasicSegmentData

| 

+--------------------------------------------------------------------------+
|        \ travelModes : enumeration                                       |
+--------------------------------------------------------------------------+

The travel modes which should be considered during the planning of the
route. Values can be combined with OR ('\|') -operator.

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.CarTravel - The
   route will be optimized for someone who is driving a car
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.PedestrianTravel
   - The route will be optimized for someone who is walking
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.BicycleTravel -
   The route will be optimized for someone who is riding a bicycle
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.PublicTransitTravel
   - The route will be optimized for someone who is making use of public
   transit
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.TruckTravel -
   The route will be optimized for someone who is driving a truck

The default value is
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.CarTravel

| 

+--------------------------------------------------------------------------+
|        \ waypoints : QJSValue                                            |
+--------------------------------------------------------------------------+

The waypoint coordinates of the desired route. The waypoints should be
given in order from origin to destination. Two or more coordinates are
needed.

Waypoints can be set as part of the
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ type declaration
or dynamically with the functions provided.

**See also**
`addWaypoint </sdk/apps/qml/QtLocation/RouteQuery#addWaypoint-method>`__,
`removeWaypoint </sdk/apps/qml/QtLocation/RouteQuery#removeWaypoint-method>`__,
and
`clearWaypoints </sdk/apps/qml/QtLocation/RouteQuery#clearWaypoints-method>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addExcludedArea(georectangle)                                   |
+--------------------------------------------------------------------------+

Adds the given area to excluded areas (areas that the route must not
cross). Same area can only be added once.

**See also**
`removeExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#removeExcludedArea-method>`__
and
`clearExcludedAreas </sdk/apps/qml/QtLocation/RouteQuery#clearExcludedAreas-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ addWaypoint(coordinate)                                         |
+--------------------------------------------------------------------------+

Appends a coordinate to the list of waypoints. Same coordinate can be
set multiple times.

**See also**
`removeWaypoint </sdk/apps/qml/QtLocation/RouteQuery#removeWaypoint-method>`__
and
`clearWaypoints </sdk/apps/qml/QtLocation/RouteQuery#clearWaypoints-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ clearExcludedAreas()                                            |
+--------------------------------------------------------------------------+

Clears all excluded areas (areas that the route must not cross).

**See also**
`addExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#addExcludedArea-method>`__
and
`removeExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#removeExcludedArea-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ clearWaypoints()                                                |
+--------------------------------------------------------------------------+

Clears all waypoints.

**See also**
`removeWaypoint </sdk/apps/qml/QtLocation/RouteQuery#removeWaypoint-method>`__
and
`addWaypoint </sdk/apps/qml/QtLocation/RouteQuery#addWaypoint-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ FeatureWeight featureWeight(FeatureType *featureType*)          |
+--------------------------------------------------------------------------+

Gets the weight for the *featureType*.

**See also**
`featureTypes </sdk/apps/qml/QtLocation/RouteQuery#featureTypes-prop>`__,
`setFeatureWeight </sdk/apps/qml/QtLocation/RouteQuery#setFeatureWeight-method>`__,
and
`resetFeatureWeights </sdk/apps/qml/QtLocation/RouteQuery#resetFeatureWeights-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ removeExcludedArea(georectangle)                                |
+--------------------------------------------------------------------------+

Removes the given area to excluded areas (areas that the route must not
cross).

**See also**
`addExcludedArea </sdk/apps/qml/QtLocation/RouteQuery#addExcludedArea-method>`__
and
`clearExcludedAreas </sdk/apps/qml/QtLocation/RouteQuery#clearExcludedAreas-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ removeWaypoint(coordinate)                                      |
+--------------------------------------------------------------------------+

Removes the given from the list of waypoints. In case same coordinate
appears multiple times, the most recently added coordinate instance is
removed.

**See also**
`addWaypoint </sdk/apps/qml/QtLocation/RouteQuery#addWaypoint-method>`__
and
`clearWaypoints </sdk/apps/qml/QtLocation/RouteQuery#clearWaypoints-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ resetFeatureWeights()                                           |
+--------------------------------------------------------------------------+

Resets all feature weights to their default state
(NeutralFeatureWeight).

**See also**
`featureTypes </sdk/apps/qml/QtLocation/RouteQuery#featureTypes-prop>`__,
`setFeatureWeight </sdk/apps/qml/QtLocation/RouteQuery#setFeatureWeight-method>`__,
and
`featureWeight </sdk/apps/qml/QtLocation/RouteQuery#featureWeight-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ setFeatureWeight(FeatureType, FeatureWeight)                    |
+--------------------------------------------------------------------------+

Defines the weight to associate with a feature during the planning of a
route.

Following lists the possible feature weights:

-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.NeutralFeatureWeight
   - The presence or absence of the feature will not affect the planning
   of the route
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.PreferFeatureWeight
   - Routes which contain the feature will be preferred over those that
   do not
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.RequireFeatureWeight
   - Only routes which contain the feature will be considered, otherwise
   no route will be returned
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.AvoidFeatureWeight
   - Routes which do not contain the feature will be preferred over
   those that do
-  `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__.DisallowFeatureWeight
   - Only routes which do not contain the feature will be considered,
   otherwise no route will be returned

**See also**
`featureTypes </sdk/apps/qml/QtLocation/RouteQuery#featureTypes-prop>`__,
`resetFeatureWeights </sdk/apps/qml/QtLocation/RouteQuery#resetFeatureWeights-method>`__,
and
`featureWeight </sdk/apps/qml/QtLocation/RouteQuery#featureWeight-method>`__.

| 
