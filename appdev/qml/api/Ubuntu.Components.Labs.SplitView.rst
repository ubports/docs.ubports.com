Ubuntu.Components.Labs.SplitView
================================

.. raw:: html

   <p>

A view component with a flexible layout configuration setup. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SplitView -->

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

import Ubuntu.Components.Labs .

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

activeLayout : SplitViewLayout

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

handleDelegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layouts : list<SplitViewLayout>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacing : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

column : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

columnConfig : ViewColumn

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

view : SplitView

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SplitView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component arranges the declared child elements horizontally based on
an active column configuration layout. Child elements are considered to
be views, and each view is identified with a column index, specified by
the SplitView.column attached property. Views should not have width
declared, because the width of each view is specified by the active
layout's configuration (ViewColumn) and will overwrite the value
specified by the view. On the other hand they should have a height
specified, or they can be anchored to the top and bottom of the view.
SplitView being a positioner, remember not to anchor horizontal anchor
lines or anchor fill the columns.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order for a SplitView to show some content it must have at least one
active layout present. Views which are not configured by the active
layout will be hidden. Hidden views may be resized, therefore if the
content is size sensitive (i.e. the amount shown differs depending on
the space available), make sure the content of your view does take this
into account.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
   import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
   import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
   MainView {
   id: main
   width: units<span class="operator">.</span>gu(<span class="number">300</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   SplitView {
   anchors<span class="operator">.</span>fill: parent
   layouts: <span class="operator">[</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   fillWidth: <span class="keyword">true</span>
   }
   }<span class="operator">,</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
   maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
   preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   }
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   fillWidth: <span class="keyword">true</span>
   }
   }
   <span class="operator">]</span>
   }
   Page {
   id: column1
   height: parent<span class="operator">.</span>height
   }
   Page {
   id: column2
   height: parent<span class="operator">.</span>height
   }
   }</pre>

.. raw:: html

   <p>

The SplitView can be used with a Repeater in case the content of the
view columns doesn't need to be preserved between layout changes. The
example above with a Repeater would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
   import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
   import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
   MainView {
   id: main
   width: units<span class="operator">.</span>gu(<span class="number">300</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   SplitView {
   id: view
   anchors<span class="operator">.</span>fill: parent
   layouts: <span class="operator">[</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   fillWidth: <span class="keyword">true</span>
   }
   }<span class="operator">,</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
   maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
   preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   }
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   fillWidth: <span class="keyword">true</span>
   }
   }
   <span class="operator">]</span>
   }
   Repeater {
   model: view<span class="operator">.</span>activeLayout<span class="operator">.</span>columns
   Page {
   height: parent<span class="operator">.</span>height
   }
   }
   }</pre>

.. raw:: html

   <h3>

Resizing

.. raw:: html

   </h3>

.. raw:: html

   <p>

SplitView provides the ability to resize view columns. Each column has
an attached handle which provides the ability to resize the columns
using a mouse or touch. Columns can be resized if the spacing property
is set and the column configurations allow that (see spacing property).

.. raw:: html

   </p>

.. raw:: html

   <h3>

Attached properties

.. raw:: html

   </h3>

.. raw:: html

   <p>

SplitView provides a set of attached properties to each column view.
Views can in this way have access to various values of the SplitView and
configurations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SplitView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeLayout-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] activeLayout : SplitViewLayout

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

The property holds the active SplitViewLayout instance, or null is no
layout is active.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="handleDelegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

handleDelegate : Component

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

The property holds the delegate to be shown for the column resizing
handle. The delegate is for pure visual, mouse and touch handling is
provided by the SplitView component itself. The component provides a
context property called handle which embeds the visuals. This can be
used to anchor the visuals to the resize handle. The thickness of the
handle is driven by the spacing property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
   import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
   import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
   MainView {
   id: main
   width: units<span class="operator">.</span>gu(<span class="number">300</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   SplitView {
   anchors<span class="operator">.</span>fill: parent
   handleDelegate: Rectangle {
   anchors {
   fill: parent
   leftMargin: units<span class="operator">.</span>dp(<span class="number">2</span>)
   rightMargin: units<span class="operator">.</span>dp(<span class="number">2</span>)
   topMargin: handle<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span> <span class="operator">-</span> units<span class="operator">.</span>gu(<span class="number">3</span>)
   bottomMargin: handle<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span> <span class="operator">-</span> units<span class="operator">.</span>gu(<span class="number">3</span>)
   }
   color: UbuntuColors<span class="operator">.</span>graphite
   scale: handle<span class="operator">.</span>containsMouse <span class="operator">|</span><span class="operator">|</span> handle<span class="operator">.</span>pressed <span class="operator">?</span> <span class="number">1.6</span> : <span class="number">1.0</span>
   Behavior on scale { UbuntuNumberAnimation {} }
   }
   layouts: <span class="operator">[</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   fillWidth: <span class="keyword">true</span>
   }
   }<span class="operator">,</span>
   SplitViewLayout {
   when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
   maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
   preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   }
   ViewColumn {
   minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
   fillWidth: <span class="keyword">true</span>
   }
   }
   <span class="operator">]</span>
   }
   Page {
   id: column1
   height: parent<span class="operator">.</span>height
   }
   Page {
   id: column2
   height: parent<span class="operator">.</span>height
   }
   }</pre>

.. raw:: html

   <!-- @@@handleDelegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layouts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layouts : list<SplitViewLayout>

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

The property holds the layout configurations declared for the given
SplitView.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SplitViewLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layouts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spacing : real

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

Spacing between view columns. A value bigger than 0 enables resizing of
columns with a minimumWidth lower than maximumWidth. If spacing is 0 the
columns cannot be resized. Defaults to 4 device pixels.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacing -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$column -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="column-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SplitView.column : int

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

The property holds the column index the view is configured to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@column -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="columnConfig-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SplitView.columnConfig : ViewColumn

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

The attached property holds the active layout's column configuration
data. The value is null if there is no active configuration value
provided for the column.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@columnConfig -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="view-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SplitView.view : SplitView

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

Contains the SplitView instance of the column.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@view -->


