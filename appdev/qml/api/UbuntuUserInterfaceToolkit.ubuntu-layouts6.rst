UbuntuUserInterfaceToolkit.ubuntu-layouts6
==========================================

.. raw:: html

   <p>

There is one more thing you can do with ItemLayout container, which is
to define overlay items for certain hosted items on certain layouts. If
an ItemLayout has child elements defined, the hosted item will be
stacked as topmost element, so all the child elements declared in
ItemLayout will be rendered as overlay on top of the hosted item.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

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
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="type">anchors</span>{
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">margins</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">3</span>)
   }
   <span class="name">radius</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">1</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
   <span class="name">color</span>: <span class="string">&quot;#bbbbbb88&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Overlay item&quot;</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ubuntu-layouts6.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Layouts - Defining more layouts for different form factors

.. raw:: html

   </li>

.. raw:: html

   </p>
