UbuntuUserInterfaceToolkit.statesaving1
=======================================

.. raw:: html

   <h2 id="application-name">

Application name

.. raw:: html

   </h2>

.. raw:: html

   <p>

First of all, the application must have a proper application name set.
If you use Qt Creator's Ubuntu project wizards, you will have the
application name set by default, name which is in sync with the name
from the application's desktop file.

.. raw:: html

   </p>

.. raw:: html

   <p>

The application name plays an essential role in storing the state
archive. By specifying different application names, different state
archives can be serialized for the application. However runtime
application name change would require application restart.

.. raw:: html

   </p>

.. raw:: html

   <p>

Having these preconditions, we can deduct that MainView's
applicationName property is one of the properties which cannot be
serialized.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="ids">

IDs

.. raw:: html

   </h2>

.. raw:: html

   <p>

Components for which property saving is wanted should define an ID, even
though it is otherwise not justified. For example the following code
snippet would give runtime error:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
   }</pre>

.. raw:: html

   <p>

but giving an ID would make it serializable:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
   }</pre>

.. raw:: html

   <p>

This rule must also be applied on component parents in the object
hierarchy.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@statesaving1.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Saving multiple properties

.. raw:: html

   </li>

.. raw:: html

   </p>
