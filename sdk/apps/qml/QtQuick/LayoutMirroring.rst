.. _sdk_qtquick_layoutmirroring:

QtQuick LayoutMirroring
=======================

Property used to mirror layout behavior

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`childrenInherit <sdk_qtquick_layoutmirroring_childrenInherit>` : bool
-  :ref:`enabled <sdk_qtquick_layoutmirroring_enabled>` : bool

Detailed Description
--------------------

The :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>` attached property is used to horizontally mirror `Item anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/#anchor-layout>`_ , `positioner </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_  types (such as `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  and `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ ) and views (such as `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  and horizontal :ref:`ListView <sdk_qtquick_listview>`). Mirroring is a visual change: left anchors become right anchors, and positioner types like `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_  and `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  reverse the horizontal layout of child items.

Mirroring is enabled for an item by setting the :ref:`enabled <sdk_qtquick_layoutmirroring_enabled>` property to true. By default, this only affects the item itself; setting the :ref:`childrenInherit <sdk_qtquick_layoutmirroring_childrenInherit>` property to true propagates the mirroring behavior to all child items as well. If the ``LayoutMirroring`` attached property has not been defined for an item, mirroring is not enabled.

The following example shows mirroring in action. The `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  below is specified as being anchored to the left of its parent. However, since mirroring has been enabled, the anchor is horizontally reversed and it is now anchored to the right. Also, since items in a `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  are positioned from left to right by default, they are now positioned from right to left instead, as demonstrated by the numbering and opacity of the items:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        LayoutMirroring.enabled: true
        LayoutMirroring.childrenInherit: true
        width: 300; height: 50
        color: "yellow"
        border.width: 1
        Row {
            anchors { left: parent.left; margins: 5 }
            y: 5; spacing: 5
            Repeater {
                model: 5
                Rectangle {
                    color: "red"
                    opacity: (5 - index) / 5
                    width: 40; height: 40
                    Text {
                        text: index + 1
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }

Layout mirroring is useful when it is necessary to support both left-to-right and right-to-left layout versions of an application to target different language areas. The :ref:`childrenInherit <sdk_qtquick_layoutmirroring_childrenInherit>` property allows layout mirroring to be applied without manually setting layout configurations for every item in an application. Keep in mind, however, that mirroring does not affect any positioning that is defined by the :ref:`Item <sdk_qtquick_item>` :ref:`x <sdk_qtquick_item_x>` coordinate value, so even with mirroring enabled, it will often be necessary to apply some layout fixes to support the desired layout direction. Also, it may be necessary to disable the mirroring of individual child items (by setting :ref:`LayoutMirroring.enabled <sdk_qtquick_layoutmirroring_enabled>` to false for such items) if mirroring is not the desired behavior, or if the child item already implements mirroring in some custom way.

See `Right-to-left User Interfaces </sdk/apps/qml/QtQuick/qtquick-positioning-righttoleft/>`_  for further details on using ``LayoutMirroring`` and other related features to implement right-to-left support for an application.

Property Documentation
----------------------

.. _sdk_qtquick_layoutmirroring_childrenInherit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childrenInherit : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the :ref:`LayoutMirroring.enabled <sdk_qtquick_layoutmirroring_enabled>` value for this item is inherited by its children.

The default value is false.

.. _sdk_qtquick_layoutmirroring_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item's layout is mirrored horizontally. Setting this to true horizontally reverses `anchor </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/#anchor-layout>`_  settings such that left anchors become right, and right anchors become left. For `positioner </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_  types (such as `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  and `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ ) and view types (such as `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  and :ref:`ListView <sdk_qtquick_listview>`) this also mirrors the horizontal layout direction of the item.

The default value is false.

