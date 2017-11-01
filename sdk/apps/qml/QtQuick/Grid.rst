Positions its children in grid formation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`add </sdk/apps/qml/QtQuick/Grid#add-prop>`__**** : Transition
-  ****`columnSpacing </sdk/apps/qml/QtQuick/Grid#columnSpacing-prop>`__****
   : qreal
-  ****`columns </sdk/apps/qml/QtQuick/Grid#columns-prop>`__**** : int
-  ****`effectiveHorizontalItemAlignment </sdk/apps/qml/QtQuick/Grid#effectiveHorizontalItemAlignment-prop>`__****
   : enumeration
-  ****`effectiveLayoutDirection </sdk/apps/qml/QtQuick/Grid#effectiveLayoutDirection-prop>`__****
   : enumeration
-  ****`flow </sdk/apps/qml/QtQuick/Grid#flow-prop>`__**** : enumeration
-  ****`horizontalItemAlignment </sdk/apps/qml/QtQuick/Grid#horizontalItemAlignment-prop>`__****
   : enumeration
-  ****`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__****
   : enumeration
-  ****`move </sdk/apps/qml/QtQuick/Grid#move-prop>`__**** : Transition
-  ****`populate </sdk/apps/qml/QtQuick/Grid#populate-prop>`__**** :
   Transition
-  ****`rowSpacing </sdk/apps/qml/QtQuick/Grid#rowSpacing-prop>`__**** :
   qreal
-  ****`rows </sdk/apps/qml/QtQuick/Grid#rows-prop>`__**** : int
-  ****`spacing </sdk/apps/qml/QtQuick/Grid#spacing-prop>`__**** : qreal
-  ****`verticalItemAlignment </sdk/apps/qml/QtQuick/Grid#verticalItemAlignment-prop>`__****
   : enumeration

Detailed Description
--------------------

Grid is a type that positions its child items in grid formation.

A Grid creates a grid of cells that is large enough to hold all of its
child items, and places these items in the cells from left to right and
top to bottom. Each item is positioned at the top-left corner of its
cell with position (0, 0).

A Grid defaults to four columns, and creates as many rows as are
necessary to fit all of its child items. The number of rows and columns
can be constrained by setting the
`rows </sdk/apps/qml/QtQuick/Grid#rows-prop>`__ and
`columns </sdk/apps/qml/QtQuick/Grid#columns-prop>`__ properties.

For example, below is a Grid that contains five rectangles of various
sizes:

.. code:: qml

    import QtQuick 2.0
    Grid {
        columns: 3
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
        Rectangle { color: "cyan"; width: 50; height: 50 }
        Rectangle { color: "magenta"; width: 10; height: 10 }
    }

The Grid automatically positions the child items in a grid formation:

|image0|

If an item within a Grid is not
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__, or if it has a
width or height of 0, the item will not be laid out and it will not be
visible within the column. Also, since a Grid automatically positions
its children, a child item within a Grid should not set its
`x </sdk/apps/qml/QtQuick/Item#x-prop>`__ or
`y </sdk/apps/qml/QtQuick/Item#y-prop>`__ positions or anchor itself
with any of the `anchor </sdk/apps/qml/QtQuick/Item#anchors-prop>`__
properties.

For more information on using Grid and other related positioner-types,
see `Item
Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`__.

**See also**
`Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__,
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__, GridLayout, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ add : `Transition </sdk/apps/qml/QtQuick/Transition/>`__        |
+--------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to
this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner
   after the positioner has been created
-  Child items that change their
   `Item::visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ property
   from false to true, and thus are now visible

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being added. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part
of the positioner at the time of its creation. In this case, the
`populate </sdk/apps/qml/QtQuick/Grid#populate-prop>`__ transition is
applied instead.

**See also** `populate </sdk/apps/qml/QtQuick/Grid#populate-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ columnSpacing : qreal                                           |
+--------------------------------------------------------------------------+

This property holds the spacing in pixels between columns.

If this property is not set, then spacing is used for the column
spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also**
`rowSpacing </sdk/apps/qml/QtQuick/Grid#rowSpacing-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ columns : int                                                   |
+--------------------------------------------------------------------------+

This property holds the number of columns in the grid. The default
number of columns is 4.

If the grid does not have enough items to fill the specified number of
columns, some columns will be of zero width.

| 

+--------------------------------------------------------------------------+
|        \ effectiveHorizontalItemAlignment : enumeration                  |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__ of
the Grid, for example when having a
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are,
``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``,
``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+--------------------+--------------------+--------------------+--------------------+
|                    | |image1|           | |image2|           | |image3|           |
+--------------------+--------------------+--------------------+--------------------+
| Horizontal         | AlignLeft          | AlignHCenter       | AlignHCenter       |
| alignment          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
| Vertical alignment | AlignTop           | AlignTop           | AlignVCenter       |
+--------------------+--------------------+--------------------+--------------------+

When mirroring the layout using either the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
or by setting the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
the horizontal alignment of items will be mirrored as well. However, the
property ``horizontalItemAlignment`` will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
``effectiveHorizontalItemAlignment``.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ effectiveLayoutDirection : enumeration                          |
+--------------------------------------------------------------------------+

This property holds the effective layout direction of the grid.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
for locale layouts, the visual layout direction of the grid positioner
will be mirrored. However, the property
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
will remain unchanged.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ flow : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the flow of the layout.

Possible values are:

-  Grid.LeftToRight (default) - Items are positioned next to each other
   in the
   `layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
   then wrapped to the next line.
-  Grid.TopToBottom - Items are positioned next to each other from top
   to bottom, then wrapped to the next column.

| 

+--------------------------------------------------------------------------+
|        \ horizontalItemAlignment : enumeration                           |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__ of
the Grid, for example when having a
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are,
``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``,
``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+--------------------+--------------------+--------------------+--------------------+
|                    | |image4|           | |image5|           | |image6|           |
+--------------------+--------------------+--------------------+--------------------+
| Horizontal         | AlignLeft          | AlignHCenter       | AlignHCenter       |
| alignment          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
| Vertical alignment | AlignTop           | AlignTop           | AlignVCenter       |
+--------------------+--------------------+--------------------+--------------------+

When mirroring the layout using either the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
or by setting the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
the horizontal alignment of items will be mirrored as well. However, the
property ``horizontalItemAlignment`` will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
``effectiveHorizontalItemAlignment``.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ layoutDirection : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the layout direction of the layout.

Possible values are:

-  Qt.LeftToRight (default) - Items are positioned from the top to
   bottom, and left to right. The flow direction is dependent on the
   `Grid::flow </sdk/apps/qml/QtQuick/Grid#flow-prop>`__ property.
-  Qt.RightToLeft - Items are positioned from the top to bottom, and
   right to left. The flow direction is dependent on the
   `Grid::flow </sdk/apps/qml/QtQuick/Grid#flow-prop>`__ property.

**See also**
`Flow::layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__,
`Row::layoutDirection </sdk/apps/qml/QtQuick/Row#layoutDirection-prop>`__,
and `Qt Quick Examples - Right to
Left </sdk/apps/qml/QtQuick/righttoleft/>`__.

| 

+--------------------------------------------------------------------------+
|        \ move : `Transition </sdk/apps/qml/QtQuick/Transition/>`__       |
+--------------------------------------------------------------------------+

This property holds the transition to run for items that have moved
within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition,
   removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items
   in the positioner

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being moved. Note, however,
that for this move transition, the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.targetIndexes
and
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.targetItems
lists are only set when this transition is triggered by the addition of
other items in the positioner; in other cases, these lists will be
empty. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that
were part of the positioner at the time of its creation. From `QtQuick
2 </sdk/apps/qml/QtQuick/qtquick-index/>`__ onwards, positioners apply
the `populate </sdk/apps/qml/QtQuick/Grid#populate-prop>`__ transition
to these items instead.

**See also** `add </sdk/apps/qml/QtQuick/Grid#add-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ populate : `Transition </sdk/apps/qml/QtQuick/Transition/>`__   |
+--------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of
this positioner at the time of its creation. The transition is run when
the positioner is first created.

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being added. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**See also** `add </sdk/apps/qml/QtQuick/Grid#add-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ rowSpacing : qreal                                              |
+--------------------------------------------------------------------------+

This property holds the spacing in pixels between rows.

If this property is not set, then spacing is used for the row spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also**
`columnSpacing </sdk/apps/qml/QtQuick/Grid#columnSpacing-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ rows : int                                                      |
+--------------------------------------------------------------------------+

This property holds the number of rows in the grid.

If the grid does not have enough items to fill the specified number of
rows, some rows will be of zero width.

| 

+--------------------------------------------------------------------------+
|        \ spacing : qreal                                                 |
+--------------------------------------------------------------------------+

The spacing is the amount in pixels left empty between adjacent items.
The amount of spacing applied will be the same in the horizontal and
vertical directions. The default spacing is 0.

The below example places a Grid containing a red, a blue and a green
rectangle on a gray background. The area the grid positioner occupies is
colored white. The positioner on the left has the no spacing (the
default), and the positioner on the right has a spacing of 6.

|image7| |image8|

**See also** `rows </sdk/apps/qml/QtQuick/Grid#rows-prop>`__ and
`columns </sdk/apps/qml/QtQuick/Grid#columns-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalItemAlignment : enumeration                             |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By
default, the items are vertically aligned to the top. Horizontal
alignment follows the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__ of
the Grid, for example when having a
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are,
``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``,
``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+--------------------+--------------------+--------------------+--------------------+
|                    | |image9|           | |image10|          | |image11|          |
+--------------------+--------------------+--------------------+--------------------+
| Horizontal         | AlignLeft          | AlignHCenter       | AlignHCenter       |
| alignment          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
| Vertical alignment | AlignTop           | AlignTop           | AlignVCenter       |
+--------------------+--------------------+--------------------+--------------------+

When mirroring the layout using either the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
or by setting the
`layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
the horizontal alignment of items will be mirrored as well. However, the
property ``horizontalItemAlignment`` will remain unchanged. To query the
effective horizontal alignment of items, use the read-only property
``effectiveHorizontalItemAlignment``.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_example.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntopleft.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntop.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligncenter.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntopleft.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntop.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligncenter.png
.. |image7| image:: /media/sdk/apps/qml/QtQuick/Grid/images/qml-grid-no-spacing.png
.. |image8| image:: /media/sdk/apps/qml/QtQuick/Grid/images/qml-grid-spacing.png
.. |image9| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntopleft.png
.. |image10| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligntop.png
.. |image11| image:: /media/sdk/apps/qml/QtQuick/Grid/images/gridLayout_aligncenter.png

