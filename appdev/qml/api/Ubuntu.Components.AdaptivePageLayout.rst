Ubuntu.Components.AdaptivePageLayout
====================================

.. raw:: html

   <p>

View with multiple columns of Pages. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AdaptivePageLayout -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

asynchronous : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

columns : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layouts : PageColumnsLayout

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryPage : Page

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryPageSource : var

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

addPageToCurrentColumn(sourcePage, page, properties)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

addPageToNextColumn(sourcePage, page, properties)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removePages(page)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AdaptivePageLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides a flexible way of viewing a stack of pages in one
or more columns. Unlike in PageStack, there can be more than one Page
active at a time, depending on the number of the columns in the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

AdaptivePageLayout stores pages added in a tree. Pages are added
relative to a given page, either as sibling (addPageToCurrentColumn) or
as child (addPageToNextColumn). This means that removing a non-leaf page
from the Page tree will remove all its children from the page tree.

.. raw:: html

   </p>

.. raw:: html

   <p>

The columns are populated from left to right. The column a page is added
to is detected based on the source page that is given to the functions
adding the page. The pages can be added either to the same column the
source page resides or to the column next to the source page. Giving a
null value to the source page will add the page to the leftmost column
of the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

The primary page, the very first page must be specified either through
the primaryPage or primaryPageSource properties. primaryPage can only
hold a Page instance, primaryPageSource can either be a Component or a
url to a document defining a Page. primaryPageSource has precedence over
primaryPage, and when set it will report the loaded Page through
primaryPage property, and will replace any value set into that property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">primaryPage</span>: <span class="name">page1</span>
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page1</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">id</span>: <span class="name">header</span>
   <span class="name">title</span>: <span class="string">&quot;Main Page&quot;</span>
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page2 above &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToCurrentColumn</span>(<span class="name">page1</span>, <span class="name">page2</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page3 next to &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToNextColumn</span>(<span class="name">page1</span>, <span class="name">page3</span>)
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page2</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page3</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Observe the use of the Page::pageStack property in the example
above. The same property is used to share the AdaptivePageLayout
instance the Page is used in, therefore the same page can be used in a
PageStack or in an AdaptivePageLayout. However implementations must make
sure the desired PageStack or AdaptivePageLayout function exists in the
instance before using it.

.. raw:: html

   </p>

.. raw:: html

   <p>

AdaptivePageLayout supports adaptive column handling. When the number of
columns changes at runtime the pages are automatically rearranged.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the component splits the layout in two columns when the width
of the layout exceeds 80 grid units. The first column is sized to 40
grid unit width and the second one to fill the rest of the remaining
space. When the 80 grid unit breakpoint is reached, the component will
switch from one column to two, and vice versa. These defaults can be
overridden through the layouts property by defining the possible
layouts, their column sizing and the breakpoints when the layouts should
be activated. PageColumn configurations must appear in the same order
(from left to right) as the columns appear in the layout. If none of the
layouts condition is met, a one column layout will be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">primaryPageSource</span>: <span class="name">page1Component</span>
   <span class="name">layouts</span>: <span class="name">PageColumnsLayout</span> {
   <span class="name">when</span>: <span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="comment">// column #0</span>
   <span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
   <span class="name">minimumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">maximumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="name">preferredWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   }
   <span class="comment">// column #1</span>
   <span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
   <span class="name">fillWidth</span>: <span class="number">true</span>
   }
   }
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">page1Component</span>
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page1</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">id</span>: <span class="name">header</span>
   <span class="name">title</span>: <span class="string">&quot;Main page&quot;</span>
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page2 above &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToCurrentColumn</span>(<span class="name">page1</span>, <span class="name">page2</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Add Page3 next to &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
   <span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToNextColumn</span>(<span class="name">page1</span>, <span class="name">page3</span>)
   }
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page2</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">id</span>: <span class="name">page3</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

A column is considered to be resizable if the PageColumn::minimumWidth
and PageColumn::maximumWidth configuration differs. This implies that if
a column is not meant to be resized, it should have
PageColumn::minimumWidth and PageColumn::maximumWidth set to the same
value. In the example above, the first column can be resized to a
minimum of 30, and a maximum of 60 grid units, and the preferred width
is set to 40 grid units. This width is set every time the layout is
activated.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a Page with the Page::header property set is added to an
AdaptivePageLayout, the AdaptivePageLayout will synchronize the height
of that header with the height of the headers in other columns, i.e.,
the height of each of the headers will be set to the maximum
implicitHeight of all the headers.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PageStack, PageColumnsLayout, and PageColumn.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AdaptivePageLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asynchronous-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

asynchronous : bool

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

The property drives the way the pages should be loaded, synchronously or
asynchronously. Defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="columns-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] columns : int

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

The property holds the number of columns shown in the layout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@columns -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layouts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layouts : PageColumnsLayout

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

The property holds the different layout configurations overriding the
default configurations. Defaults to an empty list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PageColumnsLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layouts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryPage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryPage : Page

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

The property holds the first Page which will be added to the view. If
the view has more than one column, the page will be added to the
leftmost column. The property can only hold a Page instance. When
changed runtime (not by the AdaptivePageLayout component itself), the
primaryPageSource property will be reset.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@primaryPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryPageSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryPageSource : var

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

The property specifies the source of the primaryPage in case the primary
page is created from a Component or loaded from an external document. It
has precedence over primaryPage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@primaryPageSource -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addPageToCurrentColumn -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addPageToCurrentColumn-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addPageToCurrentColumn( sourcePage, page, properties)

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

Adds a page to the column the sourcePage resides in and removes all
pages from the higher columns. page can be a Component or a file.
properties is a JSON object containing properties to be set when page is
created. sourcePage must be active.

.. raw:: html

   </p>

.. raw:: html

   <p>

The function creates the new page asynchronously if the new page to be
added is a Component or a QML document and the asynchronous property is
set to true. In this case the function returns an incubator which can be
used to track the page creation. For more about incubation in QML and
creating components asynchronously, see Component.incubateObject(). The
following example removes an element from the list model whenever the
page opened in the second column is closed. Note, the example must be
run on desktop or on a device with at least 90 grid units screen width.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">page2Component</span>
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">id</span>: <span class="name">header</span>
   <span class="name">title</span>: <span class="string">&quot;Second Page&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
   <span class="name">text</span>: <span class="string">&quot;Close me&quot;</span>
   <span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">removePages</span>(<span class="name">pageStack</span>.<span class="name">primaryPage</span>);
   }
   }
   }
   <span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
   <span class="name">id</span>: <span class="name">pageLayout</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">primaryPage</span>: <span class="name">Page</span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Primary Page&quot;</span>
   <span class="name">flickable</span>: <span class="name">listView</span>
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">listView</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">10</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> { <span class="name">text</span>: <span class="name">modelData</span> }
   <span class="name">onClicked</span>: {
   var <span class="name">incubator</span> = <span class="name">pageLayout</span>.<span class="name">addPageToNextColumn</span>(<span class="name">pageLayout</span>.<span class="name">primaryPage</span>, <span class="name">page2Component</span>);
   <span class="keyword">if</span> (<span class="name">incubator</span> <span class="operator">&amp;&amp;</span> <span class="name">incubator</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Loading</span>) {
   <span class="name">incubator</span>.<span class="name">onStatusChanged</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">status</span>) {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   <span class="comment">// connect page's destruction to decrement model</span>
   <span class="name">incubator</span>.<span class="name">object</span>.<span class="name">Component</span>.<span class="name">destruction</span>.<span class="name">connect</span>(<span class="keyword">function</span>() {
   listView.model--;
   });
   }
   }
   }
   }
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See also Component.incubateObject.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addPageToCurrentColumn -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addPageToNextColumn-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addPageToNextColumn( sourcePage, page, properties)

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

Remove all previous pages from the next column (relative to the column
that holds sourcePage) and all following columns, and then add page to
the next column. If sourcePage is located in the rightmost column, the
new page will be pushed to the same column as sourcePage. The return
value is the same as in addPageToCurrentColumn case.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addPageToNextColumn -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removePages-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removePages( page)

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

The function removes and deletes all pages up to and including page is
reached. If the page is the same as the primaryPage, only its child
pages will be removed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removePages -->


