UbuntuUserInterfaceToolkit.ubuntu-layouts1
==========================================

.. raw:: html

   <p>

First let's introduce the terminology we are going to use across this
tutorial.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Layout Block, Container and Item holder

.. raw:: html

   </h4>

.. raw:: html

   <p>

A layout block is a component embedding several layout definitions and
items to be laid out. It is typically defined by the Layouts component.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each layout defined in the block is compound of containers, which can
host laid out items hosted by item holders.

.. raw:: html

   </p>

.. raw:: html

   <p>

An item holder is a pseudo-item which can host only one item, where the
item is anchored to the item holder's edges, therefore the item holder
has control over the componet's size, scale and rotation.

.. raw:: html

   </p>

.. raw:: html

   <p>

To understand this let's take the following layout structure:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In this layout all three buttons are laid out in the same container, but
green button was required to take the height of the window, whereas the
red and blue buttons were required to have the same width and height.

.. raw:: html

   </p>

.. raw:: html

   <p>

Illustrating the layout on the image with code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> { <span class="comment">// &lt;-- layout block</span>
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">layouts</span>: [
   <span class="comment">// [...]</span>
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> { <span class="comment">// &lt;-- layout</span>
   <span class="name">name</span>: <span class="string">&quot;composit&quot;</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> { <span class="comment">// &lt;-- layout container</span>
   <span class="comment">// [...]</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
   <span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
   <span class="comment">// [...]</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
   <span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
   <span class="comment">// [...]</span>
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
   <span class="name">item</span>: <span class="string">&quot;item3&quot;</span>
   <span class="comment">// [...]</span>
   }
   }
   }
   ]
   <span class="comment">// the items to lay outitem3</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
   <span class="comment">// [...]</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
   <span class="comment">// [...]</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">Layouts</span>.item: <span class="string">&quot;item3&quot;</span>
   <span class="comment">// [...]</span>
   }
   }</pre>

.. raw:: html

   <p>

A container can be any item, however it is preferable to use positioners
or QtQuick layout elements whenever possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

As next step let's create some layouts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-layouts1.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Layouts - The first conditional layout

.. raw:: html

   </li>

.. raw:: html

   </p>
