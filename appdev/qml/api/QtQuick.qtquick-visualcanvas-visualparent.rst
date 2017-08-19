QtQuick.qtquick-visualcanvas-visualparent
=========================================

.. raw:: html

   <h2 id="visual-parent">

Visual Parent

.. raw:: html

   </h2>

.. raw:: html

   <p>

When creating visual scenes with Qt Quick, it is important to understand
the concept of the visual parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

The concept of the visual parent in Qt Quick is separate from, but
related to, the concept of the object parent within the QObject parent
hierarchy. All QML objects have an object parent, which is determined by
the object hierarchy in which the object is declared. When working with
the QtQuick module, the Item type is the base type for all visual items
provided by this module, and it provides the concept of an additional
visual parent, as defined by an item's parent property. Every item has a
visual parent; if an item's parent property value is null, the item will
not be rendered in the scene.

.. raw:: html

   </p>

.. raw:: html

   <p>

Any object assigned to an item's data property becomes a child of the
item within its QObject hierarchy, for memory management purposes.
Additionally, if an object added to the data property is of the Item
type, it is also assigned to the Item::children property and becomes a
child of the item within the visual scene hierarchy. (Most Qt Quick
hierarchy crawling algorithms, especially the rendering algorithms, only
consider the visual parent hierarchy.)

.. raw:: html

   </p>

.. raw:: html

   <p>

For convenience, the Item data property is its default property. This
means that any child item declared within an Item object without being
assigned to a specific property is automatically assigned to the data
property and becomes a child of the item as described above. So, the two
code blocks below produce the same result, and you will almost always
see the form shown below left, rather than the explicit data assignment
shown below right:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Item {
   width: <span class="number">100</span>; height: <span class="number">100</span>
   Rectangle { width: <span class="number">50</span>; height: <span class="number">50</span>; color: <span class="string">&quot;red&quot;</span> }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Item {
   width: <span class="number">100</span>; height: <span class="number">100</span>
   data: <span class="operator">[</span>
   Rectangle { width: <span class="number">50</span>; height: <span class="number">50</span>; color: <span class="string">&quot;red&quot;</span> }
   <span class="operator">]</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

An item's visual parent can be changed at any time by setting its parent
property. Thus, an item's visual parent may not necessarily be the same
as its object parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

When an item becomes the child of another item:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The child's parent refers to its parent item

.. raw:: html

   </li>

.. raw:: html

   <li>

The parent's children and childrenRect properties takes that child into
account

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Declaring an item as a child of another does not automatically mean that
the child item will be appropriately positioned or sized to fit within
its parent. Some QML types may have in-built behaviors that affect the
positioning of child items — for example, a Row object automatically
re-positions its children into a horizontal formation — but these are
behaviors enforced by the types' own specific implementations.
Additionally, a parent item will not automatically clip its children to
visually contain them within the parent's visual bounds, unless its clip
property is set to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

The visual parent of an item may come under consideration in particular
circumstances, as described in the sections below.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Item Coordinates

.. raw:: html

   </h3>

.. raw:: html

   <p>

As item coordinates are relative to the visual parent, they can be
affected by changes to the visual hierarchy. See the Visual Coordinates
concept page for more detail.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Stacking Order

.. raw:: html

   </h3>

.. raw:: html

   <p>

Qt Quick items use a recursive drawing algorithm for determining which
items are drawn on top in case of collisions. In general items are drawn
on top of their parent items, in the order they were created (or
specified in the QML file). So in the following example, the blue
rectangle will be drawn on top of the green rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;#272822&quot;</span>
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">y</span>: <span class="number">64</span>
   <span class="name">width</span>: <span class="number">256</span>
   <span class="name">height</span>: <span class="number">256</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">64</span>
   <span class="name">y</span>: <span class="number">172</span>
   <span class="name">width</span>: <span class="number">256</span>
   <span class="name">height</span>: <span class="number">256</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Because the algorithm recurses through the visual item hierarchy, any
children of the green rectangle will also be drawn beneath the blue
rectangle and beneath any of the blue rectangle's children.

.. raw:: html

   </p>

.. raw:: html

   <p>

Stacking order can be influenced with the Item::z property. Z values
below 0 will stack below the parent, and if z values are assigned then
siblings will stack in z-order (with creation order used to break ties).
Z values only affect stacking compared to siblings and the parent item.
If you have an item who is obscured by a subtree rooted above its parent
item, no z value on that item will increase its stacking order to stack
above that subtree. To stack that item above the other subtree you'll
have to alter z values farther up in the hierarchy, or re-arrange the
visual item hierarchy.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;#272822&quot;</span>
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">y</span>: <span class="number">64</span>
   <span class="name">z</span>: <span class="number">1</span>
   <span class="name">width</span>: <span class="number">256</span>
   <span class="name">height</span>: <span class="number">256</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">192</span>
   <span class="name">y</span>: <span class="number">64</span>
   <span class="name">z</span>: <span class="number">2000</span>
   <span class="name">width</span>: <span class="number">128</span>
   <span class="name">height</span>: <span class="number">128</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">64</span>
   <span class="name">y</span>: <span class="number">192</span>
   <span class="name">z</span>: <span class="number">2</span>
   <span class="name">width</span>: <span class="number">256</span>
   <span class="name">height</span>: <span class="number">256</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In the above example, the red rectangle has a high z value, but is still
stacked below the blue rectangle. This is because it is a child of the
green rectangle, and the green rectangle is a sibling of the blue
rectangle. The z value of the green rectangle is lower than that of the
blue rectangle, so the green rectangle and all children will be stacked
beneath the blue rectangle.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Canvas Ownership

.. raw:: html

   </h3>

.. raw:: html

   <p>

The definition of what is rendered in a Qt Quick scene is the visual
item tree rooted at QQuickWindow::contentItem. Therefore to add an Item
to a specific Qt Quick scene for rendering it needs to become a visual
hierarchy child of an Item already in the visual item hierarchy, such as
QQuickWindow::contentItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-visualcanvas-visualparent.html -->
