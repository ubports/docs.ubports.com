The Theme class provides facilities to interact with the current theme.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`name </sdk/apps/qml/Ubuntu.Components/Theme#name-prop>`__**** :
   string
-  ****`palette </sdk/apps/qml/Ubuntu.Components/Theme#palette-prop>`__****
   : Palette

Methods
-------

-  Component
   ****`createStyleComponent </sdk/apps/qml/Ubuntu.Components/Theme#createStyleComponent-method>`__****\ (string
   *styleName*, object *parent*)

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

**See also**
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of the current theme.

| 

+--------------------------------------------------------------------------+
|        \ palette : Palette                                               |
+--------------------------------------------------------------------------+

The palette of the current theme.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ `Component </sdk/apps/qml/QtQml/Component/>`__                  |
| createStyleComponent(string *styleName*, object *parent*)                |
+--------------------------------------------------------------------------+

Returns an instance of the style component named *styleName*.

| 
