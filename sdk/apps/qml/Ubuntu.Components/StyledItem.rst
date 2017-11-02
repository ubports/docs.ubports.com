.. _sdk_ubuntu_components_styleditem:
Ubuntu.Components StyledItem
============================

The StyledItem class allows items to be styled by the theme.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.1                |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`ActionBar <sdk_ubuntu_components_ac |
|                                      | tionbar>`_ ,                         |
|                                      | :ref:`BottomEdge <sdk_ubuntu_components_b |
|                                      | ottomedge>`_ ,                       |
|                                      | `DatePicker </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/Pickers.DatePicker/>`_ ,    |
|                                      | `Dialer </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Pickers.Dialer/>`_ ,            |
|                                      | `DialerHand </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/Pickers.DialerHand/>`_ ,    |
|                                      | :ref:`Header <sdk_ubuntu_components_heade |
|                                      | r>`_ ,                               |
|                                      | :ref:`MainView <sdk_ubuntu_components_mai |
|                                      | nview>`_ ,                           |
|                                      | :ref:`Page <sdk_ubuntu_components_page>`_ |
|                                      | _,                                   |
|                                      | `Picker </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Pickers.Picker/>`_ ,            |
|                                      | :ref:`PullToRefresh <sdk_ubuntu_component |
|                                      | s_pulltorefresh>`_ ,                 |
|                                      | :ref:`ScrollView <sdk_ubuntu_components_s |
|                                      | crollview>`_ ,                       |
|                                      | :ref:`Sections <sdk_ubuntu_components_sec |
|                                      | tions>`_ ,                           |
|                                      | and                                  |
|                                      | :ref:`Toolbar <sdk_ubuntu_components_tool |
|                                      | bar>`_ .                             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`style <sdk_ubuntu_components_styleditem_style-prop>` :
   Component
-  :ref:`styleName <sdk_ubuntu_components_styleditem_styleName-prop>`
   : string
-  :ref:`theme <sdk_ubuntu_components_styleditem_theme-prop>` :
   ThemeSettings

Detailed Description
--------------------

:ref:`StyledItem <sdk_ubuntu_components_styleditem>` provides facilities
for making an Item stylable by the theme.

In order to make an Item stylable by the theme, it is enough to make the
Item inherit from :ref:`StyledItem <sdk_ubuntu_components_styleditem>` and
set its :ref:`style <sdk_ubuntu_components_styleditem#style-prop>` property
to be the result of the appropriate call to
theme.createStyleComponent().

Example definition of a custom Item MyItem.qml:

.. code:: qml

    StyledItem {
        id: myItem
        styleName: "MyItemStyle"
    }

The style set on
:ref:`styleName <sdk_ubuntu_components_styleditem#styleName-prop>` is
instantiated and placed below everything else that the Item contains.
When the style is defined in this way, the style is taken from the
current theme the :ref:`StyledItem <sdk_ubuntu_components_styleditem>` is
themed with. Another way tpo set the style of a component is to set the
:ref:`style <sdk_ubuntu_components_styleditem#style-prop>` property. This
property expects a component and it has precedence over the
:ref:`styleName <sdk_ubuntu_components_styleditem#styleName-prop>`, meaning
that when both
:ref:`styleName <sdk_ubuntu_components_styleditem#styleName-prop>` and
:ref:`style <sdk_ubuntu_components_styleditem#style-prop>` are set, the
style will be created from the
:ref:`style <sdk_ubuntu_components_styleditem#style-prop>` componment.

A reference to the Item being styled is accessible from the style and
named 'styledItem'.

**See also** :ref:`Theme <sdk_ubuntu_components_theme>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_styleditem_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ style : `Component <sdk_qtqml_component>`                  |
+--------------------------------------------------------------------------+

Style component instantiated immediately and placed below everything
else. Has precedence over the
:ref:`styleName <sdk_ubuntu_components_styleditem#styleName-prop>`. When
both set, the style will be created from the component given as property
value, and can be reset to the theme style when set to null or reset
(set to undefined).

.. code:: qml

    Button {
        text: "Press to reset"
        style: Rectangle {
            color: "tan"
            Label {
                anchors {
                    fill: parent
                    margins: units.gu(1)
                }
                text: styledItem.text
            }
        }
        onClicked: style = undefined
    }

| 

.. _sdk_ubuntu_components_styleditem_styleName-prop:

+--------------------------------------------------------------------------+
|        \ styleName : string                                              |
+--------------------------------------------------------------------------+

The property specifies the component style name. The style name is a
document in the current theme, and should not contain the qml file
extension. If specified an error will be shown.

.. code:: qml

    StyledItem {
        id: myItem
        styleName: "MyItemStyle"
    }

**Note:** :ref:`style <sdk_ubuntu_components_styleditem#style-prop>`
property has precedence over styleName.

| 

.. _sdk_ubuntu_components_styleditem_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ theme : `ThemeSettings <sdk_ubuntu_components_themesettings>` |
+--------------------------------------------------------------------------+

The property configures the theme the component and all its
sub-components will use. By default it is set to the closest ancestor
:ref:`StyledItem <sdk_ubuntu_components_styleditem>`'s theme if any, or to
the system default theme.

This QML property was introduced in Ubuntu.Components 1.3.

| 
