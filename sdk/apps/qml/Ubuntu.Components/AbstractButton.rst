The AbstractButton class defines the behavior of the button.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ActionItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ActionItem/>`__             |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Button </sdk/apps/qml/Ubuntu.Compon |
|                                      | ents/Button/>`__,                    |
|                                      | `CheckBox </sdk/apps/qml/Ubuntu.Comp |
|                                      | onents/CheckBox/>`__,                |
|                                      | `ComboButton </sdk/apps/qml/Ubuntu.C |
|                                      | omponents/ComboButton/>`__,          |
|                                      | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__,            |
|                                      | and                                  |
|                                      | `PickerDelegate </sdk/apps/qml/Ubunt |
|                                      | u.Components/Pickers.PickerDelegate/ |
|                                      | >`__.                                |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`hovered </sdk/apps/qml/Ubuntu.Components/AbstractButton#hovered-prop>`__****
   : bool
-  ****`pressed </sdk/apps/qml/Ubuntu.Components/AbstractButton#pressed-prop>`__****
   : bool
-  ****`sensingMargins </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins-prop>`__****

   -  ****`sensingMargins.left </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins.left-prop>`__****
      : real
   -  ****`sensingMargins.right </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins.right-prop>`__****
      : real
   -  ****`sensingMargins.top </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins.top-prop>`__****
      : real
   -  ****`sensingMargins.bottom </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins.bottom-prop>`__****
      : real
   -  ****`sensingMargins.all </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins.all-prop>`__****
      : real

Signals
-------

-  ****`clicked </sdk/apps/qml/Ubuntu.Components/AbstractButton#clicked-signal>`__****\ ()
-  ****`pressAndHold </sdk/apps/qml/Ubuntu.Components/AbstractButton#pressAndHold-signal>`__****\ ()

Detailed Description
--------------------

This class defines the behavior of the button. All components deriving
from this class support haptic feedback out of the box.

If an action is specified, the button's clicked signal will trigger the
action. Subclasses of
`AbstractButton </sdk/apps/qml/Ubuntu.Components/AbstractButton/>`__ can
use other properties of action (for example the text and iconName).

Sensing area
~~~~~~~~~~~~

It has been proven that, on touch devices in order to properly aim an
active component a minimum of 8x8 millimeters (i.e. 4x4 grid units) area
has to be provided. However not all the visuals are of that size, as
Icons for example are defaulted to be 2x2 grid units, but a component
containing a single Icon still has to be able to capture the press
events. Therefore
`AbstractButton </sdk/apps/qml/Ubuntu.Components/AbstractButton/>`__
makes sure this rule of 4x4 grid units for the sensing area is provided.
In addition it exposes the
`sensingMargins </sdk/apps/qml/Ubuntu.Components/AbstractButton#sensingMargins-prop>`__
property which extends the component's sensing area in all the
directions, so other use cases when the sensing area needs to be
extended outside of the component's area, or restricted on a given area
of the component can be implemented. The following example extends the
sensing area on the left, top and bottom with 1 grid units, and on the
right with 10 grid units.

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

**Note:** Do not set clipping for the component as that will restrict
the sensing area to be available on the visual area only.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ hovered : bool                                                  |
+--------------------------------------------------------------------------+

True if the mouse cursor hovers over the button's mouse area.

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

True if the user presses a mouse button in the button's mouse area.

| 

+--------------------------------------------------------------------------+
|        \ **sensingMargins group**                                        |
+==========================================================================+
|        \ sensingMargins.left : real                                      |
+--------------------------------------------------------------------------+
|        \ sensingMargins.right : real                                     |
+--------------------------------------------------------------------------+
|        \ sensingMargins.top : real                                       |
+--------------------------------------------------------------------------+
|        \ sensingMargins.bottom : real                                    |
+--------------------------------------------------------------------------+
|        \ sensingMargins.all : real                                       |
+--------------------------------------------------------------------------+

The property group specifies the margins extending the visual area where
the touch events are sensed. Positive values mean the area will be
extended on the specified direction outside of the visual area, negative
values mean the sensing will fall under the component's visual border.
All values default to 0. This does not affect mouse sensing area, which
only covers the visual area of the component.

**Note:** If the visual area and the sensing margins are not reaching
the 4x4 grid units limit, the component will fall back to these minimum
limits. For example, extending a 2x2 grid unit visual component into 5x4
grid units sensing area would look as follows:

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

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clicked()                                                       |
+--------------------------------------------------------------------------+

This handler is called when there is a mouse click on the button and the
button is not disabled. If
`action </sdk/apps/qml/Ubuntu.Components/ActionItem#action-prop>`__ is
defined, the action will be triggered.

| 

+--------------------------------------------------------------------------+
|        \ pressAndHold()                                                  |
+--------------------------------------------------------------------------+

This handler is called when there is a long press.

| 
