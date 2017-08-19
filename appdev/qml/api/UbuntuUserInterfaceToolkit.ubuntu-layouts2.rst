UbuntuUserInterfaceToolkit.ubuntu-layouts2
==========================================

.. raw:: html

   <p>

As first let's create the following default layout, with anchored
buttons to each other.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Defined by the following code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">redButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">greenButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">blueButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
   <span class="type">anchors</span>{
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }</pre>

.. raw:: html

   <h2 id="walkthrough">

Walkthrough

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Import

.. raw:: html

   </h3>

.. raw:: html

   <p>

First of all, in order to use the layouting abilities, you need to
import Ubuntu.Layouts.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>Layouts <span class="number">1.0</span></pre>

.. raw:: html

   <p>

This layout will have the red button anchored to the parent's left, top
and bottom, having a width of 15 grid units. The green and blue buttons
are anchored left to the red button, righ to their parent, top and
bottom to the parent top respectively to the parent bottom and both
having a height of 10 grid units.

.. raw:: html

   </p>

.. raw:: html

   <p>

This layout looks good in small form factors, however as the width,
height and grid unit changes, this layout will start to look cumbersome.

.. raw:: html

   </p>

.. raw:: html

   <p>

Every component we wan to lay out must be marked. This "marking" is done
by attaching the Layouts.item property to erach item participating in
the layouting. Therefore we mark each button with a unique name, "red",
"green" and "blue".

.. raw:: html

   </p>

.. raw:: html

   <h3>

Define the conditional layout

.. raw:: html

   </h3>

.. raw:: html

   <p>

Let's define a column layout for the case when the layout block width
passes 50 GU, and move the items into a Row container in the following
order: "red", "green" and "blue". We also need to specify the size these
components will have, so let's set the width to one third of the
container's width and top and bottom anchored to the row's top and
bottom.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;row&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note the way the container is defined. Items are laid out using
ItemLayout host items. The items will be laid out in the order the
ItemLayout hosts are declared. Beside this ItemLayout also drives the
size, scale, rotation, availability (enabled) visibility and opacity of
the hosted item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The conditional layout is given a name so it can be identified when the
layout is set through Layouts.curentLayout property. This, beside
debugging abilities, gives additional possibilities to configure
properties that are not directly updated by the layouting.

.. raw:: html

   </p>

.. raw:: html

   <p>

Combining this with the default layout we will see the following layout
when width exceeds 50 GU:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   import Ubuntu.Layouts 1.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
   <span class="name">objectName</span>: <span class="string">&quot;layouts&quot;</span>
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;row&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
   }
   }
   ]
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">redButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">greenButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">blueButton</span>
   <span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
   <span class="type">anchors</span>{
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ubuntu-layouts2.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Layouts - Changing the order

.. raw:: html

   </li>

.. raw:: html

   </p>
