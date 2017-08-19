QtLocation.RouteQuery
=====================

.. raw:: html

   <p>

The RouteQuery type is used to provide query parameters to a RouteModel.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RouteQuery -->

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

excludedAreas : list<georectangle>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

featureTypes : QList<FeatureType>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maneuverDetail : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

numberAlternativeRoutes : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

routeOptimizations : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

segmentDetail : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

travelModes : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waypoints : QJSValue

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

addExcludedArea(georectangle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

addWaypoint(coordinate)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clearExcludedAreas()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clearWaypoints()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

FeatureWeight featureWeight(FeatureType featureType)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeExcludedArea(georectangle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeWaypoint(coordinate)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

resetFeatureWeights()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setFeatureWeight(FeatureType, FeatureWeight)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RouteQuery-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A RouteQuery contains all the parameters necessary to make a request to
a routing service, which can then populate the contents of a RouteModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

These parameters describe key details of the route, such as travelModes
in use, as well as detailed preferences on how to optimize the route and
what features to prefer or avoid along the path (such as toll roads,
highways, etc).

.. raw:: html

   </p>

.. raw:: html

   <p>

RouteQuery objects are used exclusively to fill out the value of a
RouteModel's query property, which can then begin the retrieval process
to populate the model.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snipped shows an incomplete example of creating a
RouteQuery object and setting it as the value of a RouteModel's query
property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">RouteQuery {
   id: aQuery
   }
   RouteModel {
   query: aQuery
   autoUpdate: <span class="keyword">false</span>
   }</pre>

.. raw:: html

   <p>

For a more complete example, see the documentation for the RouteModel
type, and the Mapviewer example.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RouteModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RouteQuery -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$excludedAreas -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="excludedAreas-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

excludedAreas : list<georectangle>

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

Areas that the route must not cross.

.. raw:: html

   </p>

.. raw:: html

   <p>

Excluded areas can be set as part of the RouteQuery type declaration or
dynamically with the functions provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearExcludedAreas.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@excludedAreas -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="featureTypes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

featureTypes : QList<FeatureType>

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

List of features that will be considered when planning the route.
Features with a weight of NeutralFeatureWeight will not be returned.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.NoFeature - No features will be taken into account when
planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.TollFeature - Consider tollways when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.HighwayFeature - Consider highways when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.PublicTransitFeature - Consider public transit when planning
the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.FerryFeature - Consider ferries when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.TunnelFeature - Consider tunnels when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.DirtRoadFeature - Consider dirt roads when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.ParksFeature - Consider parks when planning the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.MotorPoolLaneFeature - Consider motor pool lanes when
planning the route

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also featureWeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@featureTypes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maneuverDetail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maneuverDetail : enumeration

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

The level of detail which will be used in the representation of routing
maneuvers.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.NoManeuvers - No maneuvers should be included with the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.BasicManeuvers - Basic maneuvers will be included with the
route

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is RouteQuery.BasicManeuvers

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maneuverDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="numberAlternativeRoutes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

numberAlternativeRoutes : int

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

The number of alternative routes requested when requesting routes. The
default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@numberAlternativeRoutes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="routeOptimizations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

routeOptimizations : enumeration

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

The route optimizations which should be considered during the planning
of the route. Values can be combined with OR ('\|') -operator.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.ShortestRoute - Minimize the length of the journey

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.FastestRoute - Minimize the traveling time for the journey

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.MostEconomicRoute - Minimize the cost of the journey

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.MostScenicRoute - Maximize the scenic potential of the
journey

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is RouteQuery.FastestRoute

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@routeOptimizations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="segmentDetail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

segmentDetail : enumeration

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

The level of detail which will be used in the representation of routing
segments.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.NoSegmentData - No segment data should be included with the
route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.BasicSegmentData - Basic segment data will be included with
the route

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is RouteQuery.BasicSegmentData

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@segmentDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="travelModes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

travelModes : enumeration

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

The travel modes which should be considered during the planning of the
route. Values can be combined with OR ('\|') -operator.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.CarTravel - The route will be optimized for someone who is
driving a car

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.PedestrianTravel - The route will be optimized for someone
who is walking

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.BicycleTravel - The route will be optimized for someone who
is riding a bicycle

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.PublicTransitTravel - The route will be optimized for someone
who is making use of public transit

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.TruckTravel - The route will be optimized for someone who is
driving a truck

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is RouteQuery.CarTravel

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@travelModes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waypoints-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

waypoints : QJSValue

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

The waypoint coordinates of the desired route. The waypoints should be
given in order from origin to destination. Two or more coordinates are
needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Waypoints can be set as part of the RouteQuery type declaration or
dynamically with the functions provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearWaypoints.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waypoints -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addExcludedArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addExcludedArea-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addExcludedArea(georectangle)

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

Adds the given area to excluded areas (areas that the route must not
cross). Same area can only be added once.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearExcludedAreas.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addExcludedArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addWaypoint-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addWaypoint(coordinate)

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

Appends a coordinate to the list of waypoints. Same coordinate can be
set multiple times.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearWaypoints.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addWaypoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearExcludedAreas-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clearExcludedAreas()

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

Clears all excluded areas (areas that the route must not cross).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeExcludedArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearExcludedAreas -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearWaypoints-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clearWaypoints()

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

Clears all waypoints.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also addWaypoint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearWaypoints -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="featureWeight-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

FeatureWeight featureWeight(FeatureType featureType)

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

Gets the weight for the featureType.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also resetFeatureWeights.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@featureWeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeExcludedArea-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeExcludedArea(georectangle)

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

Removes the given area to excluded areas (areas that the route must not
cross).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearExcludedAreas.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeExcludedArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeWaypoint-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeWaypoint(coordinate)

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

Removes the given from the list of waypoints. In case same coordinate
appears multiple times, the most recently added coordinate instance is
removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearWaypoints.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeWaypoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resetFeatureWeights-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

resetFeatureWeights()

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

Resets all feature weights to their default state
(NeutralFeatureWeight).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also featureWeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resetFeatureWeights -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setFeatureWeight-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setFeatureWeight(FeatureType, FeatureWeight)

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

Defines the weight to associate with a feature during the planning of a
route.

.. raw:: html

   </p>

.. raw:: html

   <p>

Following lists the possible feature weights:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteQuery.NeutralFeatureWeight - The presence or absence of the feature
will not affect the planning of the route

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.PreferFeatureWeight - Routes which contain the feature will
be preferred over those that do not

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.RequireFeatureWeight - Only routes which contain the feature
will be considered, otherwise no route will be returned

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.AvoidFeatureWeight - Routes which do not contain the feature
will be preferred over those that do

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteQuery.DisallowFeatureWeight - Only routes which do not contain the
feature will be considered, otherwise no route will be returned

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also featureWeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setFeatureWeight -->


