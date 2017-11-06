.. _sdk_ubuntu_components_listitems_standard:

Ubuntu.Components.ListItems Standard
====================================

The standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Empty </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/>`_                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  `control </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#control-prop>`_  : Item
-  `fallbackIconName </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#fallbackIconName-prop>`_  : string
-  `fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#fallbackIconSource-prop>`_  : url
-  `iconFrame </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#iconFrame-prop>`_  : bool
-  `progression </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#progression-prop>`_  : bool

Detailed Description
--------------------

**Note:** **The component is deprecated. Use :ref:`ListItem <sdk_ubuntu_components_listitem>` component instead.**

`See also the Design Guidelines on List Items <http://design.ubuntu.com/apps/building-blocks/list-items>`_ .

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.Standard {
            text: "Selectable standard list item"
            selected: false
            onClicked: selected = !selected
           }
        ListItem.Standard {
            text: "List item with icon"
            iconName: "compose"
        }
        ListItem.Standard {
            text: "With a progression arrow"
            progression: true
        }
        ListItem.Standard {
            text: "Control"
            control: Button {
                text: "Click me"
                width: units.gu(19)
                onClicked: print("Clicked")
            }
            progression: true
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_standard_control:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An optional control that is displayed inside the list item. The width of the control must be specified in order to determine the layout of the list item.

.. _sdk_ubuntu_components_listitems_standard_fallbackIconName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fallbackIconName : string                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The icon shown in the list item if iconName failed to load (optional).

If both `fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/#fallbackIconSource-prop>`_  and fallbackIconName are defined, fallbackIconName will be ignored.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

.. _sdk_ubuntu_components_listitems_standard_fallbackIconSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fallbackIconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The location of the icon to show in the list item if iconSource failed to load (optional).

.. _sdk_ubuntu_components_listitems_standard_iconFrame:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconFrame : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Show or hide the frame around the icon

.. _sdk_ubuntu_components_listitems_standard_progression:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progression : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Show or hide the progression symbol.

