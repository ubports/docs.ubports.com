

A theme is a collection of style implementations. The style component
names are typically built using the component name and the Style word,
exceptions being documented per component.

In addition to the styles the theme can provide palette values used by
the style and components. The palette values are defined in
``Palette.qml`` file, which must either be derived from
`Palette </sdk/apps/qml/Ubuntu.Components/Themes.Palette/>`__ component
or from a parent theme's Palette.

There are two types of themes, shared themes and application themes.
These themes do not differ in structure but in the way they are exposed.
Shared themes are located either under **QML2\_IMPORT\_PATH** or
**XDG\_DATA\_DIR**. Application themes are located under the
application's private folder, therefore they are typically serving the
application styling needs, and cannot be shared. Shared themes are also
presented as QML extension modules, giving the possibility for
application themes to extend them.

**Note:** Yet there is no possibility to install shared themes into the
system through app store, only by providing them as part of the system
image.

The system provides two shared themes, **Ambiance** and **SuruDark**,
the latest derived from Ambiance theme. Both themes can be used as base
theme in application themes, by importing the modules defining them. If
you decide to create a shared theme that can be used also as base for
custom or application themes, it is recommended to do the same approach
as the system themes do.

.. rubric:: Theme structure
   :name: theme-structure

|image0|

The theme structure is similar to a QML extension module structure, and
this applies to both shared and application themes. Contains component
style documents, palette description document, ``qmldir`` file and a
special file called ``parent_theme``. All these files are optional in a
theme depending on context.

``parent_theme`` is a special file which defines the theme the current
one is derifed from. The parent theme must be a shared theme and its
name must be specified in dotted format. For example SuruDark theme is
located under ``$QML2_IMPORT_PATH/Ubuntu/Components/Themes/SuruDark``
folder. This means that the theme name is identified by the
**Ubuntu.Components.Themes.SuruDark** dotted format.

In addition to the files mentioned, themes can provide components
supporting the styling (i.e. components providing common visuals in the
style implementations). Style implementations can also provide
additional APIs alongside the standard style API. These additional APIs
are typically there to configure the style itself, or to turn on/off
features provided by styles in derived themes.

Starting with Ubuntu Components version 1.3, themes must provide
versioned styles. This means that themes must store the styles in
subfolders, meaning that toolkit version 1.3 must have the version
specific styles under the theme's 1.3/ subfolder. The styling engine
will look for the styles based on the theme version used by the
component. If the style is not found with the requested version, it will
fall back to the previous version of that style.

|image1|

.. rubric:: Standalone theme
   :name: standalone-theme

A standalone theme is a theme which defines all style documents and
theme palette, and it is not derived from any theme. The only standalone
theme UI Toolkit provides is the Ambiance theme. Both shared and
application themes can be standalone themes, however Applications should
make sure they implement all the styles used by the toolkit components
used in the application. ``qmldir`` file presence is mandatory only if
the theme is shared.

.. rubric:: Derived themes
   :name: derived-themes

As the name suggests derived themes are themes which use other themes
(standalone or derived ones) as base theme. These themes must have the
``parent_theme`` file which contains the name of the theme they are
derived from. These themes do not have to provide palette configuration
as long as they use the derived theme's palette values.

Derived themes should only list those style components which overrule
the derived style or extend the derived style. The only requirement is
to use the same document name as the parent theme is having.

Let's take SuruDark theme as en example. The theme is derived from
Ambiance theme, and only extends few style components. When theming
engine loads the style components, it looks after the styles starting
from the current theme. If the style is not found there, it tries to
look after the style in the parent themes until it finds one.

The extended (or even overridden) style component documents must follow
the naming convention, and must have the names implied by the components
styled.

The style imports the Ambiance theme module, and extends the Ambiance
`ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`__
component. The same is done in the other style components. However,
Palette defines own values, and does not re-use Ambiance palette values.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes 1.3
    Palette {
        normal: SuruDarkNormal {}
        disabled: SuruDarkNormal {
            Component.onCompleted: {
                // specific disabled colors
                var diff = {
                    foreground: UbuntuColors.inkstone,
                    field: UbuntuColors.inkstone,
                    positiveText: UbuntuColors.porcelain,
                    negativeText: UbuntuColors.porcelain,
                    activityText: UbuntuColors.porcelain,
                    focusText: UbuntuColors.porcelain
                };
                for (var p in normal) {
                    // skip objectName and all change signals
                    if (p == "objectName"|| p.indexOf("Changed") > 0) continue;
                    disabled[p] = diff[p] || (
                        // if not specific, colors are 30% opaque normal
                        Qt.rgba(normal[p].r, normal[p].g, normal[p].b, normal[p].a * 0.5)
                    );
                }
            }
        }
        // selected differs from normal in background, base, foreground
        selected: SuruDarkSelected {}
        // selected differs from normal in background, base, foreground
        selectedDisabled: SuruDarkSelected {
            Component.onCompleted: {
                var diff = {
                    background: UbuntuColors.inkstone,
                    base: UbuntuColors.inkstone,
                    foreground: UbuntuColors.inkstone,
                    positiveText: UbuntuColors.porcelain,
                    negativeText: UbuntuColors.porcelain,
                    activityText: UbuntuColors.porcelain,
                    focusText: UbuntuColors.porcelain
                };
                for (var p in selected) {
                    // skip objectName and all change signals
                    if (p == "objectName"|| p.indexOf("Changed") > 0) continue;
                    selectedDisabled[p] = diff[p] || (
                        // if not specific, colors are 30% opaque normal
                        Qt.rgba(selected[p].r, selected[p].g, selected[p].b, normal[p].a * 0.5)
                    );
                }
            }
        }
        highlighted: SuruDarkNormal {
            background: UbuntuColors.slate
            base: UbuntuColors.slate
            baseText: UbuntuColors.silk
            foreground: UbuntuColors.slate
            raised: UbuntuColors.silk
            raisedText: UbuntuColors.inkstone
            raisedSecondaryText: UbuntuColors.ash
        }
        focused: SuruDarkNormal {
            background: Qt.rgba(UbuntuColors.blue.r, UbuntuColors.blue.g, UbuntuColors.blue.b, 0.4)
        }
    }

**Note:** If a theme derived from SuruDark wants to override style
components not present in SuruDark, they must import the SuruDark's
parent theme in the style component. As example, if FancyTheme would
want to override the SwitchStyle, it would need to import Ambiance
module in the component as SuruDark doesn't have that style component
defined.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes.Ambiance 1.3 as Ambiance
    Ambiance.SwitchStyle {
        // [...]
    }

.. rubric:: Application themes
   :name: application-themes

Application themes can also be standalone or derived themes. Usually
applications need slight differences on certain component styles,
colors. These can be configured in multiple ways, depending on the needs
of the application. Applications can decide to have their own theme, and
override the palette value in the theme, or to use the system themes and
override few color values from the theme palette.

Let's take an example of an application which changes some palette
values of SuruDark theme.

First, the application has to define the theme, preferably in a separate
folder (e.g. theme). The folder should contain a ``parent_theme`` file
with the content

.. code:: cpp

    Ubuntu.Components.Themes.SuruDark

This will make sure theme engine will look after the style components
that are not defined by the application theme inside the parent theme.
Remember, the parent themes can have parent themes (SuruDark is derived
from Ambiance) in which case the style components will be looked up in
all these themes.

As shown next, the application can define the palette.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Themes.SuruDark 1.1 as Suru
    Suru.Palette {
        normal.background: "#A21E1C"
        selected.backgroundText: "lightblue"
    }

Note that the palette uses the SuruDark palette as base, and changes few
colors from it.

The application can use its own theme in the following way:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        id: mainView
        objectName: "mainView"
        applicationName: "customtheme"
        width: units.gu(100)
        height: units.gu(75)
        theme.name: "theme"
        Page {
            title: i18n.tr("Theme sample")
            Column {
                spacing: units.gu(1)
                anchors {
                    margins: units.gu(2)
                    fill: parent
                }
                Label {
                    text: i18n.tr("Theme.name:") + " " + theme.name
                }
                Button {
                    width: parent.width
                    text: i18n.tr("Set Ambiance theme")
                    onClicked: {
                        theme.name = "Ubuntu.Components.Themes.Ambiance";
                    }
                }
                Button {
                    width: parent.width
                    text: i18n.tr("Set SuruDark theme")
                    onClicked: {
                        theme.name = "Ubuntu.Components.Themes.SuruDark";
                    }
                }
                Button {
                    width: parent.width
                    text: i18n.tr("Application theme")
                    onClicked: {
                        theme.name = "theme";
                    }
                }
            }
        }
    }

**Note:** An application, which overrides multiple shared theme versions
must provide separate style versions in its theme so the styling engine
can identify the proper styles for the components. Note however that
this is not mandatory, and it is up to the application developer to
decide whether the application should support multiple style versions or
not.

`Styles </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-theming-styles/>`__
`Sub-theming </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-theming-subtheming/>`__

.. |image0| image:: /media/sdk/apps/qml/ubuntu-theming-themes/images/surudark-theme.png
.. |image1| image:: /media/sdk/apps/qml/ubuntu-theming-themes/images/surudark-theme-13.png

