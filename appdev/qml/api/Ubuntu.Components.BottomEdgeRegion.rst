Ubuntu.Components.BottomEdgeRegion
==================================

.. raw:: html

   <p>

Defines an active region within the BottomEdge component. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdgeRegion -->

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

import .

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

Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

QtObject

.. raw:: html

   </p>

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

contentComponent : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentUrl : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

from : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void dragEnded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void entered()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void exited()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$BottomEdgeRegion-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Bottom edge regions are portions within the bottom edge area which can
define different content or action whenever the drag enters in the area.
The area is defined by from and to properties vertically, whereas
horizontally is stretched across bottom edge width. Custom content can
be defined through contentUrl or contentComponent properties, which will
override the BottomEdge::contentUrl and BottomEdge::contentComponent
properties for the time the gesture is in the section area.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;BottomEdge regions&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">hint</span>: <span class="name">BottomEdgeHint</span> {
   <span class="name">text</span>: <span class="string">&quot;My bottom edge&quot;</span>
   }
   <span class="comment">// a fake content till we reach the committable area</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">green</span>
   }
   <span class="comment">// override bottom edge sections to switch to real content</span>
   <span class="type"><a href="index.html">BottomEdgeRegion</a></span> {
   <span class="name">from</span>: <span class="number">0.33</span>
   <span class="name">contentComponent</span>: <span class="name">Page</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;BottomEdge Content&quot;</span>
   }
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Entering into the section area is signalled by the entered signal and
when drag leaves the area the exited signal is emitted. If the drag ends
within the section area, the dragEnded signal is emitted. In case the
section's to property is less than 1.0, the bottom edge content will
only be exposed to that value, and the BottomEdge::status will get the
Committed value. No further drag is possible after reaching Commited
state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Whereas there is no restriction on making overlapping sections,
beware that overlapping sections changing the content through the
contentUrl or contentComponent properties will cause unpredictable
results.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdgeRegion -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contentComponent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentComponent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentComponent : Component

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

Specifies the component defining the section specific content. This
propery will temporarily override the BottomEdge::contentComponent
property value when the drag gesture enters the section area. The
orginal value will be restored once the gesture leaves the section area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentComponent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentUrl-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentUrl : url

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

Specifies the url to the document defining the section specific content.
This propery will temporarily override the BottomEdge::contentUrl
property value when the drag gesture enters the section area. The
orginal value will be restored once the gesture leaves the section area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

Enables the section. Disabled sections do not trigger nor change the
BottomEdge content. Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

from : real

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

Specifies the starting ratio of the bottom erge area. The value must be
bigger or equal to 0 but strictly smaller than to. Defaults to 0.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@from -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : real

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

Specifies the ending ratio of the bottom edge area. The value must be
bigger than from and smaller or equal to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If the end point is less than 1.0, ending the drag within the
section will result in exposing the bottom edge content only till the
ration specified by this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dragEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragEnded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void dragEnded()

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

Signal triggered when the drag ends within the active bottom edge
section area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="entered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void entered()

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

Signal triggered when the drag enters into the area defined by the
bottom edge section.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@entered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exited-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void exited()

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

Signal triggered when the drag leaves the area defined by the bottom
edge section.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exited -->


