The StyledItem class allows items to be styled by the theme.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.1                |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ActionBar </sdk/apps/qml/Ubuntu.Com |
|                                      | ponents/ActionBar/>`__,              |
|                                      | `BottomEdge </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/BottomEdge/>`__,            |
|                                      | `DatePicker </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/Pickers.DatePicker/>`__,    |
|                                      | `Dialer </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Pickers.Dialer/>`__,            |
|                                      | `DialerHand </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/Pickers.DialerHand/>`__,    |
|                                      | `Header </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Header/>`__,                    |
|                                      | `MainView </sdk/apps/qml/Ubuntu.Comp |
|                                      | onents/MainView/>`__,                |
|                                      | `Page </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/Page/>`__,                        |
|                                      | `Picker </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Pickers.Picker/>`__,            |
|                                      | `PullToRefresh </sdk/apps/qml/Ubuntu |
|                                      | .Components/PullToRefresh/>`__,      |
|                                      | `ScrollView </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ScrollView/>`__,            |
|                                      | `Sections </sdk/apps/qml/Ubuntu.Comp |
|                                      | onents/Sections/>`__,                |
|                                      | and                                  |
|                                      | `Toolbar </sdk/apps/qml/Ubuntu.Compo |
|                                      | nents/Toolbar/>`__.                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__****
   : Component
-  ****`styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__****
   : string
-  ****`theme </sdk/apps/qml/Ubuntu.Components/StyledItem#theme-prop>`__****
   : ThemeSettings

Detailed Description
--------------------

`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ provides
facilities for making an Item stylable by the theme.

In order to make an Item stylable by the theme, it is enough to make the
Item inherit from
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ and set its
`style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
property to be the result of the appropriate call to
theme.createStyleComponent().

Example definition of a custom Item MyItem.qml:

.. code:: qml

    StyledItem {
        id: myItem
        styleName: "MyItemStyle"
    }

The style set on
`styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__
is instantiated and placed below everything else that the Item contains.
When the style is defined in this way, the style is taken from the
current theme the
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__ is themed
with. Another way tpo set the style of a component is to set the
`style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
property. This property expects a component and it has precedence over
the
`styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__,
meaning that when both
`styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__
and `style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
are set, the style will be created from the
`style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
componment.

A reference to the Item being styled is accessible from the style and
named 'styledItem'.

**See also** `Theme </sdk/apps/qml/Ubuntu.Components/Theme/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ style : `Component </sdk/apps/qml/QtQml/Component/>`__          |
+--------------------------------------------------------------------------+

Style component instantiated immediately and placed below everything
else. Has precedence over the
`styleName </sdk/apps/qml/Ubuntu.Components/StyledItem#styleName-prop>`__.
When both set, the style will be created from the component given as
property value, and can be reset to the theme style when set to null or
reset (set to undefined).

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

**Note:**
`style </sdk/apps/qml/Ubuntu.Components/StyledItem#style-prop>`__
property has precedence over styleName.

| 

+--------------------------------------------------------------------------+
|        \ theme :                                                         |
| `ThemeSettings </sdk/apps/qml/Ubuntu.Components/ThemeSettings/>`__       |
+--------------------------------------------------------------------------+

The property configures the theme the component and all its
sub-components will use. By default it is set to the closest ancestor
`StyledItem </sdk/apps/qml/Ubuntu.Components/StyledItem/>`__'s theme if
any, or to the system default theme.

This QML property was introduced in Ubuntu.Components 1.3.

| 
