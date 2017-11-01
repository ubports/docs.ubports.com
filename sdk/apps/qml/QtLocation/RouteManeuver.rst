The RouteManeuver type represents the information relevant to the point
at which two RouteSegments meet.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtLocation/RouteManeuver#direction-prop>`__****
   : enumeration
-  ****`distanceToNextInstruction </sdk/apps/qml/QtLocation/RouteManeuver#distanceToNextInstruction-prop>`__****
   : real
-  ****`instructionText </sdk/apps/qml/QtLocation/RouteManeuver#instructionText-prop>`__****
   : string
-  ****`position </sdk/apps/qml/QtLocation/RouteManeuver#position-prop>`__****
   : coordinate
-  ****`timeToNextInstruction </sdk/apps/qml/QtLocation/RouteManeuver#timeToNextInstruction-prop>`__****
   : int
-  ****`valid </sdk/apps/qml/QtLocation/RouteManeuver#valid-prop>`__****
   : bool
-  ****`waypoint </sdk/apps/qml/QtLocation/RouteManeuver#waypoint-prop>`__****
   : coordinate
-  ****`waypointValid </sdk/apps/qml/QtLocation/RouteManeuver#waypointValid-prop>`__****
   : bool

Detailed Description
--------------------

`RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__ instances can
be thought of as edges on a routing graph, with
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__ instances as
optional labels attached to the vertices of the graph.

The most interesting information held in a
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__ instance is
normally the textual navigation to provide and the position at which to
provide it, accessible by
`instructionText </sdk/apps/qml/QtLocation/RouteManeuver#instructionText-prop>`__
and `position </sdk/apps/qml/QtLocation/RouteManeuver#position-prop>`__
respectively.

Example
-------

The following QML snippet demonstrates how to print information about a
route maneuver:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Text {
        text: "Distance till next maneuver: " + routeManeuver.distanceToNextInstruction + " meters, estimated time: " + routeManeuver.timeToNextInstruction + " seconds."
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

Describes the change in direction associated with the instruction text
that is associated with a
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.

-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.NoDirection
   - There is no direction associated with the instruction text
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionForward
   - The instruction indicates that the direction of travel does not
   need to change
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionBearRight
   - The instruction indicates that the direction of travel should bear
   to the right
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionLightRight
   - The instruction indicates that a light turn to the right is
   required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionRight
   - The instruction indicates that a turn to the right is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionHardRight
   - The instruction indicates that a hard turn to the right is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionUTurnRight
   - The instruction indicates that a u-turn to the right is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionUTurnLeft
   - The instruction indicates that a u-turn to the left is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionHardLeft
   - The instruction indicates that a hard turn to the left is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionLeft
   - The instruction indicates that a turn to the left is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionLightLeft
   - The instruction indicates that a light turn to the left is required
-  `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__.DirectionBearLeft
   - The instruction indicates that the direction of travel should bear
   to the left

| 

+--------------------------------------------------------------------------+
|        \ distanceToNextInstruction : real                                |
+--------------------------------------------------------------------------+

This read-only property holds the distance, in meters, between the point
at which the associated instruction was issued and the point that the
next instruction should be issued.

| 

+--------------------------------------------------------------------------+
|        \ instructionText : string                                        |
+--------------------------------------------------------------------------+

This read-only property holds textual navigation instruction.

| 

+--------------------------------------------------------------------------+
|        \ position : coordinate                                           |
+--------------------------------------------------------------------------+

This read-only property holds where the
`instructionText </sdk/apps/qml/QtLocation/RouteManeuver#instructionText-prop>`__
should be displayed.

| 

+--------------------------------------------------------------------------+
|        \ timeToNextInstruction : int                                     |
+--------------------------------------------------------------------------+

This read-only property holds the estimated time it will take to travel
from the point at which the associated instruction was issued and the
point that the next instruction should be issued, in seconds.

| 

+--------------------------------------------------------------------------+
|        \ valid : bool                                                    |
+--------------------------------------------------------------------------+

This read-only property holds whether this maneuver is valid or not.

Invalid maneuvers are used when there is no information that needs to be
attached to the endpoint of a QGeoRouteSegment instance.

| 

+--------------------------------------------------------------------------+
|        \ waypoint : coordinate                                           |
+--------------------------------------------------------------------------+

This property holds the waypoint associated with this maneuver. All
maneuvers do not have a waypoint associated with them, this can be
checked with
`waypointValid </sdk/apps/qml/QtLocation/RouteManeuver#waypointValid-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ waypointValid : bool                                            |
+--------------------------------------------------------------------------+

This read-only property holds whether this
`waypoint </sdk/apps/qml/QtLocation/RouteManeuver#waypoint-prop>`__,
associated with this maneuver, is valid or not.

| 
