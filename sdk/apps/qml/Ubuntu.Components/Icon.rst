The Icon component displays an icon from the icon theme.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ProgressionSlot </sdk/apps/qml/Ubun |
|                                      | tu.Components/ProgressionSlot/>`__.  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`asynchronous </sdk/apps/qml/Ubuntu.Components/Icon#asynchronous-prop>`__****
   : bool
-  ****`color </sdk/apps/qml/Ubuntu.Components/Icon#color-prop>`__**** :
   color
-  ****`keyColor </sdk/apps/qml/Ubuntu.Components/Icon#keyColor-prop>`__****
   : color
-  ****`name </sdk/apps/qml/Ubuntu.Components/Icon#name-prop>`__**** :
   string
-  ****`source </sdk/apps/qml/Ubuntu.Components/Icon#source-prop>`__****
   : url

Detailed Description
--------------------

The icon theme contains a set of standard icons referred to by their
name. Using icons whenever possible enhances consistency accross
applications. Each icon has a name and can have different visual
representations depending on the size requested.

Icons can also be colorized. Setting the
`color </sdk/apps/qml/Ubuntu.Components/Icon#color-prop>`__ property
will make all pixels with the
`keyColor </sdk/apps/qml/Ubuntu.Components/Icon#keyColor-prop>`__ (by
default #808080) colored.

Example:

.. code:: qml

    Icon {
        width: 64
        height: 64
        name: "search"
    }

Example of colorization:

.. code:: qml

    Icon {
        width: 64
        height: 64
        name: "search"
        color: UbuntuColors.warmGrey
    }

Icon themes are created following the `Freedesktop Icon Theme
Specification <http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ asynchronous : bool                                             |
+--------------------------------------------------------------------------+

The property drives the image loading of the icon. Defaults to false.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The color that all pixels that originally are of color
`keyColor </sdk/apps/qml/Ubuntu.Components/Icon#keyColor-prop>`__ should
take.

| 

+--------------------------------------------------------------------------+
|        \ keyColor : color                                                |
+--------------------------------------------------------------------------+

The color of the pixels that should be colorized. By default it is set
to #808080.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of the icon to display.

If both name and source are set, name will be ignored.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folders where the icon themes
are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

| 

+--------------------------------------------------------------------------+
|        \ source : `url <http://doc.qt.io/qt-5/qml-url.html>`__           |
+--------------------------------------------------------------------------+

The source url of the icon to display. It has precedence over name.

If both name and source are set, name will be ignored.

This QML property was introduced in Ubuntu.Components 1.1.

| 
