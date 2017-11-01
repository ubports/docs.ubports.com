The ThemeSettings class provides facilities to define the theme of a
StyledItem.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  ****`name </sdk/apps/qml/Ubuntu.Components/ThemeSettings#name-prop>`__****
   : string
-  ****`palette </sdk/apps/qml/Ubuntu.Components/ThemeSettings#palette-prop>`__****
   : Palette
-  ****`parentTheme </sdk/apps/qml/Ubuntu.Components/ThemeSettings#parentTheme-prop>`__****
   : ThemeSettings

Detailed Description
--------------------

A global instance is exposed as the **theme** context property.

The theme defines the visual aspect of the Ubuntu components. An
application can use one or more theme the same time. The
`ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__
component provides abilities to change the theme used by the component
and all its child components.

Changing the theme of the entire application can be achieved by changing
the name of the root
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__'s, i.e.
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__'s current
theme.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        theme.name: "Ubuntu.Components.Themes.Ambiance"
    }

By default, styled items inherit the theme they use from their closest
styled item ancestor. In case the application uses
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__, all components
will inherit the theme from the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__.

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

**Note:** In the example above the Button inherits the theme from Page,
which inherits it from
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__. Therefore
changing the theme name in this way will result in a change of the
inherited theme. In case a different theme is desired, a new instance of
the `ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__
must be created on the styled item desired.

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

The style can be set on a
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ either
using
`StyledItem::styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__
or
`StyledItem::style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
properties. When set through
`StyledItem::styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__,
the component will load the style from the current theme set, and must
be a QML document. The
`StyledItem::style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
property is a Component which can be declared local, or loaded with a
Loader or created using Qt.createComponent() function. The following
example will create the style with the inherited theme.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    StyledItem {
        styleName: "MyItemStyle"
    }

All styled toolkit components such as
`Button </sdk/apps/qml/Ubuntu.Components/Button/>`__,
`CheckBox </sdk/apps/qml/Ubuntu.Components/CheckBox/>`__,
`Switch </sdk/apps/qml/Ubuntu.Components/Switch/>`__, etc. create their
style in this way. Note that the style component must be part of the
theme, otherwise the style creation will fail.

**See also**
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of the current theme in dotted format i.e.
"Ubuntu.Components.Themes.Ambiance".

| 

+--------------------------------------------------------------------------+
|        \ palette : Palette                                               |
+--------------------------------------------------------------------------+

The palette of the current theme. When set, only the valid palette
values will be taken into account, which will override the theme defined
palette values. The following example will set the system's default
theme palette normal background color to Ubuntu blue. All other palette
values will be untouched.

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

**Note:** Palette values applied on inherited themes will be rolled back
once the component declaring the palette is unloaded. This can be
demonstracted using a Loader element:

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

The palette doesn't need to be reset as it automatically resets when the
palette used for configuration is destroyed.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] parentTheme :                                       |
| `ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__       |
+--------------------------------------------------------------------------+

The property specifies the parent
`ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__
instance.

| 
