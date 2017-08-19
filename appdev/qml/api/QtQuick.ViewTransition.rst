QtQuick.ViewTransition
======================

.. raw:: html

   <p>

Specifies items under transition in a view More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewTransition -->

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

   </table>

.. raw:: html

   <ul>

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

destination : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

index : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

item : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targetIndexes : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targetItems : list

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ViewTransition-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

With ListView and GridView, it is possible to specify transitions that
should be applied whenever the items in the view change as a result of
modifications to the view's model. They both have the following
properties that can be set to the appropriate transitions to be run for
various operations:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

populate - the transition to apply to the items created initially for
the view, or when the model changes

.. raw:: html

   </li>

.. raw:: html

   <li>

add - the transition to apply to items that are added to the view after
it has been created

.. raw:: html

   </li>

.. raw:: html

   <li>

remove - the transition to apply to items that are removed from the view

.. raw:: html

   </li>

.. raw:: html

   <li>

move - the transition to apply to items that are moved within the view
(i.e. as a result of a move operation in the model)

.. raw:: html

   </li>

.. raw:: html

   <li>

displaced - the generic transition to be applied to any items that are
displaced by an add, move or remove operation

.. raw:: html

   </li>

.. raw:: html

   <li>

addDisplaced, removeDisplaced and moveDisplaced - the transitions to be
applied when items are displaced by add, move, or remove operations,
respectively (these override the generic displaced transition if
specified)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For the Row, Column, Grid and Flow positioner types, which operate with
collections of child items rather than data models, the following
properties are used instead:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

populate - the transition to apply to items that have been added to the
positioner at the time of its creation

.. raw:: html

   </li>

.. raw:: html

   <li>

add - the transition to apply to items that are added to or reparented
to the positioner, or items that have become visible

.. raw:: html

   </li>

.. raw:: html

   <li>

move - the transition to apply to items that have moved within the
positioner, including when they are displaced due to the addition or
removal of other items, or when items are otherwise rearranged within
the positioner, or when items are repositioned due to the resizing of
other items in the positioner

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

View transitions have access to a ViewTransition attached property that
provides details of the items that are under transition and the
operation that triggered the transition. Since view transitions are run
once per item, these details can be used to customize each transition
for each individual item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ViewTransition attached property provides the following properties
specific to the item to which the transition is applied:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ViewTransition.item - the item that is under transition

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewTransition.index - the index of this item

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewTransition.destination - the (x,y) point to which this item is
moving for the relevant view operation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In addition, ViewTransition provides properties specific to the items
which are the target of the operation that triggered the transition:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ViewTransition.targetIndexes - the indexes of the target items

.. raw:: html

   </li>

.. raw:: html

   <li>

ViewTransition.targetItems - the target items themselves

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

(Note that for the Row, Column, Grid and Flow positioner types, the move
transition only provides these two additional details when the
transition is triggered by the addition of items to a positioner.)

.. raw:: html

   </p>

.. raw:: html

   <p>

View transitions can be written without referring to any of the
attributes listed above. These attributes merely provide extra details
that are useful for customising view transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Following is an introduction to view transitions and the ways in which
the ViewTransition attached property can be used to augment view
transitions.

.. raw:: html

   </p>

.. raw:: html

   <h3>

View transitions: a simple example

.. raw:: html

   </h3>

.. raw:: html

   <p>

Here is a basic example of the use of view transitions. The view below
specifies transitions for the add and displaced properties, which will
be run when items are added to the view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {}
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">name</span>
   }
   }
   <span class="name">add</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   }
   <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">insert</span>(<span class="number">0</span>, { &quot;name&quot;: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">count</span> })
   }</pre>

.. raw:: html

   <p>

When the space key is pressed, adding an item to the model, the new item
will fade in and increase in scale over 400 milliseconds as it is added
to the view. Also, any item that is displaced by the addition of a new
item will animate to its new position in the view over 400 milliseconds,
as specified by the displaced transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

If five items were inserted in succession at index 0, the effect would
be this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Notice that the NumberAnimation objects above do not need to specify a
target to animate the appropriate item. Also, the NumberAnimation in the
addTransition does not need to specify the to value to move the item to
its correct position in the view. This is because the view implicitly
sets the target and to values with the correct item and final item
position values if these properties are not explicitly defined.

.. raw:: html

   </p>

.. raw:: html

   <p>

At its simplest, a view transition may just animate an item to its new
position following a view operation, just as the displaced transition
does above, or animate some item properties, as in the add transition
above. Additionally, a view transition may make use of the
ViewTransition attached property to customize animation behavior for
different items. Following are some examples of how this can be
achieved.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using the ViewTransition attached property

.. raw:: html

   </h3>

.. raw:: html

   <p>

As stated, the various ViewTransition properties provide details
specific to the individual item being transitioned as well as the
operation that triggered the transition. In the animation above, five
items are inserted in succession at index 0. When the fifth and final
insertion takes place, adding "Item 4" to the view, the add transition
is run once (for the inserted item) and the displaced transition is run
four times (once for each of the four existing items in the view).

.. raw:: html

   </p>

.. raw:: html

   <p>

At this point, if we examined the displaced transition that was run for
the bottom displaced item ("Item 0"), the ViewTransition property values
provided to this transition would be as follows:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Property

.. raw:: html

   </th>

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Explanation

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

ViewTransition.item

.. raw:: html

   </td>

.. raw:: html

   <td>

"Item 0" delegate instance

.. raw:: html

   </td>

.. raw:: html

   <td>

The "Item 0" Rectangle object itself

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewTransition.index

.. raw:: html

   </td>

.. raw:: html

   <td>

int value of 4

.. raw:: html

   </td>

.. raw:: html

   <td>

The index of "Item 0" within the model following the add operation

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewTransition.destination

.. raw:: html

   </td>

.. raw:: html

   <td>

point value of (0, 120)

.. raw:: html

   </td>

.. raw:: html

   <td>

The position that "Item 0" is moving to

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewTransition.targetIndexes

.. raw:: html

   </td>

.. raw:: html

   <td>

int array, just contains the integer "0" (zero)

.. raw:: html

   </td>

.. raw:: html

   <td>

The index of "Item 4", the new item added to the view

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewTransition.targetItems

.. raw:: html

   </td>

.. raw:: html

   <td>

object array, just contains the "Item 4" delegate instance

.. raw:: html

   </td>

.. raw:: html

   <td>

The "Item 4" Rectangle object - the new item added to the view

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The ViewTransition.targetIndexes and ViewTransition.targetItems lists
provide the items and indexes of all delegate instances that are the
targets of the relevant operation. For an add operation, these are all
the items that are added into the view; for a remove, these are all the
items removed from the view, and so on. (Note these lists will only
contain references to items that have been created within the view or
its cached items; targets that are not within the visible area of the
view or within the item cache will not be accessible.)

.. raw:: html

   </p>

.. raw:: html

   <p>

So, while the ViewTransition.item, ViewTransition.index and
ViewTransition.destination values vary for each individual transition
that is run, the ViewTransition.targetIndexes and
ViewTransition.targetItems values are the same for every add and
displaced transition that is triggered by a particular add operation.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Delaying animations based on index

.. raw:: html

   </h4>

.. raw:: html

   <p>

Since each view transition is run once for each item affected by the
transition, the ViewTransition properties can be used within a
transition to define custom behavior for each item's transition. For
example, the ListView in the previous example could use this information
to create a ripple-type effect on the movement of the displaced items.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can be achieved by modifying the displaced transition so that it
delays the animation of each displaced item based on the difference
between its index (provided by ViewTransition.index) and the first
removed index (provided by ViewTransition.targetIndexes):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="name">id</span>: <span class="name">dispTrans</span>
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> {
   <span class="name">duration</span>: (<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">index</span> <span class="operator">-</span>
   <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">targetIndexes</span>[<span class="number">0</span>]) <span class="operator">*</span> <span class="number">100</span>
   }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }
   }</pre>

.. raw:: html

   <p>

Each displaced item delays its animation by an additional 100
milliseconds, producing a subtle ripple-type effect when items are
displaced by the add, like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h4>

Animating items to intermediate positions

.. raw:: html

   </h4>

.. raw:: html

   <p>

The ViewTransition.item property gives a reference to the item to which
the transition is being applied. This can be used to access any of the
item's attributes, custom property values, and so on.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a modification of the displaced transition from the previous
example. It adds a ParallelAnimation with nested NumberAnimation objects
that reference ViewTransition.item to access each item's x and y values
at the start of their transitions. This allows each item to animate to
an intermediate position relative to its starting point for the
transition, before animating to its final position in the view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="name">id</span>: <span class="name">dispTrans</span>
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> {
   <span class="name">duration</span>: (<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">index</span> <span class="operator">-</span>
   <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">targetIndexes</span>[<span class="number">0</span>]) <span class="operator">*</span> <span class="number">100</span>
   }
   <span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">20</span>
   <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span>
   }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">50</span>
   <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span>
   }
   }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }
   }</pre>

.. raw:: html

   <p>

Now, a displaced item will first move to a position of (20, 50) relative
to its starting position, and then to its final, correct position in the
view:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Since the final NumberAnimation does not specify a to value, the view
implicitly sets this value to the item's final position in the view, and
so this last animation will move this item to the correct place. If the
transition requires the final position of the item for some calculation,
this is accessible through ViewTransition.destination.

.. raw:: html

   </p>

.. raw:: html

   <p>

Instead of using multiple NumberAnimations, you could use a
PathAnimation to animate an item over a curved path. For example, the
add transition in the previous example could be augmented with a
PathAnimation as follows: to animate newly added items along a path:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">add</span>: <span class="name">Transition</span> {
   <span class="name">id</span>: <span class="name">addTrans</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.PathAnimation.md">PathAnimation</a></span> {
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="name">startX</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">200</span>
   <span class="name">startY</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">200</span>
   <span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">relativeX</span>: -<span class="number">100</span>; <span class="name">relativeY</span>: -<span class="number">50</span> }
   <span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">relativeY</span>: -<span class="number">150</span> }
   <span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> {
   <span class="name">x</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">y</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

This animates newly added items along a path. Notice that each path is
specified relative to each item's final destination point, so that items
inserted at different indexes start their paths from different
positions:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Handling interrupted animations

.. raw:: html

   </h3>

.. raw:: html

   <p>

A view transition may be interrupted at any time if a different view
transition needs to be applied while the original transition is in
progress. For example, say Item A is inserted at index 0 and undergoes
an "add" transition; then, Item B is inserted at index 0 in quick
succession before Item A's transition has finished. Since Item B is
inserted before Item A, it will displace Item A, causing the view to
interrupt Item A's "add" transition mid-way and start a "displaced"
transition on Item A instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For simple animations that simply animate an item's movement to its
final destination, this interruption is unlikely to require additional
consideration. However, if a transition changes other properties, this
interruption may cause unwanted side effects. Consider the first example
on this page, repeated below for convenience:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {}
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">name</span>
   }
   }
   <span class="name">add</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
   }
   <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">insert</span>(<span class="number">0</span>, { &quot;name&quot;: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">count</span> })
   }</pre>

.. raw:: html

   <p>

If multiple items are added in rapid succession, without waiting for a
previous transition to finish, this is the result:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Each newly added item undergoes an add transition, but before the
transition can finish, another item is added, displacing the previously
added item. Because of this, the add transition on the previously added
item is interrupted and a displaced transition is started on the item
instead. Due to the interruption, the opacity and scale animations have
not completed, thus producing items with opacity and scale that are
below 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

To fix this, the displaced transition should additionally ensure the
item properties are set to the end values specified in the add
transition, effectively resetting these values whenever an item is
displaced. In this case, it means setting the item opacity and scale to
1.0:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   <span class="comment">// ensure opacity and scale values return to 1.0</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span> }
   }</pre>

.. raw:: html

   <p>

Now, when an item's add transition is interrupted, its opacity and scale
are animated to 1.0 upon displacement, avoiding the erroneous visual
effects from before:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The same principle applies to any combination of view transitions. An
added item may be moved before its add transition finishes, or a moved
item may be removed before its moved transition finishes, and so on; so,
the rule of thumb is that every transition should handle the same set of
properties.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Restrictions regarding ScriptAction

.. raw:: html

   </h3>

.. raw:: html

   <p>

When a view transition is initialized, any property bindings that refer
to the ViewTransition attached property are evaluated in preparation for
the transition. Due to the nature of the internal construction of a view
transition, the attributes of the ViewTransition attached property are
only valid for the relevant item when the transition is initialized, and
may not be valid when the transition is actually run.

.. raw:: html

   </p>

.. raw:: html

   <p>

Therefore, a ScriptAction within a view transition should not refer to
the ViewTransition attached property, as it may not refer to the
expected values at the time that the ScriptAction is actually invoked.
Consider the following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">8</span>; i++)
   <span class="name">append</span>({&quot;name&quot;: <span class="name">i</span>})
   }
   }
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">name</span>
   }
   <span class="name">objectName</span>: <span class="name">name</span>
   }
   <span class="name">move</span>: <span class="name">Transition</span> {
   <span class="name">id</span>: <span class="name">moveTrans</span>
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">moveTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;lightsteelblue&quot;</span> }
   }
   }
   <span class="name">displaced</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">move</span>(<span class="number">5</span>, <span class="number">1</span>, <span class="number">3</span>)
   }</pre>

.. raw:: html

   <p>

When the space key is pressed, three items are moved from index 5 to
index 1. For each moved item, the moveTransition sequence presumably
animates the item's color to "yellow", then animates it to its final
position, then changes the item color back to "lightsteelblue" using a
ScriptAction. However, when run, the transition does not produce the
intended result:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Only the last moved item is returned to the "lightsteelblue" color; the
others remain yellow. This is because the ScriptAction is not run until
after the transition has already been initialized, by which time the
ViewTransition.item value has changed to refer to a different item; the
item that the script had intended to refer to is not the one held by
ViewTransition.item at the time the ScriptAction is actually invoked.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this instance, to avoid this issue, the view could set the property
using a PropertyAction instead:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">move</span>: <span class="name">Transition</span> {
   <span class="name">id</span>: <span class="name">moveTrans</span>
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">400</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
   <span class="comment">//ScriptAction { script: moveTrans.ViewTransition.item.color = &quot;lightsteelblue&quot; } BAD!</span>
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">value</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

When the transition is initialized, the PropertyAction target will be
set to the respective ViewTransition.item for the transition and will
later run with the correct item target as expected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewTransition -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$destination -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="destination-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewTransition.destination : list

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

This attached property holds the final destination position for the
transitioned item within the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property value is a point with x and y properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@destination -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="index-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewTransition.index : list

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

This attached property holds the index of the item that is being
transitioned.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if the item is being moved, this property holds the index that
the item is moving to, not from.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="item-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewTransition.item : list

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

This attached property holds the item that is being transitioned.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: This item should not be kept and referred to outside of the
transition as it may become invalid as the view changes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@item -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targetIndexes-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewTransition.targetIndexes : list

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

This attached property holds a list of the indexes of the items in view
that are the target of the relevant operation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets are the items that are the subject of the operation. For an
add operation, these are the items being added; for a remove, these are
the items being removed; for a move, these are the items being moved.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the transition was triggered by an insert operation that
added two items at index 1 and 2, this targetIndexes list would have the
value [1,2].

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The targetIndexes list only contains the indexes of items that are
actually in view, or will be in the view once the relevant operation
completes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QtQuick::ViewTransition::targetItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targetIndexes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targetItems-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewTransition.targetItems : list

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

This attached property holds the list of items in view that are the
target of the relevant operation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets are the items that are the subject of the operation. For an
add operation, these are the items being added; for a remove, these are
the items being removed; for a move, these are the items being moved.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the transition was triggered by an insert operation that
added two items at index 1 and 2, this targetItems list would contain
these two items.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The targetItems list only contains items that are actually in
view, or will be in the view once the relevant operation completes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: The objects in this list should not be kept and referred to
outside of the transition as the items may become invalid. The
targetItems are only valid when the Transition is initially created;
this also means they should not be used by ScriptAction objects in the
Transition, which are not evaluated until the transition is run.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QtQuick::ViewTransition::targetIndexes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targetItems -->


