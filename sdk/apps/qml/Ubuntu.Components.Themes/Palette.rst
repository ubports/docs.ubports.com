Provides the palette of colors from the theme that widgets use to draw
themselves.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Themes 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QtObject </sdk/apps/qml/QtQml/QtObj |
|                                      | ect/>`__                             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`disabled </sdk/apps/qml/Ubuntu.Components/Themes.Palette#disabled-prop>`__****
   : PaletteValues
-  ****`focused </sdk/apps/qml/Ubuntu.Components/Themes.Palette#focused-prop>`__****
   : PaletteValues
-  ****`highlighted </sdk/apps/qml/Ubuntu.Components/Themes.Palette#highlighted-prop>`__****
   : PaletteValues
-  ****`normal </sdk/apps/qml/Ubuntu.Components/Themes.Palette#normal-prop>`__****
   : PaletteValues
-  ****`selected </sdk/apps/qml/Ubuntu.Components/Themes.Palette#selected-prop>`__****
   : PaletteValues
-  ****`selectedDisabled </sdk/apps/qml/Ubuntu.Components/Themes.Palette#selectedDisabled-prop>`__****
   : PaletteValues

Detailed Description
--------------------

Palette provides access to colors defined by the current theme. The
actual color palette to use depends on the state of the widget being
drawn.

A color palette
(`PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`__)
has various roles to choose from depending on what part of the widget is
being drawn (the base of the widget, the foreground, etc.).

For each color there is a corresponding 'text' color that is guaranteed
to provide good legibility for text or icons placed on top of a
background of the corresponding color.

Example of a Text on top of a background Rectangle:

.. code:: qml

    Item {
        Rectangle {
            color: theme.palette.normal.base
        }
        Text {
            color: theme.palette.normal.baseText
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ disabled :                                                      |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette to use when the widget is in the disabled (enabled: false)
state.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

| 

+--------------------------------------------------------------------------+
|        \ focused :                                                       |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette to use when the widget is focused.

| 

+--------------------------------------------------------------------------+
|        \ highlighted :                                                   |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette values to use when the widget is highlighted.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

| 

+--------------------------------------------------------------------------+
|        \ normal :                                                        |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette to use when the widget is in the default state.

| 

+--------------------------------------------------------------------------+
|        \ selected :                                                      |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette to use when the widget is selected, for example when a tab
is the current one.

| 

+--------------------------------------------------------------------------+
|        \ selectedDisabled :                                              |
| `PaletteValues </sdk/apps/qml/Ubuntu.Components/Themes.PaletteValues/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

Color palette to use when the widget is selected and disabled.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

| 
