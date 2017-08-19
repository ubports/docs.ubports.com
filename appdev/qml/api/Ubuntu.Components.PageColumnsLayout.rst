Ubuntu.Components.PageColumnsLayout
===================================

.. raw:: html

   <p>

Component configuring a layout in an AdaptivePageLayout component.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageColumnsLayout -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

QtObject

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

data : list<PageColumn>

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

   <!-- $$$PageColumnsLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component specifies the column configuration of a specific layout.
The layout will have as many columns as many PageColumn elements will be
declared. The layout will be activated when the when property evaluates
to true. There can be many layouts evaluated to true, only the first one
evaluated to true in the AdaptivePageLayout::layouts list will be
activated.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">primaryPage</span>: <span class="name">page1</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="index.html">PageColumnsLayout</a></span> {
   <span class="name">when</span>: <span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="comment">// column #0</span>
   <span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
   <span class="name">minimumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">maximumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="name">preferredWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   }
   <span class="comment">// column #1</span>
   <span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
   <span class="name">fillWidth</span>: <span class="number">true</span>
   }
   },
   <span class="type"><a href="index.html">PageColumnsLayout</a></span> {
   <span class="name">when</span>: <span class="number">true</span>
   <span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
   <span class="name">fillWidth</span>: <span class="number">true</span>
   <span class="name">minimumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   }
   ]
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page1</span>
   <span class="name">title</span>: <span class="string">&quot;Main page&quot;</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page2 above &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToCurrentColumn</span>(<span class="name">page1</span>, <span class="name">page2</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page3 next to &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToNextColumn</span>(<span class="name">page1</span>, <span class="name">page3</span>)
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page2</span>
   <span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page3</span>
   <span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

In the example above the second PageColumnLayout's condition is always
set to true, which means that that the layout will be always active
unless the first layout's condition evaluates to true. The layout
overrides the single column minimumWidth default value. Note that
PageColumn::fillWidth must be also set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: When none of the conditions is met, a single column layout will be
used.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PageColumn.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageColumnsLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] data : list<PageColumn>

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

Default property holding the PageColumn elements configuring each
column.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

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

Condition activating the layout. Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@when -->


