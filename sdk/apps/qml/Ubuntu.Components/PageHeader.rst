.. _sdk_ubuntu_components_pageheader:

Ubuntu.Components PageHeader
============================

The PageHeader shows a title with a leading and a trailing ActionBar that add action buttons to the header.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Header <sdk_ubuntu_components_header>`                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`contents <sdk_ubuntu_components_pageheader_contents>` : Item
-  :ref:`extension <sdk_ubuntu_components_pageheader_extension>` : Item
-  :ref:`leadingActionBar <sdk_ubuntu_components_pageheader_leadingActionBar>` : ActionBar
-  :ref:`navigationActions <sdk_ubuntu_components_pageheader_navigationActions>` : Action
-  :ref:`subtitle <sdk_ubuntu_components_pageheader_subtitle>` : string
-  :ref:`title <sdk_ubuntu_components_pageheader_title>` : string
-  :ref:`trailingActionBar <sdk_ubuntu_components_pageheader_trailingActionBar>` : ActionBar

Detailed Description
--------------------

The colors for foreground, background and the divider are configured in the style, so they may be set using :ref:`StyleHints <sdk_ubuntu_components_stylehints>`:

.. code:: qml

    PageHeader {
        title: "Colors"
        StyleHints {
            foregroundColor: UbuntuColors.orange
            backgroundColor: "black"
            dividerColor: UbuntuColors.slate
        }
    }

See :ref:`Header <sdk_ubuntu_components_header>` properties that are inherited by :ref:`PageHeader <sdk_ubuntu_components_pageheader>` to control the visibility of the header.

Property Documentation
----------------------

.. _sdk_ubuntu_components_pageheader_contents:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contents : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The contents item to display in the header. By default the contents is undefined, and setting it will disable showing of the title and subtitle.

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

.. _sdk_ubuntu_components_pageheader_extension:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| extension : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Item shown at the bottom of the header. The extension can be any Item, but it must have a height so that the :ref:`PageHeader <sdk_ubuntu_components_pageheader>` correctly adjusts its height for the extension to fit. The extension Item should anchor to the left, right and bottom of its parent so that it will be automatically positioned above the header divider. This property replaces the sections property. Sections can now be added to the header as follows:

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

See :ref:`Toolbar <sdk_ubuntu_components_toolbar>` and :ref:`Sections <sdk_ubuntu_components_sections>`.

.. _sdk_ubuntu_components_pageheader_leadingActionBar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] leadingActionBar : :ref:`ActionBar <sdk_ubuntu_components_actionbar>`                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ActionBar <sdk_ubuntu_components_actionbar>` for the leading navigation actions. Example:

.. code:: qml

    PageHeader {
        leadingActionBar.actions: [
            Action {
                iconName: "back"
                text: "Back"
            }
        ]
    }

The default value of leadingActionBar actions is :ref:`navigationActions <sdk_ubuntu_components_pageheader_navigationActions>`, but that value can be changed to show different actions in front of the title. The leading action bar has only one slot. See :ref:`ActionBar <sdk_ubuntu_components_actionbar>`.

.. _sdk_ubuntu_components_pageheader_navigationActions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| navigationActions : :ref:`Action <sdk_ubuntu_components_action>`                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The actions to be shown in the leading action bar. This property is automatically set by the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` and other navigation components to configure the back action for the :ref:`Page <sdk_ubuntu_components_page>`. Application developers should not set this property, because the value may be overridden by Ubuntu components that have navigation. Instead, set :ref:`leadingActionBar <sdk_ubuntu_components_pageheader_leadingActionBar>`'s actions property.

.. _sdk_ubuntu_components_pageheader_subtitle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| subtitle : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Displayed under the title. Hidden when the :ref:`contents <sdk_ubuntu_components_pageheader_contents>` Item is set.

.. _sdk_ubuntu_components_pageheader_title:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The title to display in the header. Note that the title will be hidden if the :ref:`contents <sdk_ubuntu_components_pageheader_contents>` Item is set.

.. _sdk_ubuntu_components_pageheader_trailingActionBar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] trailingActionBar : :ref:`ActionBar <sdk_ubuntu_components_actionbar>`                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ActionBar <sdk_ubuntu_components_actionbar>` with trailing actions. Example:

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

By default the trailing action bar automatically adapts its number of slots to the available space in the range from 3 to 6. See :ref:`ActionBar <sdk_ubuntu_components_actionbar>`.

