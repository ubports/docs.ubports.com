Ubuntu.Components.ActionBar
===========================

.. raw:: html

   <p>

Show a row of buttons that trigger actions. When the number of visible
actions specified is larger than numberOfSlots, an overflow button will
be shown which triggers an overflow panel that shows the remaining
actions. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionBar -->

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

actions : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

numberOfSlots : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionBar-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ActionBar</a></span> {
   <span class="name">numberOfSlots</span>: <span class="number">2</span>
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;share&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Share&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;starred&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Favorite&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;lock&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Lock&quot;</span>
   }
   ]
   }</pre>

.. raw:: html

   <!-- @@@ActionBar -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

actions : Action

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

The actions to display in the bar. If more actions are specified than
there are slots, an overflow button will be show which opens a popover
with the actions that did not fit in the bar directly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

Set this to override the default delegate button that shows the actions
in the ActionBar. Uses the defaultDelegate of ActionBarStyle by default.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ActionBar</a></span> {
   <span class="name">id</span>: <span class="name">customDelegateBar</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;action 1&quot;</span> },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;action 2&quot;</span> }
   ]
   <span class="name">delegate</span>: <span class="name">Button</span> {
   <span class="name">action</span>: <span class="name">modelData</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">14</span>)
   <span class="name">strokeColor</span>: <span class="name">UbuntuColors</span>.<span class="name">purple</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="numberOfSlots-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

numberOfSlots : int

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

The number of actions to be shown in the bar directly. If the actions
don't fit, an overflow button (using one slot) will be shown which opens
a popover with the remaining actions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting numberOfSlots to 0 will always show the overflow button and no
other action buttons. Default value from the Ambience theme is 3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@numberOfSlots -->


