QtQuick.Grid
============

.. raw:: html

   <p>

Positions its children in grid formation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Grid -->

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

columnSpacing : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

columns : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveHorizontalItemAlignment : enumeration

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

horizontalItemAlignment : enumeration

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

rowSpacing : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rows : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacing : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalItemAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Grid-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Grid is a type that positions its child items in grid formation.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Grid creates a grid of cells that is large enough to hold all of its
child items, and places these items in the cells from left to right and
top to bottom. Each item is positioned at the top-left corner of its
cell with position (0, 0).

.. raw:: html

   </p>

.. raw:: html

   <p>

A Grid defaults to four columns, and creates as many rows as are
necessary to fit all of its child items. The number of rows and columns
can be constrained by setting the rows and columns properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a Grid that contains five rectangles of various
sizes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Grid</a></span> {
   <span class="name">columns</span>: <span class="number">3</span>
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;cyan&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;magenta&quot;</span>; <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span> }
   }</pre>

.. raw:: html

   <p>

The Grid automatically positions the child items in a grid formation:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item within a Grid is not visible, or if it has a width or height
of 0, the item will not be laid out and it will not be visible within
the column. Also, since a Grid automatically positions its children, a
child item within a Grid should not set its x or y positions or anchor
itself with any of the anchor properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on using Grid and other related positioner-types,
see Item Positioners.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Flow, Row, Column, Positioner, GridLayout, and Qt Quick
Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Grid -->

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

   <tr valign="top" id="columnSpacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

columnSpacing : qreal

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

This property holds the spacing in pixels between columns.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is not set, then spacing is used for the column
spacing.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is not set.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also rowSpacing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@columnSpacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="columns-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

columns : int

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

This property holds the number of columns in the grid. The default
number of columns is 4.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the grid does not have enough items to fill the specified number of
columns, some columns will be of zero width.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@columns -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effectiveHorizontalItemAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effectiveHorizontalItemAlignment : enumeration

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

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the layoutDirection of the Grid, for example when
having a layoutDirection from LeftToRight, the items will be aligned on
the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalItemAlignment are, Grid.AlignLeft,
Grid.AlignRight and Grid.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for verticalItemAlignment are Grid.AlignTop,
Grid.AlignBottom and Grid.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The below images show three examples of how to align items.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Horizontal alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignLeft

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Vertical alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignVCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When mirroring the layout using either the attached property
LayoutMirroring::enabled or by setting the layoutDirection, the
horizontal alignment of items will be mirrored as well. However, the
property horizontalItemAlignment will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
effectiveHorizontalItemAlignment.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Grid::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveHorizontalItemAlignment -->

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

This property holds the effective layout direction of the grid.

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

See also Grid::layoutDirection and LayoutMirroring.

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

Grid.LeftToRight (default) - Items are positioned next to each other in
the layoutDirection, then wrapped to the next line.

.. raw:: html

   </li>

.. raw:: html

   <li>

Grid.TopToBottom - Items are positioned next to each other from top to
bottom, then wrapped to the next column.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@flow -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="horizontalItemAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

horizontalItemAlignment : enumeration

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

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the layoutDirection of the Grid, for example when
having a layoutDirection from LeftToRight, the items will be aligned on
the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalItemAlignment are, Grid.AlignLeft,
Grid.AlignRight and Grid.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for verticalItemAlignment are Grid.AlignTop,
Grid.AlignBottom and Grid.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The below images show three examples of how to align items.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Horizontal alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignLeft

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Vertical alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignVCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When mirroring the layout using either the attached property
LayoutMirroring::enabled or by setting the layoutDirection, the
horizontal alignment of items will be mirrored as well. However, the
property horizontalItemAlignment will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
effectiveHorizontalItemAlignment.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Grid::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalItemAlignment -->

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
and left to right. The flow direction is dependent on the Grid::flow
property.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Items are positioned from the top to bottom, and right
to left. The flow direction is dependent on the Grid::flow property.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Flow::layoutDirection, Row::layoutDirection, and Qt Quick
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

   <tr valign="top" id="rowSpacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rowSpacing : qreal

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

This property holds the spacing in pixels between rows.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is not set, then spacing is used for the row spacing.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is not set.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also columnSpacing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rowSpacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rows-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rows : int

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

This property holds the number of rows in the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the grid does not have enough items to fill the specified number of
rows, some rows will be of zero width.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rows -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spacing : qreal

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

The spacing is the amount in pixels left empty between adjacent items.
The amount of spacing applied will be the same in the horizontal and
vertical directions. The default spacing is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

The below example places a Grid containing a red, a blue and a green
rectangle on a gray background. The area the grid positioner occupies is
colored white. The positioner on the left has the no spacing (the
default), and the positioner on the right has a spacing of 6.

.. raw:: html

   </p>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also rows and columns.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verticalItemAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalItemAlignment : enumeration

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

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the layoutDirection of the Grid, for example when
having a layoutDirection from LeftToRight, the items will be aligned on
the left.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalItemAlignment are, Grid.AlignLeft,
Grid.AlignRight and Grid.AlignHCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for verticalItemAlignment are Grid.AlignTop,
Grid.AlignBottom and Grid.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The below images show three examples of how to align items.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Horizontal alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignLeft

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignHCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Vertical alignment

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignTop

.. raw:: html

   </td>

.. raw:: html

   <td>

AlignVCenter

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When mirroring the layout using either the attached property
LayoutMirroring::enabled or by setting the layoutDirection, the
horizontal alignment of items will be mirrored as well. However, the
property horizontalItemAlignment will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
effectiveHorizontalItemAlignment.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Grid::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalItemAlignment -->


