UbuntuUserInterfaceToolkit.ubuntu-layouts3
==========================================

.. raw:: html

   <p>

So far we have seen how to define the default layout, a conditional
layout and how to place items into those.

.. raw:: html

   </p>

.. raw:: html

   <p>

As mentioned in the ConditionalLayout documentation, items hosted by the
container are laid out based on the order they are hosted by the
ItemLayout.

.. raw:: html

   </p>

.. raw:: html

   <p>

So let's change the order the buttons are laid out so that we have blue,
red and green order.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;row&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   }
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
   }
   }</pre>

.. raw:: html

   <p>

The layout after resizing the window width to exceed 50 GU will look as
follows:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that when resizing the window width to < 50 GU, you will get all
your components back to their original (default) positions and anchors.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-layouts3.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Layouts - Lay out a single item differently from others

.. raw:: html

   </li>

.. raw:: html

   </p>
