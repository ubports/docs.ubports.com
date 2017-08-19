Ubuntu.Components.Tab
=====================

.. raw:: html

   <p>

Component to represent a single tab in a Tabs environment. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Tab -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

index : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

page : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Tab-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples: See Tabs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Tab -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="index-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

read-onlyindex : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The property holds the index of the tab within the Tabs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="page-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

page : Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The contents of the Tab. Use a Page or a Loader that instantiates a
Component or loads an external Page. When using a Loader, do not set the
anchors or dimensions of the Loader so that the Page can control the
height and prevent overlapping the header. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">pageComponent</span>
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Loaded when tab is selected.&quot;</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Tabs.md">Tabs</a></span> {
   <span class="name">id</span>: <span class="name">tabs</span>
   <span class="type"><a href="#">Tab</a></span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Simple page&quot;</span>)
   <span class="name">page</span>: <span class="name">Page</span> {
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Always loaded&quot;</span>)
   }
   }
   }
   <span class="type"><a href="#">Tab</a></span> {
   <span class="name">id</span>: <span class="name">loaderTab</span>
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Page loader&quot;</span>)
   <span class="name">page</span>: <span class="name">Loader</span> {
   <span class="comment">// no anchors</span>
   <span class="name">id</span>: <span class="name">loader</span>
   <span class="name">sourceComponent</span>: <span class="name">tabs</span>.<span class="name">selectedTab</span> <span class="operator">==</span> <span class="name">loaderTab</span> ? <span class="name">pageComponent</span> : <span class="number">null</span>
   <span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@page -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The title that is shown on the tab button used to select this tab.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->


