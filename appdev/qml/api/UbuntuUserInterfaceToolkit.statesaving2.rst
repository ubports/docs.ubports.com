UbuntuUserInterfaceToolkit.statesaving2
=======================================

.. raw:: html

   <h2 id="specifying-more-properties">

Specifying more properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

So far we have saved one single property, but as the
{StateSaver::properties} property name suggests, there can be more
properties serialized at the same time. For example, to serialize both
color and opacity of a Rectangle, the code would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.9</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color, opacity&quot;</span>
   }</pre>

.. raw:: html

   <p>

Note that not all types of properties can be saved. Object types or list
models for example are excluded from the types that can be saved, but
all properties listed as QML base types can be serialized.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="grouped-properties">

Grouped properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

Grouped properties, which have serializable types can also be saved. It
simply needs to be specified together with the group identifier.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color, border.color, border.width&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Change&quot;</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   <span class="name">root</span>.<span class="name">border</span>.<span class="name">width</span> <span class="operator">=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>) <span class="operator">*</span> <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>)
   <span class="name">root</span>.<span class="name">border</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <h2 id="property-groups">

Property groups

.. raw:: html

   </h2>

.. raw:: html

   <p>

Using the same logic, custom property groups can also be saved.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;border.color, border.width, innerRect.color&quot;</span>
   property <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> <span class="name">innerRect</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">parent</span>: <span class="name">root</span>
   <span class="name">z</span>: <span class="number">0</span>
   <span class="name">anchors</span>.centerIn: <span class="name">root</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Change&quot;</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">z</span>: <span class="number">1</span>
   <span class="name">onClicked</span>: {
   <span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   <span class="name">root</span>.<span class="name">border</span>.<span class="name">width</span> <span class="operator">=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>) <span class="operator">*</span> <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>)
   <span class="name">root</span>.<span class="name">border</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   <span class="name">innerRect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

Alternatively, individual properties of the property group can be saved
in the following way:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">property <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> <span class="name">innerRect</span>: <span class="name">Rectangle</span> {
   <span class="name">id</span>: <span class="name">inner</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">parent</span>: <span class="name">root</span>
   <span class="name">z</span>: <span class="number">0</span>
   <span class="name">anchors</span>.centerIn: <span class="name">root</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@statesaving2.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Recap on state saving

.. raw:: html

   </li>

.. raw:: html

   </p>
