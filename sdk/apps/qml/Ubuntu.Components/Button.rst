.. _sdk_ubuntu_components_button:

Ubuntu.Components Button
========================

Standard Ubuntu button.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>`                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`color <sdk_ubuntu_components_button_color>` : color
-  :ref:`font <sdk_ubuntu_components_button_font>` : font
-  :ref:`gradient <sdk_ubuntu_components_button_gradient>` : Gradient
-  :ref:`iconPosition <sdk_ubuntu_components_button_iconPosition>` : string
-  :ref:`strokeColor <sdk_ubuntu_components_button_strokeColor>` : color

Detailed Description
--------------------

`See also the Design Guidelines on Buttons <http://design.ubuntu.com/apps/building-blocks/buttons>`_ .

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

An :ref:`Action <sdk_ubuntu_components_action>` can be used to specify **clicked**, iconSource and text. Example:

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

.. _sdk_ubuntu_components_button_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The background color of the button.

**See also** :ref:`gradient <sdk_ubuntu_components_button_gradient>`.

.. _sdk_ubuntu_components_button_font:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font : :ref:`font <sdk_ubuntu_components_button_font>`                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The font used for the button's text.

.. _sdk_ubuntu_components_button_gradient:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| gradient : :ref:`Gradient <sdk_qtquick_gradient>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The gradient used to fill the background of the button.

Standard Ubuntu gradients are defined in :ref:`UbuntuColors <sdk_ubuntu_components_ubuntucolors>`.

If both a gradient and a color are specified, the gradient will be used.

**See also** :ref:`color <sdk_ubuntu_components_button_color>`.

.. _sdk_ubuntu_components_button_iconPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconPosition : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The position of the icon relative to the text. Options are "left" and "right". The default value is "left".

If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861

.. _sdk_ubuntu_components_button_strokeColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| strokeColor : color                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set to a color, the button has a stroke border instead of a filled shape.

This QML property was introduced in Ubuntu.Components 1.1.

