Ubuntu.Layouts.Layouts
======================

.. raw:: html

   <p>

The Layouts component allows one to specify multiple different layouts
for a fixed set of Items, and applies the desired layout to those Items.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Layouts -->

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

currentLayout : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layouts : list<ConditionalLayout>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

item : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Layouts-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Layouts is a layout block component incorporating layout definitions and
components to lay out. The layouts are defined in the layouts property,
which is a list of ConditionalLayout components, each declaring the
sizes and positions of the components specified to be laid out.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="comment">//[...]</span>
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="comment">//[...]</span>
   }
   }
   }
   ]
   }</pre>

.. raw:: html

   <p>

The components to be laid out must be declared as children of the
Layouts component, each set an attached property "Layouts.item" to be a
unique string.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="comment">//[...]</span>
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="comment">//[...]</span>
   }
   }
   }
   ]
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The layout of the children of Layouts is considered the default layout,
i.e. currentLayout is an empty string. So in the above example, the
buttons arranged in a row is the default layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

The layouts defined by ConditionalLayout components are created and
activated when at least one of the layout's condition is evaluated to
true. In which case components marked for layout are re-parented to the
components defined to lay out those defined in the ConditionalLayout. In
case multiple conditions are evaluated to true, the first one in the
list will be activated. The deactivated layout is destroyed, exception
being the default layout, which is kept in memory for the entire
lifetime of the Layouts component.

.. raw:: html

   </p>

.. raw:: html

   <p>

Upon activation, the created component fills in the entire layout block.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   }
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   }
   }
   }
   }
   ]
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Conditional layouts must be named in order to be activatable. These
names (strings) should be unique within a Layouts item and can be used
to identify changes in between layouts in scripts, so additional layout
specific customization on laid out items can be done. The current layout
is presented by the currentLayout property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Extending the previous example by changing the button color to green
when the current layout is "column", the code would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   }
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   }
   }
   }
   }
   ]
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
   <span class="name">color</span>: (<span class="name">layouts</span>.<span class="name">currentLayout</span> <span class="operator">===</span> <span class="string">&quot;column&quot;</span>) ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;gray&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
   <span class="name">color</span>: (<span class="name">layouts</span>.<span class="name">currentLayout</span> <span class="operator">===</span> <span class="string">&quot;column&quot;</span>) ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;gray&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Layouts -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentLayout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentLayout : string

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

The property holds the active layout name. The default layout is
identified by an empty string. This property can be used for additional
customization of the components which are not supported by the
layouting.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layouts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layouts : list<ConditionalLayout>

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

The property holds the list of different ConditionalLayout elements.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layouts -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$item -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="item-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Layouts.item : string

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

This attached property identifies a component to be laid out. It is the
unique identifier of the component within a layout block. The property
can be attached to components to be laid out and has no effect when
applied on layout containers.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ItemLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@item -->


