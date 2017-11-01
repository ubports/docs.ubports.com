Provides a surface that can be "flicked"

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `GridView </sdk/apps/qml/QtQuick/Gri |
|                                      | dView/>`__                           |
|                                      | and                                  |
|                                      | `ListView </sdk/apps/qml/QtQuick/Lis |
|                                      | tView/>`__.                          |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`atXBeginning </sdk/apps/qml/QtQuick/Flickable#atXBeginning-prop>`__****
   : bool
-  ****`atXEnd </sdk/apps/qml/QtQuick/Flickable#atXEnd-prop>`__**** :
   bool
-  ****`atYBeginning </sdk/apps/qml/QtQuick/Flickable#atYBeginning-prop>`__****
   : bool
-  ****`atYEnd </sdk/apps/qml/QtQuick/Flickable#atYEnd-prop>`__**** :
   bool
-  ****`bottomMargin </sdk/apps/qml/QtQuick/Flickable#bottomMargin-prop>`__****
   : real
-  ****`boundsBehavior </sdk/apps/qml/QtQuick/Flickable#boundsBehavior-prop>`__****
   : enumeration
-  ****`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__****
   : real
-  ****`contentItem </sdk/apps/qml/QtQuick/Flickable#contentItem-prop>`__****
   : Item
-  ****`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__****
   : real
-  ****`contentX </sdk/apps/qml/QtQuick/Flickable#contentX-prop>`__****
   : real
-  ****`contentY </sdk/apps/qml/QtQuick/Flickable#contentY-prop>`__****
   : real
-  ****`dragging </sdk/apps/qml/QtQuick/Flickable#dragging-prop>`__****
   : bool
-  ****`draggingHorizontally </sdk/apps/qml/QtQuick/Flickable#draggingHorizontally-prop>`__****
   : bool
-  ****`draggingVertically </sdk/apps/qml/QtQuick/Flickable#draggingVertically-prop>`__****
   : bool
-  ****`flickDeceleration </sdk/apps/qml/QtQuick/Flickable#flickDeceleration-prop>`__****
   : real
-  ****`flickableDirection </sdk/apps/qml/QtQuick/Flickable#flickableDirection-prop>`__****
   : enumeration
-  ****`flicking </sdk/apps/qml/QtQuick/Flickable#flicking-prop>`__****
   : bool
-  ****`flickingHorizontally </sdk/apps/qml/QtQuick/Flickable#flickingHorizontally-prop>`__****
   : bool
-  ****`flickingVertically </sdk/apps/qml/QtQuick/Flickable#flickingVertically-prop>`__****
   : bool
-  ****`horizontalVelocity </sdk/apps/qml/QtQuick/Flickable#horizontalVelocity-prop>`__****
   : real
-  ****`interactive </sdk/apps/qml/QtQuick/Flickable#interactive-prop>`__****
   : bool
-  ****`leftMargin </sdk/apps/qml/QtQuick/Flickable#leftMargin-prop>`__****
   : real
-  ****`maximumFlickVelocity </sdk/apps/qml/QtQuick/Flickable#maximumFlickVelocity-prop>`__****
   : real
-  ****`moving </sdk/apps/qml/QtQuick/Flickable#moving-prop>`__**** :
   bool
-  ****`movingHorizontally </sdk/apps/qml/QtQuick/Flickable#movingHorizontally-prop>`__****
   : bool
-  ****`movingVertically </sdk/apps/qml/QtQuick/Flickable#movingVertically-prop>`__****
   : bool
-  ****`originX </sdk/apps/qml/QtQuick/Flickable#originX-prop>`__**** :
   real
-  ****`originY </sdk/apps/qml/QtQuick/Flickable#originY-prop>`__**** :
   real
-  ****`pixelAligned </sdk/apps/qml/QtQuick/Flickable#pixelAligned-prop>`__****
   : bool
-  ****`pressDelay </sdk/apps/qml/QtQuick/Flickable#pressDelay-prop>`__****
   : int
-  ****`rebound </sdk/apps/qml/QtQuick/Flickable#rebound-prop>`__**** :
   Transition
-  ****`rightMargin </sdk/apps/qml/QtQuick/Flickable#rightMargin-prop>`__****
   : real
-  ****`topMargin </sdk/apps/qml/QtQuick/Flickable#topMargin-prop>`__****
   : real
-  ****`verticalVelocity </sdk/apps/qml/QtQuick/Flickable#verticalVelocity-prop>`__****
   : real
-  ****`visibleArea </sdk/apps/qml/QtQuick/Flickable#visibleArea-prop>`__****

   -  ****`visibleArea.xPosition </sdk/apps/qml/QtQuick/Flickable#visibleArea.xPosition-prop>`__****
      : real
   -  ****`visibleArea.widthRatio </sdk/apps/qml/QtQuick/Flickable#visibleArea.widthRatio-prop>`__****
      : real
   -  ****`visibleArea.yPosition </sdk/apps/qml/QtQuick/Flickable#visibleArea.yPosition-prop>`__****
      : real
   -  ****`visibleArea.heightRatio </sdk/apps/qml/QtQuick/Flickable#visibleArea.heightRatio-prop>`__****
      : real

Signals
-------

-  ****`flickEnded </sdk/apps/qml/QtQuick/Flickable#flickEnded-signal>`__****\ ()
-  ****`flickStarted </sdk/apps/qml/QtQuick/Flickable#flickStarted-signal>`__****\ ()
-  ****`movementEnded </sdk/apps/qml/QtQuick/Flickable#movementEnded-signal>`__****\ ()
-  ****`movementStarted </sdk/apps/qml/QtQuick/Flickable#movementStarted-signal>`__****\ ()

Methods
-------

-  ****`cancelFlick </sdk/apps/qml/QtQuick/Flickable#cancelFlick-method>`__****\ ()
-  ****`flick </sdk/apps/qml/QtQuick/Flickable#flick-method>`__****\ (qreal
   *xVelocity*, qreal *yVelocity*)
-  ****`resizeContent </sdk/apps/qml/QtQuick/Flickable#resizeContent-method>`__****\ (real
   *width*, real *height*, QPointF *center*)
-  ****`returnToBounds </sdk/apps/qml/QtQuick/Flickable#returnToBounds-method>`__****\ ()

Detailed Description
--------------------

The Flickable item places its children on a surface that can be dragged
and flicked, causing the view onto the child items to scroll. This
behavior forms the basis of Items that are designed to show large
numbers of child items, such as
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ and
`GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__.

In traditional user interfaces, views can be scrolled using standard
controls, such as scroll bars and arrow buttons. In some situations, it
is also possible to drag the view directly by pressing and holding a
mouse button while moving the cursor. In touch-based user interfaces,
this dragging action is often complemented with a flicking action, where
scrolling continues after the user has stopped touching the view.

Flickable does not automatically clip its contents. If it is not used as
a full-screen item, you should consider setting the
`clip </sdk/apps/qml/QtQuick/Item#clip-prop>`__ property to true.

Example Usage
-------------

|image0|

The following example shows a small view onto a large image in which the
user can drag or flick the image in order to view different parts of it.

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

| 

Items declared as children of a Flickable are automatically parented to
the Flickable's
`contentItem </sdk/apps/qml/QtQuick/Flickable#contentItem-prop>`__. This
should be taken into account when operating on the children of the
Flickable; it is usually the children of ``contentItem`` that are
relevant. For example, the bound of Items added to the Flickable will be
available by ``contentItem.childrenRect``

Limitations
-----------

**Note:** Due to an implementation detail, items placed inside a
Flickable cannot anchor to it by ``id``. Use ``parent`` instead.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ atXBeginning : bool                                             |
+--------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

| 

+--------------------------------------------------------------------------+
|        \ atXEnd : bool                                                   |
+--------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

| 

+--------------------------------------------------------------------------+
|        \ atYBeginning : bool                                             |
+--------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

| 

+--------------------------------------------------------------------------+
|        \ atYEnd : bool                                                   |
+--------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the
beginning, or end respectively.

| 

+--------------------------------------------------------------------------+
|        \ bottomMargin : real                                             |
+--------------------------------------------------------------------------+

These properties hold the margins around the content. This space is
reserved in addition to the
`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__ and
`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ boundsBehavior : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds whether the surface may be dragged beyond the
Flickable's boundaries, or overshoot the Flickable's boundaries when
flicked.

This enables the feeling that the edges of the view are soft, rather
than a hard physical boundary.

The ``boundsBehavior`` can be one of:

-  Flickable.StopAtBounds - the contents can not be dragged beyond the
   boundary of the flickable, and flicks will not overshoot.
-  Flickable.DragOverBounds - the contents can be dragged beyond the
   boundary of the Flickable, but flicks will not overshoot.
-  Flickable.DragAndOvershootBounds (default) - the contents can be
   dragged beyond the boundary of the Flickable, and can overshoot the
   boundary when flicked.

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

The dimensions of the content (the surface controlled by Flickable).
This should typically be set to the combined size of the items placed in
the Flickable.

The following snippet shows how these properties are used to display an
image that is larger than the Flickable item itself:

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

In some cases, the content dimensions can be automatically set based on
the
`childrenRect.width </sdk/apps/qml/QtQuick/Item#childrenRect.width-prop>`__
and
`childrenRect.height </sdk/apps/qml/QtQuick/Item#childrenRect.height-prop>`__
properties of the
`contentItem </sdk/apps/qml/QtQuick/Flickable#contentItem-prop>`__. For
example, the previous snippet could be rewritten with:

.. code:: cpp

    contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height

Though this assumes that the origin of the childrenRect is 0,0.

| 

+--------------------------------------------------------------------------+
|        \ contentItem : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+

The internal item that contains the Items to be moved in the Flickable.

Items declared as children of a Flickable are automatically parented to
the Flickable's contentItem.

Items created dynamically need to be explicitly parented to the
*contentItem*:

.. code:: cpp

    Flickable {
        id: myFlickable
        function addItem(file) {
            var component = Qt.createComponent(file)
            component.createObject(myFlickable.contentItem);
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ contentWidth : real                                             |
+--------------------------------------------------------------------------+

The dimensions of the content (the surface controlled by Flickable).
This should typically be set to the combined size of the items placed in
the Flickable.

The following snippet shows how these properties are used to display an
image that is larger than the Flickable item itself:

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

In some cases, the content dimensions can be automatically set based on
the
`childrenRect.width </sdk/apps/qml/QtQuick/Item#childrenRect.width-prop>`__
and
`childrenRect.height </sdk/apps/qml/QtQuick/Item#childrenRect.height-prop>`__
properties of the
`contentItem </sdk/apps/qml/QtQuick/Flickable#contentItem-prop>`__. For
example, the previous snippet could be rewritten with:

.. code:: cpp

    contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height

Though this assumes that the origin of the childrenRect is 0,0.

| 

+--------------------------------------------------------------------------+
|        \ contentX : real                                                 |
+--------------------------------------------------------------------------+

These properties hold the surface coordinate currently at the top-left
corner of the Flickable. For example, if you flick an image up 100
pixels, ``contentY`` will be 100.

| 

+--------------------------------------------------------------------------+
|        \ contentY : real                                                 |
+--------------------------------------------------------------------------+

These properties hold the surface coordinate currently at the top-left
corner of the Flickable. For example, if you flick an image up 100
pixels, ``contentY`` will be 100.

| 

+--------------------------------------------------------------------------+
|        \ dragging : bool                                                 |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

| 

+--------------------------------------------------------------------------+
|        \ draggingHorizontally : bool                                     |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

| 

+--------------------------------------------------------------------------+
|        \ draggingVertically : bool                                       |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
dragging the view.

| 

+--------------------------------------------------------------------------+
|        \ flickDeceleration : real                                        |
+--------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default value is platform dependent.

| 

+--------------------------------------------------------------------------+
|        \ flickableDirection : enumeration                                |
+--------------------------------------------------------------------------+

This property determines which directions the view can be flicked.

-  Flickable.AutoFlickDirection (default) - allows flicking vertically
   if the *contentHeight* is not equal to the *height* of the Flickable.
   Allows flicking horizontally if the *contentWidth* is not equal to
   the *width* of the Flickable.
-  Flickable.HorizontalFlick - allows flicking horizontally.
-  Flickable.VerticalFlick - allows flicking vertically.
-  Flickable.HorizontalAndVerticalFlick - allows flicking in both
   directions.

| 

+--------------------------------------------------------------------------+
|        \ flicking : bool                                                 |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ flickingHorizontally : bool                                     |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ flickingVertically : bool                                       |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user
flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ horizontalVelocity : real                                       |
+--------------------------------------------------------------------------+

The instantaneous velocity of movement along the x and y axes, in
pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the
view size), the velocity of the flick may exceed the velocity of the
touch in the case of multiple quick consecutive flicks. This allows the
user to flick faster through large content.

| 

+--------------------------------------------------------------------------+
|        \ interactive : bool                                              |
+--------------------------------------------------------------------------+

This property describes whether the user can interact with the
Flickable. A user cannot drag or flick a Flickable that is not
interactive.

By default, this property is true.

This property is useful for temporarily disabling flicking. This allows
special interaction with Flickable's children; for example, you might
want to freeze a flickable map while scrolling through a pop-up dialog
that is a child of the Flickable.

| 

+--------------------------------------------------------------------------+
|        \ leftMargin : real                                               |
+--------------------------------------------------------------------------+

These properties hold the margins around the content. This space is
reserved in addition to the
`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__ and
`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ maximumFlickVelocity : real                                     |
+--------------------------------------------------------------------------+

This property holds the maximum velocity that the user can flick the
view in pixels/second.

The default value is platform dependent.

| 

+--------------------------------------------------------------------------+
|        \ moving : bool                                                   |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ movingHorizontally : bool                                       |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ movingVertically : bool                                         |
+--------------------------------------------------------------------------+

These properties describe whether the view is currently moving
horizontally, vertically or in either direction, due to the user either
dragging or flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ originX : real                                                  |
+--------------------------------------------------------------------------+

These properties hold the origin of the content. This value always
refers to the top-left position of the content regardless of layout
direction.

This is usually (0,0), however
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ and
`GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__ may have an
arbitrary origin due to delegate size variation, or item
insertion/removal outside the visible region.

| 

+--------------------------------------------------------------------------+
|        \ originY : real                                                  |
+--------------------------------------------------------------------------+

These properties hold the origin of the content. This value always
refers to the top-left position of the content regardless of layout
direction.

This is usually (0,0), however
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ and
`GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__ may have an
arbitrary origin due to delegate size variation, or item
insertion/removal outside the visible region.

| 

+--------------------------------------------------------------------------+
|        \ pixelAligned : bool                                             |
+--------------------------------------------------------------------------+

This property sets the alignment of
`contentX </sdk/apps/qml/QtQuick/Flickable#contentX-prop>`__ and
`contentY </sdk/apps/qml/QtQuick/Flickable#contentY-prop>`__ to pixels
(``true``) or subpixels (``false``).

Enable pixelAligned to optimize for still content or moving content with
high constrast edges, such as one-pixel-wide lines, text or vector
graphics. Disable pixelAligned when optimizing for animation quality.

The default is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ pressDelay : int                                                |
+--------------------------------------------------------------------------+

This property holds the time to delay (ms) delivering a press to
children of the Flickable. This can be useful where reacting to a press
before a flicking action has undesirable effects.

If the flickable is dragged/flicked before the delay times out the press
event will not be delivered. If the button is released within the
timeout, both the press and release will be delivered.

Note that for nested Flickables with pressDelay set, the pressDelay of
outer Flickables is overridden by the innermost Flickable. If the drag
exceeds the platform drag threshold, the press event will be delivered
regardless of this property.

**See also** QStyleHints.

| 

+--------------------------------------------------------------------------+
|        \ rebound : `Transition </sdk/apps/qml/QtQuick/Transition/>`__    |
+--------------------------------------------------------------------------+

This holds the transition to be applied to the content view when it
snaps back to the bounds of the flickable. The transition is triggered
when the view is flicked or dragged past the edge of the content area,
or when
`returnToBounds() </sdk/apps/qml/QtQuick/Flickable#returnToBounds-method>`__
is called.

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 150; height: 150
        contentWidth: 300; contentHeight: 300
        rebound: Transition {
            NumberAnimation {
                properties: "x,y"
                duration: 1000
                easing.type: Easing.OutBounce
            }
        }
        Rectangle {
            width: 300; height: 300
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightsteelblue" }
                GradientStop { position: 1.0; color: "blue" }
            }
        }
    }

When the above view is flicked beyond its bounds, it will return to its
bounds using the transition specified:

|image1|

If this property is not set, a default animation is applied.

| 

+--------------------------------------------------------------------------+
|        \ rightMargin : real                                              |
+--------------------------------------------------------------------------+

These properties hold the margins around the content. This space is
reserved in addition to the
`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__ and
`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ topMargin : real                                                |
+--------------------------------------------------------------------------+

These properties hold the margins around the content. This space is
reserved in addition to the
`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__ and
`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalVelocity : real                                         |
+--------------------------------------------------------------------------+

The instantaneous velocity of movement along the x and y axes, in
pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the
view size), the velocity of the flick may exceed the velocity of the
touch in the case of multiple quick consecutive flicks. This allows the
user to flick faster through large content.

| 

+--------------------------------------------------------------------------+
|        \ **visibleArea group**                                           |
+==========================================================================+
|        \ visibleArea.xPosition : real                                    |
+--------------------------------------------------------------------------+
|        \ visibleArea.widthRatio : real                                   |
+--------------------------------------------------------------------------+
|        \ visibleArea.yPosition : real                                    |
+--------------------------------------------------------------------------+
|        \ visibleArea.heightRatio : real                                  |
+--------------------------------------------------------------------------+

These properties describe the position and size of the currently viewed
area. The size is defined as the percentage of the full view currently
visible, scaled to 0.0 - 1.0. The page position is usually in the range
0.0 (beginning) to 1.0 minus size ratio (end), i.e. ``yPosition`` is in
the range 0.0 to 1.0-\ ``heightRatio``. However, it is possible for the
contents to be dragged outside of the normal range, resulting in the
page positions also being outside the normal range.

These properties are typically used to draw a scrollbar. For example:

.. code:: qml

    Rectangle {
        width: 200; height: 200
        Flickable {
            id: flickable
            ...
        }
        Rectangle {
            id: scrollbar
            anchors.right: flickable.right
            y: flickable.visibleArea.yPosition * flickable.height
            width: 10
            height: flickable.visibleArea.heightRatio * flickable.height
            color: "black"
        }
    }

**See also** `UI Components: Scrollbar
Example </sdk/apps/qml/QtQuick/customitems-scrollbar/>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ flickEnded()                                                    |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to a flick.

The corresponding handler is ``onFlickEnded``.

| 

+--------------------------------------------------------------------------+
|        \ flickStarted()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the view is flicked. A flick starts from the
point that the mouse or touch is released, while still in motion.

The corresponding handler is ``onFlickStarted``.

| 

+--------------------------------------------------------------------------+
|        \ movementEnded()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to user
interaction. If a flick was generated, this signal will be emitted once
the flick stops. If a flick was not generated, this signal will be
emitted when the user stops dragging - i.e. a mouse or touch release.

The corresponding handler is ``onMovementEnded``.

| 

+--------------------------------------------------------------------------+
|        \ movementStarted()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when the view begins moving due to user
interaction.

The corresponding handler is ``onMovementStarted``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelFlick()                                                   |
+--------------------------------------------------------------------------+

Cancels the current flick animation.

| 

+--------------------------------------------------------------------------+
|        \ flick(qreal *xVelocity*, qreal *yVelocity*)                     |
+--------------------------------------------------------------------------+

Flicks the content with *xVelocity* horizontally and *yVelocity*
vertically in pixels/sec.

| 

+--------------------------------------------------------------------------+
|        \ resizeContent(real *width*, real *height*, QPointF *center*)    |
+--------------------------------------------------------------------------+

Resizes the content to *width* x *height* about *center*.

This does not scale the contents of the Flickable - it only resizes the
`contentWidth </sdk/apps/qml/QtQuick/Flickable#contentWidth-prop>`__ and
`contentHeight </sdk/apps/qml/QtQuick/Flickable#contentHeight-prop>`__.

Resizing the content may result in the content being positioned outside
the bounds of the Flickable. Calling
`returnToBounds() </sdk/apps/qml/QtQuick/Flickable#returnToBounds-method>`__
will move the content back within legal bounds.

| 

+--------------------------------------------------------------------------+
|        \ returnToBounds()                                                |
+--------------------------------------------------------------------------+

Ensures the content is within legal bounds.

This may be called to ensure that the content is within legal bounds
after manually positioning the content.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Flickable/images/flickable.gif
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Flickable/images/flickable-rebound.gif

