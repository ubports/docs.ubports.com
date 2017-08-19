QtQuick.GridView
================

.. raw:: html

   <p>

For specifying a grid view of items provided by a model More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@GridView -->

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

import QtQuick 2.4

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

Flickable

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

add : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

addDisplaced : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cacheBuffer : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cellHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cellWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displaced : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayMarginBeginning : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayMarginEnd : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveLayoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flow : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

footer : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

footerItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

header : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

headerItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlight : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightFollowsCurrentItem : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightMoveDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightRangeMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keyNavigationWraps : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : model

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

move : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveDisplaced : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

populate : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preferredHighlightBegin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preferredHighlightEnd : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

remove : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeDisplaced : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

snapMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalLayoutDirection : enumeration

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

delayRemove : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isCurrentItem : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

view : GridView

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-signals">

Attached Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

add()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

remove()

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

forceLayout()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int indexAt(int x, int y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

Item itemAt(int x, int y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCurrentIndexDown()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCurrentIndexLeft()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCurrentIndexRight()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moveCurrentIndexUp()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionViewAtBeginning()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionViewAtEnd()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionViewAtIndex(int index, PositionMode mode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$GridView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A GridView displays data from models created from built-in QML types
like ListModel and XmlListModel, or custom model classes defined in C++
that inherit from QAbstractListModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

A GridView has a model, which defines the data to be displayed, and a
delegate, which defines how the data should be displayed. Items in a
GridView are laid out horizontally or vertically. Grid views are
inherently flickable as GridView inherits from Flickable.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows the definition of a simple list model
defined in a file called ContactModel.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListModel</span> {
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Jim Williams&quot;</span>
   <span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
   <span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Bill Smyth&quot;</span>
   <span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Sam Wise&quot;</span>
   <span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

This model can be referenced as ContactModel in other QML files. See QML
Modules for more information about creating reusable components like
this.

.. raw:: html

   </p>

.. raw:: html

   <p>

Another component can display this model data in a GridView, as in the
following example, which creates a ContactModel component for its model,
and a Column (containing Image and Text items) for its delegate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">GridView</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">Column</span> {
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   }
   }</pre>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The view will create a new delegate for each item in the model. Note
that the delegate is able to access the model's name and portrait data
directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

An improved grid view is shown below. The delegate is visually improved
and is moved into a separate contactDelegate component.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactDelegate</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">grid</span>.<span class="name">cellWidth</span>; <span class="name">height</span>: <span class="name">grid</span>.<span class="name">cellHeight</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   }
   }
   }
   <span class="type"><a href="index.html">GridView</a></span> {
   <span class="name">id</span>: <span class="name">grid</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactDelegate</span>
   <span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span> }
   <span class="name">focus</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

The currently selected item is highlighted with a blue Rectangle using
the highlight property, and focus is set to true to enable keyboard
navigation for the grid view. The grid view itself is a focus scope (see
Keyboard Focus in Qt Quick for more details).

.. raw:: html

   </p>

.. raw:: html

   <p>

Delegates are instantiated as needed and may be destroyed at any time.
State should never be stored in a delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

GridView attaches a number of properties to the root item of the
delegate, for example GridView.isCurrentItem. In the following example,
the root delegate item can access this attached property directly as
GridView.isCurrentItem, while the child contactInfo object must refer to
this property as wrapper.GridView.isCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">GridView</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactsDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">contactInfo</span>
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactsDelegate</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Note: Views do not set the clip property automatically. If the view is
not clipped by another item or the screen, it will be necessary to set
this property to true in order to clip the items that are partially or
fully outside the view.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="gridview-layouts">

GridView Layouts

.. raw:: html

   </h2>

.. raw:: html

   <p>

The layout of the items in a GridView can be controlled by these
properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

flow - controls whether items flow from left to right (as a series of
rows) or from top to bottom (as a series of columns). This value can be
either GridView.FlowLeftToRight or GridView.FlowTopToBottom.

.. raw:: html

   </li>

.. raw:: html

   <li>

layoutDirection - controls the horizontal layout direction: that is,
whether items are laid out from the left side of the view to the right,
or vice-versa. This value can be either Qt.LeftToRight or
Qt.RightToLeft.

.. raw:: html

   </li>

.. raw:: html

   <li>

verticalLayoutDirection - controls the vertical layout direction: that
is, whether items are laid out from the top of the view down towards the
bottom of the view, or vice-versa. This value can be either
GridView.TopToBottom or GridView.BottomToTop.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

By default, a GridView flows from left to right, and items are laid out
from left to right horizontally, and from top to bottom vertically.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties can be combined to produce a variety of layouts, as
shown in the table below. The GridViews in the first row all have a flow
value of GridView.FlowLeftToRight, but use different combinations of
horizontal and vertical layout directions (specified by layoutDirection
and verticalLayoutDirection respectively). Similarly, the GridViews in
the second row below all have a flow value of GridView.FlowTopToBottom,
but use different combinations of horizontal and vertical layout
directions to lay out their items in different ways.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="4" rowspan=" 1">

GridViews with GridView.FlowLeftToRight flow

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

(H) Left to right (V) Top to bottom

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Right to left (V) Top to bottom

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Left to right (V) Bottom to top

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Right to left (V) Bottom to top

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="4" rowspan=" 1">

GridViews with GridView.FlowTopToBottom flow

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

(H) Left to right (V) Top to bottom

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Right to left (V) Top to bottom

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Left to right (V) Bottom to top

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

(H) Right to left (V) Bottom to top

.. raw:: html

   <p class="centerAlign">

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

See also QML Data Models, ListView, PathView, and Qt Quick Examples -
Views.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@GridView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="add-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

add : Transition

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

This property holds the transition to apply to items that are added to
the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   add: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; from: <span class="number">100</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Whenever an item is added to the above view, the item will be animated
from the position (100,100) to its final x,y position within the view,
over one second. The transition only applies to the new items that are
added to the view; it does not apply to the items below that are
displaced by the addition of the new items. To animate the displaced
items, set the displaced or addDisplaced properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This transition is not applied to the items that are created when
the view is initially populated, or when the view's model changes. (In
those cases, the populate transition is applied instead.) Additionally,
this transition should not animate the height of the new item; doing so
will cause any items beneath the new item to be laid out at the wrong
position. Instead, the height can be animated within the onAdd handler
in the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also addDisplaced, populate, and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addDisplaced-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

addDisplaced : Transition

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

This property holds the transition to apply to items within the view
that are displaced by the addition of other items to the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   addDisplaced: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Whenever an item is added to the above view, all items beneath the new
item are displaced, causing them to move down (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a NumberAnimation over one second, as specified. This
transition is not applied to the new item that has been added to the
view; to animate the added items, set the add property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the addDisplaced, moveDisplaced or
removeDisplaced transition will be applied. Additionally, if it is not
necessary to specify different transitions depending on whether an item
is displaced by an add, move or remove operation, consider setting the
displaced property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This transition is not applied to the items that are created when
the view is initially populated, or when the view's model changes. In
those cases, the populate transition is applied instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also displaced, add, populate, and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addDisplaced -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cacheBuffer-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cacheBuffer : int

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

This property determines whether delegates are retained outside the
visible area of the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this value is greater than zero, the view may keep as many delegates
instantiated as will fit within the buffer specified. For example, if in
a vertical view the delegate is 20 pixels high, there are 3 columns and
cacheBuffer is set to 40, then up to 6 delegates above and 6 delegates
below the visible area may be created/retained. The buffered delegates
are created asynchronously, allowing creation to occur across multiple
frames and reducing the likelihood of skipping frames. In order to
improve painting performance delegates outside the visible area are not
painted.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value of this property is platform dependent, but will
usually be a value greater than zero. Negative values are ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that cacheBuffer is not a pixel buffer - it only maintains
additional instantiated delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this value can make scrolling the list smoother at the expense
of additional memory usage. It is not a substitute for creating
efficient delegates; the fewer objects and bindings in a delegate, the
faster a view may be scrolled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The cacheBuffer operates outside of any display margins specified by
displayMarginBeginning or displayMarginEnd.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cacheBuffer -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cellHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cellHeight : real

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

These properties holds the width and height of each cell in the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default cell size is 100x100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cellHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cellWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cellWidth : real

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

These properties holds the width and height of each cell in the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default cell size is 100x100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cellWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

This property holds the number of items in the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentIndex : int

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

The currentIndex property holds the index of the current item, and
currentItem holds the current item. Setting the currentIndex to -1 will
clear the highlight and set currentItem to null.

.. raw:: html

   </p>

.. raw:: html

   <p>

If highlightFollowsCurrentItem is true, setting either of these
properties will smoothly scroll the GridView so that the current item
becomes visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the position of the current item may only be approximate until
it becomes visible in the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentItem : Item

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

The currentIndex property holds the index of the current item, and
currentItem holds the current item. Setting the currentIndex to -1 will
clear the highlight and set currentItem to null.

.. raw:: html

   </p>

.. raw:: html

   <p>

If highlightFollowsCurrentItem is true, setting either of these
properties will smoothly scroll the GridView so that the current item
becomes visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the position of the current item may only be approximate until
it becomes visible in the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

The delegate provides a template defining each item instantiated by the
view. The index is exposed as an accessible index property. Properties
of the model are also available depending upon the type of Data Model.

.. raw:: html

   </p>

.. raw:: html

   <p>

The number of objects and bindings in the delegate has a direct effect
on the flicking performance of the view. If at all possible, place
functionality that is not needed for the normal display of the delegate
in a Loader which can load additional components when needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The item size of the GridView is determined by cellHeight and cellWidth.
It will not resize the items based on the size of the root item in the
delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default stacking order of delegate instances is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Delegates are instantiated as needed and may be destroyed at any
time. State should never be stored in a delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displaced-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displaced : Transition

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

This property holds the generic transition to apply to items that have
been displaced by any model operation that affects the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a convenience for specifying a generic transition for items that
are displaced by add, move or remove operations, without having to
specify the individual addDisplaced, moveDisplaced and removeDisplaced
properties. For example, here is a view that specifies a displaced
transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   displaced: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

When any item is added, moved or removed within the above view, the
items below it are displaced, causing them to move down (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a NumberAnimation over one second, as specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a view specifies this generic displaced transition as well as a
specific addDisplaced, moveDisplaced or removeDisplaced transition, the
more specific transition will be used instead of the generic displaced
transition when the relevant operation occurs, providing that the more
specific transition has not been disabled (by setting enabled to false).
If it has indeed been disabled, the generic displaced transition is
applied instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also addDisplaced, moveDisplaced, removeDisplaced, and
ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displaced -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayMarginBeginning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displayMarginBeginning : int

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

This property allows delegates to be displayed outside of the view
geometry.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this value is non-zero, the view will create extra delegates before
the start of the view, or after the end. The view will create as many
delegates as it can fit into the pixel size specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if in a vertical view the delegate is 20 pixels high, there
are 3 columns, and displayMarginBeginning and displayMarginEnd are both
set to 40, then 6 delegates above and 6 delegates below will be created
and shown.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is meant for allowing certain UI configurations, and not
as a performance optimization. If you wish to create delegates outside
of the view geometry for performance reasons, you probably want to use
the cacheBuffer property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtQuick 2.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayMarginBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayMarginEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displayMarginEnd : int

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

This property allows delegates to be displayed outside of the view
geometry.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this value is non-zero, the view will create extra delegates before
the start of the view, or after the end. The view will create as many
delegates as it can fit into the pixel size specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if in a vertical view the delegate is 20 pixels high, there
are 3 columns, and displayMarginBeginning and displayMarginEnd are both
set to 40, then 6 delegates above and 6 delegates below will be created
and shown.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is meant for allowing certain UI configurations, and not
as a performance optimization. If you wish to create delegates outside
of the view geometry for performance reasons, you probably want to use
the cacheBuffer property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtQuick 2.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayMarginEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effectiveLayoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effectiveLayoutDirection : enumeration

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

This property holds the effective layout direction of the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled for locale
layouts, the visual layout direction of the grid will be mirrored.
However, the property layoutDirection will remain unchanged.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also GridView::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveLayoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flow-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flow : enumeration

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

This property holds the flow of the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.FlowLeftToRight (default) - Items are laid out from left to
right, and the view scrolls vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.FlowTopToBottom - Items are laid out from top to bottom, and
the view scrolls horizontally

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@flow -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="footer-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

footer : Component

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

This property holds the component to use as the footer.

.. raw:: html

   </p>

.. raw:: html

   <p>

An instance of the footer component is created for each view. The footer
is positioned at the end of the view, after any items. The default
stacking order of the footer is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also header and footerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@footer -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="footerItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

footerItem : Item

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

This holds the footer item created from the footer component.

.. raw:: html

   </p>

.. raw:: html

   <p>

An instance of the footer component is created for each view. The footer
is positioned at the end of the view, after any items. The default
stacking order of the footer is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also footer and headerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@footerItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="header-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

header : Component

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

This property holds the component to use as the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

An instance of the header component is created for each view. The header
is positioned at the beginning of the view, before any items. The
default stacking order of the header is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also footer and headerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@header -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="headerItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

headerItem : Item

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

This holds the header item created from the header component.

.. raw:: html

   </p>

.. raw:: html

   <p>

An instance of the header component is created for each view. The header
is positioned at the beginning of the view, before any items. The
default stacking order of the header is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also header and footerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@headerItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlight : Component

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

This property holds the component to use as the highlight.

.. raw:: html

   </p>

.. raw:: html

   <p>

An instance of the highlight component is created for each view. The
geometry of the resulting component instance will be managed by the view
so as to stay with the current item, unless the
highlightFollowsCurrentItem property is false. The default stacking
order of the highlight item is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightItem and highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightFollowsCurrentItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightFollowsCurrentItem : bool

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

This property sets whether the highlight is managed by the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is true (the default value), the highlight is moved
smoothly to follow the current item. Otherwise, the highlight is not
moved by the view, and any movement must be implemented by the
highlight.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a highlight with its motion defined by a SpringAnimation item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">highlight</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">view</span>.<span class="name">cellWidth</span>; <span class="name">height</span>: <span class="name">view</span>.<span class="name">cellHeight</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span>
   <span class="name">x</span>: <span class="name">view</span>.<span class="name">currentItem</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">view</span>.<span class="name">currentItem</span>.<span class="name">y</span>
   Behavior on <span class="name">x</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
   Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
   }
   }
   <span class="type"><a href="index.html">GridView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">Column</span> {
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   }
   <span class="name">highlight</span>: <span class="name">highlight</span>
   <span class="name">highlightFollowsCurrentItem</span>: <span class="number">false</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <!-- @@@highlightFollowsCurrentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightItem : Item

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

This holds the highlight item created from the highlight component.

.. raw:: html

   </p>

.. raw:: html

   <p>

The highlightItem is managed by the view unless
highlightFollowsCurrentItem is set to false. The default stacking order
of the highlight item is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlight and highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightMoveDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightMoveDuration : int

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

This property holds the move animation duration of the highlight
delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

highlightFollowsCurrentItem must be true for this property to have
effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the duration is 150ms.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightMoveDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightRangeMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightRangeMode : enumeration

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

These properties define the preferred range of the highlight (for the
current item) within the view. The preferredHighlightBegin value must be
less than the preferredHighlightEnd value.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties affect the position of the current item when the view
is scrolled. For example, if the currently selected item should stay in
the middle of the view when it is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the view will automatically scroll so that
the current item is in the middle of the view. Furthermore, the behavior
of the current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for highlightRangeMode are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the view or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.NoHighlightRange - this is the default value.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@highlightRangeMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keyNavigationWraps-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

keyNavigationWraps : bool

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

This property holds whether the grid wraps key navigation

.. raw:: html

   </p>

.. raw:: html

   <p>

If this is true, key navigation that would move the current item
selection past one end of the view instead wraps around and moves the
selection to the other end of the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, key navigation is not wrapped.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keyNavigationWraps -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layoutDirection : enumeration

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

This property holds the layout direction of the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftToRight (default) - Items will be laid out starting in the top,
left corner. The flow is dependent on the GridView::flow property.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Items will be laid out starting in the top, right
corner. The flow is dependent on the GridView::flow property.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: If GridView::flow is set to GridView.FlowLeftToRight, this is not
to be confused if GridView::layoutDirection is set to Qt.RightToLeft.
The GridView.FlowLeftToRight flow value simply indicates that the flow
is horizontal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also GridView::effectiveLayoutDirection and
GridView::verticalLayoutDirection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : model

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

This property holds the model providing data for the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model provides the set of data that is used to create the items in
the view. Models can be created directly in QML using ListModel,
XmlListModel or VisualItemModel, or provided by C++ model classes. If a
C++ model class is used, it must be a subclass of QAbstractItemModel or
a simple list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Data Models.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

move : Transition

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

This property holds the transition to apply to items in the view that
are being moved due to a move operation in the view's model.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   move: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Whenever the model performs a move operation to move a particular set of
indexes, the respective items in the view will be animated to their new
positions in the view over one second. The transition only applies to
the items that are the subject of the move operation in the model; it
does not apply to items below them that are displaced by the move
operation. To animate the displaced items, set the displaced or
moveDisplaced properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also moveDisplaced and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveDisplaced-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

moveDisplaced : Transition

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

This property holds the transition to apply to items that are displaced
by a move operation in the view's model.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   moveDisplaced: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Whenever the model performs a move operation to move a particular set of
indexes, the items between the source and destination indexes of the
move operation are displaced, causing them to move upwards or downwards
(or sideways, if horizontally orientated) within the view. As this
displacement occurs, the items' movement to their new x,y positions
within the view will be animated by a NumberAnimation over one second,
as specified. This transition is not applied to the items that are the
actual subjects of the move operation; to animate the moved items, set
the move property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the addDisplaced, moveDisplaced or
removeDisplaced transition will be applied. Additionally, if it is not
necessary to specify different transitions depending on whether an item
is displaced by an add, move or remove operation, consider setting the
displaced property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also displaced, move, and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveDisplaced -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="populate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

populate : Transition

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

This property holds the transition to apply to the items that are
initially created for a view.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is applied to all items that are created when:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The view is first created

.. raw:: html

   </li>

.. raw:: html

   <li>

The view's model changes

.. raw:: html

   </li>

.. raw:: html

   <li>

The view's model is reset, if the model is a QAbstractItemModel subclass

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   populate: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

When the view is initialized, the view will create all the necessary
items for the view, then animate them to their correct positions within
the view over one second.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also add and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@populate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preferredHighlightBegin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preferredHighlightBegin : real

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

These properties define the preferred range of the highlight (for the
current item) within the view. The preferredHighlightBegin value must be
less than the preferredHighlightEnd value.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties affect the position of the current item when the view
is scrolled. For example, if the currently selected item should stay in
the middle of the view when it is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the view will automatically scroll so that
the current item is in the middle of the view. Furthermore, the behavior
of the current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for highlightRangeMode are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the view or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.NoHighlightRange - this is the default value.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@preferredHighlightBegin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preferredHighlightEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preferredHighlightEnd : real

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

These properties define the preferred range of the highlight (for the
current item) within the view. The preferredHighlightBegin value must be
less than the preferredHighlightEnd value.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties affect the position of the current item when the view
is scrolled. For example, if the currently selected item should stay in
the middle of the view when it is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the view will automatically scroll so that
the current item is in the middle of the view. Furthermore, the behavior
of the current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for highlightRangeMode are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the view or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.NoHighlightRange - this is the default value.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@preferredHighlightEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

remove : Transition

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

This property holds the transition to apply to items that are removed
from the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   remove: Transition {
   ParallelAnimation {
   NumberAnimation { property: <span class="string">&quot;opacity&quot;</span>; to: <span class="number">0</span>; duration: <span class="number">1000</span> }
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; to: <span class="number">100</span>; duration: <span class="number">1000</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

Whenever an item is removed from the above view, the item will be
animated to the position (100,100) over one second, and in parallel will
also change its opacity to 0. The transition only applies to the items
that are removed from the view; it does not apply to the items below
them that are displaced by the removal of the items. To animate the
displaced items, set the displaced or removeDisplaced properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that by the time the transition is applied, the item has already
been removed from the model; any references to the model data for the
removed index will not be valid.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, if the delayRemove attached property has been set for a
delegate item, the remove transition will not be applied until
delayRemove becomes false again.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeDisplaced and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeDisplaced-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

removeDisplaced : Transition

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

This property holds the transition to apply to items in the view that
are displaced by the removal of other items in the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a view that specifies such a transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">GridView {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   removeDisplaced: Transition {
   NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Whenever an item is removed from the above view, all items beneath it
are displaced, causing them to move upwards (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a NumberAnimation over one second, as specified. This
transition is not applied to the item that has actually been removed
from the view; to animate the removed items, set the remove property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the addDisplaced, moveDisplaced or
removeDisplaced transition will be applied. Additionally, if it is not
necessary to specify different transitions depending on whether an item
is displaced by an add, move or remove operation, consider setting the
displaced property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details and examples on how to use view transitions, see the
ViewTransition documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also displaced, remove, and ViewTransition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeDisplaced -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="snapMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

snapMode : enumeration

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

This property determines how the view scrolling will settle following a
drag or flick. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.NoSnap (default) - the view stops anywhere within the visible
area.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.SnapToRow - the view settles with a row (or column for
GridView.FlowTopToBottom flow) aligned with the start of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.SnapOneRow - the view will settle no more than one row (or
column for GridView.FlowTopToBottom flow) away from the first visible
row at the time the mouse button is released. This mode is particularly
useful for moving one page at a time.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@snapMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verticalLayoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalLayoutDirection : enumeration

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

This property holds the vertical layout direction of the grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.TopToBottom (default) - Items are laid out from the top of the
view down to the bottom of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.BottomToTop - Items are laid out from the bottom of the view up
to the top of the view.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also GridView::layoutDirection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalLayoutDirection -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$delayRemove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delayRemove-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

GridView.delayRemove : bool

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

This attached property holds whether the delegate may be destroyed. It
is attached to each instance of the delegate. The default value is
false.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is sometimes necessary to delay the destruction of an item until an
animation completes. The example delegate below ensures that the
animation completes before the item is removed from the list.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">GridView</span>.onRemove: <span class="name">SequentialAnimation</span> {
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;GridView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">true</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;GridView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">false</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

If a remove transition has been specified, it will not be applied until
delayRemove is returned to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delayRemove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isCurrentItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

GridView.isCurrentItem : bool

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

This attached property is true if this delegate is the current item;
otherwise false.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isCurrentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="view-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

GridView.view : GridView

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

This attached property holds the view that manages this delegate
instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate and also to the header,
the footer and the highlight delegates.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">GridView</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactsDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">contactInfo</span>
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactsDelegate</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <!-- @@@view -->

.. raw:: html

   <h2>

Attached Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="add-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

add()

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

This attached signal is emitted immediately after an item is added to
the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onAdd.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

remove()

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

This attached signal is emitted immediately before an item is removed
from the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a remove transition has been specified, it is applied after this
signal is handled, providing that delayRemove is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onRemove.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$forceLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="forceLayout-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

forceLayout()

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

Responding to changes in the model is usually batched to happen only
once per frame. This means that inside script blocks it is possible for
the underlying model to have changed, but the GridView has not caught up
yet.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method forces the GridView to immediately respond to any
outstanding changes in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@forceLayout -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="indexAt-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int indexAt(int x, int y)

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

Returns the index of the visible item containing the point x, y in
content coordinates. If there is no item at the point specified, or the
item is not visible -1 is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the item is outside the visible area, -1 is returned, regardless of
whether an item will exist at that point when scrolled into view.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@indexAt -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemAt-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Item itemAt(int x, int y)

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

Returns the visible item containing the point x, y in content
coordinates. If there is no item at the point specified, or the item is
not visible null is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the item is outside the visible area, null is returned, regardless of
whether an item will exist at that point when scrolled into view.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemAt -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveCurrentIndexDown-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCurrentIndexDown()

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

Move the currentIndex down one item in the view. The current index will
wrap if keyNavigationWraps is true and it is currently at the end. This
method has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveCurrentIndexDown -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveCurrentIndexLeft-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCurrentIndexLeft()

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

Move the currentIndex left one item in the view. The current index will
wrap if keyNavigationWraps is true and it is currently at the end. This
method has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveCurrentIndexLeft -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveCurrentIndexRight-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCurrentIndexRight()

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

Move the currentIndex right one item in the view. The current index will
wrap if keyNavigationWraps is true and it is currently at the end. This
method has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveCurrentIndexRight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveCurrentIndexUp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

moveCurrentIndexUp()

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

Move the currentIndex up one item in the view. The current index will
wrap if keyNavigationWraps is true and it is currently at the end. This
method has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveCurrentIndexUp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionViewAtBeginning-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionViewAtBeginning()

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

Positions the view at the beginning or end, taking into account any
header or footer.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not recommended to use contentX or contentY to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.
To position the view at startup, this method should be called by
Component.onCompleted. For example, to position the view at the end on
startup:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: <a href="#positionViewAtEnd-method">positionViewAtEnd</a>()</pre>

.. raw:: html

   <!-- @@@positionViewAtBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionViewAtEnd-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionViewAtEnd()

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

Positions the view at the beginning or end, taking into account any
header or footer.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not recommended to use contentX or contentY to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.
To position the view at startup, this method should be called by
Component.onCompleted. For example, to position the view at the end on
startup:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtEnd()</pre>

.. raw:: html

   <!-- @@@positionViewAtEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionViewAtIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionViewAtIndex(int index, PositionMode mode)

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

Positions the view such that the index is at the position specified by
mode:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GridView.Beginning - position item at the top (or left for
GridView.FlowTopToBottom flow) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.Center - position item in the center of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.End - position item at bottom (or right for horizontal
orientation) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.Visible - if any part of the item is visible then take no
action, otherwise bring the item into view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.Contain - ensure the entire item is visible. If the item is
larger than the view the item is positioned at the top (or left for
GridView.FlowTopToBottom flow) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView.SnapPosition - position the item at preferredHighlightBegin.
This mode is only valid if highlightRangeMode is StrictlyEnforceRange or
snapping is enabled via snapMode.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If positioning the view at the index would cause empty space to be
displayed at the beginning or end of the view, the view will be
positioned at the boundary.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not recommended to use contentX or contentY to position the view
at a particular index. This is unreliable since removing items from the
start of the view does not cause all other items to be repositioned. The
correct way to bring an item into view is with positionViewAtIndex.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.
To position the view at startup, this method should be called by
Component.onCompleted. For example, to position the view at the end:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> GridView<span class="operator">.</span>Beginning)</pre>

.. raw:: html

   <!-- @@@positionViewAtIndex -->


