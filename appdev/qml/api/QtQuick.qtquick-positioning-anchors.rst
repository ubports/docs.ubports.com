QtQuick.qtquick-positioning-anchors
===================================

.. raw:: html

   <p>

In addition to the more traditional Grid, Row, and Column, Qt Quick also
provides a way to layout items using the concept of anchors. Each item
can be thought of as having a set of 7 invisible "anchor lines": left,
horizontalCenter, right, top, verticalCenter, baseline, and bottom.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The baseline (not pictured above) corresponds to the imaginary line on
which text would sit. For items with no text it is the same as top.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt Quick anchoring system allows you to define relationships between
the anchor lines of different items. For example, you can write:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>

.. raw:: html

   <p>

In this case, the left edge of rect2 is bound to the right edge of
rect1, producing the following:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

You can specify multiple anchors. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>top: rect1<span class="operator">.</span>bottom; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

By specifying multiple horizontal or vertical anchors you can control
the size of an item. Below, rect2 is anchored to the right of rect1 and
the left of rect3. If either of the blue rectangles are moved, rect2
will stretch and shrink as necessary:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle { id: rect1; x: <span class="number">0</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>right: rect3<span class="operator">.</span>left; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   Rectangle { id: rect3; x: <span class="number">150</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

There are also some convenience anchors. anchors.fill is a convenience
that is the same as setting the left,right,top and bottom anchors to the
left,right,top and bottom of the target item. anchors.centerIn is
another convenience anchor, and is the same as setting the
verticalCenter and horizontalCenter anchors to the verticalCenter and
horizontalCenter of the target item.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="anchor-margins-and-offsets">

Anchor Margins and Offsets

.. raw:: html

   </h2>

.. raw:: html

   <p>

The anchoring system also allows margins and offsets to be specified for
an item's anchors. Margins specify the amount of empty space to leave to
the outside of an item's anchor, while offsets allow positioning to be
manipulated using the center anchor lines. An item can specify its
anchor margins individually through leftMargin, rightMargin, topMargin
and bottomMargin, or use anchors.margins to specify the same margin
value for all four edges. Anchor offsets are specified using
horizontalCenterOffset, verticalCenterOffset and baselineOffset.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example specifies a left margin:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>leftMargin: <span class="number">5</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>

.. raw:: html

   <p>

In this case, a margin of 5 pixels is reserved to the left of rect2,
producing the following:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Anchor margins only apply to anchors; they are not a generic means
of applying margins to an Item. If an anchor margin is specified for an
edge but the item is not anchored to any item on that edge, the margin
is not applied.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="changing-anchors">

Changing Anchors

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Quick provides the AnchorChanges type for specifying the anchors in a
state.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;anchorRight&quot;</span>
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">rect2</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.left: <span class="name">undefined</span>  <span class="comment">//remove the left anchor</span>
   }
   }</pre>

.. raw:: html

   <p>

AnchorChanges can be animated using the AnchorAnimation type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="type"><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></span> {}  <span class="comment">//animates any AnchorChanges in the corresponding state change</span>
   }</pre>

.. raw:: html

   <p>

Anchors can also be changed imperatively within JavaScript. However,
these changes should be carefully ordered, or they may produce
unexpected outcomes. The following example illustrates the issue:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">    <span class="comment">//bad code</span>
   Rectangle {
   width: <span class="number">50</span>
   anchors<span class="operator">.</span>left: parent<span class="operator">.</span>left
   function reanchorToRight() {
   anchors<span class="operator">.</span>right <span class="operator">=</span> parent<span class="operator">.</span>right
   anchors<span class="operator">.</span>left <span class="operator">=</span> undefined
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

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

When reanchorToRight is called, the function first sets the right
anchor. At that point, both left and right anchors are set, and the item
will be stretched horizontally to fill its parent. When the left anchor
is unset, the new width will remain. Thus when updating anchors within
JavaScript, you should first unset any anchors that are no longer
required, and only then set any new anchors that are required, as shown
below:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="keyword">function</span> <span class="name">reanchorToRight</span>() {
   <span class="name">anchors</span>.<span class="name">left</span> <span class="operator">=</span> <span class="name">undefined</span>
   <span class="name">anchors</span>.<span class="name">right</span> <span class="operator">=</span> <span class="name">parent</span>.<span class="name">right</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

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

Because the evaluation order of bindings is not defined, it is not
recommended to change anchors via conditional bindings, as this can lead
to the ordering issue described above. In the following example the
Rectangle will eventually grow to the full width of its parent, because
both left and right anchors will be simultaneously set during binding
update.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//bad code</span>
   Rectangle {
   width: <span class="number">50</span>; height: <span class="number">50</span>
   anchors<span class="operator">.</span>left: state <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;right&quot;</span> <span class="operator">?</span> undefined : parent<span class="operator">.</span>left;
   anchors<span class="operator">.</span>right: state <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;right&quot;</span> <span class="operator">?</span> parent<span class="operator">.</span>right : undefined;
   }</pre>

.. raw:: html

   <p>

This should be rewritten to use AnchorChanges instead, as AnchorChanges
will automatically handle ordering issues internally.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="restrictions">

Restrictions

.. raw:: html

   </h2>

.. raw:: html

   <p>

For performance reasons, you can only anchor an item to its siblings and
direct parent. For example, the following anchor is invalid and would
produce a warning:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//bad code</span>
   Item {
   id: group1
   Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
   }
   Item {
   id: group2
   Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }    <span class="comment">// invalid anchor!</span>
   }</pre>

.. raw:: html

   <p>

Also, anchor-based layouts cannot be mixed with absolute positioning. If
an item specifies its x position and also sets anchors.left, or anchors
its left and right edges but additionally sets a width, the result is
undefined, as it would not be clear whether the item should use
anchoring or absolute positioning. The same can be said for setting an
item's y and height with anchors.top and anchors.bottom, or setting
anchors.fill as well as width or height. The same applies when using
positioners such as Row and Grid, which may set the item's x and y
properties. If you wish to change from using anchor-based to absolute
positioning, you can clear an anchor value by setting it to undefined.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-positioning-anchors.html -->
