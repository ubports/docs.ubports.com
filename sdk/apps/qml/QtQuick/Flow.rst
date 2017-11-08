.. _sdk_qtquick_flow:

QtQuick Flow
============

Positions its children side by side, wrapping as necessary

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_flow_add>` : Transition
-  :ref:`effectiveLayoutDirection <sdk_qtquick_flow_effectiveLayoutDirection>` : enumeration
-  :ref:`flow <sdk_qtquick_flow_flow>` : enumeration
-  :ref:`layoutDirection <sdk_qtquick_flow_layoutDirection>` : enumeration
-  :ref:`move <sdk_qtquick_flow_move>` : Transition
-  :ref:`populate <sdk_qtquick_flow_populate>` : Transition
-  :ref:`spacing <sdk_qtquick_flow_spacing>` : real

Detailed Description
--------------------

The Flow item positions its child items like words on a page, wrapping them to create rows or columns of items.

Below is a Flow that contains various `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  items:

.. code:: qml

        Flow {
            anchors.fill: parent
            anchors.margins: 4
            spacing: 10
            Text { text: "Text"; font.pixelSize: 40 }
            Text { text: "items"; font.pixelSize: 40 }
            Text { text: "flowing"; font.pixelSize: 40 }
            Text { text: "inside"; font.pixelSize: 40 }
            Text { text: "a"; font.pixelSize: 40 }
            Text { text: "Flow"; font.pixelSize: 40 }
            Text { text: "item"; font.pixelSize: 40 }
        }

The Flow item automatically positions the child `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  items side by side, wrapping as necessary:

If an item within a Flow is not :ref:`visible <sdk_qtquick_item_visible>`, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the Flow. Also, since a Flow automatically positions its children, a child item within a Flow should not set its :ref:`x <sdk_qtquick_item_x>` or :ref:`y <sdk_qtquick_item_y>` positions or anchor itself with any of the :ref:`anchor <sdk_qtquick_item_anchors>` properties.

For more information on using Flow and other related positioner-types, see `Item Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_ .

**See also** `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ , :ref:`Positioner <sdk_qtquick_positioner>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_flow_add:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner after the positioner has been created
-  Child items that change their :ref:`Item::visible <sdk_qtquick_item_visible>` property from false to true, and thus are now visible

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the :ref:`populate <sdk_qtquick_flow_populate>` transition is applied instead.

**See also** :ref:`populate <sdk_qtquick_flow_populate>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_flow_effectiveLayoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveLayoutDirection : enumeration                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the effective layout direction of the flow.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property :ref:`layoutDirection <sdk_qtquick_flow_layoutDirection>` will remain unchanged.

**See also** :ref:`Flow::layoutDirection <sdk_qtquick_flow_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_flow_flow:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flow : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the flow of the layout.

Possible values are:

-  Flow.LeftToRight (default) - Items are positioned next to to each other according to the :ref:`layoutDirection <sdk_qtquick_flow_layoutDirection>` until the width of the Flow is exceeded, then wrapped to the next line.
-  Flow.TopToBottom - Items are positioned next to each other from top to bottom until the height of the Flow is exceeded, then wrapped to the next column.

.. _sdk_qtquick_flow_layoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layoutDirection : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the layout direction of the layout.

Possible values are:

-  Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the :ref:`Flow::flow <sdk_qtquick_flow_flow>` property.
-  Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the :ref:`Flow::flow <sdk_qtquick_flow_flow>` property.

**See also** :ref:`Grid::layoutDirection <sdk_qtquick_grid_layoutDirection>`, :ref:`Row::layoutDirection <sdk_qtquick_row_layoutDirection>`, and `Qt Quick Examples - Right to Left </sdk/apps/qml/QtQuick/righttoleft/>`_ .

.. _sdk_qtquick_flow_move:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being moved. Note, however, that for this move transition, the :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetIndexes and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From `QtQuick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_  onwards, positioners apply the :ref:`populate <sdk_qtquick_flow_populate>` transition to these items instead.

**See also** :ref:`add <sdk_qtquick_flow_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_flow_populate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| populate : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**See also** :ref:`add <sdk_qtquick_flow_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_flow_spacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacing : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

spacing is the amount in pixels left empty between each adjacent item, and defaults to 0.

**See also** :ref:`Grid::spacing <sdk_qtquick_grid_spacing>`.

