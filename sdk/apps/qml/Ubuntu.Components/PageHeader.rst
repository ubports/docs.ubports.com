The PageHeader shows a title with a leading and a trailing ActionBar
that add action buttons to the header.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Header </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Header/>`__                     |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`contents </sdk/apps/qml/Ubuntu.Components/PageHeader#contents-prop>`__****
   : Item
-  ****`extension </sdk/apps/qml/Ubuntu.Components/PageHeader#extension-prop>`__****
   : Item
-  ****`leadingActionBar </sdk/apps/qml/Ubuntu.Components/PageHeader#leadingActionBar-prop>`__****
   : ActionBar
-  ****`navigationActions </sdk/apps/qml/Ubuntu.Components/PageHeader#navigationActions-prop>`__****
   : Action
-  ****`subtitle </sdk/apps/qml/Ubuntu.Components/PageHeader#subtitle-prop>`__****
   : string
-  ****`title </sdk/apps/qml/Ubuntu.Components/PageHeader#title-prop>`__****
   : string
-  ****`trailingActionBar </sdk/apps/qml/Ubuntu.Components/PageHeader#trailingActionBar-prop>`__****
   : ActionBar

Detailed Description
--------------------

The colors for foreground, background and the divider are configured in
the style, so they may be set using
`StyleHints </sdk/apps/qml/Ubuntu.Components/StyleHints/>`__:

.. code:: qml

    PageHeader {
        title: "Colors"
        StyleHints {
            foregroundColor: UbuntuColors.orange
            backgroundColor: "black"
            dividerColor: UbuntuColors.slate
        }
    }

See `Header </sdk/apps/qml/Ubuntu.Components/Header/>`__ properties that
are inherited by
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ to control
the visibility of the header.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contents : `Item </sdk/apps/qml/QtQuick/Item/>`__               |
+--------------------------------------------------------------------------+

The contents item to display in the header. By default the contents is
undefined, and setting it will disable showing of the title and
subtitle.

Example:

.. code:: qml

    PageHeader {
        id: header
        title: "Welcome"
        contents: Rectangle {
            anchors.fill: parent
            color: UbuntuColors.red
            Label {
                anchors.centerIn: parent
                text: header.title
                color: "white"
            }
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ extension : `Item </sdk/apps/qml/QtQuick/Item/>`__              |
+--------------------------------------------------------------------------+

Item shown at the bottom of the header. The extension can be any Item,
but it must have a height so that the
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ correctly
adjusts its height for the extension to fit. The extension Item should
anchor to the left, right and bottom of its parent so that it will be
automatically positioned above the header divider. This property
replaces the sections property. Sections can now be added to the header
as follows:

.. code:: qml

    PageHeader {
        title: "Header with sections"
        extension: Sections {
            anchors {
                left: parent.left
                leftMargin: units.gu(2)
                bottom: parent.bottom
            }
            model: ["one", "two", "three"]
        }
    }

See `Toolbar </sdk/apps/qml/Ubuntu.Components/Toolbar/>`__ and
`Sections </sdk/apps/qml/Ubuntu.Components/Sections/>`__.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] leadingActionBar :                                  |
| `ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__               |
+--------------------------------------------------------------------------+

The `ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__ for the
leading navigation actions. Example:

.. code:: qml

    PageHeader {
        leadingActionBar.actions: [
            Action {
                iconName: "back"
                text: "Back"
            }
        ]
    }

The default value of leadingActionBar actions is
`navigationActions </sdk/apps/qml/Ubuntu.Components/PageHeader#navigationActions-prop>`__,
but that value can be changed to show different actions in front of the
title. The leading action bar has only one slot. See
`ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__.

| 

+--------------------------------------------------------------------------+
|        \ navigationActions :                                             |
| `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__                     |
+--------------------------------------------------------------------------+

The actions to be shown in the leading action bar. This property is
automatically set by the
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
and other navigation components to configure the back action for the
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__. Application developers
should not set this property, because the value may be overridden by
Ubuntu components that have navigation. Instead, set
`leadingActionBar </sdk/apps/qml/Ubuntu.Components/PageHeader#leadingActionBar-prop>`__'s
actions property.

| 

+--------------------------------------------------------------------------+
|        \ subtitle : string                                               |
+--------------------------------------------------------------------------+

Displayed under the title. Hidden when the
`contents </sdk/apps/qml/Ubuntu.Components/PageHeader#contents-prop>`__
Item is set.

| 

+--------------------------------------------------------------------------+
|        \ title : string                                                  |
+--------------------------------------------------------------------------+

The title to display in the header. Note that the title will be hidden
if the
`contents </sdk/apps/qml/Ubuntu.Components/PageHeader#contents-prop>`__
Item is set.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] trailingActionBar :                                 |
| `ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__               |
+--------------------------------------------------------------------------+

The `ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__ with
trailing actions. Example:

.. code:: qml

    PageHeader {
        trailingActionBar {
            actions: [
                Action {
                    iconName: "settings"
                    text: "first"
                },
                Action {
                    iconName: "info"
                    text: "second"
                },
                Action {
                    iconName: "search"
                    text: "third"
                }
           ]
           numberOfSlots: 2
        }
    }

By default the trailing action bar automatically adapts its number of
slots to the available space in the range from 3 to 6. See
`ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__.

| 
