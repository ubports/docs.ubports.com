QtQuick.qtquick-positioning-layouts
===================================

.. raw:: html

   <p>

Positioner items are container items that manage the positions of items
in a declarative user interface. Positioners behave in a similar way to
the layout managers used with standard Qt widgets, except that they are
also containers in their own right.

.. raw:: html

   </p>

.. raw:: html

   <p>

Positioners make it easier to work with many items when they need to be
arranged in a regular layout.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick Layouts can also be used to arrange Qt Quick items in a user
interface. They manage both the positions and the sizes of items on a
declarative user interface, and are well suited for resizable user
interfaces.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="positioners">

Positioners

.. raw:: html

   </h2>

.. raw:: html

   <p>

A set of standard positioners are provided in the basic set of Qt Quick
graphical types:

.. raw:: html

   </p>

.. raw:: html

   <h3>

Column

.. raw:: html

   </h3>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Column items are used to vertically arrange items. The following example
uses a Column item to arrange three Rectangle items in an area defined
by an outer Item. The spacing property is set to include a small amount
of space between the rectangles.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">310</span>; <span class="name">height</span>: <span class="number">170</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>; <span class="name">radius</span>: <span class="number">10.0</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Books&quot;</span> } }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;gold&quot;</span>; <span class="name">radius</span>: <span class="number">10.0</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Music&quot;</span> } }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;lightgreen&quot;</span>; <span class="name">radius</span>: <span class="number">10.0</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Movies&quot;</span> } }
   }
   }</pre>

.. raw:: html

   <p>

Note that, since Column inherits directly from Item, any background
color must be added to a parent Rectangle, if desired.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Row

.. raw:: html

   </h3>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Row items are used to horizontally arrange items. The following example
uses a Row item to arrange three rounded Rectangle items in an area
defined by an outer colored Rectangle. The spacing property is set to
include a small amount of space between the rectangles.

.. raw:: html

   </p>

.. raw:: html

   <p>

We ensure that the parent Rectangle is large enough so that there is
some space left around the edges of the horizontally centered Row item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">110</span>
   <span class="name">color</span>: <span class="string">&quot;#c0c0c0&quot;</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">radius</span>: <span class="number">20.0</span>
   <span class="name">color</span>: <span class="string">&quot;#024c1c&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">radius</span>: <span class="number">20.0</span>
   <span class="name">color</span>: <span class="string">&quot;#42a51c&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">radius</span>: <span class="number">20.0</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span> }
   }
   }</pre>

.. raw:: html

   <h3>

Grid

.. raw:: html

   </h3>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Grid items are used to place items in a grid or table arrangement. The
following example uses a Grid item to place four Rectangle items in a
2-by-2 grid. As with the other positioners, the spacing between items
can be specified using the spacing property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">112</span>; <span class="name">height</span>: <span class="number">112</span>
   <span class="name">color</span>: <span class="string">&quot;#303030&quot;</span>
   <span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">columns</span>: <span class="number">2</span>
   <span class="name">spacing</span>: <span class="number">6</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;#aa6666&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;#aaaa66&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;#9999aa&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;#6666aa&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   }
   }</pre>

.. raw:: html

   <p>

There is no difference between horizontal and vertical spacing inserted
between items, so any additional space must be added within the items
themselves.

.. raw:: html

   </p>

.. raw:: html

   <p>

Any empty cells in the grid must be created by defining placeholder
items at the appropriate places in the Grid definition.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Flow

.. raw:: html

   </h3>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Flow items are used to place items like words on a page, with rows or
columns of non-overlapping items.

.. raw:: html

   </p>

.. raw:: html

   <p>

Flow items arrange items in a similar way to Grid items, with items
arranged in lines along one axis (the minor axis), and lines of items
placed next to each other along another axis (the major axis). The
direction of flow, as well as the spacing between items, are controlled
by the flow and spacing properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a Flow item containing a number of Text
child items. These are arranged in a similar way to those shown in the
screenshots.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.margins: <span class="number">4</span>
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Text&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;items&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;flowing&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;inside&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;a&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Flow&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;item&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
   }
   }</pre>

.. raw:: html

   <p>

The main differences between the Grid and Flow positioners are that
items inside a Flow will wrap when they run out of space on the minor
axis, and items on one line may not be aligned with items on another
line if the items do not have uniform sizes. As with Grid items, there
is no independent control of spacing between items and between lines of
items.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="other-ways-to-position-items">

Other Ways to Position Items

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are several other ways to position items in a user interface. In
addition to the basic technique of specifying their coordinates
directly, they can be positioned relative to other items with anchors,
or used with QML Data Models such as VisualItemModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-positioning-layouts.html -->
