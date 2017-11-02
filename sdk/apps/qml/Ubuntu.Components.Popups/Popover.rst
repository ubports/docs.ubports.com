.. _sdk_ubuntu_components_popups_popover:
Ubuntu.Components.Popups Popover
================================

A popover allows an application to present additional content without
changing the view. A popover has a fixed width and automatic height,
depending on is contents. It can be closed by clicking anywhere outside
of the popover area.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Popups 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PopupBase </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/Popups.PopupBase/>`_         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ActionSelectionPopover </sdk/apps/q |
|                                      | ml/Ubuntu.Components/Popups.ActionSe |
|                                      | lectionPopover/>`_ .                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `autoClose </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_autoClose-prop>`_ 
   : bool
-  `caller </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_caller-prop>`_ 
   : Item
-  `callerMargin </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_callerMargin-prop>`_ 
   : real
-  `container </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_container-prop>`_ 
   : list<Object>
-  `contentHeight </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_contentHeight-prop>`_ 
   : real
-  `contentWidth </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_contentWidth-prop>`_ 
   : real
-  `edgeMargins </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_edgeMargins-prop>`_ 
   : real
-  `foregroundStyle </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_foregroundStyle-prop>`_ 
   : Component
-  `pointerTarget </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_pointerTarget-prop>`_ 
   : Item
-  `style </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_style-prop>`_ 
   : Component
-  `styleName </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_styleName-prop>`_ 
   : string
-  `theme </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_theme-prop>`_ 
   : ThemeSettings

Methods
-------

-  `hide </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_hide-method>`_ \ ()
-  `show </sdk/apps/qml/Ubuntu.Components/Popups.Popover/_show-method>`_ \ ()

Detailed Description
--------------------

`See also the Design Guidelines on
Popovers <https://design.ubuntu.com/apps/building-blocks/dialog#popover>`_ .

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    import Ubuntu.Components.ListItems 1.3 as Old_ListItem
    Rectangle {
        color: theme.palette.normal.background
        width: units.gu(80)
        height: units.gu(80)
        Component {
            id: popoverComponent
            Popover {
                id: popover
                Column {
                    id: containerLayout
                    anchors {
                        left: parent.left
                        top: parent.top
                        right: parent.right
                    }
                    // there is no equivalent yet to ListItem.Header
                    Old_ListItem.Header { text: "Standard list items" }
                    ListItem {
                        // shall specify the height when Using ListItemLayout inside ListItem
                        height: somethingLayout.height + (divider.visible ? divider.height : 0)
                        ListItemLayout {
                            id: somethingLayout
                            title.text: "Do somethings"
                        }
                        onClicked: console.log("clicked on ListItem with onClicked implemented")
                    }
                    ListItem {
                        // shall specify the height when Using ListItemLayout inside ListItem
                        height: somethingElseLayout.height + (divider.visible ? divider.height : 0)
                        ListItemLayout {
                            id: somethingElseLayout
                            title.text: "Do somethings"
                            subtitle.text: "else"
                        }
                    }
                    ListItem {
                        // shall specify the height when Using ListItemLayout inside ListItem
                        height: closeBtn.height + (divider.visible ? divider.height : 0)
                        Button {
                            id: closeBtn
                            text: "Close button"
                            onClicked: PopupUtils.close(popover);
                        }
                    }
                }
            }
        }
        Button {
            id: popoverButton
            anchors.centerIn: parent
            text: "open"
            onClicked: PopupUtils.open(popoverComponent, popoverButton)
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_popups_popover_autoClose-prop:

+--------------------------------------------------------------------------+
|        \ autoClose : bool                                                |
+--------------------------------------------------------------------------+

The property drives the automatic closing of the Popover when user taps
on the dismissArea. The default behavior is to close the Popover,
therefore set to true.

When set to false, closing the Popover is the responsibility of the
caller. Also, the mouse and touch events are not blocked from the
dismissArea.

| 

.. _sdk_ubuntu_components_popups_popover_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ caller : `Item <sdk_qtquick_item>`                         |
+--------------------------------------------------------------------------+

The Item such as a :ref:`Button <sdk_ubuntu_components_button>` that the
user interacted with to open the Dialog. This property will be used for
the automatic positioning of the Dialog next to the caller, if possible.

| 

.. _sdk_ubuntu_components_popups_popover_callerMargin-prop:

+--------------------------------------------------------------------------+
|        \ callerMargin : real                                             |
+--------------------------------------------------------------------------+

The property holds the margin from the popover's caller. The property is
themed.

| 

.. _sdk_ubuntu_components_popups_popover_container-prop:

+--------------------------------------------------------------------------+
|        \ [default] container : list<Object>                              |
+--------------------------------------------------------------------------+

Content will be put inside the foreround of the Popover.

| 

.. _sdk_ubuntu_components_popups_popover_contentHeight-prop:

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

Use this property to override the default content height.

| 

.. _sdk_ubuntu_components_popups_popover_contentWidth-prop:

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

Use this property to override the default content width.

| 

.. _sdk_ubuntu_components_popups_popover_edgeMargins-prop:

+--------------------------------------------------------------------------+
|        \ edgeMargins : real                                              |
+--------------------------------------------------------------------------+

The property holds the margins from the popover's dismissArea. The
property is themed.

| 

.. _sdk_ubuntu_components_popups_popover_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ foregroundStyle : `Component <sdk_qtqml_component>`        |
+--------------------------------------------------------------------------+

Exposes the style property of the
:ref:`StyledItem <sdk_ubuntu_components_styleditem>` contained in the
Popover. Refer to :ref:`StyledItem <sdk_ubuntu_components_styleditem>` how
to use it.

| 

.. _sdk_ubuntu_components_popups_popover_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ pointerTarget : `Item <sdk_qtquick_item>`                  |
+--------------------------------------------------------------------------+

The property holds the item to which the pointer should be anchored to.
This can be same as the caller or any child of the caller. By default
the property is set to caller.

| 

.. _sdk_ubuntu_components_popups_popover_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ style : `Component <sdk_qtqml_component>`                  |
+--------------------------------------------------------------------------+

The style of the foreground of the Popover. This property takes
precedence over
`styleName </sdk/apps/qml/Ubuntu.Components/Popups.Popover/#styleName-prop>`_ 

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
:ref:`StyledItem::style <sdk_ubuntu_components_styleditem#style-prop>`.

| 

.. _sdk_ubuntu_components_popups_popover_styleName-prop:

+--------------------------------------------------------------------------+
|        \ styleName : string                                              |
+--------------------------------------------------------------------------+

The style name of the foreground of the Popover.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
:ref:`StyledItem::styleName <sdk_ubuntu_components_styleditem#styleName-prop>`.

| 

.. _sdk_ubuntu_components_popups_popover_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ theme : `ThemeSettings <sdk_ubuntu_components_themesettings>` |
+--------------------------------------------------------------------------+

Configure the theme of the Popover foreground and all its subcomponents.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
:ref:`StyledItem::theme <sdk_ubuntu_components_styleditem#theme-prop>` and
`Dialog::theme </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#theme-prop>`_ .

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_popups_popover_hide-method:

+--------------------------------------------------------------------------+
|        \ hide()                                                          |
+--------------------------------------------------------------------------+

Hide the popover. Only use this function if you handle memory
management. Otherwise use PopupUtils.close() to do it automatically.

| 

.. _sdk_ubuntu_components_popups_popover_show-method:

+--------------------------------------------------------------------------+
|        \ show()                                                          |
+--------------------------------------------------------------------------+

Make the popover visible. Reparent to the background area object first
if needed. Only use this function if you handle memory management.
Otherwise use PopupUtils.open() to do it automatically.

| 
