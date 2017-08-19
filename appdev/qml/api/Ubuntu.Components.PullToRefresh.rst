Ubuntu.Components.PullToRefresh
===============================

.. raw:: html

   <p>

Pull-to-refresh component for Flickables to reload a model upon pull.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PullToRefresh -->

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

Ubuntu.Components 1.1

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StyledItem

.. raw:: html

   </p>

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

content : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

offset : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

refreshing : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

releaseToRefresh : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Flickable

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

refresh()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PullToRefresh-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides ability to initiate data model refresh by pulling
the attached Flickable's content. The refresh can be initiated when the
flickable content is at its top boundary. By dragging the content
further, reaching the threshold value defined by the style will initiate
the manual refresh by emitting the refresh signal. The progress of the
refresh must be notified to the component by defining the completion
clause to the refreshing property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import QtQuick.XmlListModel 2.0
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">listModel</span>
   <span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">listModel</span>
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">text</span>: <span class="name">title</span>
   }
   <span class="type"><a href="index.html">PullToRefresh</a></span> {
   <span class="name">refreshing</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
   <span class="name">onRefresh</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">reload</span>()
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: UbuntuListView has a built-in PullToRefresh, therefore it is
recommended to use UbuntuListView instead of ListView.

.. raw:: html

   </p>

.. raw:: html

   <p>

The component will also show the progress of the model's update when the
refresh gets initiated by the model or from other party. Style
implementations can decide whether to visualize that or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

As default, the component displays a Label visualizing the two states of
the component, which is pull to refresh and release to refresh. As
mentioned, this is driven by the threshold value specified by the style,
and the state is reported by the releaseToRefresh property. The content
specifies the visuals to be shown by the component. Custom
implementations can hold any component, which will be anchor filled to
the component itself.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import QtQuick.XmlListModel 2.0
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">listModel</span>
   <span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">listModel</span>
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">text</span>: <span class="name">title</span>
   }
   <span class="type"><a href="index.html">PullToRefresh</a></span> {
   <span class="name">id</span>: <span class="name">pullToRefresh</span>
   <span class="name">refreshing</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
   <span class="name">onRefresh</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">reload</span>()
   <span class="name">content</span>: <span class="name">Item</span> {
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">name</span>: <span class="name">pullToRefresh</span>.<span class="name">releaseToRefresh</span> ? <span class="string">&quot;search&quot;</span> : <span class="string">&quot;&quot;</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">height</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: When declared as child of Flickable, set parent to the flickable
explicitly so the component does not land in the content of Flickable.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import QtQuick.XmlListModel 2.0
   import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">id</span>: <span class="name">main</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">rssFeed</span>
   <span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   }
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">flickable</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="name">contentWidth</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">width</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="name">rssFeed</span>
   <span class="type"><a href="Ubuntu.Components.ListItems.Standard.md">Standard</a></span> {
   <span class="name">width</span>: <span class="name">main</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="name">text</span>: <span class="name">title</span>
   }
   }
   }
   <span class="type"><a href="index.html">PullToRefresh</a></span> {
   <span class="name">parent</span>: <span class="name">flickable</span>
   <span class="name">refreshing</span>: <span class="name">rssFeed</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
   <span class="name">onRefresh</span>: <span class="name">rssFeed</span>.<span class="name">reload</span>()
   }
   }
   }
   }</pre>

.. raw:: html

   <h3>

Styling

.. raw:: html

   </h3>

.. raw:: html

   <p>

The component style API is defined by the PullToRefreshStyle component.
Styles may define different ways to initiate refresh upon dragging.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PullToRefresh -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$content -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="content-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

content : Component

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

The property holds the visuals to be displayed when the component is
revealed upon manual refresh. The default value is a Label showing "Pull
to refresh..." text when the component is pulled down till the
activation threshold, and "Release to refresh..." after that.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@content -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="offset-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] offset : real

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

The property holds the offset the component is pulled from the target
Flickable's topMargin. The property can be used to provide animations in
custom contents.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@offset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="refreshing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

refreshing : bool

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

The property notifies the component about the ongoing refresh operation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@refreshing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="releaseToRefresh-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] releaseToRefresh : bool

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

The property specifies when the component is ready to trigger the
refresh() signal. The logic is defined by the style and the value is
transferred from the style's releaseToRefresh property. The property can
be used to define custom visuals for content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@releaseToRefresh -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Flickable

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

The Flickable or derivate the component is attached to. This can only be
the parent or a sibling of the component. Defaults to the parent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$refresh -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="refresh-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

refresh()

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

Signal emitted when the model refresh is initiated by the component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@refresh -->


