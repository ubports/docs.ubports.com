Ubuntu.Components.ListItem
==========================

.. raw:: html

   <p>

The ListItem element provides Ubuntu design standards for list or grid
views. The ListItem component was designed to be used in a list view. It
does not define any specific layout, but while its contents can be
freely chosen by the developer, care must be taken to keep the contents
light in order to ensure good performance when used in long list views.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItem -->

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

Ubuntu.Components 1.2

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

action : Action

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentMoving : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

divider

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

divider.colorFrom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

divider.colorTo : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragMode : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragging : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expansion

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

expansion.expanded : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expansion.height : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlighted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

leadingActions : ListItemActions

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectMode : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selected : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

swipeEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

swiped : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

trailingActions : ListItemActions

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

clicked()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentMovementEnded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentMovementStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressAndHold()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides two color properties which configures the item's
background when normal or highlighted. This can be configured through
color and highlightColor properties. The list item is highlighted if
there is an action attached to it. This means that the list item must
have an active component declared as child, at least leading- or
trailing actions specified, or to have a slot connected to clicked or
pressAndHold signal. In any other case the component will not be
highlighted, and highlighted property will not be toggled either. Also,
there will be no highlight happening if the click happens on the active
component.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
   }
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem&quot;</span>)
   }
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   }
   ]
   }
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with leadingActions set&quot;</span>)
   }
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
   }
   ]
   }
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with trailingActions set&quot;</span>)
   }
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">clickImplementedLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">clickImplementedLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;onClicked implemented&quot;</span>
   }
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with onClicked implemented&quot;</span>)
   }
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">pressHoldLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">pressHoldLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;onPressAndHold implemented&quot;</span>
   }
   <span class="name">onPressAndHold</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;long-pressed on ListItem with onPressAndHold implemented&quot;</span>)
   }
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">noHighlightLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">noHighlightLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;No highlight&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

contentItem holds all components and resources declared as child to
ListItem. Being an Item, all properties can be accessed or altered.
However, make sure you never change x, y, width, height or anchors
properties as those are controlled by the ListItem itself when leading
or trailing actions are revealed or when selectable and draggable mode
is turned on, and thus might cause the component to misbehave. Anchors
margins are free to alter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each ListItem has a thin divider shown on the bottom of the component.
This divider can be configured through the divider grouped property,
which can configure its margins from the edges of the ListItem as well
as its visibility. When used in ListView or UbuntuListView, the last
list item will not show the divider no matter of the visible property
value set.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItem can handle actions that can get swiped from front or back of
the item. These actions are Action elements visualized in panels
attached to the front or to the back of the item, and are revealed by
swiping the item horizontally. The swipe is started only after the
mouse/touch move had passed a given threshold. The actions are
visualized by a panel, which is configurable through the ListItemStyle.

.. raw:: html

   </p>

.. raw:: html

   <p>

The actions are configured through the leadingActions as well as
trailingActions properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
   <span class="name">id</span>: <span class="name">listItem</span>
   <span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">listItem</span>.<span class="name">destroy</span>()
   }
   ]
   }
   <span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">onTriggered</span>: {
   <span class="comment">// do some search</span>
   }
   }
   ]
   }
   }</pre>

.. raw:: html

   <p>

Note: When a list item is swiped, it automatically connects both leading
and trailing actions to the list item. If needed, the same
ListItemActions instance can be used in both leading and trailing side.
In the following example the list item can be deleted through both
leading and trailing actions using the same container:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
   <span class="name">id</span>: <span class="name">listItem</span>
   <span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">listItem</span>.<span class="name">destroy</span>()
   }
   ]
   }
   <span class="name">trailingActions</span>: <span class="name">leadingActions</span>
   }</pre>

.. raw:: html

   <p>

The action is triggered only after all the animations are completed.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListItem provides a set of attached properties which are attached to
each panel of the ListItem. However not all properties are valid in all
the circumstances.

.. raw:: html

   </p>

.. raw:: html

   <p>

The component is styled using the ListItemStyle style interface.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Selection mode

.. raw:: html

   </h3>

.. raw:: html

   <p>

The selection mode of a ListItem is controlled by the
ViewItems::selectMode attached property. This property is attached to
each parent item of the ListItem exception being when used as delegate
in ListView, where the property is attached to the view itself.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="comment">// this will not have any effect</span>
   <span class="name">ViewItems</span>.selectMode: <span class="number">true</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="comment">// this will work</span>
   <span class="name">ViewItems</span>.selectMode: <span class="number">false</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">25</span>
   <span class="type"><a href="index.html">ListItem</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;ListItem in Flickable #&quot;</span> <span class="operator">+</span> <span class="name">index</span>
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The indices selected are stored in ViewItems::selectedIndices attached
property, attached the same way as the ViewItems::selectMode property
is. This is a read/write property, meaning that initial selected item
indices can be set up. The list contains the indices added in the order
of selection, not sorted in any form.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: When in selectable mode, the ListItem content is not disabled and
clicked and pressAndHold signals are also emitted. The only restriction
the component implies is that leading and trailing actions cannot be
swiped in. selectable property can be used to implement different
behavior when clicked or pressAndHold.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Dragging mode

.. raw:: html

   </h3>

.. raw:: html

   <p>

The dragging mode is only supported on ListView, as it requires a model
supported view to be used. The drag mode can be activated through the
ViewItems::dragMode attached property, when attached to the ListView.
The items will show a panel as defined in the style, and dragging will
be possible when initiated over this panel. Pressing or clicking
anywhere else on the ListItem will invoke the item's action assigned to
the touched area.

.. raw:: html

   </p>

.. raw:: html

   <p>

The dragging is realized through the ViewItems::dragUpdated signal, and
a signal handler must be implemented in order to have the draging
working. Implementations can drive the drag to be live (each time the
dragged item is dragged over an other item will change the order of the
items) or drag'n'drop way (the dragged item will be moved only when the
user releases the item by dropping it to the desired position). The
signal has a ListItemDrag event parameter, which gives detailed
information about the drag event, like started, dragged up or downwards
or dropped, allowing in this way various restrictions on the dragging.

.. raw:: html

   </p>

.. raw:: html

   <p>

The dragging event provides three states reported in
ListItemDrag::status field, Started, Moving and Dropped. The other event
field values depend on the status, therefore the status must be taken
into account when implementing the signal handler. In case live dragging
is needed, Moving state must be checked, and for non-live drag
(drag'n'drop) the Moving state must be blocked by setting event.accept =
false, otherwise the dragging will not know whether the model has been
updated or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of live drag implementation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">100</span>; i++) {
   <span class="name">append</span>({tag: <span class="string">&quot;List item #&quot;</span><span class="operator">+</span><span class="name">i</span>});
   }
   }
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">modelLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">modelLayout</span>
   <span class="name">title</span>.text: <span class="name">modelData</span>
   }
   <span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
   !<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
   }
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
   <span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
   }
   }
   <span class="name">moveDisplaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></span> {
   <span class="name">property</span>: <span class="string">&quot;y&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Example of drag'n'drop implementation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">100</span>; i++) {
   <span class="name">append</span>({tag: <span class="string">&quot;List item #&quot;</span><span class="operator">+</span><span class="name">i</span>});
   }
   }
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">modelLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">modelLayout</span>
   <span class="name">title</span>.text: <span class="name">modelData</span>
   }
   <span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
   !<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
   }
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
   <span class="comment">// inform dragging that move is not performed</span>
   <span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
   <span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
   }
   }
   <span class="name">moveDisplaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></span> {
   <span class="name">property</span>: <span class="string">&quot;y&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

ListItem does not provide animations when the ListView's model is
updated. In order to have animation, use UbuntuListView or provide a
transition animation to the moveDisplaced or displaced property of the
ListView.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Using non-QAbstractItemModel models

.. raw:: html

   </h4>

.. raw:: html

   <p>

Live dragging (moving content on the move) is only possible when the
model is a derivate of the QAbstractItemModel. When a list model is
used, the ListView will re-create all the items in the view, meaning
that the dragged item will no longer be controlled by the dragging.
However, non-live drag'n'drop operations can still be implemented with
these kind of lists as well.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: [<span class="string">&quot;plum&quot;</span>, <span class="string">&quot;peach&quot;</span>, <span class="string">&quot;pomegrenade&quot;</span>, <span class="string">&quot;pear&quot;</span>, <span class="string">&quot;banana&quot;</span>]
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">modelLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">modelLayout</span>
   <span class="name">title</span>.text: <span class="name">modelData</span>
   }
   <span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
   !<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
   }
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Started</span>) {
   <span class="keyword">return</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
   var <span class="name">fromData</span> = <span class="name">model</span>[<span class="name">event</span>.<span class="name">from</span>];
   <span class="comment">// must use a temporary variable as list manipulation</span>
   <span class="comment">// is not working directly on model</span>
   var <span class="name">list</span> = <span class="name">model</span>;
   <span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="number">1</span>);
   <span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">to</span>, <span class="number">0</span>, <span class="name">fromData</span>);
   <span class="name">model</span> <span class="operator">=</span> <span class="name">list</span>;
   } <span class="keyword">else</span> {
   <span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

When using DelegateModel, it must be taken into account when
implementing the ViewItems::dragUpdated signal handler.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">DelegateModel</span> {
   <span class="name">model</span>: [<span class="string">&quot;apple&quot;</span>, <span class="string">&quot;pear&quot;</span>, <span class="string">&quot;plum&quot;</span>, <span class="string">&quot;peach&quot;</span>, <span class="string">&quot;nuts&quot;</span>, <span class="string">&quot;dates&quot;</span>]
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">modelLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">modelLayout</span>
   <span class="name">title</span>.text: <span class="name">modelData</span>
   }
   <span class="name">onPressAndHold</span>: <span class="name">dragMode</span> <span class="operator">=</span> !<span class="name">dragMode</span>;
   }
   }
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
   <span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
   var <span class="name">fromData</span> = <span class="name">model</span>.<span class="name">model</span>[<span class="name">event</span>.<span class="name">from</span>];
   var <span class="name">list</span> = <span class="name">model</span>.<span class="name">model</span>;
   <span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="number">1</span>);
   <span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">to</span>, <span class="number">0</span>, <span class="name">fromData</span>);
   <span class="name">model</span>.<span class="name">model</span> <span class="operator">=</span> <span class="name">list</span>;
   }
   }
   }</pre>

.. raw:: html

   <h3>

Expansion

.. raw:: html

   </h3>

.. raw:: html

   <p>

Since Ubuntu.Components 1.3, ListItem supports expansion. ListItems
declared in a view can expand exclusively, having leading and trailing
panes locked when expanded and to be collapsed when tapping outside of
the expanded area. The expansion is driven by the expansion group
property, and the behavior by the ViewItems::expansionFlags and
ViewItems::expandedIndices attached properties. Each ListItem which is
required to expand should set a proper height in the expansion.height
property, which should be bigger than the collapsed height of the
ListItem is. The expansion itself is driven by the expansion.expanded
property, which can be set freely depending on the use case, on click,
on long press, etc.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default expansion behavior is set to be exclusive and locked,
meaning there can be only one ListItem expanded within a view and
neither leading nor trailing action panels cannot be swiped in.
Expanding an other ListItem will collapse the previosuly expanded one.
There can be cases when tapping outside of the expanded area of a
ListItem we woudl need the expanded one to collapse automatically. This
can be achieved by setting ViewItems.CollapseOnOutsidePress flag to
ViewItems::expansionFlags. This flag will also turn on
ViewItems.Exclusive flag, as tapping outside practicly forbids more than
one item to be expanded at a time.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">50</span>; i++) {
   <span class="name">append</span>({data: <span class="name">i</span>});
   }
   }
   }
   <span class="name">ViewItems</span>.expansionFlags: <span class="name">ViewItems</span>.<span class="name">CollapseOnOutsidePress</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">modelLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="name">id</span>: <span class="name">modelLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Model item #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   }
   <span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
   <span class="name">actions</span>: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">icon</span>: <span class="string">&quot;search&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">icon</span>: <span class="string">&quot;edit&quot;</span>
   },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">icon</span>: <span class="string">&quot;copy&quot;</span>
   }
   ]
   }
   <span class="name">expansion</span>.height: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
   <span class="name">onClicked</span>: <span class="name">expansion</span>.<span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

The example above collapses the expanded item whenever it is tapped or
mouse pressed outside of the expanded list item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Set 0 to ViewItems::expansionFlags if no restrictions on expanded
items is required (i.e multiple expanded items are allowed, swiping
leading/trailing actions when expanded).

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Do not bind expansion.height to the ListItem's height as is will
cause binding loops.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Note on styling

.. raw:: html

   </h3>

.. raw:: html

   <p>

ListItem's styling differs from the other components styling, as
ListItem loads the style only when either of the leadin/trailing panels
are swiped, or when the item enters in select- or drag mode. The
component does not assume any visuals to be present in the style.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListItemActions, ViewItems::dragMode, ViewItems::dragUpdated,
and ListItemStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$action -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="action-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

action : Action

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

The property holds the action which will be triggered when the ListItem
is clicked. ListItem will not visualize the action, that is the
responsibility of the components placed inside the list item. However,
when set, the ListItem will be highlighted on press.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the action set has no value type set, ListItem will set its type to
Action.Integer and the triggered signal will be getting the ListItem
index as value parameter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults no null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@action -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

Configures the color of the normal background. The default value is
transparent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentItem : Item

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

contentItem holds the components placed on a ListItem. It is anchored to
the ListItem on left, top and right, and to the divider on the bottom,
or to the ListItem's bottom in case the divider is not visible. The
content is clipped by default. It is not recommended to change the
anchors as the ListItem controls them, however any other property value
is free to change. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
   <span class="type">contentItem</span>.anchors {
   <span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">0.5</span>)
   <span class="name">bottomMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">0.5</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@contentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentMoving-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] contentMoving : bool

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

The property describes whether the content is moving or not. The content
is moved when swiped or when snapping in or out, and lasts till the
snapping animation completes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentMoving -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="divider-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

divider group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="divider.colorFrom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

divider.colorFrom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="divider.colorTo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

divider.colorTo : real

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

This grouped property configures the thin divider shown in the bottom of
the component. The divider is not moved together with the content when
swiped left or right to reveal the actions. colorFrom and colorTo
configure the starting and ending colors of the divider. Beside these
properties all Item specific properties can be accessed.

.. raw:: html

   </p>

.. raw:: html

   <p>

When visible is true, the ListItem's content size gets thinner with the
divider's thickness. By default the divider is anchored to the bottom,
left right of the ListItem, and has a 2dp height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@divider -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dragMode : bool

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

The property reports whether a ListItem is draggable or not. While in
drag mode, the list item content cannot be swiped. The default value is
false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragging-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dragging : bool

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

The property informs about an ongoing dragging on a ListItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragging -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expansion-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

expansion group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="expansion.expanded-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expansion.expanded : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="expansion.height-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expansion.height : real

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

The group drefines the expansion state of the ListItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property group was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expansion -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightColor : color

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

Configures the color when highlighted. Defaults to the theme palette's
background color. If changed, it can be reset by assigning undefined as
value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlighted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlighted : bool

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

True when the item is pressed. The items stays highlighted when the
mouse or touch is moved horizontally. When in Flickable (or ListView),
the item gets un-highlighted (false) when the mouse or touch is moved
towards the vertical direction causing the flickable to move.

.. raw:: html

   </p>

.. raw:: html

   <p>

Configures the color when highlighted. Defaults to the theme palette's
background color.

.. raw:: html

   </p>

.. raw:: html

   <p>

An item is highlighted, thus highlight state toggled, when pressed and
it has one of the following conditions fulfilled:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

leadingActions or trailingActions set,

.. raw:: html

   </li>

.. raw:: html

   <li>

it has an action attached

.. raw:: html

   </li>

.. raw:: html

   <li>

if the ListItem has an active child component, such as a Button, a
Switch, etc.

.. raw:: html

   </li>

.. raw:: html

   <li>

in general, if an active (enabled and visible) MouseArea is added as a
child component

.. raw:: html

   </li>

.. raw:: html

   <li>

clicked signal handler is implemented or there is a slot or function
connected to it

.. raw:: html

   </li>

.. raw:: html

   <li>

pressAndHold signal handler is implemented or there is a slot or
function connected to it.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: Adding an active component does not mean the component will be
activated when the ListItem will be tapped/clicked outside of the
component area. If such a behavior is needed, that must be done
explicitly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;This is a label&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Switch.md">Switch</a></span> {
   <span class="name">id</span>: <span class="name">toggle</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   }
   <span class="name">Component</span>.onCompleted: <span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">toggle</span>.<span class="name">clicked</span>)
   }</pre>

.. raw:: html

   <p>

See also action, leadingActions, and trailingActions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlighted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="leadingActions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

leadingActions : ListItemActions

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

The property holds the actions and its configuration to be revealed when
swiped from left to right.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also trailingActions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@leadingActions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectMode : bool

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

The property reports whether the component and the view using the
component is in selectable state. While selectable, the ListItem's
leading- and trailing panels cannot be swiped in. clicked and
pressAndHold signals are also triggered. Selectable mode can be set
either through this property or through the parent attached
ViewItems::selectMode property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selected-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selected : bool

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

The property drives whether a list item is selected or not. Defaults to
false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListItem::selectMode and ViewItems::selectMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="swipeEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

swipeEnabled : bool

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

The property enables the swiping of the leading- or trailing actions.
This is useful when an overlay component needs to handle mouse moves or
drag events without the ListItem to steal the events. Defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="name">model</span>: <span class="number">25</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="name">swipeEnabled</span>: !<span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">height</span>: <span class="name">width</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">parent</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@swipeEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="swiped-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] swiped : bool

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

The property notifies about the content being swiped so leading or
trailing actions are visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@swiped -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="trailingActions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

trailingActions : ListItemActions

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

The property holds the actions and its configuration to be revealed when
swiped from right to left.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also leadingActions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@trailingActions -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clicked-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clicked()

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

The signal is emitted when the component gets released while the
highlighted property is set. The signal is not emitted if the ListItem
content is swiped or when used in Flickable (or ListView, GridView) and
the Flickable gets moved.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the ListItem contains a component which contains an active MouseArea,
the clicked signal will be supressed when clicked over this area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clicked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentMovementEnded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

contentMovementEnded()

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

The signal is emitted when the content movement has ended.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentMovementEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentMovementStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

contentMovementStarted()

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

The signal is emitted when the content movement has started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentMovementStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressAndHold-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressAndHold()

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

The signal is emitted when the list item is long pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the ListItem contains a component which contains an active MouseArea,
the pressAndHold signal will be supressed when pressed over this area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressAndHold -->


