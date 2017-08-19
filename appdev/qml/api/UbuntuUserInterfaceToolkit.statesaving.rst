UbuntuUserInterfaceToolkit.statesaving
======================================

.. raw:: html

   <p>

During application development it is often required to start an
application from a view which depends on the previous application runs.
Like a web browser should remember the number of opened tabs, their
content or the browsing history, or a news reader application should
continue from the last news the application was opened on, preferably
from the same position.

.. raw:: html

   </p>

.. raw:: html

   <p>

Ubuntu UI toolkit provides a simple way to save the state of any
component within an application, by using the attached component
StateSaver. By simply attaching this component to any QtQuick component
and specifying the properties to be saved, applications can be restored
to any previous state they were before being closed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Consider the following simple QtQuick application, which on button press
randomly changes its background.

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
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Change color&quot;</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="name">Math</span>.<span class="name">random</span>(<span class="number">1</span>), <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

But let's see what else is neded to properly save an application's
components proeprties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@statesaving.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Application name, IDs

.. raw:: html

   </li>

.. raw:: html

   </p>
