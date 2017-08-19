QtLocation.RouteManeuver
========================

.. raw:: html

   <p>

The RouteManeuver type represents the information relevant to the point
at which two RouteSegments meet. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RouteManeuver -->

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

direction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

distanceToNextInstruction : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

instructionText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : coordinate

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

timeToNextInstruction : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

valid : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waypoint : coordinate

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waypointValid : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RouteManeuver-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

RouteManeuver instances as optional labels attached to the vertices of
the graph.

.. raw:: html

   </p>

.. raw:: html

   <p>

The most interesting information held in a position respectively.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following QML snippet demonstrates how to print information about a
route maneuver:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Distance till next maneuver: &quot;</span> <span class="operator">+</span> <span class="name">routeManeuver</span>.<span class="name">distanceToNextInstruction</span> <span class="operator">+</span> <span class="string">&quot; meters, estimated time: &quot;</span> <span class="operator">+</span> <span class="name">routeManeuver</span>.<span class="name">timeToNextInstruction</span> <span class="operator">+</span> <span class="string">&quot; seconds.&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@RouteManeuver -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : enumeration

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

Describes the change in direction associated with the instruction text
that is associated with a RouteManeuver.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteManeuver.NoDirection - There is no direction associated with the
instruction text

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionForward - The instruction indicates that the
direction of travel does not need to change

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionBearRight - The instruction indicates that the
direction of travel should bear to the right

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionLightRight - The instruction indicates that a
light turn to the right is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionRight - The instruction indicates that a turn to
the right is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionHardRight - The instruction indicates that a hard
turn to the right is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionUTurnRight - The instruction indicates that a
u-turn to the right is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionUTurnLeft - The instruction indicates that a
u-turn to the left is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionHardLeft - The instruction indicates that a hard
turn to the left is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionLeft - The instruction indicates that a turn to
the left is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionLightLeft - The instruction indicates that a
light turn to the left is required

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteManeuver.DirectionBearLeft - The instruction indicates that the
direction of travel should bear to the left

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="distanceToNextInstruction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

distanceToNextInstruction : real

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

This read-only property holds the distance, in meters, between the point
at which the associated instruction was issued and the point that the
next instruction should be issued.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@distanceToNextInstruction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="instructionText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

instructionText : string

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

This read-only property holds textual navigation instruction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@instructionText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

position : coordinate

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

This read-only property holds where the instructionText should be
displayed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timeToNextInstruction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

timeToNextInstruction : int

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

This read-only property holds the estimated time it will take to travel
from the point at which the associated instruction was issued and the
point that the next instruction should be issued, in seconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@timeToNextInstruction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="valid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

valid : bool

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

This read-only property holds whether this maneuver is valid or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

Invalid maneuvers are used when there is no information that needs to be
attached to the endpoint of a QGeoRouteSegment instance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@valid -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waypoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

waypoint : coordinate

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

This property holds the waypoint associated with this maneuver. All
maneuvers do not have a waypoint associated with them, this can be
checked with waypointValid.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waypoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waypointValid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

waypointValid : bool

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

This read-only property holds whether this waypoint, associated with
this maneuver, is valid or not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waypointValid -->


