QtQuick.qtquick-positioning-topic
=================================

.. raw:: html

   <p>

Visual items in QML can be positioned in a variety of ways. The most
important positioning-related concept is that of anchoring, a form of
relative positioning where items can be anchored (or attached) to each
other at certain boundaries. Other positioning concepts include absolute
positioning, positioning with coordinate bindings, positioners, and
layouts.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="manual-positioning">

Manual Positioning

.. raw:: html

   </h2>

.. raw:: html

   <p>

Items can be positioned manually. If the user-interface is going to be
static, manual positioning provides the most efficient form of
positioning.

.. raw:: html

   </p>

.. raw:: html

   <p>

In any user-interface, the visual types exist at a particular location
in the screen coordinates at any instant in time. While fluidly animated
and dynamic user-interfaces are a major focus of Qt Quick,
statically-positioned user interfaces are still a viable option. What's
more, if the position of those types does not change, it can often be
more performant to specify the position manually than to use the more
dynamic positioning methods documented in proceeding sections.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Qt Quick, every visual object is positioned within the coordinate
system provided by the Qt Quick visual canvas. As described in that
document, the x and y coordinates of a visual object are relative to
those of its visual parent, with the top-left corner having the
coordinate (0, 0).

.. raw:: html

   </p>

.. raw:: html

   <p>

Thus, the following example will display two rectangles positioned
manually:

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

Example Code

.. raw:: html

   </th>

.. raw:: html

   <th>

Resultant Layout

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

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">50</span>
   <span class="name">y</span>: <span class="number">50</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">100</span>
   <span class="name">y</span>: <span class="number">100</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
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

   <h2 id="positioning-with-bindings">

Positioning With Bindings

.. raw:: html

   </h2>

.. raw:: html

   <p>

Items may also be positioned by assigning binding expressions to the
properties associated with their location in the visual canvas. This
type of positioning is the most highly dynamic, however some performance
cost is associated with positioning items in this manner.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position and dimensions of a visual object can also be set through
property bindings. This has the advantage that the values will
automatically be updated as the dependencies of the bindings change. For
example, the width of one Rectangle might depend on the width of the
Rectangle next to it.

.. raw:: html

   </p>

.. raw:: html

   <p>

While bindings provide a very flexible and intuitive way of creating
dynamic layouts, it should be noted that there is some performance cost
associated with them, and where possible, pristine Anchor layouts should
be preferred.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="anchors">

Anchors

.. raw:: html

   </h2>

.. raw:: html

   <p>

Anchors allows an item to be placed either adjacent to or inside of
another, by attaching one or more of the item's anchor-points
(boundaries) to an anchor-point of the other. These anchors will remain
even if the dimensions or location of one of the items changes, allowing
for highly dynamic user-interfaces.

.. raw:: html

   </p>

.. raw:: html

   <p>

A visual object can be thought of as having various anchor-points (or
more correctly, anchor-lines). Other items can be anchored to those
points, which means that as any object changes, the other objects which
are anchored to it will adjust automatically to maintain the anchoring.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick provides anchors as a top-level concept. See the documentation
about positioning with anchors for in-depth information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is important to note that anchor-based layouts are generally far more
performant than binding-based layouts, if pristine. A "pristine" anchor
layout is one which uses only anchors (with object nesting) to determine
the positioning, whereas a "contaminated" anchor layout is one which
uses both anchoring and bindings (either on position-related [x,y]
properties or on dimension-related [width,height] properties) to
determine the position.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="positioners">

Positioners

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Quick also provides some built-in positioner items. For many use
cases, the best positioner to use is a simple grid, row, or column, and
Qt Quick provides items which will position children in these formations
in the most efficient manner possible. See the documentation on item
positioners types for more information about utilizing pre-defined
positioners.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="layouts">

Layouts

.. raw:: html

   </h2>

.. raw:: html

   <p>

From Qt 5.1, the module Qt Quick Layouts can also be used to arrange Qt
Quick items in a user interface. Unlike positioners, the types in Qt
Quick Layouts manage both the positions and sizes of items in a
declarative interface. They are well suited for resizable user
interfaces.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="right-to-left-support">

Right-To-Left Support

.. raw:: html

   </h2>

.. raw:: html

   <p>

The directionality of the written form of a language often has a great
impact on how the visual types of a user-interface should be positioned.
Qt Quick supports right-to-left positioning of types through the
predefined-layouts as well as right-to-left text layouts.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see the documentation about right-to-left support in Qt Quick for
in-depth information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-positioning-topic.html -->
