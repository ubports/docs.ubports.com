Ubuntu.Components.SlotsLayout
=============================

.. raw:: html

   <p>

The SlotsLayout component provides an easy way to layout a list of
user-interface elements horizontally following Ubuntu design standards.
We call the elements which we want to layout "slots". Slots is just
another name for SlotsLayout's visual children. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SlotsLayout -->

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

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ListItemLayout.

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

mainSlot : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

padding

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

padding.top : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

padding.bottom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

padding.leading : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

padding.trailing : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

overrideVerticalPositioning : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

padding : QtObject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SlotsLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SlotsLayout will layout its children according to Ubuntu's visual design
rules, providing automatic spacing and positioning (both horizontal and
vertical, unless overrideVerticalPositioning is set) for each of them.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you're building list items, we recommend to use ListItemLayout, as it
is designed to accomodate up to 3 labels that follow our UI standards.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are three conceptual types of slots:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The leading slots, which are the ones positioned at the beginning of the
layout (i.e. they are the leftmost elements in left-to-right locales).

.. raw:: html

   </li>

.. raw:: html

   <li>

The trailing slots, which are positioned after mainSlot, if any, or
after the leading slots otherwise.

.. raw:: html

   </li>

.. raw:: html

   <li>

The main slot, which drives the positioning of the vertical dimension of
each slot as described in section Automatic vertical positioning of
slots. This slot sits between leading and trailing slots, and can be set
using the property mainSlot.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In order to comply with Ubuntu design standards, this component hosts a
maximum of 1 leading and 2 trailing slots. The layout algorithm will
ignore any additional item.

.. raw:: html

   </p>

.. raw:: html

   <p>

SlotsLayout also provides a series of properties which are attached to
each slot. However not all properties are valid in all the
circumstances. These properties allow an easy tweaking of slot's
positioning within the layout. SlotsLayout::position can be used to set
whether a slot should be a leading or trailing one. SlotsLayout::padding
can be used to tweak the padding around a slot.
SlotsLayout::overrideVerticalPositioning allows to disable the automatic
positioning of the vertical coordinate of a slot as described in
Automatic vertical positioning of slots, in case a custom behaviour is
needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a very simple SlotsLayout with an Icon as
leading slot, and a CheckBox as trailing slot. There is no need to
specify any size or margin, everything is handled automatically by the
layout component.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">mainSlot</span>: <span class="name">Label</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">name</span>: <span class="string">&quot;message&quot;</span>
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span>;
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   }
   }</pre>

.. raw:: html

   <p>

The positioning of each slot should only be tweaked using its attached
properties. Just like when using QtQuick's Row, a child item within the
layout should not set its x or anchors affecting the horizontal
positioning (left, right, horizontalCenter, centerIn, fill). If you need
to perform these actions, consider positioning the items without the use
of a SlotsLayout.

.. raw:: html

   </p>

.. raw:: html

   <p>

The vertical anchors of a slot can be modified, provided that
SlotsLayout::overrideVerticalPositioning for that slot is set. More
about this in the Advanced layout tweaks section.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="resizing-the-layout">

Resizing the layout

.. raw:: html

   </h2>

.. raw:: html

   <p>

SlotsLayout's implicit width is by default set to the width of the
parent (usually a ListItem). Changing the width of the layout is
possible but should not be needed in most of the usecases: keeping the
width in sync with the width of its parent allows the user interface to
be scalable across devices with varying resolution and form factors.

.. raw:: html

   </p>

.. raw:: html

   <p>

The implicit height is not fixed either. In order not to clip any of the
slots, the SlotsLayout adapts to accomodate its highest slot with
padding and the padding around the layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

Because of the above, it is recommended to have items wrapping the
layout bind to SlotsLayout's height (adding ListItem divider's height if
needed), not the opposite. It is not recommended, for instance, to use
anchors.fill to force SlotsLayout to fill another Item, because that
item might not have enough space to accomdate all the slots, and
therefore the slots will be clipped.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="comment">//CORRECT</span>
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="comment">//WRONG</span>
   <span class="comment">//anchors.fill: parent</span>
   <span class="name">mainSlot</span>: <span class="name">Label</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   }
   }</pre>

.. raw:: html

   <p>

Manually resizing SlotsLayout (or ListItemLayout) is usually not needed
and we recommend to avoid it, as the component will already take care of
doing the job for you. The following example shows what a standard
SlotsLayout should look like:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">mainSlot</span>: <span class="name">Label</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
   }
   <span class="comment">//just an example of something inside SlotsLayout</span>
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   }</pre>

.. raw:: html

   <h2 id="automatic-vertical-positioning-of-slots">

Automatic vertical positioning of slots

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order to provide a visually pleasing and consistent layout across the
whole platform, SlotsLayout automatically handles the vertical
positioning of its slots so that they comply with the following rules:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

if there's any slot which is taller or as tall as mainSlot or if no
mainSlot is defined, all slots will be vertically centered within the
layout (still taking SlotsLayout::padding.top and
SlotsLayout::padding.bottom into account).

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

Otherwise, all the slots (including mainSlot) will be aligned to the top
of the layout with a padding of SlotsLayout::padding.top plus the top
padding of the slot, defined in its attached properties.

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Even though it is not recommended, it is still possible to override this
behaviour on a slot-by-slot basis by setting
SlotsLayout::overrideVerticalPositioning to true. This is described in
Advanced layout tweaks.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="input-handling">

Input handling

.. raw:: html

   </h2>

.. raw:: html

   <p>

The purpose of SlotsLayout is to position its slots following the rules
defined in Automatic vertical positioning of slots. There are two
recommended ways to implement input handling: the first one, in case the
target is to create a list item, is to put the SlotsLayout (or any
derived component, like ListItemLayout) inside a ListItem, and use
ListItem's onClicked handler to handle clicks and taps.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked!&quot;</span>)
   <span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">mainSlot</span>: <span class="name">Label</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
   }
   <span class="comment">//just an example of something inside SlotsLayout</span>
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   }
   }</pre>

.. raw:: html

   <p>

The second option is to use a MouseArea as a wrapper around SlotsLayout,
as the following code demonstrates:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked!&quot;</span>)
   <span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">mainSlot</span>: <span class="name">Label</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
   }
   <span class="comment">//just an example of something inside SlotsLayout</span>
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   }
   }</pre>

.. raw:: html

   <p>

Note: as recommended in Resizing the layout, since SlotsLayout has a
dynamic height, it is important to have the parent item's height (in
this case MouseArea) follow SlotsLayout's height, and not the opposite,
to avoid getting the slots clipped out of the layout.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="advanced-layout-tweaks">

Advanced layout tweaks

.. raw:: html

   </h2>

.. raw:: html

   <p>

The automatic layout provided by SlotsLayout is designed to cover most
of the usecases. There could be times, however, where you might want to
tweak the positioning of one particular slot.

.. raw:: html

   </p>

.. raw:: html

   <p>

A slot can set its attached properties SlotsLayout::padding and
SlotsLayout::overrideVerticalPositioning to reach the desired position.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a slot enables SlotsLayout::overrideVerticalPositioning, it gains
control over its vertical anchors (top, bottom, verticalCenter).
Moreover, SlotsLayout will ignore the height of that slot in the
following computations of its implicitHeight (see Resizing the layout).

.. raw:: html

   </p>

.. raw:: html

   <p>

When manually positioning a slot, care must be taken to avoid pushing
the slot outside of the layout perimeter, to avoid getting it clipped.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a SlotsLayout which has both custom padding
and a slot which uses custom vertical positioning:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
   <span class="type">padding</span> {
   <span class="name">top</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
   <span class="name">bottom</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
   }
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> {
   <span class="name">anchors</span>.top: <span class="name">label</span>.<span class="name">top</span>
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>
   <span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

It is also possible to sort the slots in a relative fashion, by using
positions such as SlotsLayout.Leading+1, for instance, if we want that
slot to always be positioned after items with position
SlotsLayout.Leading. This is particularly useful, for example, when
subclassing SlotsLayout-based components which already have predefined
slots inside them. If, for instance, the component we're subclassing has
a slot with position SlotsLayout.Trailing, we can add a slot to our
subclass with position SlotsLayout.Trailing-1 if we want to make sure
our slot is always positioned before the one in the component we are
deriving from. This scenario is shown in the following example code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//ExampleLayout.qml</span>
   <span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
   }</pre>

.. raw:: html

   <pre class="qml"><span class="comment">//DerivedLayout.qml</span>
   <span class="type">ExampleLayout</span> {
   <span class="name">id</span>: <span class="name">derivedLayout</span>
   <span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
   <span class="name">id</span>: <span class="name">newSlot</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">name</span>: <span class="string">&quot;message&quot;</span>
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> <span class="operator">-</span> <span class="number">1</span>
   }
   }</pre>

.. raw:: html

   <p>

See also ListItemLayout.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SlotsLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$mainSlot -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mainSlot-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mainSlot : Item

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

This property represents the main slot of the layout. By default,
SlotsLayout has no mainSlot set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The main slot is the one that defines the vertical positioning of the
other slots. Because of this, changing its position and
overrideVerticalPositioning attached properties has no effect. More
details can be found in the section Automatic vertical positioning of
slots.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: because of limitations in QtQuick/QML, it is not possible to
initialize mainSlot's attached properties. Setting mainSlot's attached
properties has to be done via JS, for example inside
Component.onCompleted, as shown in the following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="name">mainSlot</span>.<span class="name">SlotsLayout</span>.<span class="name">padding</span>.<span class="name">leading</span> <span class="operator">=</span>
   <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>) })
   }
   <span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> {
   <span class="name">anchors</span>.top: <span class="name">label</span>.<span class="name">top</span>
   <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>
   <span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@mainSlot -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="padding-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

padding group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="padding.top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

padding.top : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="padding.bottom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

padding.bottom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="padding.leading-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

padding.leading : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="padding.trailing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

padding.trailing : real

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

This property defines the padding around the bounding box which holds
all the slots. The default value for padding.leading is 1 Grid Unit. The
default value for padding.trailing is 1 Grid Unit.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of padding.top and padding.bottom depends on the size of the
slots which are in the layout:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

if, according to the rules defined in Automatic vertical positioning of
slots, the slots are supposed to align to the top of the layout,
padding.top and padding.bottom will have a value of 2 Grid Units.

.. raw:: html

   </li>

.. raw:: html

   <li>

otherwise, if according to the rules defined in Automatic vertical
positioning of slots the slots are supposed to be vertically centered in
the layout, and the tallest slot (mainSlot excluded) has a height of at
least 4 Grid Units, padding.top and padding.bottom will be set to 1 Grid
Unit.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: the automatic handling of padding.top and padding.bottom is
disabled once either padding.top or padding.bottom is set to a custom
value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@padding -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$overrideVerticalPositioning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="overrideVerticalPositioning-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SlotsLayout.overrideVerticalPositioning : bool

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

This attached property holds whether the layout should automatically
handle the vertical positioning of a slot. It is attached to every slot.
The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is set to true, the layout will ignore the
corresponding slot during the computation of the implicitHeight of the
whole layout (see Resizing the layout) and will not modify its vertical
position during the layout process. As a consequence, it is possible, in
that case, to manually set the vertical anchors of that slot
(verticalCenter, top, bottom) or even its y property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Care must be taken to avoid getting the slot clipped by positioning it
partly or completely outside of the SlotsLayout that holds it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: changing the value of overrideVerticalPositioning of one slot
after the layout has already been initialized will reset its top,
bottom, verticalCenter, fill, centerIn anchors for that slot, and the
corresponding margins. Care must be taken to set the anchors to the
desired values only after setting overrideVerticalPositioning.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: this property is only valid for standard slots. Changing the value
of mainSlot's overrideVerticalPositioning has no effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@overrideVerticalPositioning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="padding-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SlotsLayout.padding : QtObject

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

While SlotsLayout's padding property defines the padding around the
whole layout, this attached property defines the padding around the slot
it is attached to.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is a grouped property that exposes the properties padding.top,
padding.bottom, padding.leading, padding.trailing.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for SlotsLayout.padding.top is 0. The default value
for SlotsLayout.padding.bottom is 0. The default value for
SlotsLayout.padding.leading is 1 Grid Unit. The default value for
SlotsLayout.padding.trailing is 1 Grid Unit.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please note that top and bottom paddings are only used when
SlotsLayout::overrideVerticalPositioning is set to false. More about
this in Automatic vertical positioning of slots.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@padding -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SlotsLayout.position : enumeration

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

This attached property defines the relative position of the slot inside
the layout. It is attached to each slot. The default value is
SlotsLayout.Trailing.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid values for position are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SlotsLayout.First: the slot will be positioned at the beginning of the
layout

.. raw:: html

   </li>

.. raw:: html

   <li>

SlotsLayout.Leading: the slot will be positioned in the leading slots

.. raw:: html

   </li>

.. raw:: html

   <li>

SlotsLayout.Trailing: the slot will be positioned in the trailing slots,
i.e. the one towards the end of the layout.

.. raw:: html

   </li>

.. raw:: html

   <li>

SlotsLayout.Last: the slot will be positioned at the end of the layout.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

ProgressionSlot, for instance, has its position set to SlotsLayout.Last,
in order to make sure the chevron is always displayed as the last
trailing slot.

.. raw:: html

   </p>

.. raw:: html

   <p>

Whenever there are more slots with the same SlotsLayout::position, they
will be positioned following the order in which they were added to the
layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is also possible to define relative positioning between the slots, by
using values such as SlotsLayout.Leading+1, or SlotsLayout.Trailing-3.
More about this in Advanced layout tweaks.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: you can only change the position of standard slots. Changing the
position of mainSlot has no effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->


