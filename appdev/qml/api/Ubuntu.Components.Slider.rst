Ubuntu.Components.Slider
========================

.. raw:: html

   <p>

Slider is a component to select a value from a continuous range of
values. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Slider -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StyledItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

live : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumValue : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumValue : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stepSize : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

touched(bool onThumb)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

formatValue(v)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Slider-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The slider's sensing area is defined by the width and height, therefore
styles should take this into account when defining the visuals, and
alter these values to align the graphics' sizes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also the Design Guidelines on Sliders.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">Slider</a></span> {
   <span class="keyword">function</span> <span class="name">formatValue</span>(<span class="name">v</span>) { <span class="keyword">return</span> <span class="name">v</span>.<span class="name">toFixed</span>(<span class="number">2</span>) }
   <span class="name">minimumValue</span>: -<span class="number">3.14</span>
   <span class="name">maximumValue</span>: <span class="number">3.14</span>
   <span class="name">value</span>: <span class="number">0.0</span>
   <span class="name">live</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Slider -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$live -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="live-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

live : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Defines whether the value is updated while the thumb is dragged or just
when the thumb is released.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@live -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumValue-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumValue : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The maximum value from the continuous range of values. If this value is
lesser than minimumValue, the component will be in an inconsistent
state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumValue-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumValue : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The minimum value from the continuous range of values. If this value is
greater than maximumValue, the component will be in an inconsistent
state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressed : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the Slider is currently being pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stepSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stepSize : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The distance between two selectable values in the range defined by
[minimumValue, maximumValue].

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stepSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The current value of the slider. This property is not changed while the
thumb is dragged unless the live property is set to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$touched -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touched-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touched(bool onThumb)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The signal is emitted when there is a click on the slider. The onThumb
parameter provides information if the click, was inside of the thumb
element.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touched -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$formatValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="formatValue-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

formatValue( v)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This function is used by the value indicator to show the current value.
Reimplement this function if you want to show different information. By
default, the value v is rounded to the nearest integer value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@formatValue -->


