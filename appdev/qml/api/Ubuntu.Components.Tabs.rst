Ubuntu.Components.Tabs
======================

.. raw:: html

   <p>

The Tabs class provides an environment where multible Tab children can
be added, and the user is presented with a tab bar with tab buttons to
select different tab pages. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Tabs -->

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentPage : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedTab : Tab

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedTabIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tabChildren : list<Item>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Tabs-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Tabs must be placed inside a MainView so that it will automatically have
a header that shows the tabs that can be selected, and the toolbar which
contains the tools of the Page in the currently selected Tab.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="#">Tabs</a></span> {
   <span class="name">id</span>: <span class="name">tabs</span>
   <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Simple page&quot;</span>)
   <span class="name">page</span>: <span class="name">Page</span> {
   <span class="type">Label</span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;A centered label&quot;</span>
   }
   <span class="name">tools</span>: <span class="name">ToolbarItems</span> {
   <span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
   <span class="name">text</span>: <span class="string">&quot;action&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;action triggered&quot;</span>)
   }
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
   <span class="name">id</span>: <span class="name">externalTab</span>
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;External&quot;</span>)
   <span class="name">page</span>: <span class="name">Loader</span> {
   <span class="name">parent</span>: <span class="name">externalTab</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">source</span>: (<span class="name">tabs</span>.<span class="name">selectedTab</span> <span class="operator">===</span> <span class="name">externalTab</span>) ? <span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyCustomPage.qml&quot;</span>) : <span class="string">&quot;&quot;</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;List view&quot;</span>)
   <span class="name">page</span>: <span class="name">Page</span> {
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">clip</span>: <span class="number">true</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">20</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span>.Standard {
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Item &quot;</span><span class="operator">+</span><span class="name">modelData</span>
   }
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

As the example above shows, an external Page inside a Tab can be loaded
using a Loader. Note that setting the top anchor or the height of the
Loader would override the Page height. We avoid this because the Page
automatically adapts its height to accommodate for the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is possible to use a Repeater to generate tabs, but when doing so,
ensure that the Repeater is declared inside the Tabs at the end, because
otherwise the shuffling of the order of children by the Repeater can
cause incorrect ordering of the tabs.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Navigation Patterns specify that a tabs header should never be
combined with the back button of a PageStack. The only way to combine
Tabs and PageStack that avoids this is by pushing the Tabs as the first
page on the PageStack, and pushing other pages on top of that, as is
shown in the following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">id</span>: <span class="name">mainView</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">38</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="Ubuntu.Components.PageStack.md">PageStack</a></span> {
   <span class="name">id</span>: <span class="name">pageStack</span>
   <span class="name">Component</span>.onCompleted: <span class="name">push</span>(<span class="name">tabs</span>)
   <span class="type"><a href="#">Tabs</a></span> {
   <span class="name">id</span>: <span class="name">tabs</span>
   <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Tab 1&quot;</span>
   <span class="name">page</span>: <span class="name">Page</span> {
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">page3</span>)
   <span class="name">text</span>: <span class="string">&quot;Press&quot;</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Tab 2&quot;</span>
   <span class="name">page</span>: <span class="name">Page</span> {
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Use header to navigate between tabs&quot;</span>
   }
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page3</span>
   <span class="name">visible</span>: <span class="number">false</span>
   <span class="name">title</span>: <span class="string">&quot;Page on stack&quot;</span>
   <span class="type">Label</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Press back to return to the tabs&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Tabs -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

read-onlycount : int

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

Contains the number of tabs in the Tabs component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentPage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

read-onlycurrentPage : Item

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

The page of the currently selected tab.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedTab-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

read-onlyselectedTab : Tab

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

The currently selected tab.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedTab -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedTabIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedTabIndex : int

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

The index of the currently selected tab. The first tab is 0, and -1
means that no tab is selected. The initial value is 0 if Tabs has
contents, or -1 otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedTabIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tabChildren-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaulttabChildren : list<Item>

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

Children are placed in a separate item that has functionality to extract
the Tab items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tabChildren -->


