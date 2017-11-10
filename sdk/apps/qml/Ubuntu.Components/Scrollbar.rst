.. _sdk_ubuntu_components_scrollbar:

Ubuntu.Components Scrollbar
===========================

The Scrollbar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView).

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`align <sdk_ubuntu_components_scrollbar_align>` : int
-  :ref:`flickableItem <sdk_ubuntu_components_scrollbar_flickableItem>` : Flickable

Detailed Description
--------------------

**NOTE**: the Scrollbar component was revamped for OTA9 and used for the implementation of :ref:`ScrollView <sdk_ubuntu_components_scrollview>`. Apps targeting system version OTA9 (or newer) should use :ref:`ScrollView <sdk_ubuntu_components_scrollview>` instead of Scrollbar, as it features convergent-ready features, such as (but not limited to) keyboard input handling.

The Scrollbar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. The scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).

The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.

Example:

.. code:: qml

    Item {
        ListView {
            id: list
            width: units.gu(37)
            height: units.gu(37)
            model: 30
            delegate: Rectangle {
                width: ListView.view.width
                height: units.gu(5)
                Text {
                    anchors.fill: parent
                    text: "Item " + modelData
                }
            }
        }
        Scrollbar {
            flickableItem: list
            align: Qt.AlignTrailing
        }
    }

Vertical Scrollbar and Flickable behaviour
------------------------------------------

Since Flickable's topMargin and bottomMargin are modified by Ubuntu components such as :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>` and :ref:`Header <sdk_ubuntu_components_header>` in their positioning logic, the Scrollbar component uses the value of those properties to its top and bottom anchors margins, by default. This is to prevent any overlap with :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>` or Header (see :ref:`Vertical Scrollbar and Header behaviour <sdk_ubuntu_components_scrollbar_vertical>` for more info about that). In case you need to specify custom Flickable content margins (note: we're talking about content margins, not anchors ones), you will also have to override the top and bottom anchors margins of the Scrollbar accordingly.

Vertical Scrollbar and Header behaviour
---------------------------------------

The thumb of the Scrollbar should not move or resize unexpectedly. It would be confusing, for instance, if it moved under the user's finger (or pointer) while he's dragging it.

Because the size and position of the thumb in a scrollbar is related to the size of the trough (or track) it slides in, it is important that the trough does not resize or move while the user is interacting with the component.

In the context of a :ref:`Page <sdk_ubuntu_components_page>` with a :ref:`Header <sdk_ubuntu_components_header>` that slides in and out dynamically when the user flicks the surface (see :ref:`Header::flickable <sdk_ubuntu_components_header_flickable>`), a vertical Scrollbar that is linked to the same flickable surface as the Header behaves as described below:

-  - when the Header is exposed, the Scrollbar component sits right below it, thus avoiding overlaps;
-  - when the Header hides due to the user either flicking the surface or dragging the thumb, the trough of the Scrollbar does not resize or move, thus avoiding unexpected changes in thumb's position or size. As a side effect, the space above the Scrollbar, previously occupied by Header, stays empty until the Header is exposed again.

| This behaviour is intended and makes for a less confusing User Experience.

Property Documentation
----------------------

.. _sdk_ubuntu_components_scrollbar_align:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| align : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property defines the alignment of the scrollbar to the :ref:`flickableItem <sdk_ubuntu_components_scrollbar_flickableItem>`. The implementation handles the alignment as follows:

-  Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts
-  Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts
-  Qt.AlignTop anchors to the top
-  Qt.AlignBottom anchors to the bottom

The default value is **Qt.AlignTrailing**.

.. _sdk_ubuntu_components_scrollbar_flickableItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickableItem : :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the flickable item (Flickable, :ref:`ListView <sdk_qtquick_listview>` or `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_ ) the Scrollbar is attached to.

