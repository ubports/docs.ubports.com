UbuntuUI.Tabs
=============

.. raw:: html

   <p>

One of the navigation pattern that can be used within an Ubuntu App is
the flat navigation. Tabs are the standard way to provide such a
navigation pattern from within your application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Tabs are defined from within the Header part of your application HTML.
See the Header class for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

Declare the Header and Tabs in HTML as a direct child of the top level
Page as a sibling to the content div.

.. raw:: html

   </p>

UbuntuUI.Tabs( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;body&gt;
   &lt;div data-role=&quot;mainview&quot;&gt;
   &lt;header data-role=&quot;header&quot;&gt;
   &lt;ul data-role=&quot;tabs&quot;&gt;
   &lt;li data-role=&quot;tabitem&quot; data-page=&quot;main&quot;&gt;
   Main
   &lt;/li&gt;
   &lt;li data-role=&quot;tabitem&quot; data-page=&quot;page2&quot;&gt;
   Two
   &lt;/li&gt;
   &lt;/ul&gt;
   &lt;/header&gt;
   &lt;div data-role=&quot;content&quot;&gt;
   &lt;div data-role=&quot;tab&quot; id=&quot;main&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;div data-role=&quot;tab&quot; id=&quot;page2&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/body&gt;
   JavaScript access:
   UI.tabs.METHOD();</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   </ul>

count <Unknown>

.. raw:: html

   <p>

Return the number of tab elements in the header

.. raw:: html

   </p>

currentPage <Unknown>

.. raw:: html

   <p>

Return the page associated with the currently selected tab

.. raw:: html

   </p>

selectedTab <Unknown>

.. raw:: html

   <p>

Return the currently selected tab element

.. raw:: html

   </p>

selectedTabIndex <Unknown>

.. raw:: html

   <p>

Return the index of the selected tab

.. raw:: html

   </p>

selectedTabIndex <Unknown>

.. raw:: html

   <p>

Sets the index of the selected tab

.. raw:: html

   </p>

tabChildren <Unknown>

.. raw:: html

   <p>

Return the list of DOM elements of the tab

.. raw:: html

   </p>
