.. _sdk_qtquick_row:

QtQuick Row
===========

Positions its children in a row

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_row_add>` : Transition
-  :ref:`effectiveLayoutDirection <sdk_qtquick_row_effectiveLayoutDirection>` : enumeration
-  :ref:`layoutDirection <sdk_qtquick_row_layoutDirection>` : enumeration
-  :ref:`move <sdk_qtquick_row_move>` : Transition
-  :ref:`populate <sdk_qtquick_row_populate>` : Transition
-  :ref:`spacing <sdk_qtquick_row_spacing>` : real

Detailed Description
--------------------

Row is a type that positions its child items along a single row. It can be used as a convenient way to horizontally position a series of items without using `anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`_ .

Below is a Row that contains three rectangles of various sizes:

.. code:: qml

    import QtQuick 2.0
    Row {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }

The Row automatically positions these items in a horizontal formation, like this:

If an item within a Row is not :ref:`visible <sdk_qtquick_item_visible>`, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the row. Also, since a Row automatically positions its children horizontally, a child item within a Row should not set its :ref:`x <sdk_qtquick_item_x>` position or horizontally anchor itself using the :ref:`left <sdk_qtquick_item_anchors.left>`, :ref:`right <sdk_qtquick_item_anchors.right>`, :ref:`anchors.horizontalCenter <sdk_qtquick_item_anchors_horizontalCenter>`, :ref:`fill <sdk_qtquick_item_anchors.fill>` or :ref:`centerIn <sdk_qtquick_item_anchors.centerIn>` anchors. If you need to perform these actions, consider positioning the items without the use of a Row.

Note that items in a Row can use the :ref:`Positioner <sdk_qtquick_positioner>` attached property to access more information about its position within the Row.

For more information on using Row and other related positioner-types, see `Item Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_ .

**See also** `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ , `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_ , :ref:`Positioner <sdk_qtquick_positioner>`, RowLayout, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_row_add:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner after the positioner has been created
-  Child items that change their :ref:`Item::visible <sdk_qtquick_item_visible>` property from false to true, and thus are now visible

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the :ref:`populate <sdk_qtquick_row_populate>` transition is applied instead.

**See also** :ref:`populate <sdk_qtquick_row_populate>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_row_effectiveLayoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveLayoutDirection : enumeration                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the effective layout direction of the row.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` for locale layouts, the visual layout direction of the row positioner will be mirrored. However, the property :ref:`layoutDirection <sdk_qtquick_row_layoutDirection>` will remain unchanged.

**See also** :ref:`Row::layoutDirection <sdk_qtquick_row_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_row_layoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layoutDirection : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the layoutDirection of the row.

Possible values:

-  Qt.LeftToRight (default) - Items are laid out from left to right. If the width of the row is explicitly set, the left anchor remains to the left of the row.
-  Qt.RightToLeft - Items are laid out from right to left. If the width of the row is explicitly set, the right anchor remains to the right of the row.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>`, :ref:`Flow::layoutDirection <sdk_qtquick_flow_layoutDirection>`, and `Qt Quick Examples - Right to Left </sdk/apps/qml/QtQuick/righttoleft/>`_ .

.. _sdk_qtquick_row_move:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being moved. Note, however, that for this move transition, the :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetIndexes and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From `QtQuick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_  onwards, positioners apply the :ref:`populate <sdk_qtquick_row_populate>` transition to these items instead.

**See also** :ref:`add <sdk_qtquick_row_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_row_populate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| populate : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**See also** :ref:`add <sdk_qtquick_row_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_row_spacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacing : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.

**See also** :ref:`Grid::spacing <sdk_qtquick_grid_spacing>`.

