UbuntuUI.Tab
============

.. raw:: html

   <p>

One of the navigation pattern that can be used within an Ubuntu App is
the flat navigation. Tabs are the standard way to provide such a
navigation pattern from within your application.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Tab represents the UI element that hosts your tab content. This UI
element is being activated by the user selecting it as part of the
Header element.

.. raw:: html

   </p>

UbuntuUI.Tab( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;/body&gt;
   &lt;div data-role=&quot;mainview&quot;&gt;
   &lt;header data-role=&quot;header&quot; id=&quot;headerID&quot;&gt;
   &lt;ul data-role=&quot;tabs&quot;&gt;
   &lt;li data-role=&quot;tabitem&quot; data-page=&quot;tabID&quot;&gt;
   Main
   &lt;/li&gt;
   &lt;li data-role=&quot;tabitem&quot; data-page=&quot;page2&quot;&gt;
   Two
   &lt;/li&gt;
   &lt;/ul&gt;
   &lt;/header&gt;
   &lt;div data-role=&quot;content&quot;&gt;
   &lt;div data-role=&quot;tab&quot; id=&quot;tabID&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;div data-role=&quot;tab&quot; id=&quot;page2&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/body&gt;
   JavaScript access:
   var tab = UI.tab(&quot;tabID&quot;);</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

activate( )

.. raw:: html

   <p>

Activates the current tab.

.. raw:: html

   </p>

deactivate( )

.. raw:: html

   <p>

Deactivates the current tab.

.. raw:: html

   </p>

DOMElement element( )

.. raw:: html

   <p>

Returns the DOM element associated with the selector this widget is bind
to.

.. raw:: html

   </p>

Returns: <DOMElement>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var mytab = UI.tab(&quot;tabid&quot;).element();</code></pre>

Boolean isTab( )

.. raw:: html

   <p>

Validates that a given DOM node element is a Ubuntu UI Tab.

.. raw:: html

   </p>

Returns: <Boolean>

.. raw:: html

   <p>

if the DOM element is a tab

.. raw:: html

   </p>
