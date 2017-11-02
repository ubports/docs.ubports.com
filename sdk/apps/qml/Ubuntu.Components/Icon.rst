.. _sdk_ubuntu_components_icon:
Ubuntu.Components Icon
======================

The Icon component displays an icon from the icon theme.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`ProgressionSlot <sdk_ubuntu_compone |
|                                      | nts_progressionslot>`_ .             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`asynchronous <sdk_ubuntu_components_icon_asynchronous-prop>`
   : bool
-  :ref:`color <sdk_ubuntu_components_icon_color-prop>` : color
-  :ref:`keyColor <sdk_ubuntu_components_icon_keyColor-prop>` :
   color
-  :ref:`name <sdk_ubuntu_components_icon_name-prop>` : string
-  :ref:`source <sdk_ubuntu_components_icon_source-prop>` : url

Detailed Description
--------------------

The icon theme contains a set of standard icons referred to by their
name. Using icons whenever possible enhances consistency accross
applications. Each icon has a name and can have different visual
representations depending on the size requested.

Icons can also be colorized. Setting the
:ref:`color <sdk_ubuntu_components_icon#color-prop>` property will make all
pixels with the :ref:`keyColor <sdk_ubuntu_components_icon#keyColor-prop>`
(by default #808080) colored.

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
Specification <http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html>`_ .

Property Documentation
----------------------

.. _sdk_ubuntu_components_icon_asynchronous-prop:

+--------------------------------------------------------------------------+
|        \ asynchronous : bool                                             |
+--------------------------------------------------------------------------+

The property drives the image loading of the icon. Defaults to false.

| 

.. _sdk_ubuntu_components_icon_color-prop:

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The color that all pixels that originally are of color
:ref:`keyColor <sdk_ubuntu_components_icon#keyColor-prop>` should take.

| 

.. _sdk_ubuntu_components_icon_keyColor-prop:

+--------------------------------------------------------------------------+
|        \ keyColor : color                                                |
+--------------------------------------------------------------------------+

The color of the pixels that should be colorized. By default it is set
to #808080.

| 

.. _sdk_ubuntu_components_icon_name-prop:

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

.. _sdk_ubuntu_components_icon_source-prop:

+--------------------------------------------------------------------------+
|        \ source : `url <http://doc.qt.io/qt-5/qml-url.html>`_            |
+--------------------------------------------------------------------------+

The source url of the icon to display. It has precedence over name.

If both name and source are set, name will be ignored.

This QML property was introduced in Ubuntu.Components 1.1.

| 
