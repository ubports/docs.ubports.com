.. _sdk_ubuntu_components_abstractbutton:

Ubuntu.Components AbstractButton
================================

The AbstractButton class defines the behavior of the button.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`ActionItem <sdk_ubuntu_components_actionitem>`                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`Button <sdk_ubuntu_components_button>`, :ref:`CheckBox <sdk_ubuntu_components_checkbox>`, :ref:`ComboButton <sdk_ubuntu_components_combobutton>`,         |
|                                                                                                                                                        | `Empty </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/>`_ , and `PickerDelegate </sdk/apps/qml/Ubuntu.Components/Pickers.PickerDelegate/>`_ .                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`hovered <sdk_ubuntu_components_abstractbutton_hovered>` : bool
-  :ref:`pressed <sdk_ubuntu_components_abstractbutton_pressed>` : bool
-  :ref:`sensingMargins <sdk_ubuntu_components_abstractbutton_sensingMargins>`

   -  :ref:`sensingMargins.left <sdk_ubuntu_components_abstractbutton_sensingMargins_left>` : real
   -  :ref:`sensingMargins.right <sdk_ubuntu_components_abstractbutton_sensingMargins_right>` : real
   -  :ref:`sensingMargins.top <sdk_ubuntu_components_abstractbutton_sensingMargins_top>` : real
   -  :ref:`sensingMargins.bottom <sdk_ubuntu_components_abstractbutton_sensingMargins_bottom>` : real
   -  :ref:`sensingMargins.all <sdk_ubuntu_components_abstractbutton_sensingMargins_all>` : real

Signals
-------

-  :ref:`clicked <sdk_ubuntu_components_abstractbutton_clicked>`\ ()
-  :ref:`pressAndHold <sdk_ubuntu_components_abstractbutton_pressAndHold>`\ ()

Detailed Description
--------------------

This class defines the behavior of the button. All components deriving from this class support haptic feedback out of the box.

If an action is specified, the button's clicked signal will trigger the action. Subclasses of :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>` can use other properties of action (for example the text and iconName).

Sensing area
~~~~~~~~~~~~

It has been proven that, on touch devices in order to properly aim an active component a minimum of 8x8 millimeters (i.e. 4x4 grid units) area has to be provided. However not all the visuals are of that size, as Icons for example are defaulted to be 2x2 grid units, but a component containing a single Icon still has to be able to capture the press events. Therefore :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>` makes sure this rule of 4x4 grid units for the sensing area is provided. In addition it exposes the :ref:`sensingMargins <sdk_ubuntu_components_abstractbutton_sensingMargins>` property which extends the component's sensing area in all the directions, so other use cases when the sensing area needs to be extended outside of the component's area, or restricted on a given area of the component can be implemented. The following example extends the sensing area on the left, top and bottom with 1 grid units, and on the right with 10 grid units.

.. code:: qml

    AbstractButton {
        width: units.gu(2)
        height: units.gu(2)
        sensingMargins {
            left: units.gu(1)
            top: units.gu(1)
            bottom: units.gu(1)
            right: units.gu(10)
        }
    }

**Note:** Do not set clipping for the component as that will restrict the sensing area to be available on the visual area only.

Property Documentation
----------------------

.. _sdk_ubuntu_components_abstractbutton_hovered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hovered : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

True if the mouse cursor hovers over the button's mouse area.

.. _sdk_ubuntu_components_abstractbutton_pressed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressed : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

True if the user presses a mouse button in the button's mouse area.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **sensingMargins group**                                                                                                                                                                                                                                                                                     |
+==============================================================================================================================================================================================================================================================================================================+
| sensingMargins.left : real                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sensingMargins.right : real                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sensingMargins.top : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sensingMargins.bottom : real                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sensingMargins.all : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property group specifies the margins extending the visual area where the touch events are sensed. Positive values mean the area will be extended on the specified direction outside of the visual area, negative values mean the sensing will fall under the component's visual border. All values default to 0. This does not affect mouse sensing area, which only covers the visual area of the component.

**Note:** If the visual area and the sensing margins are not reaching the 4x4 grid units limit, the component will fall back to these minimum limits. For example, extending a 2x2 grid unit visual component into 5x4 grid units sensing area would look as follows:

.. code:: qml

    AbstractButton {
        width: units.gu(2)
        height: units.gu(2)
        Icon {
            name: "settings"
        }
        sensingArea {
            // no need to set the vertical direction as the minimum of
            // 4 grid units will be taken automatically
            leftMargin: units.gu(1)
            // we only have to add 2 grid units as the width + left margin
            // already gives us 3 grid units out of 5
            rightMargin: units.gu(2)
        }
    }

Signal Documentation
--------------------

.. _sdk_ubuntu_components_abstractbutton_clicked:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clicked()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This handler is called when there is a mouse click on the button and the button is not disabled. If :ref:`action <sdk_ubuntu_components_actionitem_action>` is defined, the action will be triggered.

.. _sdk_ubuntu_components_abstractbutton_pressAndHold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressAndHold()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This handler is called when there is a long press.

