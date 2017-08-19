QtQuick.Flickable
=================

.. raw:: html

   <p>

Provides a surface that can be "flicked" More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flickable -->

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

GridView and ListView.

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

atXBeginning : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

atXEnd : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

atYBeginning : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

atYEnd : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bottomMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

boundsBehavior : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragging : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

draggingHorizontally : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

draggingVertically : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickDeceleration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickableDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flicking : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickingHorizontally : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickingVertically : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

interactive : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

leftMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumFlickVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moving : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

movingHorizontally : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

movingVertically : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

originX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

originY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pixelAligned : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressDelay : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rebound : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rightMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

topMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalVelocity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibleArea

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

visibleArea.xPosition : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibleArea.widthRatio : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibleArea.yPosition : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibleArea.heightRatio : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

cancelFlick()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flick(qreal xVelocity, qreal yVelocity)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

resizeContent(real width, real height, QPointF center)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

returnToBounds()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Flickable-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Flickable item places its children on a surface that can be dragged
and flicked, causing the view onto the child items to scroll. This
behavior forms the basis of Items that are designed to show large
numbers of child items, such as ListView and GridView.

.. raw:: html

   </p>

.. raw:: html

   <p>

In traditional user interfaces, views can be scrolled using standard
controls, such as scroll bars and arrow buttons. In some situations, it
is also possible to drag the view directly by pressing and holding a
mouse button while moving the cursor. In touch-based user interfaces,
this dragging action is often complemented with a flicking action, where
scrolling continues after the user has stopped touching the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

Flickable does not automatically clip its contents. If it is not used as
a full-screen item, you should consider setting the clip property to
true.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a small view onto a large image in which the
user can drag or flick the image in order to view different parts of it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Flickable</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
   }</pre>

.. raw:: html

   <p>

Items declared as children of a Flickable are automatically parented to
the Flickable's contentItem. This should be taken into account when
operating on the children of the Flickable; it is usually the children
of contentItem that are relevant. For example, the bound of Items added
to the Flickable will be available by contentItem.childrenRect

.. raw:: html

   </p>

.. raw:: html

   <h2 id="limitations">

Limitations

.. raw:: html

   </h2>

.. raw:: html

   <p>

Note: Due to an implementation detail, items placed inside a Flickable
cannot anchor to it by id. Use parent instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flickable -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$atXBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="atXBeginning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

atXBeginning : bool

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

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@atXBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="atXEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

atXEnd : bool

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

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@atXEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="atYBeginning-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

atYBeginning : bool

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

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@atYBeginning -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="atYEnd-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

atYEnd : bool

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

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@atYEnd -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bottomMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bottomMargin : real

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

These properties hold the margins around the content. This space is
reserved in addition to the contentWidth and contentHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bottomMargin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="boundsBehavior-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

boundsBehavior : enumeration

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

This property holds whether the surface may be dragged beyond the
Flickable's boundaries, or overshoot the Flickable's boundaries when
flicked.

.. raw:: html

   </p>

.. raw:: html

   <p>

This enables the feeling that the edges of the view are soft, rather
than a hard physical boundary.

.. raw:: html

   </p>

.. raw:: html

   <p>

The boundsBehavior can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Flickable.StopAtBounds - the contents can not be dragged beyond the
boundary of the flickable, and flicks will not overshoot.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flickable.DragOverBounds - the contents can be dragged beyond the
boundary of the Flickable, but flicks will not overshoot.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flickable.DragAndOvershootBounds (default) - the contents can be dragged
beyond the boundary of the Flickable, and can overshoot the boundary
when flicked.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@boundsBehavior -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentHeight : real

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

The dimensions of the content (the surface controlled by Flickable).
This should typically be set to the combined size of the items placed in
the Flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how these properties are used to display an
image that is larger than the Flickable item itself:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Flickable</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
   }</pre>

.. raw:: html

   <p>

In some cases, the content dimensions can be automatically set based on
the childrenRect.width and childrenRect.height properties of the
contentItem. For example, the previous snippet could be rewritten with:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">contentWidth: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>width; contentHeight: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>height</pre>

.. raw:: html

   <p>

Though this assumes that the origin of the childrenRect is 0,0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentHeight -->

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

The internal item that contains the Items to be moved in the Flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items declared as children of a Flickable are automatically parented to
the Flickable's contentItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items created dynamically need to be explicitly parented to the
contentItem:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Flickable {
   id: myFlickable
   function addItem(file) {
   var component <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>createComponent(file)
   component<span class="operator">.</span>createObject(myFlickable<span class="operator">.</span>contentItem);
   }
   }</pre>

.. raw:: html

   <!-- @@@contentItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentWidth : real

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

The dimensions of the content (the surface controlled by Flickable).
This should typically be set to the combined size of the items placed in
the Flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how these properties are used to display an
image that is larger than the Flickable item itself:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Flickable</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
   }</pre>

.. raw:: html

   <p>

In some cases, the content dimensions can be automatically set based on
the childrenRect.width and childrenRect.height properties of the
contentItem. For example, the previous snippet could be rewritten with:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">contentWidth: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>width; contentHeight: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>height</pre>

.. raw:: html

   <p>

Though this assumes that the origin of the childrenRect is 0,0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentX : real

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

These properties hold the surface coordinate currently at the top-left
corner of the Flickable. For example, if you flick an image up 100
pixels, contentY will be 100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentY : real

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

These properties hold the surface coordinate currently at the top-left
corner of the Flickable. For example, if you flick an image up 100
pixels, contentY will be 100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentY -->

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragging -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="draggingHorizontally-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

draggingHorizontally : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@draggingHorizontally -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="draggingVertically-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

draggingVertically : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@draggingVertically -->

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

The default value is platform dependent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickDeceleration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickableDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickableDirection : enumeration

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

This property determines which directions the view can be flicked.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Flickable.AutoFlickDirection (default) - allows flicking vertically if
the contentHeight is not equal to the height of the Flickable. Allows
flicking horizontally if the contentWidth is not equal to the width of
the Flickable.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flickable.HorizontalFlick - allows flicking horizontally.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flickable.VerticalFlick - allows flicking vertically.

.. raw:: html

   </li>

.. raw:: html

   <li>

Flickable.HorizontalAndVerticalFlick - allows flicking in both
directions.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@flickableDirection -->

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flicking -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickingHorizontally-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickingHorizontally : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickingHorizontally -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickingVertically-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickingVertically : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickingVertically -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="horizontalVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

horizontalVelocity : real

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

The instantaneous velocity of movement along the x and y axes, in
pixels/sec.

.. raw:: html

   </p>

.. raw:: html

   <p>

The reported velocity is smoothed to avoid erratic output.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for views with a large content size (more than 10 times the
view size), the velocity of the flick may exceed the velocity of the
touch in the case of multiple quick consecutive flicks. This allows the
user to flick faster through large content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalVelocity -->

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

This property describes whether the user can interact with the
Flickable. A user cannot drag or flick a Flickable that is not
interactive.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is useful for temporarily disabling flicking. This allows
special interaction with Flickable's children; for example, you might
want to freeze a flickable map while scrolling through a pop-up dialog
that is a child of the Flickable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@interactive -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="leftMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

leftMargin : real

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

These properties hold the margins around the content. This space is
reserved in addition to the contentWidth and contentHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@leftMargin -->

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

This property holds the maximum velocity that the user can flick the
view in pixels/second.

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moving -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="movingHorizontally-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

movingHorizontally : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@movingHorizontally -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="movingVertically-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

movingVertically : bool

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

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@movingVertically -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="originX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

originX : real

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

These properties hold the origin of the content. This value always
refers to the top-left position of the content regardless of layout
direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is usually (0,0), however ListView and GridView may have an
arbitrary origin due to delegate size variation, or item
insertion/removal outside the visible region.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@originX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="originY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

originY : real

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

These properties hold the origin of the content. This value always
refers to the top-left position of the content regardless of layout
direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is usually (0,0), however ListView and GridView may have an
arbitrary origin due to delegate size variation, or item
insertion/removal outside the visible region.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@originY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pixelAligned-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pixelAligned : bool

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

This property sets the alignment of contentX and contentY to pixels
(true) or subpixels (false).

.. raw:: html

   </p>

.. raw:: html

   <p>

Enable pixelAligned to optimize for still content or moving content with
high constrast edges, such as one-pixel-wide lines, text or vector
graphics. Disable pixelAligned when optimizing for animation quality.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pixelAligned -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressDelay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressDelay : int

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

This property holds the time to delay (ms) delivering a press to
children of the Flickable. This can be useful where reacting to a press
before a flicking action has undesirable effects.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the flickable is dragged/flicked before the delay times out the press
event will not be delivered. If the button is released within the
timeout, both the press and release will be delivered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for nested Flickables with pressDelay set, the pressDelay of
outer Flickables is overridden by the innermost Flickable. If the drag
exceeds the platform drag threshold, the press event will be delivered
regardless of this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QStyleHints.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressDelay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rebound-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rebound : Transition

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

This holds the transition to be applied to the content view when it
snaps back to the bounds of the flickable. The transition is triggered
when the view is flicked or dragged past the edge of the content area,
or when returnToBounds() is called.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Flickable</a></span> {
   <span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">150</span>
   <span class="name">contentWidth</span>: <span class="number">300</span>; <span class="name">contentHeight</span>: <span class="number">300</span>
   <span class="name">rebound</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>
   }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

When the above view is flicked beyond its bounds, it will return to its
bounds using the transition specified:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is not set, a default animation is applied.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rebound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rightMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rightMargin : real

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

These properties hold the margins around the content. This space is
reserved in addition to the contentWidth and contentHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rightMargin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="topMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

topMargin : real

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

These properties hold the margins around the content. This space is
reserved in addition to the contentWidth and contentHeight.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@topMargin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verticalVelocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalVelocity : real

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

The instantaneous velocity of movement along the x and y axes, in
pixels/sec.

.. raw:: html

   </p>

.. raw:: html

   <p>

The reported velocity is smoothed to avoid erratic output.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that for views with a large content size (more than 10 times the
view size), the velocity of the flick may exceed the velocity of the
touch in the case of multiple quick consecutive flicks. This allows the
user to flick faster through large content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalVelocity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visibleArea-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

visibleArea group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="visibleArea.xPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibleArea.xPosition : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="visibleArea.widthRatio-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibleArea.widthRatio : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="visibleArea.yPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibleArea.yPosition : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="visibleArea.heightRatio-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibleArea.heightRatio : real

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

These properties describe the position and size of the currently viewed
area. The size is defined as the percentage of the full view currently
visible, scaled to 0.0 - 1.0. The page position is usually in the range
0.0 (beginning) to 1.0 minus size ratio (end), i.e. yPosition is in the
range 0.0 to 1.0-heightRatio. However, it is possible for the contents
to be dragged outside of the normal range, resulting in the page
positions also being outside the normal range.

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties are typically used to draw a scrollbar. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">flickable</span>
   ...
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">scrollbar</span>
   <span class="name">anchors</span>.right: <span class="name">flickable</span>.<span class="name">right</span>
   <span class="name">y</span>: <span class="name">flickable</span>.<span class="name">visibleArea</span>.<span class="name">yPosition</span> <span class="operator">*</span> <span class="name">flickable</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="number">10</span>
   <span class="name">height</span>: <span class="name">flickable</span>.<span class="name">visibleArea</span>.<span class="name">heightRatio</span> <span class="operator">*</span> <span class="name">flickable</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

See also UI Components: Scrollbar Example.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visibleArea -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$flickEnded -->

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

   <!-- $$$cancelFlick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelFlick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelFlick()

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

Cancels the current flick animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelFlick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flick(qreal xVelocity, qreal yVelocity)

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

Flicks the content with xVelocity horizontally and yVelocity vertically
in pixels/sec.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resizeContent-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

resizeContent(real width, real height, QPointF center)

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

Resizes the content to width x height about center.

.. raw:: html

   </p>

.. raw:: html

   <p>

This does not scale the contents of the Flickable - it only resizes the
contentWidth and contentHeight.

.. raw:: html

   </p>

.. raw:: html

   <p>

Resizing the content may result in the content being positioned outside
the bounds of the Flickable. Calling returnToBounds() will move the
content back within legal bounds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resizeContent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="returnToBounds-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

returnToBounds()

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

Ensures the content is within legal bounds.

.. raw:: html

   </p>

.. raw:: html

   <p>

This may be called to ensure that the content is within legal bounds
after manually positioning the content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@returnToBounds -->


