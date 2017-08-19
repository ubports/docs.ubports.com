Ubuntu.Components.Styles.ListItemStyle
======================================

.. raw:: html

   <p>

Style API for ListItem component. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemStyle -->

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

import Ubuntu.Components.Styles 1.3

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

Ubuntu.Components.Styles 1.2

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

animatePanels : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragPanel : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dropAnimation : PropertyAnimation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickable : Flickable

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

listItemIndex : in

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

snapAnimation : Animation

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

rebound()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

swipeEvent(SwipeEvent event)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListItemStyle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Style API for the ListItem component which provides actions, select and
drag handler delegates, and snap animation via its properties. ListItem
treats the style differently compared to the other components, as it
loads the style only when needed and not upon component creation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemStyle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$animatePanels -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animatePanels-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

animatePanels : bool

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

The property drives the different panel animations in the style. Panels
should not be animated when created upon scrolling a view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animatePanels -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragPanel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dragPanel : Item

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

The property holds the item visualizing the drag handler. ListItem's
dragging mechanism uses this property to detect the area the dragging
can be initiated from. If not set, the ListItem will assume the dragging
can be initiated from the entire area of the ListItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragPanel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dropAnimation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dropAnimation : PropertyAnimation

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

The property holds the animation executed on ListItem dropping.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dropAnimation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] flickable : Flickable

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

The property holds the Flickable (or ListView) holding the ListItem
styled.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Styles 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="listItemIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] listItemIndex : in

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

The property proxies the ListItem's index context property to the style,
which is either the index of the list item in a ListView or the child
index. Use this property rather than the index context property as that
may not be defined in situations where the ListItem is not a delegate of
a ListView or Repeater.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Styles 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@listItemIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="snapAnimation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

snapAnimation : Animation

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

Holds the behavior used in animating when snapped in or out.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@snapAnimation -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$rebound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rebound-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

rebound()

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

Function called by the ListItem when a rebounding action is requested
from the style. This usually happens when the list item's content is
swiped and there is a press event happening outside of the ListItem's
boundary or when the view embedding the ListItem starts scrolling.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rebound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="swipeEvent-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

swipeEvent(SwipeEvent event)

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

The function is called by the ListItem when a swipe action is performed,
i.e. when the swipe is started, the position is updated or the swipe
ends. The event object provides information about the swipe status,
positions and the updated ListItem.contentItem position. The style
implementation can override the contentItem position by setting the
event.content.x or event.content.y properties to the desired value.

.. raw:: html

   </p>

.. raw:: html

   <p>

The event object properties are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

status - enumeration of Started, Updated, Finished values representing
the swipe event status

.. raw:: html

   </li>

.. raw:: html

   <li>

to - (x, y) coordinates of the current mouse/touch point - read-only

.. raw:: html

   </li>

.. raw:: html

   <li>

from - (x, y) coordinates of the previous mouse/touch point - read-only

.. raw:: html

   </li>

.. raw:: html

   <li>

content - (x, y) updated coordinates of the ListItem.contentItem,
read-write

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@swipeEvent -->


