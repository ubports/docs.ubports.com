A popover allows an application to present additional content without
changing the view. A popover has a fixed width and automatic height,
depending on is contents. It can be closed by clicking anywhere outside
of the popover area.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Popups 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `PopupBase </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/Popups.PopupBase/>`__        |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ActionSelectionPopover </sdk/apps/q |
|                                      | ml/Ubuntu.Components/Popups.ActionSe |
|                                      | lectionPopover/>`__.                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`autoClose </sdk/apps/qml/Ubuntu.Components/Popups.Popover#autoClose-prop>`__****
   : bool
-  ****`caller </sdk/apps/qml/Ubuntu.Components/Popups.Popover#caller-prop>`__****
   : Item
-  ****`callerMargin </sdk/apps/qml/Ubuntu.Components/Popups.Popover#callerMargin-prop>`__****
   : real
-  ****`container </sdk/apps/qml/Ubuntu.Components/Popups.Popover#container-prop>`__****
   : list<Object>
-  ****`contentHeight </sdk/apps/qml/Ubuntu.Components/Popups.Popover#contentHeight-prop>`__****
   : real
-  ****`contentWidth </sdk/apps/qml/Ubuntu.Components/Popups.Popover#contentWidth-prop>`__****
   : real
-  ****`edgeMargins </sdk/apps/qml/Ubuntu.Components/Popups.Popover#edgeMargins-prop>`__****
   : real
-  ****`foregroundStyle </sdk/apps/qml/Ubuntu.Components/Popups.Popover#foregroundStyle-prop>`__****
   : Component
-  ****`pointerTarget </sdk/apps/qml/Ubuntu.Components/Popups.Popover#pointerTarget-prop>`__****
   : Item
-  ****`style </sdk/apps/qml/Ubuntu.Components/Popups.Popover#style-prop>`__****
   : Component
-  ****`styleName </sdk/apps/qml/Ubuntu.Components/Popups.Popover#styleName-prop>`__****
   : string
-  ****`theme </sdk/apps/qml/Ubuntu.Components/Popups.Popover#theme-prop>`__****
   : ThemeSettings

Methods
-------

-  ****`hide </sdk/apps/qml/Ubuntu.Components/Popups.Popover#hide-method>`__****\ ()
-  ****`show </sdk/apps/qml/Ubuntu.Components/Popups.Popover#show-method>`__****\ ()

Detailed Description
--------------------

`See also the Design Guidelines on
Popovers <https://design.ubuntu.com/apps/building-blocks/dialog#popover>`__.

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

+--------------------------------------------------------------------------+
|        \ caller : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

The Item such as a `Button </sdk/apps/qml/Ubuntu.Components/Button/>`__
that the user interacted with to open the Dialog. This property will be
used for the automatic positioning of the Dialog next to the caller, if
possible.

| 

+--------------------------------------------------------------------------+
|        \ callerMargin : real                                             |
+--------------------------------------------------------------------------+

The property holds the margin from the popover's caller. The property is
themed.

| 

+--------------------------------------------------------------------------+
|        \ [default] container : list<Object>                              |
+--------------------------------------------------------------------------+

Content will be put inside the foreround of the Popover.

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

Use this property to override the default content height.

| 

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

Use this property to override the default content width.

| 

+--------------------------------------------------------------------------+
|        \ edgeMargins : real                                              |
+--------------------------------------------------------------------------+

The property holds the margins from the popover's dismissArea. The
property is themed.

| 

+--------------------------------------------------------------------------+
|        \ foregroundStyle :                                               |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

Exposes the style property of the
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ contained
in the Popover. Refer to
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ how to use
it.

| 

+--------------------------------------------------------------------------+
|        \ pointerTarget : `Item </sdk/apps/qml/QtQuick/Item/>`__          |
+--------------------------------------------------------------------------+

The property holds the item to which the pointer should be anchored to.
This can be same as the caller or any child of the caller. By default
the property is set to caller.

| 

+--------------------------------------------------------------------------+
|        \ style : `Component </sdk/apps/qml/QtQml/Component/>`__          |
+--------------------------------------------------------------------------+

The style of the foreground of the Popover. This property takes
precedence over
`styleName </sdk/apps/qml/Ubuntu.Components/Popups.Popover#styleName-prop>`__

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`StyledItem::style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ styleName : string                                              |
+--------------------------------------------------------------------------+

The style name of the foreground of the Popover.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`StyledItem::styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ theme :                                                         |
| `ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__       |
+--------------------------------------------------------------------------+

Configure the theme of the Popover foreground and all its subcomponents.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`StyledItem::theme </sdk/apps/qml/Ubuntu.Components/StyledItem#theme-prop>`__
and
`Dialog::theme </sdk/apps/qml/Ubuntu.Components/Popups.Dialog#theme-prop>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ hide()                                                          |
+--------------------------------------------------------------------------+

Hide the popover. Only use this function if you handle memory
management. Otherwise use PopupUtils.close() to do it automatically.

| 

+--------------------------------------------------------------------------+
|        \ show()                                                          |
+--------------------------------------------------------------------------+

Make the popover visible. Reparent to the background area object first
if needed. Only use this function if you handle memory management.
Otherwise use PopupUtils.open() to do it automatically.

| 
