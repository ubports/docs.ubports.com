

There can be situations when an application has a design which combines
styles from different themes, which would not be possible or would be
hard to be combined in a single theme. In these situations developers
can use different themes in the components and its child components.
This is called sub-theming, which was introduced in Ubuntu.Components
1.3. The only thing the application has to do is to define a
`ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__
instance for the component which is desired to use a different theme.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        applicationName: "subthemed"
        // make sure the main theme is Ambiance
        theme.name: "Ubuntu.Components.Themes.Ambiance"
        Component {
            id: dialogComponent
            Dialog {
                id: dialog
                title: "Input dialog"
                // the dialog and its children will use SuruDark
                theme: ThemeSettings {
                    name: "Ubuntu.Components.Themes.SuruDark"
                }
                TextField {
                    placeholderText: "enter text"
                }
                Button {
                    text: "Close"
                    onClicked: PopupUtils.close(dialog)
                }
            }
        }
        Button {
            text: "Open dialog"
            onClicked: PopupUtils.open(dialogComponent)
        }
    }

Another use-case is when a different palette set is needed in the
application. One way to achieve that is to define a custom theme for the
application, however that theme must be derived from one particular
theme, so the application will be restricted to one given theme. If we
want to have the same palette values to be used no matter where the
component is used, we can override the palette values we want to change,
by setting the theme palette to a
`Palette </sdk/apps/qml/Ubuntu.Components/Themes.Palette/>`__ instance
where only the desired palette values are changed. This can be combined
with sub-theming, which will make sure that the palette values are
applied only on a certain component sub-tree.

The following example makes sure the Dialog and its child components
will use a given palette value:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        applicationName: "subthemed"
        Component {
            id: dialogComponent
            Dialog {
                id: dialog
                title: "Input dialog"
                // make sure the dialog and its children will use the same
                // theme as the rest of the application
                theme: ThemeSettings {
                    name: parentTheme.name
                    palette: Palette {
                        id: config
                        normal {
                            foregroundText: UbuntuColors.blue
                            overlayText: "#BAFEDC"
                        }
                        selected {
                            fieldText: "brown"
                            foregroundText: Qt.rgba(0, 0, 1, 1)
                            overlayText: config.normal.overlayText
                            foreground: UbuntuColors.green
                        }
                    }
                }
                TextField {
                    placeholderText: "enter text"
                }
                Button {
                    text: "Close"
                    onClicked: PopupUtils.close(dialog)
                }
            }
        }
        Column {
            spacing: units.gu(1)
            Button {
                text: "Set Ambiance theme"
                onClicked: theme.name = "Ubuntu.Components.Themes.Ambiance"
            }
            Button {
                text: "Set SuruDark theme"
                onClicked: theme.name = "Ubuntu.Components.Themes.SuruDark"
            }
            Button {
                text: "Open dialog"
                onClicked: PopupUtils.open(dialogComponent)
            }
        }
    }

**Note:** Note the way the theme is changed! The first two buttons
actually change the name of the theme they inherit, which is the
application's theme. This means that the theme will actually be changed
on the entire application, not only on the Button itself.

The Dialog uses the
`parentTheme </sdk/apps/qml/Ubuntu.Components/ThemeSettings#parentTheme-prop>`__
property to load the same theme as its parent styled item is using,
meaning that the Dialog will also load the same theme as the application
does, and will change the loaded palette values with the ones defined in
the ``config`` Palette instance, namely the ``foregroundText`` and
``overlayText`` of ``normal``, as well as ``fieldText``,
``foregroundText``, ``overlayText`` and ``foreground`` on ``selected``
groups.

There may be cases when a subset of components wants to use different
style versions than the one provided by the module version. Remember,
using earlier minor versions of the theme is perfectly fine while using
newer versions may not work, as component styles may use newer APIs of
the component which is not present in the component, thus the style will
fail.

Let's take the example above, and assume that we want to show the Dialog
with the same theme as the application but with an earlier version. We
can do this by specifying the theme version with
`Ubuntu.version() </sdk/apps/qml/Ubuntu.Components/Ubuntu#version-method>`__
as follows:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        applicationName: "subthemed"
        Component {
            id: dialogComponent
            Dialog {
                id: dialog
                title: "Input dialog"
                // make sure the dialog and its children will use the same
                // theme as the rest of the application
                theme: ThemeSettings {
                    name: parentTheme.name
                    // use version 1.2 of the theme
                    version: Ubuntu.version(1, 2)
                }
                TextField {
                    placeholderText: "enter text"
                }
                Button {
                    text: "Close"
                    onClicked: PopupUtils.close(dialog)
                }
            }
        }
        Column {
            spacing: units.gu(1)
            Button {
                text: "Set Ambiance theme"
                onClicked: theme.name = "Ubuntu.Components.Themes.Ambiance"
            }
            Button {
                text: "Set SuruDark theme"
                onClicked: theme.name = "Ubuntu.Components.Themes.SuruDark"
            }
            Button {
                text: "Open dialog"
                onClicked: PopupUtils.open(dialogComponent)
            }
        }
    }

.. rubric:: That's it
   :name: that-s-it

By now you should have learned what the styling means, what are the
themes, what kind of themes the toolkit has, how can you create shared
or application themes, where should you store them, how to extend
styles, how to use multiple themes in an application and how to set
custom palette values runtime. If you have questions or need guidance,
you can contact us on **#ubuntu-app-devel** IRC channel on freenode.

`Themes </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-theming-themes/>`__
