Ubuntu.Layouts.ConditionalLayout
================================

.. raw:: html

   <p>

ConditionalLayout defines the layout of a given form factor. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ConditionalLayout -->

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

import Ubuntu.Layouts 1.0

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

layout : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

when : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ConditionalLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ConditionalLayout is a non-visual element defining the actual layout to
be applied when a given condition evaluates to true. The condition can
be any valid boolean JavaScript expression.

.. raw:: html

   </p>

.. raw:: html

   <p>

As Layouts can be nested, it is recommended to choose properties of the
Layouts item, often width and height, when defining the condition. Other
elements like Screen orientation can also be used to define the layout
activation condition.

.. raw:: html

   </p>

.. raw:: html

   <p>

There must be only a single component defined in the ConditionalLayout
which will be instantiated upon activation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each conditional layout must be named with a string, which identifies
the layout when activated.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">layouts</span>: [
   <span class="type"><a href="index.html">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">3</span>)
   <span class="name">flow</span>: <span class="name">Flow</span>.<span class="name">LeftToRight</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item3&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   }
   }
   ]
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">2</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Button #1&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Button #2&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Button #3&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item3&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

All Items to be managed by the Layouts engine must identify themselves
by setting the Layouts.item attached property to a unique name (string).
These unique names are then used by the ItemLayout component, so can
apply the new layout to the correct Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ItemLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ConditionalLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$layout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] layout : Component

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

Default property holding the definition component of the layout. The
component will be instantiated once the condition evaluates to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property defines the name of the layout. Within the definition of
Layouts, these names should be unique for each layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Layouts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="when-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

when : bool

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

This property defines the condition that when evaluating to true,
chooses this ConditionalLayout to become the active layout. When two
ConditionalLayouts when condition is evaluated to true, the first one
declared in the layouts list is chosen.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@when -->


