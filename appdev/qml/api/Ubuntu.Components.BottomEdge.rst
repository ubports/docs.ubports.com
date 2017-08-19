Ubuntu.Components.BottomEdge
============================

.. raw:: html

   <p>

A component to handle bottom edge gesture and content. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdge -->

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

import Ubuntu.Components 1.3

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

StyledItem

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

activeRegion : BottomEdgeRegion

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentComponent : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentUrl : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragDirection : DragDirection

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragProgress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hint : BottomEdgeHint

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preloadContent : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

regions : list<BottomEdgeRegion>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : Status

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

collapseCompleted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

collapseStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

commitCompleted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

commitStarted()

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

void collapse()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void commit()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$BottomEdge-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides bottom edge content handling. The bottom egde
feature is typically composed of a hint and some content. The contentUrl
is committed (i.e. fully shown) when the drag is completed after it has
been dragged for a certain amount, that is 30% of the height of the
BottomEdge. The contentUrl can be anything, defined by contentUrl or
contentComponent.

.. raw:: html

   </p>

.. raw:: html

   <p>

As the name suggests, the component automatically anchors to the bottom
of its parent and takes the width of the parent. The drag is detected
within the parent area, and the height drives till what extent the
bottom edge content should be exposed on commit call. The content is
centered into a panel which is dragged from the bottom of the
BottomEdge. The content must specify its width and height.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="name">title</span>: <span class="string">&quot;BottomEdge&quot;</span>
   <span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">hint</span>.text: <span class="string">&quot;My bottom edge&quot;</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">page</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">page</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">green</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: The content is specified either through contentUrl or
contentComponent, where contentComponent has precedence over contentUrl.

.. raw:: html

   </p>

.. raw:: html

   <p>

There can be situations when the content depends on the progress of the
drag. There are two possibilities to follow this, depending on the use
case. The dragProgress provides live updates about the fraction of the
drag.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">hint</span>.text: <span class="string">&quot;progression&quot;</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
   }
   }</pre>

.. raw:: html

   <p>

The other use case is when the content needs to be completely different
in certain regions of the area. These regions can be defined through
BottomEdgeRegion elements listed in the regions property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;BottomEdge&quot;</span>
   <span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">hint</span>.text: <span class="string">&quot;My bottom edge&quot;</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">bottomEdge</span>.<span class="name">activeRegion</span> ?
   <span class="name">bottomEdge</span>.<span class="name">activeRegion</span>.<span class="name">color</span> : <span class="name">UbuntuColors</span>.<span class="name">green</span>
   }
   <span class="name">regions</span>: [
   <span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
   <span class="name">from</span>: <span class="number">0.4</span>
   <span class="name">to</span>: <span class="number">0.6</span>
   property <span class="type">color</span> <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
   },
   <span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
   <span class="name">from</span>: <span class="number">0.6</span>
   <span class="name">to</span>: <span class="number">1.0</span>
   property <span class="type">color</span> <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">silk</span>
   }
   ]
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Custom regions override the default declared ones. Therefore there
must be one region which has its to limit set to 1.0 otherwise the
content will not be committed at all.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Regions can also be declared as child elements the same way as
resources.

.. raw:: html

   </p>

.. raw:: html

   <p>

The BottomEdge takes ownership over the custom BottomEdgeRegions,
therefore we cannot 'reuse' regions declared in other BottomEdge
components, as those will be destroyed together with the reusing
BottomEdge component. The following scenario only works if the
customRegion is not used in any other regions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">hint</span>.text: <span class="string">&quot;reusing regions&quot;</span>
   <span class="comment">// put your content and setup here</span>
   <span class="name">regions</span>: [<span class="name">customRegion</span>]
   }
   <span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
   <span class="name">id</span>: <span class="name">customRegion</span>
   <span class="name">from</span>: <span class="number">0.2</span>
   }
   }</pre>

.. raw:: html

   <h3>

Page As Content

.. raw:: html

   </h3>

.. raw:: html

   <p>

BottomEdge accepts any component to be set as content. Also it can
detect whether the content has a PageHeader component declared, and will
inject a collapse navigation action automatically. In case the content
has no header, the collapse must be provided by the content itself by
calling the collapse function.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">hint</span>.text: <span class="string">&quot;Sample collapse&quot;</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Collapse&quot;</span>
   <span class="name">onClicked</span>: <span class="name">bottomEdge</span>.<span class="name">collapse</span>()
   }
   }
   }</pre>

.. raw:: html

   <p>

Alternatively you can put a PageHeader component in your custom content
as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
   <span class="name">id</span>: <span class="name">bottomEdge</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">hint</span>.text: <span class="string">&quot;Injected collapse&quot;</span>
   <span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
   <span class="type"><a href="Ubuntu.Components.PageHeader.md">PageHeader</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Fancy content&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <h3>

Styling

.. raw:: html

   </h3>

.. raw:: html

   <p>

Similar to the other components the default style is expected to be
defined in the theme's BottomEdgeStyle. However the style is not
parented to the BottomEdge itself, but to the BottomEdge's parent item.
When loaded, the style does not fill the parent but its bottom anchor is
set to the bottom of the BottomEdge. Beside this the hint is also
parented to the style instance. Custom styles are expected to implement
the BottomEgdeStyle API.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also BottomEdgeRegion.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BottomEdge -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeRegion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeRegion-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] activeRegion : BottomEdgeRegion

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

Specifies the current active region.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeRegion -->

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

The property holds the component defining the content of the bottom
edge. The property behaves the same way as Loader's sourceComponent
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentComponent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] contentItem : Item

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

The property holds the item created either from contentUrl or
contentComponent properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentItem -->

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

The property holds the url to the document defining the content of the
bottom edge. The property behaves the same way as Loader's source
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] dragDirection : DragDirection

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

The property reports the current direction of the drag. The direction is
flipped when the drag passes the drag threshold.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

DragDirection

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Undefined

.. raw:: html

   </td>

.. raw:: html

   <td>

Default. The drag is not performed or the direction is not detected.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Upwards

.. raw:: html

   </td>

.. raw:: html

   <td>

The drag is performed from bottom up or it passed the drag threshold
from from the last point the drag was going downwards.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Downwards

.. raw:: html

   </td>

.. raw:: html

   <td>

The drag is performed from up to bottom or it passed the drag threshold
from from the last point the drag was going upwards.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Defaults to Undefined

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragProgress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] dragProgress : real

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

The property specifies the proggress of the drag within [0..1] interval.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragProgress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hint : BottomEdgeHint

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

The property holds the component to display the hint for the bottom edge
element.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preloadContent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preloadContent : bool

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

If set, all the contents set in the component and in regions will be
loaded in the background, so it will be available before it is revealed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preloadContent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="regions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

regions : list<BottomEdgeRegion>

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

The property holds the custom regions configured for the BottomEdge. The
default configuration contains one region, which commits the content
when reached. The defaults can be restored by setting an empty list to
the property or by calling regions.clear(). See BottomEdgeRegion.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@regions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] status : Status

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

The property reports the actual state of the bottom edge. It can have
the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Status

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Hidden

.. raw:: html

   </td>

.. raw:: html

   <td>

The bottom edge is hidden. This does not contain the hint states.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Revealed

.. raw:: html

   </td>

.. raw:: html

   <td>

The Bottom edge content is revealed. The state can be reached only if
the hint is in "Active" state.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Committed

.. raw:: html

   </td>

.. raw:: html

   <td>

The bottom edge content is fully exposed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: Once Commited status is set, no further draging is possible on the
content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collapseCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapseCompleted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

collapseCompleted()

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

Signal emitted when the content collapse is completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapseCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapseStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

collapseStarted()

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

Signal emitted when the content collapse is started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapseStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="commitCompleted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

commitCompleted()

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

Signal emitted when the content commit is completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@commitCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="commitStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

commitStarted()

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

Signal emitted when the content commit is started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@commitStarted -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collapse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapse-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void collapse()

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

The function forces the bottom edge content to be hidden. Emits
collapseStarted and collapseCompleted signals to notify the start and
the completion of the collapse operation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="commit-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void commit()

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

The function forces the bottom edge content to be fully exposed. Emits
commitStarted and commitCompleted signals to notify the start and the
completion of the commit operation. It is safe to call commit() multiple
times.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@commit -->


