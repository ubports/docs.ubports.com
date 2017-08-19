Ubuntu.Components.PageStack
===========================

.. raw:: html

   <p>

A stack of Page items that is used for inter-Page navigation. Pages on
the stack can be popped, and new Pages can be pushed. The page on top of
the stack is the visible one. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageStack -->

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

currentPage : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

data : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

depth : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

clear()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pop()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

push(page, properties)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PageStack-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PageStack should be used inside a MainView in order to automatically add
a header and toolbar to control the stack. The PageStack will
automatically set the header title to the title of the Page that is
currently on top of the stack, and the tools of the toolbar to the tools
of the Page on top of the stack. When more than one Pages are on the
stack, the toolbar will automatically feature a back-button that pop the
stack when triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The anchors of the PageStack are set to fill its parent by default. To
use left/right/top/bottom anchors, explicitly set anchors.fill of the
PageStack to undefined:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="index.html">PageStack</a></span> {
   <span class="name">id</span>: <span class="name">mainStack</span>
   <span class="type">anchors</span> {
   <span class="name">fill</span>: <span class="name">undefined</span> <span class="comment">// unset the default to make the other anchors work</span>
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">bottom</span>: <span class="name">rect</span>.<span class="name">top</span>
   }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
   }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
   }
   <span class="name">Component</span>.onCompleted: <span class="name">mainStack</span>.<span class="name">push</span>(<span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyPage.qml&quot;</span>))
   }</pre>

.. raw:: html

   <p>

Pages that are defined inside the PageStack must initially set their
visibility to false to avoid the pages occluding the PageStack before
they are pushed. When pushing a Page, its visibility is automatically
updated.

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
   <span class="type"><a href="index.html">PageStack</a></span> {
   <span class="name">id</span>: <span class="name">pageStack</span>
   <span class="name">Component</span>.onCompleted: <span class="name">push</span>(<span class="name">page0</span>)
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page0</span>
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Root page&quot;</span>)
   <span class="name">visible</span>: <span class="number">false</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Page one&quot;</span>)
   <span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">page1</span>, {color: <span class="name">UbuntuColors</span>.<span class="name">orange</span>})
   <span class="name">progression</span>: <span class="number">true</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;External page&quot;</span>)
   <span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyCustomPage.qml&quot;</span>))
   <span class="name">progression</span>: <span class="number">true</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Rectangle&quot;</span>
   <span class="name">id</span>: <span class="name">page1</span>
   <span class="name">visible</span>: <span class="number">false</span>
   property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="type">anchors</span> {
   <span class="name">fill</span>: <span class="name">parent</span>
   <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

As shown in the example above, the push() function can take an Item,
Component or URL as input.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageStack -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentPage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentPage : Item

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

The currently active page

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] data : list<Object>

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

Children of PageStack are placed in a separate item such that they are
not active by default until they are pushed on the PageStack.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="depth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

depth : int

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

The current size of the stack

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@depth -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clear-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clear()

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

Deactivate the active page and clear the stack.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pop()

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

Pop the top item from the stack if the stack size is at least 1. Do not
do anything if 0 items are on the stack.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="push-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

push( page, properties)

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

Push a page to the stack, and apply the given (optional) properties to
the page. The pushed page may be an Item, Component or URL. The function
returns the Item that was pushed, or the Item that was created from the
Component or URL. Depending on the animation of the header, the returned
Page may or may not be active and on top of the PageStack yet.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@push -->


