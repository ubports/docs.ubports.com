QtQuick.PathView
================

.. raw:: html

   <p>

Lays out model-provided items on a path More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathView -->

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

cacheItemCount : int

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

dragMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragging : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickDeceleration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flicking : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlight : Component

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

interactive : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumFlickVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : model

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moving : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

offset : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : Path

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pathItemCount : int

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

snapMode : enumeration

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

isCurrentItem : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onPath : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

view : PathView

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

dragEnded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickEnded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickStarted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

movementEnded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

movementStarted()

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

positionViewAtIndex(int index, PositionMode mode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PathView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A PathView displays data from models created from built-in QML types
like ListModel and XmlListModel, or custom model classes defined in C++
that inherit from QAbstractListModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

The view has a model, which defines the data to be displayed, and a
delegate, which defines how the data should be displayed. The delegate
is instantiated for each item on the path. The items may be flicked to
move them along the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if there is a simple list model defined in a file
ContactModel.qml like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListModel</span> {
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Bill Jones&quot;</span>
   <span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Jane Doe&quot;</span>
   <span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;John Smith&quot;</span>
   <span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

This data can be represented as a PathView, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">source</span>: <span class="name">icon</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">nameText</span>
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">font</span>.pointSize: <span class="number">16</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }
   <span class="type"><a href="index.html">PathView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">delegate</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

(Note the above example uses PathAttribute to scale and modify the
opacity of the items as they rotate. This additional code can be seen in
the PathAttribute documentation.)

.. raw:: html

   </p>

.. raw:: html

   <p>

PathView does not automatically handle keyboard navigation. This is
because the keys to use for navigation will depend upon the shape of the
path. Navigation can be added quite simply by setting focus to true and
calling decrementCurrentIndex() or incrementCurrentIndex(), for example
to navigate using the left and right arrow keys:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PathView</a></span> {
   <span class="comment">// ...</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onLeftPressed: <span class="name">decrementCurrentIndex</span>()
   <span class="name">Keys</span>.onRightPressed: <span class="name">incrementCurrentIndex</span>()
   }</pre>

.. raw:: html

   <p>

The path view itself is a focus scope (see Keyboard Focus in Qt Quick
for more details).

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

PathView attaches a number of properties to the root item of the
delegate, for example PathView.isCurrentItem. In the following example,
the root delegate item can access this attached property directly as
PathView.isCurrentItem, while the child nameText object must refer to
this property as wrapper.PathView.isCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">source</span>: <span class="name">icon</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">nameText</span>
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">font</span>.pointSize: <span class="number">16</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Note that views do not enable clip automatically. If the view is not
clipped by another item or the screen, it will be necessary to set clip:
true in order to have the out of view items clipped nicely.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Path, QML Data Models, ListView, GridView, and Qt Quick
Examples - Views.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cacheItemCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cacheItemCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cacheItemCount : int

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

This property holds the maximum number of items to cache off the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, a PathView with a model containing 20 items, a
pathItemCount of 10, and an cacheItemCount of 4 will create up to 14
items, with 10 visible on the path and 4 invisible cached items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The cached delegates are created asynchronously, allowing creation to
occur across multiple frames and reducing the likelihood of skipping
frames.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this value can improve the smoothness of scrolling behavior at
the expense of additional memory usage. It is not a substitute for
creating efficient delegates; the fewer objects and bindings in a
delegate, the faster a view can be moved.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pathItemCount.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cacheItemCount -->

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

This property holds the number of items in the model.

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

This property holds the index of the current item.

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

This property holds the current item in the view.

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
on the flicking performance of the view when pathItemCount is specified.
If at all possible, place functionality that is not needed for the
normal display of the delegate in a Loader which can load additional
components when needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the PathView will layout the items based on the size of the
root item in the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an example delegate:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">source</span>: <span class="name">icon</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">nameText</span>
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">font</span>.pointSize: <span class="number">16</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dragMargin : real

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

This property holds the maximum distance from the path that initiate
mouse dragging.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the path can only be dragged by clicking on an item. If
dragMargin is greater than zero, a drag can be initiated by clicking
within dragMargin pixels of the path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragMargin -->

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

This property holds whether the view is currently moving due to the user
dragging the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragging -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickDeceleration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickDeceleration : real

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

This property holds the rate at which a flick will decelerate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default is 100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickDeceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flicking-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flicking : bool

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

This property holds whether the view is currently moving due to the user
flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flicking -->

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

An instance of the highlight component will be created for each view.
The geometry of the resultant component instance will be managed by the
view so as to stay with the current item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The below example demonstrates how to make a simple highlight. Note the
use of the PathView.onPath attached property to ensure that the
highlight is hidden when flicked away from the path.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">visible</span>: <span class="name">PathView</span>.<span class="name">onPath</span>
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

See also highlightItem and highlightRangeMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlight -->

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

highlightItem holds the highlight item, which was created from the
highlight component.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also highlight.

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

If the highlightRangeMode is StrictlyEnforceRange then this property
determines the speed that the items move along the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for the duration is 300ms.

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

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

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

PathView.NoHighlightRange - no range is applied and the highlight will
move freely within the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.ApplyRange - the view will attempt to maintain the highlight
within the range, however the highlight can move outside of the range at
the ends of the path or due to a mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.StrictlyEnforceRange - the highlight will never move outside of
the range. This means that the current item will change if a keyboard or
mouse action would cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is PathView.StrictlyEnforceRange.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and highlightRangeMode to
PathView.StrictlyEnforceRange. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: A valid range requires preferredHighlightEnd to be greater than or
equal to preferredHighlightBegin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightRangeMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="interactive-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

interactive : bool

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

A user cannot drag or flick a PathView that is not interactive.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is useful for temporarily disabling flicking. This allows
special interaction with PathView's children.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@interactive -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumFlickVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumFlickVelocity : real

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

This property holds the approximate maximum velocity that the user can
flick the view in pixels/second.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is platform dependent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumFlickVelocity -->

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

This property holds the model providing data for the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model provides a set of data that is used to create the items for
the view. For large or dynamic datasets the model is usually provided by
a C++ model object. Models can also be created directly in QML, using
the ListModel type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: changing the model will reset the offset and currentIndex to 0.

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

   <tr valign="top" id="moving-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

moving : bool

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

This property holds whether the view is currently moving due to the user
either dragging or flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moving -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="offset-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

offset : real

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

The offset specifies how far along the path the items are from their
initial positions. This is a real number that ranges from 0.0 to the
count of items in the model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@offset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : Path

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

This property holds the path used to lay out the items. For more
information see the Path documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pathItemCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pathItemCount : int

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

This property holds the number of items visible on the path at any one
time.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting pathItemCount to undefined will show all items on the path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pathItemCount -->

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

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

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

PathView.NoHighlightRange - no range is applied and the highlight will
move freely within the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.ApplyRange - the view will attempt to maintain the highlight
within the range, however the highlight can move outside of the range at
the ends of the path or due to a mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.StrictlyEnforceRange - the highlight will never move outside of
the range. This means that the current item will change if a keyboard or
mouse action would cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is PathView.StrictlyEnforceRange.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and highlightRangeMode to
PathView.StrictlyEnforceRange. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: A valid range requires preferredHighlightEnd to be greater than or
equal to preferredHighlightBegin.

.. raw:: html

   </p>

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

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

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

PathView.NoHighlightRange - no range is applied and the highlight will
move freely within the view.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.ApplyRange - the view will attempt to maintain the highlight
within the range, however the highlight can move outside of the range at
the ends of the path or due to a mouse interaction.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.StrictlyEnforceRange - the highlight will never move outside of
the range. This means that the current item will change if a keyboard or
mouse action would cause the highlight to move outside of the range.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is PathView.StrictlyEnforceRange.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and highlightRangeMode to
PathView.StrictlyEnforceRange. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: A valid range requires preferredHighlightEnd to be greater than or
equal to preferredHighlightBegin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preferredHighlightEnd -->

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

This property determines how the items will settle following a drag or
flick. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

PathView.NoSnap (default) - the items stop anywhere along the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.SnapToItem - the items settle with an item aligned with the
preferredHighlightBegin.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.SnapOneItem - the items settle no more than one item away from
the item nearest preferredHighlightBegin at the time the press is
released. This mode is particularly useful for moving one page at a
time.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

snapMode does not affect the currentIndex. To update the currentIndex as
the view is moved, set highlightRangeMode to
PathView.StrictlyEnforceRange (default for PathView).

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

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$isCurrentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isCurrentItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

PathView.isCurrentItem : bool

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

This property may be used to adjust the appearance of the current item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">wrapper</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">source</span>: <span class="name">icon</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">nameText</span>
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">font</span>.pointSize: <span class="number">16</span>
   <span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@isCurrentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onPath-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

PathView.onPath : bool

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

This attached property holds whether the item is currently on the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a pathItemCount has been set, it is possible that some items may be
instantiated, but not considered to be currently on the path. Usually,
these items would be set invisible, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">visible</span>: <span class="name">PathView</span>.<span class="name">onPath</span>
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onPath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="view-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

PathView.view : PathView

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

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@view -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dragEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragEnded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dragEnded()

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

This signal is emitted when the user stops dragging the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the velocity of the drag is suffient at the time the touch/mouse
button is released then a flick will start.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDragEnded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dragStarted()

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

This signal is emitted when the view starts to be dragged due to user
interaction.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDragStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickEnded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flickEnded()

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

This signal is emitted when the view stops moving due to a flick.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFlickEnded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flickStarted()

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

This signal is emitted when the view is flicked. A flick starts from the
point that the mouse or touch is released, while still in motion.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFlickStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickStarted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="movementEnded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

movementEnded()

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

This signal is emitted when the view stops moving due to user
interaction. If a flick was generated, this signal will be emitted once
the flick stops. If a flick was not generated, this signal will be
emitted when the user stops dragging - i.e. a mouse or touch release.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMovementEnded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@movementEnded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="movementStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

movementStarted()

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

This signal is emitted when the view begins moving due to user
interaction.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMovementStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@movementStarted -->

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

Decrements the current index.

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

Increments the current index.

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

Returns the index of the item containing the point x, y in content
coordinates. If there is no item at the point specified, -1 is returned.

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

Returns the item containing the point x, y in content coordinates. If
there is no item at the point specified, null is returned.

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

PathView.Beginning - position item at the beginning of the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.Center - position item in the center of the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.End - position item at the end of the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.Contain - ensure the item is positioned on the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView.SnapPosition - position the item at preferredHighlightBegin.
This mode is only valid if highlightRangeMode is StrictlyEnforceRange or
snapping is enabled via snapMode.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: methods should only be called after the Component has completed.
To position the view at startup, this method should be called by
Component.onCompleted. For example, to position the view at the end:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> PathView<span class="operator">.</span>End)</pre>

.. raw:: html

   <!-- @@@positionViewAtIndex -->


