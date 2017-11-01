Slider is a component to select a value from a continuous range of
values.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`live </sdk/apps/qml/Ubuntu.Components/Slider#live-prop>`__**** :
   bool
-  ****`maximumValue </sdk/apps/qml/Ubuntu.Components/Slider#maximumValue-prop>`__****
   : real
-  ****`minimumValue </sdk/apps/qml/Ubuntu.Components/Slider#minimumValue-prop>`__****
   : real
-  ****`pressed </sdk/apps/qml/Ubuntu.Components/Slider#pressed-prop>`__****
   : bool
-  ****`stepSize </sdk/apps/qml/Ubuntu.Components/Slider#stepSize-prop>`__****
   : real
-  ****`value </sdk/apps/qml/Ubuntu.Components/Slider#value-prop>`__****
   : real

Signals
-------

-  ****`touched </sdk/apps/qml/Ubuntu.Components/Slider#touched-signal>`__****\ (bool
   *onThumb*)

Methods
-------

-  ****`formatValue </sdk/apps/qml/Ubuntu.Components/Slider#formatValue-method>`__****\ (*v*)

Detailed Description
--------------------

The slider's sensing area is defined by the width and height, therefore
styles should take this into account when defining the visuals, and
alter these values to align the graphics' sizes.

`See also the Design Guidelines on
Sliders <https://design.ubuntu.com/apps/building-blocks/selection#slider>`__.

Example:

.. code:: qml

    Item {
        Slider {
            function formatValue(v) { return v.toFixed(2) }
            minimumValue: -3.14
            maximumValue: 3.14
            value: 0.0
            live: true
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ live : bool                                                     |
+--------------------------------------------------------------------------+

Defines whether the value is updated while the thumb is dragged or just
when the thumb is released.

| 

+--------------------------------------------------------------------------+
|        \ maximumValue : real                                             |
+--------------------------------------------------------------------------+

The maximum value from the continuous range of values. If this value is
lesser than
`minimumValue </sdk/apps/qml/Ubuntu.Components/Slider#minimumValue-prop>`__,
the component will be in an inconsistent state.

| 

+--------------------------------------------------------------------------+
|        \ minimumValue : real                                             |
+--------------------------------------------------------------------------+

The minimum value from the continuous range of values. If this value is
greater than
`maximumValue </sdk/apps/qml/Ubuntu.Components/Slider#maximumValue-prop>`__,
the component will be in an inconsistent state.

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

Whether the Slider is currently being pressed.

| 

+--------------------------------------------------------------------------+
|        \ stepSize : real                                                 |
+--------------------------------------------------------------------------+

The distance between two selectable values in the range defined by
[`minimumValue </sdk/apps/qml/Ubuntu.Components/Slider#minimumValue-prop>`__,
`maximumValue </sdk/apps/qml/Ubuntu.Components/Slider#maximumValue-prop>`__].

| 

+--------------------------------------------------------------------------+
|        \ value : real                                                    |
+--------------------------------------------------------------------------+

The current value of the slider. This property is not changed while the
thumb is dragged unless the live property is set to true.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ touched(bool *onThumb*)                                         |
+--------------------------------------------------------------------------+

The signal is emitted when there is a click on the slider. The onThumb
parameter provides information if the click, was inside of the thumb
element.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ formatValue( *v*)                                               |
+--------------------------------------------------------------------------+

This function is used by the value indicator to show the current value.
Reimplement this function if you want to show different information. By
default, the value v is rounded to the nearest integer value.

| 
