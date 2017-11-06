.. _sdk_ubuntu_components_styles_listitemstyle:

Ubuntu.Components.Styles ListItemStyle
======================================

Style API for ListItem component.

+---------------------+---------------------------------------+
| Import Statement:   | import Ubuntu.Components.Styles 1.3   |
+---------------------+---------------------------------------+
| Since:              | Ubuntu.Components.Styles 1.2          |
+---------------------+---------------------------------------+

Properties
----------

-  `animatePanels </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#animatePanels-prop>`_  : bool
-  `dragPanel </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#dragPanel-prop>`_  : Item
-  `dropAnimation </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#dropAnimation-prop>`_  : PropertyAnimation
-  `flickable </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#flickable-prop>`_  : Flickable
-  `listItemIndex </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#listItemIndex-prop>`_  : in
-  `snapAnimation </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#snapAnimation-prop>`_  : Animation

Methods
-------

-  `rebound </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#rebound-method>`_ \ ()
-  `swipeEvent </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/#swipeEvent-method>`_ \ (SwipeEvent *event*)

Detailed Description
--------------------

Style API for the :ref:`ListItem <sdk_ubuntu_components_listitem>` component which provides actions, select and drag handler delegates, and snap animation via its properties. :ref:`ListItem <sdk_ubuntu_components_listitem>` treats the style differently compared to the other components, as it loads the style only when needed and not upon component creation.

Property Documentation
----------------------

.. _sdk_ubuntu_components_styles_listitemstyle_animatePanels:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| animatePanels : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property drives the different panel animations in the style. Panels should not be animated when created upon scrolling a view.

.. _sdk_ubuntu_components_styles_listitemstyle_dragPanel:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragPanel : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the item visualizing the drag handler. :ref:`ListItem <sdk_ubuntu_components_listitem>`'s dragging mechanism uses this property to detect the area the dragging can be initiated from. If not set, the :ref:`ListItem <sdk_ubuntu_components_listitem>` will assume the dragging can be initiated from the entire area of the :ref:`ListItem <sdk_ubuntu_components_listitem>`.

.. _sdk_ubuntu_components_styles_listitemstyle_dropAnimation:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dropAnimation : :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the animation executed on :ref:`ListItem <sdk_ubuntu_components_listitem>` dropping.

.. _sdk_ubuntu_components_styles_listitemstyle_flickable:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] flickable : :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the Flickable (or :ref:`ListView <sdk_qtquick_listview>`) holding the :ref:`ListItem <sdk_ubuntu_components_listitem>` styled.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

.. _sdk_ubuntu_components_styles_listitemstyle_listItemIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] listItemIndex : in                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property proxies the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s index context property to the style, which is either the index of the list item in a :ref:`ListView <sdk_qtquick_listview>` or the child index. Use this property rather than the ``index`` context property as that may not be defined in situations where the :ref:`ListItem <sdk_ubuntu_components_listitem>` is not a delegate of a :ref:`ListView <sdk_qtquick_listview>` or Repeater.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

.. _sdk_ubuntu_components_styles_listitemstyle_snapAnimation:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| snapAnimation : :ref:`Animation <sdk_qtquick_animation>`                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the behavior used in animating when snapped in or out.

Method Documentation
--------------------

.. _sdk_ubuntu_components_styles_listitemstyle_rebound:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rebound()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function called by the :ref:`ListItem <sdk_ubuntu_components_listitem>` when a rebounding action is requested from the style. This usually happens when the list item's content is swiped and there is a press event happening outside of the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s boundary or when the view embedding the :ref:`ListItem <sdk_ubuntu_components_listitem>` starts scrolling.

.. _sdk_ubuntu_components_styles_listitemstyle_swipeEvent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| swipeEvent(SwipeEvent *event*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function is called by the :ref:`ListItem <sdk_ubuntu_components_listitem>` when a swipe action is performed, i.e. when the swipe is started, the position is updated or the swipe ends. The **event** object provides information about the swipe status, positions and the updated :ref:`ListItem.contentItem <sdk_ubuntu_components_listitem_contentItem>` position. The style implementation can override the contentItem position by setting the ``event.content.x`` or ``event.content.y`` properties to the desired value.

The ``event`` object properties are:

-  ``status`` - enumeration of ``Started, Updated, Finished`` values representing the swipe event status
-  ``to`` - (x, y) coordinates of the current mouse/touch point - read-only
-  ``from`` - (x, y) coordinates of the previous mouse/touch point - read-only
-  ``content`` - (x, y) updated coordinates of the :ref:`ListItem.contentItem <sdk_ubuntu_components_listitem_contentItem>`, read-write

