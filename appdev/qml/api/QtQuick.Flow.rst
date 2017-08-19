QtQuick.Flow
============

.. raw:: html

   <p>

Positions its children side by side, wrapping as necessary More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flow -->

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

import QtQuick 2.4

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

Item

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

add : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveLayoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flow : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

move : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

populate : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacing : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Flow-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Flow item positions its child items like words on a page, wrapping
them to create rows or columns of items.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a Flow that contains various Text items:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="index.html">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.margins: <span class="number">4</span>
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Text&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;items&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;flowing&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;inside&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;a&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Flow&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;item&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   }</pre>

.. raw:: html

   <p>

The Flow item automatically positions the child Text items side by side,
wrapping as necessary:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item within a Flow is not visible, or if it has a width or height
of 0, the item will not be laid out and it will not be visible within
the Flow. Also, since a Flow automatically positions its children, a
child item within a Flow should not set its x or y positions or anchor
itself with any of the anchor properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on using Flow and other related positioner-types,
see Item Positioners.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Column, Row, Grid, Positioner, and Qt Quick Examples -
Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flow -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="add-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

add : Transition

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

This property holds the transition to be run for items that are added to
this positioner. For a positioner, this applies to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Items that are created or reparented as a child of the positioner after
the positioner has been created

.. raw:: html

   </li>

.. raw:: html

   <li>

Child items that change their Item::visible property from false to true,
and thus are now visible

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being added. See the ViewTransition
documentation for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This transition is not applied to the items that already part of
the positioner at the time of its creation. In this case, the populate
transition is applied instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also populate, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effectiveLayoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effectiveLayoutDirection : enumeration

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

This property holds the effective layout direction of the flow.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled for locale
layouts, the visual layout direction of the grid positioner will be
mirrored. However, the property layoutDirection will remain unchanged.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Flow::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveLayoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flow-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flow : enumeration

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

This property holds the flow of the layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Flow.LeftToRight (default) - Items are positioned next to to each other
according to the layoutDirection until the width of the Flow is
exceeded, then wrapped to the next line.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flow.TopToBottom - Items are positioned next to each other from top to
bottom until the height of the Flow is exceeded, then wrapped to the
next column.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@flow -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layoutDirection : enumeration

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

This property holds the layout direction of the layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftToRight (default) - Items are positioned from the top to bottom,
and left to right. The flow direction is dependent on the Flow::flow
property.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Items are positioned from the top to bottom, and right
to left. The flow direction is dependent on the Flow::flow property.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Grid::layoutDirection, Row::layoutDirection, and Qt Quick
Examples - Right to Left.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

move : Transition

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

This property holds the transition to run for items that have moved
within the positioner. For a positioner, this applies to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Child items that move when they are displaced due to the addition,
removal or rearrangement of other items in the positioner

.. raw:: html

   </li>

.. raw:: html

   <li>

Child items that are repositioned due to the resizing of other items in
the positioner

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being moved. Note, however, that for this
move transition, the ViewTransition.targetIndexes and
ViewTransition.targetItems lists are only set when this transition is
triggered by the addition of other items in the positioner; in other
cases, these lists will be empty. See the ViewTransition documentation
for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: In Qt Quick 1, this transition was applied to all items that were
part of the positioner at the time of its creation. From QtQuick 2
onwards, positioners apply the populate transition to these items
instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also add, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="populate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

populate : Transition

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

This property holds the transition to be run for items that are part of
this positioner at the time of its creation. The transition is run when
the positioner is first created.

.. raw:: html

   </p>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being added. See the ViewTransition
documentation for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also add, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@populate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spacing : real

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

spacing is the amount in pixels left empty between each adjacent item,
and defaults to 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Grid::spacing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacing -->


