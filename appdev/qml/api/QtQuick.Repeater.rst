QtQuick.Repeater
================

.. raw:: html

   <p>

Instantiates a number of Item-based components using a provided model
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Repeater -->

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

Item

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : any

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

itemAdded(int index, Item item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemRemoved(int index, Item item)

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

Item itemAt(index)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Repeater-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Repeater type is used to create a large number of similar items.
Like other view types, a Repeater has a model and a delegate: for each
entry in the model, the delegate is instantiated in a context seeded
with data from the model. A Repeater item is usually enclosed in a
positioner type such as Row or Column to visually position the multiple
delegate items created by the Repeater.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following Repeater creates three instances of a Rectangle item
within a Row:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type"><a href="index.html">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">3</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">40</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

A Repeater's model can be any of the supported data models.
Additionally, like delegates for other views, a Repeater delegate can
access its index within the repeater, as well as the model data relevant
to the delegate. See the delegate property documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items instantiated by the Repeater are inserted, in order, as children
of the Repeater's parent. The insertion starts immediately after the
repeater's position in its parent stacking list. This allows a Repeater
to be used inside a layout. For example, the following Repeater's items
are stacked between a red rectangle and a blue rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   <span class="type"><a href="index.html">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: A Repeater item owns all items it instantiates. Removing or
dynamically destroying an item created by a Repeater results in
unpredictable behavior.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Considerations when using Repeater

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Repeater type creates all of its delegate items when the repeater is
first created. This can be inefficient if there are a large number of
delegate items and not all of the items are required to be visible at
the same time. If this is the case, consider using other view types like
ListView (which only creates delegate items when they are scrolled into
view) or use the Dynamic Object Creation methods to create items as they
are required.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also, note that Repeater is Item-based, and can only repeat Item-derived
objects. For example, it cannot be used to repeat QtObjects:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//bad code</span>
   Item {
   Can<span class="char">'t repeat QtObject as it doesn'</span>t derive from Item<span class="operator">.</span>
   Repeater {
   model: <span class="number">10</span>
   <span class="type">QtObject</span> {}
   }
   }</pre>

.. raw:: html

   <!-- @@@Repeater -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

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

This property holds the number of items in the repeater.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] delegate : Component

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
repeater.

.. raw:: html

   </p>

.. raw:: html

   <p>

Delegates are exposed to a read-only index property that indicates the
index of the delegate within the repeater. For example, the following
Text delegate displays the index of each repeated item:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="index.html">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;I'm item &quot;</span> <span class="operator">+</span> <span class="name">index</span> }
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

If the model is a string list or object list, the delegate is also
exposed to a read-only modelData property that holds the string or
object data. For example:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="index.html">Repeater</a></span> {
   <span class="name">model</span>: [<span class="string">&quot;apples&quot;</span>, <span class="string">&quot;oranges&quot;</span>, <span class="string">&quot;pears&quot;</span>]
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Data: &quot;</span> <span class="operator">+</span> <span class="name">modelData</span> }
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

If the model is a model object (such as a ListModel) the delegate can
access all model roles as named properties, in the same way that
delegates do for view classes like ListView.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QML Data Models.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : any

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

The model providing data for the repeater.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property can be set to any of the supported data models:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A number that indicates the number of delegates to be created by the
repeater

.. raw:: html

   </li>

.. raw:: html

   <li>

A model (e.g. a ListModel item, or a QAbstractItemModel subclass)

.. raw:: html

   </li>

.. raw:: html

   <li>

A string list

.. raw:: html

   </li>

.. raw:: html

   <li>

An object list

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The type of model affects the properties that are exposed to the
delegate.

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

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$itemAdded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemAdded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

itemAdded(int index, Item item)

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

This signal is emitted when an item is added to the repeater. The index
parameter holds the index at which the item has been inserted within the
repeater, and the item parameter holds the Item that has been added.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onItemAdded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemAdded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemRemoved-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

itemRemoved(int index, Item item)

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

This signal is emitted when an item is removed from the repeater. The
index parameter holds the index at which the item was removed from the
repeater, and the item parameter holds the Item that was removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Do not keep a reference to item if it was created by this repeater, as
in these cases it will be deleted shortly after the signal is handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onItemRemoved.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemRemoved -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$itemAt -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemAt-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Item itemAt(index)

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

Returns the Item that has been created at the given index, or null if no
item exists at index.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemAt -->


