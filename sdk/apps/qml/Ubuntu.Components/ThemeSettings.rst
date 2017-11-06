.. _sdk_ubuntu_components_themesettings:

Ubuntu.Components ThemeSettings
===============================

The ThemeSettings class provides facilities to define the theme of a StyledItem.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`name <sdk_ubuntu_components_themesettings_name>` : string
-  :ref:`palette <sdk_ubuntu_components_themesettings_palette>` : Palette
-  :ref:`parentTheme <sdk_ubuntu_components_themesettings_parentTheme>` : ThemeSettings

Detailed Description
--------------------

A global instance is exposed as the **theme** context property.

The theme defines the visual aspect of the Ubuntu components. An application can use one or more theme the same time. The :ref:`ThemeSettings <sdk_ubuntu_components_themesettings>` component provides abilities to change the theme used by the component and all its child components.

Changing the theme of the entire application can be achieved by changing the name of the root :ref:`StyledItem <sdk_ubuntu_components_styleditem>`'s, i.e. :ref:`MainView <sdk_ubuntu_components_mainview>`'s current theme.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        theme.name: "Ubuntu.Components.Themes.Ambiance"
    }

By default, styled items inherit the theme they use from their closest styled item ancestor. In case the application uses :ref:`MainView <sdk_ubuntu_components_mainview>`, all components will inherit the theme from the :ref:`MainView <sdk_ubuntu_components_mainview>`.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        Page {
            title: "Style test"
            Button {
                text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                         "SuruDark" : "Ambiance"
                onClicked: theme.name = (text == "Ambiance" ?
                         "Ubuntu.Components.Themes.SuruDark" :
                         "Ubuntu.Components.Themes.Ambiance")
            }
        }
    }

**Note:** In the example above the Button inherits the theme from Page, which inherits it from :ref:`MainView <sdk_ubuntu_components_mainview>`. Therefore changing the theme name in this way will result in a change of the inherited theme. In case a different theme is desired, a new instance of the :ref:`ThemeSettings <sdk_ubuntu_components_themesettings>` must be created on the styled item desired.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        Page {
            title: "Style test"
            theme: ThemeSettings{}
            Button {
                text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                         "SuruDark" : "Ambiance"
                onClicked: theme.name = (text == "Ambiance" ?
                         "Ubuntu.Components.Themes.SuruDark" :
                         "Ubuntu.Components.Themes.Ambiance")
            }
        }
    }

The style can be set on a :ref:`StyledItem <sdk_ubuntu_components_styleditem>` either using :ref:`StyledItem::styleName <sdk_ubuntu_components_styleditem_styleName>` or :ref:`StyledItem::style <sdk_ubuntu_components_styleditem_style>` properties. When set through :ref:`StyledItem::styleName <sdk_ubuntu_components_styleditem_styleName>`, the component will load the style from the current theme set, and must be a QML document. The :ref:`StyledItem::style <sdk_ubuntu_components_styleditem_style>` property is a Component which can be declared local, or loaded with a Loader or created using Qt.createComponent() function. The following example will create the style with the inherited theme.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    StyledItem {
        styleName: "MyItemStyle"
    }

All styled toolkit components such as :ref:`Button <sdk_ubuntu_components_button>`, :ref:`CheckBox <sdk_ubuntu_components_checkbox>`, :ref:`Switch <sdk_ubuntu_components_switch>`, etc. create their style in this way. Note that the style component must be part of the theme, otherwise the style creation will fail.

**See also** :ref:`StyledItem <sdk_ubuntu_components_styleditem>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_themesettings_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The name of the current theme in dotted format i.e. "Ubuntu.Components.Themes.Ambiance".

.. _sdk_ubuntu_components_themesettings_palette:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| palette : Palette                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The palette of the current theme. When set, only the valid palette values will be taken into account, which will override the theme defined palette values. The following example will set the system's default theme palette normal background color to Ubuntu blue. All other palette values will be untouched.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes 1.0
    MainView {
        // your code
        theme.palette: Palette {
            normal.background: UbuntuColors.blue
        }
    }

**Note:** Palette values applied on inherited themes will be rolled back once the component declaring the palette is unloaded. This can be demonstracted using a Loader element:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes 1.0
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        Loader {
            id: loader
            onItemChanged: if (item) button.theme.palette = item
        }
        Component {
            id: dynamicPalette
            Palette {
                normal.background: UbuntuColors.blue
            }
        }
        Button {
            id: button
            text: "Toggle palette"
            onClicked: {
                if (loader.item) {
                    loader.sourceComponent = undefined;
                } else {
                    loader.sourceComponent = dynamicPalette;
                }
            }
        }
    }

The palette doesn't need to be reset as it automatically resets when the palette used for configuration is destroyed.

.. _sdk_ubuntu_components_themesettings_parentTheme:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] parentTheme : :ref:`ThemeSettings <sdk_ubuntu_components_themesettings>`                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the parent :ref:`ThemeSettings <sdk_ubuntu_components_themesettings>` instance.

