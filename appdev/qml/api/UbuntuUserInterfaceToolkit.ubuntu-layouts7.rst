UbuntuUserInterfaceToolkit.ubuntu-layouts7
==========================================

.. raw:: html

   <p>

As mentioned, with Layouts we can achieve to have a single code base
supporting different form factors. The following example illustrates how
to support different layouts with the same code base.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="default-layout">

Default layout

.. raw:: html

   </h2>

.. raw:: html

   <p class="centerAlign">

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
   <span class="name">id</span>: <span class="name">nolayout</span>
   <span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
   }
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

   <h2 id="conditional-layouts">

Conditional layouts

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Column layout

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   }
   },</pre>

.. raw:: html

   <h3>

Row layout

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;row&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
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
   },</pre>

.. raw:: html

   <h3>

Layout hiding element

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   }
   },</pre>

.. raw:: html

   <h3>

Layout showing more

.. raw:: html

   </h3>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   }
   }</pre>

.. raw:: html

   <h2 id="the-entire-code">

The entire code

.. raw:: html

   </h2>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;column&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;row&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
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
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   }
   },
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
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
   <span class="name">id</span>: <span class="name">nolayout</span>
   <span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
   <span class="type">anchors</span> {
   <span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
   <span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
   }
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
   }</pre>

.. raw:: html

   <h2 id="that-s-it">

That's it

.. raw:: html

   </h2>

.. raw:: html

   <p>

You're ready to go. You can find the layouting components under
Layouting. For further questions please visit #ubuntu-app-devel irc
channel on freenode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-layouts7.html -->
