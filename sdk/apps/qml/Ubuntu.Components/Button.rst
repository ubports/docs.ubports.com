Standard Ubuntu button.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `AbstractButton </sdk/apps/qml/Ubunt |
|                                      | u.Components/AbstractButton/>`__     |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`color </sdk/apps/qml/Ubuntu.Components/Button#color-prop>`__****
   : color
-  ****`font </sdk/apps/qml/Ubuntu.Components/Button#font-prop>`__**** :
   font
-  ****`gradient </sdk/apps/qml/Ubuntu.Components/Button#gradient-prop>`__****
   : Gradient
-  ****`iconPosition </sdk/apps/qml/Ubuntu.Components/Button#iconPosition-prop>`__****
   : string
-  ****`strokeColor </sdk/apps/qml/Ubuntu.Components/Button#strokeColor-prop>`__****
   : color

Detailed Description
--------------------

`See also the Design Guidelines on
Buttons <http://design.ubuntu.com/apps/building-blocks/buttons>`__.

Examples:

.. code:: qml

    Column {
        Button {
            text: "Send"
            onClicked: print("clicked text-only Button")
        }
        Button {
            iconName: "compose"
            gradient: UbuntuColors.greyGradient
            onClicked: print("clicked icon-only Button")
        }
        Button {
            iconName: "compose"
            text: "Icon on left"
            iconPosition: "left"
            onClicked: print("clicked text and icon Button")
        }
    }

An `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__ can be used to
specify **clicked**, iconSource and text. Example:

.. code:: qml

     Item {
         Action {
             id: action1
             text: "Click me"
             onTriggered: print("action!")
             iconName: "compose"
         }
         Button {
             anchors.centerIn: parent
             action: action1
             color: UbuntuColors.warmGrey
         }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

The background color of the button.

**See also**
`gradient </sdk/apps/qml/Ubuntu.Components/Button#gradient-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ font :                                                          |
| `font </sdk/apps/qml/Ubuntu.Components/Button#font-prop>`__              |
+--------------------------------------------------------------------------+

The font used for the button's text.

| 

+--------------------------------------------------------------------------+
|        \ gradient : `Gradient </sdk/apps/qml/QtQuick/Gradient/>`__       |
+--------------------------------------------------------------------------+

The gradient used to fill the background of the button.

Standard Ubuntu gradients are defined in
`UbuntuColors </sdk/apps/qml/Ubuntu.Components/UbuntuColors/>`__.

If both a gradient and a color are specified, the gradient will be used.

**See also**
`color </sdk/apps/qml/Ubuntu.Components/Button#color-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ iconPosition : string                                           |
+--------------------------------------------------------------------------+

The position of the icon relative to the text. Options are "left" and
"right". The default value is "left".

If only text or only an icon is defined, this property is ignored and
the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums:
https://bugreports.qt-project.org/browse/QTBUG-14861

| 

+--------------------------------------------------------------------------+
|        \ strokeColor : color                                             |
+--------------------------------------------------------------------------+

If set to a color, the button has a stroke border instead of a filled
shape.

This QML property was introduced in Ubuntu.Components 1.1.

| 
