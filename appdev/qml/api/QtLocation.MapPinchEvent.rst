QtLocation.MapPinchEvent
========================

.. raw:: html

   <p>

MapPinchEvent type provides basic information about pinch event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapPinchEvent -->

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

accepted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

angle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

center : QPoint

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

point1 : QPoint

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

point2 : QPoint

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pointCount : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapPinchEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

MapPinchEvent type provides basic information about pinch event. They
are present in handlers of MapPinch (for example
pinchStarted/pinchUpdated). Events are only guaranteed to be valid for
the duration of the handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

Except for the accepted property, all properties are read-only.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following example enables the pinch gesture on a map and reacts to
the finished event.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   id: map
   gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
   gesture<span class="operator">.</span>onPinchFinished:{
   var coordinate1 <span class="operator">=</span> map<span class="operator">.</span>toCoordinate(gesture<span class="operator">.</span>point1)
   var coordinate2 <span class="operator">=</span> map<span class="operator">.</span>toCoordinate(gesture<span class="operator">.</span>point2)
   console<span class="operator">.</span>log(<span class="string">&quot;Pinch started at:&quot;</span>)
   console<span class="operator">.</span>log(<span class="string">&quot;        Points (&quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point1<span class="operator">.</span>x <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point1<span class="operator">.</span>y <span class="operator">+</span> <span class="string">&quot;) - (&quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point2<span class="operator">.</span>x <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point2<span class="operator">.</span>y <span class="operator">+</span> <span class="string">&quot;)&quot;</span>)
   console<span class="operator">.</span>log(<span class="string">&quot;   Coordinates (&quot;</span> <span class="operator">+</span> coordinate1<span class="operator">.</span>latitude <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> coordinate1<span class="operator">.</span>longitude <span class="operator">+</span> <span class="string">&quot;) - (&quot;</span> <span class="operator">+</span> coordinate2<span class="operator">.</span>latitude <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> coordinate2<span class="operator">.</span>longitude <span class="operator">+</span> <span class="string">&quot;)&quot;</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@MapPinchEvent -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accepted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accepted : bool

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

Setting this property to false in the MapPinch::onPinchStarted handler
will result in no further pinch events being generated, and the gesture
ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angle : real

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

This read-only property holds the current angle between the two points
in the range -180 to 180. Positive values for the angles mean
counter-clockwise while negative values mean the clockwise direction.
Zero degrees is at the 3 o'clock position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="center-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

center : QPoint

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

This read-only property holds the current center point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@center -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="point1-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

point1 : QPoint

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

These read-only properties hold the actual touch points generating the
pinch. The points are not in any particular order.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@point1 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="point2-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

point2 : QPoint

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

These read-only properties hold the actual touch points generating the
pinch. The points are not in any particular order.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@point2 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pointCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pointCount : int

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

This read-only property holds the number of points currently touched.
The MapPinch will not react until two touch points have initiated a
gesture, but will remain active until all touch points have been
released.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pointCount -->


