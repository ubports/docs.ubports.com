QtQuick.ListView
================

.. raw:: html

   <p>

Provides a list view of items provided by a model More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListView -->

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

currentSection : string

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

footerPositioning : enumeration

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

headerPositioning : enumeration

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

highlightMoveVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightRangeMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightResizeDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightResizeVelocity : real

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

orientation : enumeration

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

section

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

section.property : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

section.criteria : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

section.delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

section.labelPositioning : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

snapMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacing : real

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

nextSection : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousSection : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

section : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

view : ListView

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

decrementCurrentIndex()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

forceLayout()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

incrementCurrentIndex()

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

   <!-- $$$ListView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A ListView displays data from models created from built-in QML types
like ListModel and XmlListModel, or custom model classes defined in C++
that inherit from QAbstractItemModel or QAbstractListModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

A ListView has a model, which defines the data to be displayed, and a
delegate, which defines how the data should be displayed. Items in a
ListView are laid out horizontally or vertically. List views are
inherently flickable because ListView inherits from Flickable.

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
   <span class="name">name</span>: <span class="string">&quot;Bill Smith&quot;</span>
   <span class="name">number</span>: <span class="string">&quot;555 3264&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
   <span class="name">number</span>: <span class="string">&quot;555 8426&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Sam Wise&quot;</span>
   <span class="name">number</span>: <span class="string">&quot;555 0473&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Another component can display this model data in a ListView, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Here, the ListView creates a ContactModel component for its model, and a
Text item for its delegate. The view will create a new Text component
for each item in the model. Notice the delegate is able to access the
model's name and number data directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

An improved list view is shown below. The delegate is visually improved
and is moved into a separate contactDelegate component.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactDelegate</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">40</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'&lt;b&gt;Name:&lt;/b&gt; '</span> <span class="operator">+</span> <span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'&lt;b&gt;Number:&lt;/b&gt; '</span> <span class="operator">+</span> <span class="name">number</span> }
   }
   }
   }
   <span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactDelegate</span>
   <span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span> }
   <span class="name">focus</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The currently selected item is highlighted with a blue Rectangle using
the highlight property, and focus is set to true to enable keyboard
navigation for the list view. The list view itself is a focus scope (see
Keyboard Focus in Qt Quick for more details).

.. raw:: html

   </p>

.. raw:: html

   <p>

Delegates are instantiated as needed and may be destroyed at any time.
They are parented to ListView's contentItem, not to the view itself.
State should never be stored in a delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListView attaches a number of properties to the root item of the
delegate, for example ListView:isCurrentItem. In the following example,
the root delegate item can access this attached property directly as
ListView.isCurrentItem, while the child contactInfo object must refer to
this property as wrapper.ListView.isCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactsDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="name">width</span>: <span class="number">180</span>
   <span class="name">height</span>: <span class="name">contactInfo</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">contactInfo</span>
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactsDelegate</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Note: Views do not enable clip automatically. If the view is not clipped
by another item or the screen, it will be necessary to set clip: true in
order to have the out of view items clipped nicely.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="listview-layouts">

ListView Layouts

.. raw:: html

   </h2>

.. raw:: html

   <p>

The layout of the items in a ListView can be controlled by these
properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

orientation - controls whether items flow horizontally or vertically.
This value can be either Qt.Horizontal or Qt.Vertical.

.. raw:: html

   </li>

.. raw:: html

   <li>

layoutDirection - controls the horizontal layout direction for a
horizontally-oriented view: that is, whether items are laid out from the
left side of the view to the right, or vice-versa. This value can be
either Qt.LeftToRight or Qt.RightToLeft.

.. raw:: html

   </li>

.. raw:: html

   <li>

verticalLayoutDirection - controls the vertical layout direction for a
vertically-oriented view: that is, whether items are laid out from the
top of the view down towards the bottom of the view, or vice-versa. This
value can be either ListView.TopToBottom or ListView.BottomToTop.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

By default, a ListView has a vertical orientation, and items are laid
out from top to bottom. The table below shows the different layouts that
a ListView can have, depending on the values of the properties listed
above.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th colspan="2" rowspan=" 1">

ListViews with Qt.Vertical orientation

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

Top to bottom

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

Bottom to top

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

   <th colspan="2" rowspan=" 1">

ListViews with Qt.Horizontal orientation

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

Left to right

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

Right to left

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

See also QML Data Models, GridView, PathView, and Qt Quick Examples -
Views.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListView -->

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

   <pre class="cpp">ListView {
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

   <pre class="cpp">ListView {
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
instantiated as it can fit within the buffer specified. For example, if
in a vertical view the delegate is 20 pixels high and cacheBuffer is set
to 40, then up to 2 delegates above and 2 delegates below the visible
area may be created/retained. The buffered delegates are created
asynchronously, allowing creation to occur across multiple frames and
reducing the likelihood of skipping frames. In order to improve painting
performance delegates outside the visible area are not painted.

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

Setting this value can improve the smoothness of scrolling behavior at
the expense of additional memory usage. It is not a substitute for
creating efficient delegates; the fewer objects and bindings in a
delegate, the faster a view can be scrolled.

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
properties will smoothly scroll the ListView so that the current item
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
properties will smoothly scroll the ListView so that the current item
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

   <tr valign="top" id="currentSection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentSection : string

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

This property holds the section that is currently at the beginning of
the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentSection -->

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

The ListView will lay out the items based on the size of the root item
in the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is recommended that the delegate's size be a whole number to avoid
sub-pixel alignment of items.

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
time. They are parented to ListView's contentItem, not to the view
itself. State should never be stored in a delegate.

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

This is a convenience for specifying the generic transition to be
applied to any items that are displaced by an add, move or remove
operation, without having to specify the individual addDisplaced,
moveDisplaced and removeDisplaced properties. For example, here is a
view that specifies a displaced transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ListView {
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

For example, if in a vertical view the delegate is 20 pixels high and
displayMarginBeginning and displayMarginEnd are both set to 40, then 2
delegates above and 2 delegates below will be created and shown.

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

For example, if in a vertical view the delegate is 20 pixels high and
displayMarginBeginning and displayMarginEnd are both set to 40, then 2
delegates above and 2 delegates below will be created and shown.

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

This property holds the effective layout direction of a
horizontally-oriented list.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled for locale
layouts, the visual layout direction of the horizontal list will be
mirrored. However, the property layoutDirection will remain unchanged.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListView::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveLayoutDirection -->

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

   <tr valign="top" id="footerPositioning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

footerPositioning : enumeration

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

This property determines the positioning of the footer item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ListView.InlineFooter (default) - the footer is positioned in the end of
the content and moves together with the content like an ordinary item.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.OverlayFooter - the footer is positioned in the end of the
view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.PullBackFooter - the footer is positioned in the end of the
view. The footer can be pushed away by moving the content backwards, and
pulled back by moving the content forwards.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@footerPositioning -->

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

   <tr valign="top" id="headerPositioning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

headerPositioning : enumeration

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

This property determines the positioning of the header item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ListView.InlineHeader (default) - the header is positioned in the
beginning of the content and moves together with the content like an
ordinary item.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.OverlayHeader - the header is positioned in the beginning of
the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.PullBackHeader - the header is positioned in the beginning of
the view. The header can be pushed away by moving the content forwards,
and pulled back by moving the content backwards.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@headerPositioning -->

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

An instance of the highlight component is created for each list. The
geometry of the resulting component instance is managed by the list so
as to stay with the current item, unless the highlightFollowsCurrentItem
property is false. The default stacking order of the highlight item is
0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightItem, highlightFollowsCurrentItem, and ListView
highlight example.

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

This property holds whether the highlight is managed by the view.

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
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">40</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span>
   <span class="name">y</span>: <span class="name">list</span>.<span class="name">currentItem</span>.<span class="name">y</span>
   Behavior on <span class="name">y</span> {
   <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> {
   <span class="name">spring</span>: <span class="number">3</span>
   <span class="name">damping</span>: <span class="number">0.2</span>
   }
   }
   }
   }
   <span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">id</span>: <span class="name">list</span>
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
   <span class="name">highlight</span>: <span class="name">highlight</span>
   <span class="name">highlightFollowsCurrentItem</span>: <span class="number">false</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Note that the highlight animation also affects the way that the view is
scrolled. This is because the view moves to maintain the highlight
within the preferred highlight range (or visible viewport).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlight and highlightMoveVelocity.

.. raw:: html

   </p>

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

These properties control the speed of the move and resize animations for
the highlight delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

highlightFollowsCurrentItem must be true for these properties to have
effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties have the same characteristics as a SmoothedAnimation.

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

   <tr valign="top" id="highlightMoveVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightMoveVelocity : real

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

These properties control the speed of the move and resize animations for
the highlight delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

highlightFollowsCurrentItem must be true for these properties to have
effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties have the same characteristics as a SmoothedAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightMoveVelocity -->

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

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the list will automatically scroll so that
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

ListView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the list or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.NoHighlightRange - this is the default value.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@highlightRangeMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightResizeDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightResizeDuration : int

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

These properties control the speed of the move and resize animations for
the highlight delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

highlightFollowsCurrentItem must be true for these properties to have
effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties have the same characteristics as a SmoothedAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightResizeDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightResizeVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightResizeVelocity : real

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

These properties control the speed of the move and resize animations for
the highlight delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

highlightFollowsCurrentItem must be true for these properties to have
effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties have the same characteristics as a SmoothedAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightFollowsCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightResizeVelocity -->

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

This property holds whether the list wraps key navigation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this is true, key navigation that would move the current item
selection past the end of the list instead wraps around and moves the
selection to the start of the list, and vice-versa.

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

This property holds the layout direction of a horizontally-oriented
list.

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

Qt.LeftToRight (default) - Items will be laid out from left to right.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Items will be laid out from right to let.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Setting this property has no effect if the orientation is Qt.Vertical.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListView::effectiveLayoutDirection and
ListView::verticalLayoutDirection.

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

This property holds the model providing data for the list.

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

   <pre class="cpp">ListView {
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

   <pre class="cpp">ListView {
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

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientation : enumeration

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

This property holds the orientation of the list.

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

ListView.Horizontal - Items are laid out horizontally

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.Vertical (default) - Items are laid out vertically

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Horizontal orientation:

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Vertical orientation:

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

   <!-- @@@orientation -->

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

   <pre class="cpp">ListView {
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

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the list will automatically scroll so that
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

ListView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the list or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.NoHighlightRange - this is the default value.

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

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
preferredHighlightBegin and preferredHighlightEnd values to the top and
bottom coordinates of where the middle item would be. If the currentItem
is changed programmatically, the list will automatically scroll so that
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

ListView.ApplyRange - the view attempts to maintain the highlight within
the range. However, the highlight can move outside of the range at the
ends of the list or due to mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.StrictlyEnforceRange - the highlight never moves outside of the
range. The current item changes if a keyboard or mouse action would
cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.NoHighlightRange - this is the default value.

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

   <pre class="cpp">ListView {
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

   <pre class="cpp">ListView {
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

   <tr valign="top" id="section-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

section group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="section.property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

section.property : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="section.criteria-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

section.criteria : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="section.delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

section.delegate : Component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="section.labelPositioning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

section.labelPositioning : enumeration

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

These properties determine the expression to be evaluated and appearance
of the section labels.

.. raw:: html

   </p>

.. raw:: html

   <p>

section.property holds the name of the property that is the basis of
each section.

.. raw:: html

   </p>

.. raw:: html

   <p>

section.criteria holds the criteria for forming each section based on
section.property. This value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ViewSection.FullString (default) - sections are created based on the
section.property value.

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewSection.FirstCharacter - sections are created based on the first
character of the section.property value (for example, 'A', 'B', 'C'
sections, etc. for an address book)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

A case insensitive comparison is used when determining section
boundaries.

.. raw:: html

   </p>

.. raw:: html

   <p>

section.delegate holds the delegate component for each section. The
default stacking order of section delegate instances is 2.

.. raw:: html

   </p>

.. raw:: html

   <p>

section.labelPositioning determines whether the current and/or next
section labels stick to the start/end of the view, and whether the
labels are shown inline. This value can be a combination of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ViewSection.InlineLabels - section labels are shown inline between the
item delegates separating sections (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewSection.CurrentLabelAtStart - the current section label sticks to
the start of the view as it is moved.

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewSection.NextLabelAtEnd - the next section label (beyond all visible
sections) sticks to the end of the view as it is moved.

.. raw:: html

   <p>

Note: Enabling ViewSection.NextLabelAtEnd requires the view to scan
ahead for the next section, which has performance implications,
especially for slower models.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Each item in the list has attached properties named ListView.section,
ListView.previousSection and ListView.nextSection.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a ListView that displays a list of animals,
separated into sections. Each item in the ListView is placed in a
different section depending on the "size" property of the model item.
The sectionHeading delegate component provides the light blue bar that
marks the beginning of each section.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="comment">// The delegate for each section header</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">sectionHeading</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">container</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">section</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   <span class="name">font</span>.pixelSize: <span class="number">20</span>
   }
   }
   }
   <span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">anchors</span>.bottom: <span class="name">buttonBar</span>.<span class="name">top</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">model</span>: <span class="name">animalsModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">font</span>.pixelSize: <span class="number">18</span> }
   <span class="name">section</span>.property: <span class="string">&quot;size&quot;</span>
   <span class="name">section</span>.criteria: <span class="name">ViewSection</span>.<span class="name">FullString</span>
   <span class="name">section</span>.delegate: <span class="name">sectionHeading</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Adding sections to a ListView does not automatically re-order the
list items by the section criteria. If the model is not ordered by
section, then it is possible that the sections created will not be
unique; each boundary between differing sections will result in a
section header being created even if that section exists elsewhere.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListView examples.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@section -->

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

ListView.NoSnap (default) - the view stops anywhere within the visible
area.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.SnapToItem - the view settles with an item aligned with the
start of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.SnapOneItem - the view settles no more than one item away from
the first visible item at the time the mouse button is released. This
mode is particularly useful for moving one page at a time.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

snapMode does not affect the currentIndex. To update the currentIndex as
the list is moved, set highlightRangeMode to
ListView.StrictlyEnforceRange.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlightRangeMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@snapMode -->

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

This property holds the spacing between items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacing -->

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

This property holds the layout direction of a vertically-oriented list.

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

ListView.TopToBottom (default) - Items are laid out from the top of the
view down to the bottom of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.BottomToTop - Items are laid out from the bottom of the view up
to the top of the view.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Setting this property has no effect if the orientation is Qt.Horizontal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListView::layoutDirection.

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

ListView.delayRemove : bool

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
   <span class="name">ListView</span>.onRemove: <span class="name">SequentialAnimation</span> {
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">true</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">false</span> }
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

ListView.isCurrentItem : bool

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

   <p>

This property may be used to adjust the appearance of the current item,
for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListView</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">contactsDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="name">width</span>: <span class="number">180</span>
   <span class="name">height</span>: <span class="name">contactInfo</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">contactInfo</span>
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">contactsDelegate</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <!-- @@@isCurrentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nextSection-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ListView.nextSection : string

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

This attached property holds the section of the next element.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The section is evaluated using the section properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nextSection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousSection-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ListView.previousSection : string

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

This attached property holds the section of the previous element.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The section is evaluated using the section properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousSection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="section-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ListView.section : string

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

This attached property holds the section of this element.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The section is evaluated using the section properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@section -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="view-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ListView.view : ListView

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
the footer, the section and the highlight delegates.

.. raw:: html

   </p>

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

If an add transition is specified, it is applied immediately after this
signal is handled.

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

   <!-- $$$decrementCurrentIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="decrementCurrentIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

decrementCurrentIndex()

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

Decrements the current index. The current index will wrap if
keyNavigationWraps is true and it is currently at the beginning. This
method has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@decrementCurrentIndex -->

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
the underlying model to have changed, but the ListView has not caught up
yet.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method forces the ListView to immediately respond to any
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

   <tr valign="top" id="incrementCurrentIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

incrementCurrentIndex()

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

Increments the current index. The current index will wrap if
keyNavigationWraps is true and it is currently at the end. This method
has no effect if the count is zero.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@incrementCurrentIndex -->

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

ListView.Beginning - position item at the top (or left for horizontal
orientation) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.Center - position item in the center of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.End - position item at bottom (or right for horizontal
orientation) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.Visible - if any part of the item is visible then take no
action, otherwise bring the item into view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.Contain - ensure the entire item is visible. If the item is
larger than the view the item is positioned at the top (or left for
horizontal orientation) of the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

ListView.SnapPosition - position the item at preferredHighlightBegin.
This mode is only valid if highlightRangeMode is StrictlyEnforceRange or
snapping is enabled via snapMode.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If positioning the view at index would cause empty space to be displayed
at the beginning or end of the view, the view will be positioned at the
boundary.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not recommended to use contentX or contentY to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates. The correct way to bring an item into view is with
positionViewAtIndex.

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

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> ListView<span class="operator">.</span>Beginning)</pre>

.. raw:: html

   <!-- @@@positionViewAtIndex -->


