.. _sdk_qtquick_grid:

QtQuick Grid
============

Positions its children in grid formation

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_grid_add>` : Transition
-  :ref:`columnSpacing <sdk_qtquick_grid_columnSpacing>` : qreal
-  :ref:`columns <sdk_qtquick_grid_columns>` : int
-  :ref:`effectiveHorizontalItemAlignment <sdk_qtquick_grid_effectiveHorizontalItemAlignment>` : enumeration
-  :ref:`effectiveLayoutDirection <sdk_qtquick_grid_effectiveLayoutDirection>` : enumeration
-  :ref:`flow <sdk_qtquick_grid_flow>` : enumeration
-  :ref:`horizontalItemAlignment <sdk_qtquick_grid_horizontalItemAlignment>` : enumeration
-  :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` : enumeration
-  :ref:`move <sdk_qtquick_grid_move>` : Transition
-  :ref:`populate <sdk_qtquick_grid_populate>` : Transition
-  :ref:`rowSpacing <sdk_qtquick_grid_rowSpacing>` : qreal
-  :ref:`rows <sdk_qtquick_grid_rows>` : int
-  :ref:`spacing <sdk_qtquick_grid_spacing>` : qreal
-  :ref:`verticalItemAlignment <sdk_qtquick_grid_verticalItemAlignment>` : enumeration

Detailed Description
--------------------

Grid is a type that positions its child items in grid formation.

A Grid creates a grid of cells that is large enough to hold all of its child items, and places these items in the cells from left to right and top to bottom. Each item is positioned at the top-left corner of its cell with position (0, 0).

A Grid defaults to four columns, and creates as many rows as are necessary to fit all of its child items. The number of rows and columns can be constrained by setting the :ref:`rows <sdk_qtquick_grid_rows>` and :ref:`columns <sdk_qtquick_grid_columns>` properties.

For example, below is a Grid that contains five rectangles of various sizes:

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

If an item within a Grid is not :ref:`visible <sdk_qtquick_item_visible>`, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Grid automatically positions its children, a child item within a Grid should not set its :ref:`x <sdk_qtquick_item_x>` or :ref:`y <sdk_qtquick_item_y>` positions or anchor itself with any of the :ref:`anchor <sdk_qtquick_item_anchors>` properties.

For more information on using Grid and other related positioner-types, see `Item Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_ .

**See also** `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_ , `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , :ref:`Positioner <sdk_qtquick_positioner>`, GridLayout, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_grid_add:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner after the positioner has been created
-  Child items that change their :ref:`Item::visible <sdk_qtquick_item_visible>` property from false to true, and thus are now visible

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the :ref:`populate <sdk_qtquick_grid_populate>` transition is applied instead.

**See also** :ref:`populate <sdk_qtquick_grid_populate>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_grid_columnSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| columnSpacing : qreal                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the spacing in pixels between columns.

If this property is not set, then spacing is used for the column spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also** :ref:`rowSpacing <sdk_qtquick_grid_rowSpacing>`.

.. _sdk_qtquick_grid_columns:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| columns : int                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of columns in the grid. The default number of columns is 4.

If the grid does not have enough items to fill the specified number of columns, some columns will be of zero width.

.. _sdk_qtquick_grid_effectiveHorizontalItemAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveHorizontalItemAlignment : enumeration                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` of the Grid, for example when having a :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are, ``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``, ``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
|                                                                             |                                                                     |                                                                     |                                                                                             |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Horizontal alignment                                                        | AlignLeft                                                                   | AlignHCenter                                                                | AlignHCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Vertical alignment                                                          | AlignTop                                                                    | AlignTop                                                                    | AlignVCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+

When mirroring the layout using either the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` or by setting the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>`, the horizontal alignment of items will be mirrored as well. However, the property ``horizontalItemAlignment`` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property ``effectiveHorizontalItemAlignment``.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_grid_effectiveLayoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveLayoutDirection : enumeration                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the effective layout direction of the grid.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` will remain unchanged.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_grid_flow:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flow : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the flow of the layout.

Possible values are:

-  Grid.LeftToRight (default) - Items are positioned next to each other in the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>`, then wrapped to the next line.
-  Grid.TopToBottom - Items are positioned next to each other from top to bottom, then wrapped to the next column.

.. _sdk_qtquick_grid_horizontalItemAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalItemAlignment : enumeration                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` of the Grid, for example when having a :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are, ``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``, ``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
|                                                                             |                                                                     |                                                                     |                                                                                             |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Horizontal alignment                                                        | AlignLeft                                                                   | AlignHCenter                                                                | AlignHCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Vertical alignment                                                          | AlignTop                                                                    | AlignTop                                                                    | AlignVCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+

When mirroring the layout using either the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` or by setting the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>`, the horizontal alignment of items will be mirrored as well. However, the property ``horizontalItemAlignment`` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property ``effectiveHorizontalItemAlignment``.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_grid_layoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layoutDirection : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the layout direction of the layout.

Possible values are:

-  Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the :ref:`Grid::flow <sdk_qtquick_grid_flow>` property.
-  Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the :ref:`Grid::flow <sdk_qtquick_grid_flow>` property.

**See also** :ref:`Flow::layoutDirection <sdk_qtquick_flow_layoutDirection>`, :ref:`Row::layoutDirection <sdk_qtquick_row_layoutDirection>`, and `Qt Quick Examples - Right to Left </sdk/apps/qml/QtQuick/righttoleft/>`_ .

.. _sdk_qtquick_grid_move:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being moved. Note, however, that for this move transition, the :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetIndexes and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From `QtQuick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_  onwards, positioners apply the :ref:`populate <sdk_qtquick_grid_populate>` transition to these items instead.

**See also** :ref:`add <sdk_qtquick_grid_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_grid_populate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| populate : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**See also** :ref:`add <sdk_qtquick_grid_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_grid_rowSpacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rowSpacing : qreal                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the spacing in pixels between rows.

If this property is not set, then spacing is used for the row spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also** :ref:`columnSpacing <sdk_qtquick_grid_columnSpacing>`.

.. _sdk_qtquick_grid_rows:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rows : int                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of rows in the grid.

If the grid does not have enough items to fill the specified number of rows, some rows will be of zero width.

.. _sdk_qtquick_grid_spacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacing : qreal                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The spacing is the amount in pixels left empty between adjacent items. The amount of spacing applied will be the same in the horizontal and vertical directions. The default spacing is 0.

The below example places a Grid containing a red, a blue and a green rectangle on a gray background. The area the grid positioner occupies is colored white. The positioner on the left has the no spacing (the default), and the positioner on the right has a spacing of 6.

**See also** :ref:`rows <sdk_qtquick_grid_rows>` and :ref:`columns <sdk_qtquick_grid_columns>`.

.. _sdk_qtquick_grid_verticalItemAlignment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalItemAlignment : enumeration                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` of the Grid, for example when having a :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>` from LeftToRight, the items will be aligned on the left.

The valid values for ``horizontalItemAlignment`` are, ``Grid.AlignLeft``, ``Grid.AlignRight`` and ``Grid.AlignHCenter``.

The valid values for ``verticalItemAlignment`` are ``Grid.AlignTop``, ``Grid.AlignBottom`` and ``Grid.AlignVCenter``.

The below images show three examples of how to align items.

+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
|                                                                             |                                                                     |                                                                    |                                                                                              |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Horizontal alignment                                                        | AlignLeft                                                                   | AlignHCenter                                                                | AlignHCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Vertical alignment                                                          | AlignTop                                                                    | AlignTop                                                                    | AlignVCenter                                                                |
+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------------------------------------------------------------------------+

When mirroring the layout using either the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` or by setting the :ref:`layoutDirection <sdk_qtquick_grid_layoutDirection>`, the horizontal alignment of items will be mirrored as well. However, the property ``horizontalItemAlignment`` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property ``effectiveHorizontalItemAlignment``.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

