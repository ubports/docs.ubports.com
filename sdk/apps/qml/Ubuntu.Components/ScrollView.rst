ScrollView is a scrollable view that features scrollbars and scrolling
via keyboard keys.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`contentItem </sdk/apps/qml/Ubuntu.Components/ScrollView#contentItem-prop>`__****
   : Item
-  ****`flickableItem </sdk/apps/qml/Ubuntu.Components/ScrollView#flickableItem-prop>`__****
   : Item
-  ****`horizontalScrollbar </sdk/apps/qml/Ubuntu.Components/ScrollView#horizontalScrollbar-prop>`__****
   : Scrollbar
-  ****`verticalScrollbar </sdk/apps/qml/Ubuntu.Components/ScrollView#verticalScrollbar-prop>`__****
   : Scrollbar
-  ****`viewport </sdk/apps/qml/Ubuntu.Components/ScrollView#viewport-prop>`__****
   : Item

Detailed Description
--------------------

`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ is the
recommended component to use in the implementation of scrollable
content. It features scrollbars and handles keyboard input. Old
applications that implemented scrollable views directly using the
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__ component
should migrate to
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__, to ensure
the UX is ready for convergent devices and is consistent with the rest
of the platform.

`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ wraps
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__\ (s) in a
view, and provides additional features such as:

-  - Keyboard navigation and focus handling, for a complete convergent
   experience.
-  - Automatic position handling of vertical and horizontal scrollbars,
   preventing them from overlapping one another when both on screen.

Adding scrollbars and keyboard input handling to a QML item is as simple
as wrapping that item in a
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__, as shown
in the following example:

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

NOTE: the items that are wrapped in the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ are
reparanted to
`viewport </sdk/apps/qml/Ubuntu.Components/ScrollView#viewport-prop>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] contentItem : `Item </sdk/apps/qml/QtQuick/Item/>`__  |
+--------------------------------------------------------------------------+

The contentItem of the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__. This is
set by the user. Note that the definition of contentItem is somewhat
different to that of a Flickable, where the contentItem is implicitly
created.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] flickableItem :                                     |
| `Item </sdk/apps/qml/QtQuick/Item/>`__                                   |
+--------------------------------------------------------------------------+

The flickableItem of the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__. If the
`contentItem </sdk/apps/qml/Ubuntu.Components/ScrollView#contentItem-prop>`__
provided to the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ is a
Flickable, that will be the flickableItem. Otherwise
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ will create
a Flickable which will hold the items provided as children.

| 

+--------------------------------------------------------------------------+
|        \ horizontalScrollbar :                                           |
| `Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__               |
+--------------------------------------------------------------------------+

This property holds the horizontal scrollbar used in the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__. It
provides access to the scrollbar thus making it possible to change its
properties or completely replace it with a custom
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__ object.

This property defaults to an instance of
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__.

**NOTE**: some
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__ properties
are already handled by
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__, and their
value should hence not be overridden. These properties are:

-  anchors margins, such as anchors.topMargin etc.
-  the parent Item
-  `Scrollbar::flickableItem </sdk/apps/qml/Ubuntu.Components/Scrollbar#flickableItem-prop>`__

| 

+--------------------------------------------------------------------------+
|        \ verticalScrollbar :                                             |
| `Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__               |
+--------------------------------------------------------------------------+

This property holds the vertical scrollbar used in the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__. It
provides access to the scrollbar thus making it possible to change its
properties or completely replace it with a custom
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__ object.

This property defaults to an instance of
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__.

**NOTE**: some
`Scrollbar </sdk/apps/qml/Ubuntu.Components/Scrollbar/>`__ properties
are already handled by
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__, and their
value should hence not be overridden. These properties are:

-  anchors margins, such as anchors.topMargin etc.
-  the parent Item
-  `Scrollbar::flickableItem </sdk/apps/qml/Ubuntu.Components/Scrollbar#flickableItem-prop>`__

| 

+--------------------------------------------------------------------------+
|        \ [read-only] viewport : `Item </sdk/apps/qml/QtQuick/Item/>`__   |
+--------------------------------------------------------------------------+

This property holds the viewport Item. The children of the
`ScrollView </sdk/apps/qml/Ubuntu.Components/ScrollView/>`__ element are
reparented to this item to make sure the scrollbars are correctly
positioned and the items are clipped at their boundaries.

| 
