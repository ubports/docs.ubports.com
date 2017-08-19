Ubuntu.Components.AbstractButton
================================

.. raw:: html

   <p>

The AbstractButton class defines the behavior of the button. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AbstractButton -->

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

ActionItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Button, CheckBox, ComboButton, Empty, and PickerDelegate.

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

hovered : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sensingMargins

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

sensingMargins.left : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sensingMargins.right : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sensingMargins.top : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sensingMargins.bottom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sensingMargins.all : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

clicked()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressAndHold()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AbstractButton-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This class defines the behavior of the button. All components deriving
from this class support haptic feedback out of the box.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an action is specified, the button's clicked signal will trigger the
action. Subclasses of AbstractButton can use other properties of action
(for example the text and iconName).

.. raw:: html

   </p>

.. raw:: html

   <h3>

Sensing area

.. raw:: html

   </h3>

.. raw:: html

   <p>

It has been proven that, on touch devices in order to properly aim an
active component a minimum of 8x8 millimeters (i.e. 4x4 grid units) area
has to be provided. However not all the visuals are of that size, as
Icons for example are defaulted to be 2x2 grid units, but a component
containing a single Icon still has to be able to capture the press
events. Therefore AbstractButton makes sure this rule of 4x4 grid units
for the sensing area is provided. In addition it exposes the
sensingMargins property which extends the component's sensing area in
all the directions, so other use cases when the sensing area needs to be
extended outside of the component's area, or restricted on a given area
of the component can be implemented. The following example extends the
sensing area on the left, top and bottom with 1 grid units, and on the
right with 10 grid units.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">AbstractButton</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="type">sensingMargins</span> {
   <span class="name">left</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">top</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">bottom</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">right</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   }</pre>

.. raw:: html

   <p>

Note: Do not set clipping for the component as that will restrict the
sensing area to be available on the visual area only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AbstractButton -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$hovered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hovered-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hovered : bool

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

True if the mouse cursor hovers over the button's mouse area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hovered -->

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

True if the user presses a mouse button in the button's mouse area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sensingMargins-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

sensingMargins group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="sensingMargins.left-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sensingMargins.left : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="sensingMargins.right-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sensingMargins.right : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="sensingMargins.top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sensingMargins.top : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="sensingMargins.bottom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sensingMargins.bottom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="sensingMargins.all-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sensingMargins.all : real

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

The property group specifies the margins extending the visual area where
the touch events are sensed. Positive values mean the area will be
extended on the specified direction outside of the visual area, negative
values mean the sensing will fall under the component's visual border.
All values default to 0. This does not affect mouse sensing area, which
only covers the visual area of the component.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If the visual area and the sensing margins are not reaching the
4x4 grid units limit, the component will fall back to these minimum
limits. For example, extending a 2x2 grid unit visual component into 5x4
grid units sensing area would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">AbstractButton</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">name</span>: <span class="string">&quot;settings&quot;</span>
   }
   <span class="type">sensingArea</span> {
   <span class="comment">// no need to set the vertical direction as the minimum of</span>
   <span class="comment">// 4 grid units will be taken automatically</span>
   <span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="comment">// we only have to add 2 grid units as the width + left margin</span>
   <span class="comment">// already gives us 3 grid units out of 5</span>
   <span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@sensingMargins -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clicked()

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

This handler is called when there is a mouse click on the button and the
button is not disabled. If action is defined, the action will be
triggered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressAndHold-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressAndHold()

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

This handler is called when there is a long press.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressAndHold -->


