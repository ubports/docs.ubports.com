.. _sdk_qtlocation_routemaneuver:

QtLocation RouteManeuver
========================

The RouteManeuver type represents the information relevant to the point at which two RouteSegments meet.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`direction <sdk_qtlocation_routemaneuver_direction>` : enumeration
-  :ref:`distanceToNextInstruction <sdk_qtlocation_routemaneuver_distanceToNextInstruction>` : real
-  :ref:`instructionText <sdk_qtlocation_routemaneuver_instructionText>` : string
-  :ref:`position <sdk_qtlocation_routemaneuver_position>` : coordinate
-  :ref:`timeToNextInstruction <sdk_qtlocation_routemaneuver_timeToNextInstruction>` : int
-  :ref:`valid <sdk_qtlocation_routemaneuver_valid>` : bool
-  :ref:`waypoint <sdk_qtlocation_routemaneuver_waypoint>` : coordinate
-  :ref:`waypointValid <sdk_qtlocation_routemaneuver_waypointValid>` : bool

Detailed Description
--------------------

:ref:`RouteSegment <sdk_qtlocation_routesegment>` instances can be thought of as edges on a routing graph, with :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>` instances as optional labels attached to the vertices of the graph.

The most interesting information held in a :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>` instance is normally the textual navigation to provide and the position at which to provide it, accessible by :ref:`instructionText <sdk_qtlocation_routemaneuver_instructionText>` and :ref:`position <sdk_qtlocation_routemaneuver_position>` respectively.

Example
-------

The following QML snippet demonstrates how to print information about a route maneuver:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Text {
        text: "Distance till next maneuver: " + routeManeuver.distanceToNextInstruction + " meters, estimated time: " + routeManeuver.timeToNextInstruction + " seconds."
    }

Property Documentation
----------------------

.. _sdk_qtlocation_routemaneuver_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Describes the change in direction associated with the instruction text that is associated with a :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.

-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.NoDirection - There is no direction associated with the instruction text
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionForward - The instruction indicates that the direction of travel does not need to change
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionBearRight - The instruction indicates that the direction of travel should bear to the right
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionLightRight - The instruction indicates that a light turn to the right is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionRight - The instruction indicates that a turn to the right is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionHardRight - The instruction indicates that a hard turn to the right is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionUTurnRight - The instruction indicates that a u-turn to the right is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionUTurnLeft - The instruction indicates that a u-turn to the left is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionHardLeft - The instruction indicates that a hard turn to the left is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionLeft - The instruction indicates that a turn to the left is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionLightLeft - The instruction indicates that a light turn to the left is required
-  :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`.DirectionBearLeft - The instruction indicates that the direction of travel should bear to the left

.. _sdk_qtlocation_routemaneuver_distanceToNextInstruction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| distanceToNextInstruction : real                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the distance, in meters, between the point at which the associated instruction was issued and the point that the next instruction should be issued.

.. _sdk_qtlocation_routemaneuver_instructionText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| instructionText : string                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds textual navigation instruction.

.. _sdk_qtlocation_routemaneuver_position:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| position : coordinate                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds where the :ref:`instructionText <sdk_qtlocation_routemaneuver_instructionText>` should be displayed.

.. _sdk_qtlocation_routemaneuver_timeToNextInstruction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| timeToNextInstruction : int                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the estimated time it will take to travel from the point at which the associated instruction was issued and the point that the next instruction should be issued, in seconds.

.. _sdk_qtlocation_routemaneuver_valid:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| valid : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds whether this maneuver is valid or not.

Invalid maneuvers are used when there is no information that needs to be attached to the endpoint of a QGeoRouteSegment instance.

.. _sdk_qtlocation_routemaneuver_waypoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| waypoint : coordinate                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the waypoint associated with this maneuver. All maneuvers do not have a waypoint associated with them, this can be checked with :ref:`waypointValid <sdk_qtlocation_routemaneuver_waypointValid>`.

.. _sdk_qtlocation_routemaneuver_waypointValid:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| waypointValid : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds whether this :ref:`waypoint <sdk_qtlocation_routemaneuver_waypoint>`, associated with this maneuver, is valid or not.

