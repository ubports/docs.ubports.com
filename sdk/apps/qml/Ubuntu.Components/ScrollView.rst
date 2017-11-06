.. _sdk_ubuntu_components_scrollview:

Ubuntu.Components ScrollView
============================

ScrollView is a scrollable view that features scrollbars and scrolling via keyboard keys.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`contentItem <sdk_ubuntu_components_scrollview_contentItem>` : Item
-  :ref:`flickableItem <sdk_ubuntu_components_scrollview_flickableItem>` : Item
-  :ref:`horizontalScrollbar <sdk_ubuntu_components_scrollview_horizontalScrollbar>` : Scrollbar
-  :ref:`verticalScrollbar <sdk_ubuntu_components_scrollview_verticalScrollbar>` : Scrollbar
-  :ref:`viewport <sdk_ubuntu_components_scrollview_viewport>` : Item

Detailed Description
--------------------

:ref:`ScrollView <sdk_ubuntu_components_scrollview>` is the recommended component to use in the implementation of scrollable content. It features scrollbars and handles keyboard input. Old applications that implemented scrollable views directly using the :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>` component should migrate to :ref:`ScrollView <sdk_ubuntu_components_scrollview>`, to ensure the UX is ready for convergent devices and is consistent with the rest of the platform.

:ref:`ScrollView <sdk_ubuntu_components_scrollview>` wraps :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>`\ (s) in a view, and provides additional features such as:

-  - Keyboard navigation and focus handling, for a complete convergent experience.
-  - Automatic position handling of vertical and horizontal scrollbars, preventing them from overlapping one another when both on screen.

Adding scrollbars and keyboard input handling to a QML item is as simple as wrapping that item in a :ref:`ScrollView <sdk_ubuntu_components_scrollview>`, as shown in the following example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ScrollView {
        width: units.gu(40)
        height: units.gu(30)
        Rectangle {
            width: units.gu(140)
            height: units.gu(40)
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightsteelblue" }
                GradientStop { position: 1.0; color: "blue" }
            }
        }
    }

NOTE: the items that are wrapped in the :ref:`ScrollView <sdk_ubuntu_components_scrollview>` are reparanted to :ref:`viewport <sdk_ubuntu_components_scrollview_viewport>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_scrollview_contentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] contentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The contentItem of the :ref:`ScrollView <sdk_ubuntu_components_scrollview>`. This is set by the user. Note that the definition of contentItem is somewhat different to that of a Flickable, where the contentItem is implicitly created.

.. _sdk_ubuntu_components_scrollview_flickableItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] flickableItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The flickableItem of the :ref:`ScrollView <sdk_ubuntu_components_scrollview>`. If the :ref:`contentItem <sdk_ubuntu_components_scrollview_contentItem>` provided to the :ref:`ScrollView <sdk_ubuntu_components_scrollview>` is a Flickable, that will be the flickableItem. Otherwise :ref:`ScrollView <sdk_ubuntu_components_scrollview>` will create a Flickable which will hold the items provided as children.

.. _sdk_ubuntu_components_scrollview_horizontalScrollbar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalScrollbar : :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>`                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the horizontal scrollbar used in the :ref:`ScrollView <sdk_ubuntu_components_scrollview>`. It provides access to the scrollbar thus making it possible to change its properties or completely replace it with a custom :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>` object.

This property defaults to an instance of :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>`.

**NOTE**: some :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>` properties are already handled by :ref:`ScrollView <sdk_ubuntu_components_scrollview>`, and their value should hence not be overridden. These properties are:

-  anchors margins, such as anchors.topMargin etc.
-  the parent Item
-  :ref:`Scrollbar::flickableItem <sdk_ubuntu_components_scrollbar_flickableItem>`

.. _sdk_ubuntu_components_scrollview_verticalScrollbar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalScrollbar : :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>`                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the vertical scrollbar used in the :ref:`ScrollView <sdk_ubuntu_components_scrollview>`. It provides access to the scrollbar thus making it possible to change its properties or completely replace it with a custom :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>` object.

This property defaults to an instance of :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>`.

**NOTE**: some :ref:`Scrollbar <sdk_ubuntu_components_scrollbar>` properties are already handled by :ref:`ScrollView <sdk_ubuntu_components_scrollview>`, and their value should hence not be overridden. These properties are:

-  anchors margins, such as anchors.topMargin etc.
-  the parent Item
-  :ref:`Scrollbar::flickableItem <sdk_ubuntu_components_scrollbar_flickableItem>`

.. _sdk_ubuntu_components_scrollview_viewport:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] viewport : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the viewport Item. The children of the :ref:`ScrollView <sdk_ubuntu_components_scrollview>` element are reparented to this item to make sure the scrollbars are correctly positioned and the items are clipped at their boundaries.

