.. _sdk_ubuntu_components_theme:

Ubuntu.Components Theme
=======================

The Theme class provides facilities to interact with the current theme.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`name <sdk_ubuntu_components_theme_name>` : string
-  :ref:`palette <sdk_ubuntu_components_theme_palette>` : Palette

Methods
-------

-  Component :ref:`createStyleComponent <sdk_ubuntu_components_theme_createStyleComponent>`\ (string *styleName*, object *parent*)

Detailed Description
--------------------

A global instance is exposed as the **Theme** context property.

The theme defines the visual aspect of the Ubuntu components.

Example changing the current theme:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Item {
        Button {
            onClicked: Theme.name = "Ubuntu.Components.Themes.Ambiance"
        }
    }

Example creating a style component:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    StyledItem {
        id: myItem
        style: Theme.createStyleComponent("MyItemStyle.qml", myItem)
    }

**See also** :ref:`StyledItem <sdk_ubuntu_components_styleditem>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_theme_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The name of the current theme.

.. _sdk_ubuntu_components_theme_palette:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| palette : Palette                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The palette of the current theme.

Method Documentation
--------------------

.. _sdk_ubuntu_components_theme_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Component <sdk_qtqml_component>` createStyleComponent(string *styleName*, object *parent*)                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns an instance of the style component named *styleName*.

