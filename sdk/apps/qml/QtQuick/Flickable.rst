.. _sdk_qtquick_flickable:

QtQuick Flickable
=================

Provides a surface that can be "flicked"

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`GridView <sdk_qtquick_gridview>` and :ref:`ListView <sdk_qtquick_listview>`.                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`atXBeginning <sdk_qtquick_flickable_atXBeginning>` : bool
-  :ref:`atXEnd <sdk_qtquick_flickable_atXEnd>` : bool
-  :ref:`atYBeginning <sdk_qtquick_flickable_atYBeginning>` : bool
-  :ref:`atYEnd <sdk_qtquick_flickable_atYEnd>` : bool
-  :ref:`bottomMargin <sdk_qtquick_flickable_bottomMargin>` : real
-  :ref:`boundsBehavior <sdk_qtquick_flickable_boundsBehavior>` : enumeration
-  :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>` : real
-  :ref:`contentItem <sdk_qtquick_flickable_contentItem>` : Item
-  :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` : real
-  :ref:`contentX <sdk_qtquick_flickable_contentX>` : real
-  :ref:`contentY <sdk_qtquick_flickable_contentY>` : real
-  :ref:`dragging <sdk_qtquick_flickable_dragging>` : bool
-  :ref:`draggingHorizontally <sdk_qtquick_flickable_draggingHorizontally>` : bool
-  :ref:`draggingVertically <sdk_qtquick_flickable_draggingVertically>` : bool
-  :ref:`flickDeceleration <sdk_qtquick_flickable_flickDeceleration>` : real
-  :ref:`flickableDirection <sdk_qtquick_flickable_flickableDirection>` : enumeration
-  :ref:`flicking <sdk_qtquick_flickable_flicking>` : bool
-  :ref:`flickingHorizontally <sdk_qtquick_flickable_flickingHorizontally>` : bool
-  :ref:`flickingVertically <sdk_qtquick_flickable_flickingVertically>` : bool
-  :ref:`horizontalVelocity <sdk_qtquick_flickable_horizontalVelocity>` : real
-  :ref:`interactive <sdk_qtquick_flickable_interactive>` : bool
-  :ref:`leftMargin <sdk_qtquick_flickable_leftMargin>` : real
-  :ref:`maximumFlickVelocity <sdk_qtquick_flickable_maximumFlickVelocity>` : real
-  :ref:`moving <sdk_qtquick_flickable_moving>` : bool
-  :ref:`movingHorizontally <sdk_qtquick_flickable_movingHorizontally>` : bool
-  :ref:`movingVertically <sdk_qtquick_flickable_movingVertically>` : bool
-  :ref:`originX <sdk_qtquick_flickable_originX>` : real
-  :ref:`originY <sdk_qtquick_flickable_originY>` : real
-  :ref:`pixelAligned <sdk_qtquick_flickable_pixelAligned>` : bool
-  :ref:`pressDelay <sdk_qtquick_flickable_pressDelay>` : int
-  :ref:`rebound <sdk_qtquick_flickable_rebound>` : Transition
-  :ref:`rightMargin <sdk_qtquick_flickable_rightMargin>` : real
-  :ref:`topMargin <sdk_qtquick_flickable_topMargin>` : real
-  :ref:`verticalVelocity <sdk_qtquick_flickable_verticalVelocity>` : real
-  :ref:`visibleArea <sdk_qtquick_flickable_visibleArea>`

   -  :ref:`visibleArea.xPosition <sdk_qtquick_flickable_visibleArea_xPosition>` : real
   -  :ref:`visibleArea.widthRatio <sdk_qtquick_flickable_visibleArea_widthRatio>` : real
   -  :ref:`visibleArea.yPosition <sdk_qtquick_flickable_visibleArea_yPosition>` : real
   -  :ref:`visibleArea.heightRatio <sdk_qtquick_flickable_visibleArea_heightRatio>` : real

Signals
-------

-  :ref:`flickEnded <sdk_qtquick_flickable_flickEnded>`\ ()
-  :ref:`flickStarted <sdk_qtquick_flickable_flickStarted>`\ ()
-  :ref:`movementEnded <sdk_qtquick_flickable_movementEnded>`\ ()
-  :ref:`movementStarted <sdk_qtquick_flickable_movementStarted>`\ ()

Methods
-------

-  :ref:`cancelFlick <sdk_qtquick_flickable_cancelFlick>`\ ()
-  :ref:`flick <sdk_qtquick_flickable_flick>`\ (qreal *xVelocity*, qreal *yVelocity*)
-  :ref:`resizeContent <sdk_qtquick_flickable_resizeContent>`\ (real *width*, real *height*, QPointF *center*)
-  :ref:`returnToBounds <sdk_qtquick_flickable_returnToBounds>`\ ()

Detailed Description
--------------------

The Flickable item places its children on a surface that can be dragged and flicked, causing the view onto the child items to scroll. This behavior forms the basis of Items that are designed to show large numbers of child items, such as :ref:`ListView <sdk_qtquick_listview>` and `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .

In traditional user interfaces, views can be scrolled using standard controls, such as scroll bars and arrow buttons. In some situations, it is also possible to drag the view directly by pressing and holding a mouse button while moving the cursor. In touch-based user interfaces, this dragging action is often complemented with a flicking action, where scrolling continues after the user has stopped touching the view.

Flickable does not automatically clip its contents. If it is not used as a full-screen item, you should consider setting the :ref:`clip <sdk_qtquick_item_clip>` property to true.

Example Usage
-------------

The following example shows a small view onto a large image in which the user can drag or flick the image in order to view different parts of it.

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

Items declared as children of a Flickable are automatically parented to the Flickable's :ref:`contentItem <sdk_qtquick_flickable_contentItem>`. This should be taken into account when operating on the children of the Flickable; it is usually the children of ``contentItem`` that are relevant. For example, the bound of Items added to the Flickable will be available by ``contentItem.childrenRect``

Limitations
-----------

**Note:** Due to an implementation detail, items placed inside a Flickable cannot anchor to it by ``id``. Use ``parent`` instead.

Property Documentation
----------------------

.. _sdk_qtquick_flickable_atXBeginning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| atXBeginning : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the beginning, or end respectively.

.. _sdk_qtquick_flickable_atXEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| atXEnd : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the beginning, or end respectively.

.. _sdk_qtquick_flickable_atYBeginning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| atYBeginning : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the beginning, or end respectively.

.. _sdk_qtquick_flickable_atYEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| atYEnd : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties are true if the flickable view is positioned at the beginning, or end respectively.

.. _sdk_qtquick_flickable_bottomMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bottomMargin : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the margins around the content. This space is reserved in addition to the :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` and :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>`.

.. _sdk_qtquick_flickable_boundsBehavior:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| boundsBehavior : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the surface may be dragged beyond the Flickable's boundaries, or overshoot the Flickable's boundaries when flicked.

This enables the feeling that the edges of the view are soft, rather than a hard physical boundary.

The ``boundsBehavior`` can be one of:

-  Flickable.StopAtBounds - the contents can not be dragged beyond the boundary of the flickable, and flicks will not overshoot.
-  Flickable.DragOverBounds - the contents can be dragged beyond the boundary of the Flickable, but flicks will not overshoot.
-  Flickable.DragAndOvershootBounds (default) - the contents can be dragged beyond the boundary of the Flickable, and can overshoot the boundary when flicked.

.. _sdk_qtquick_flickable_contentHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentHeight : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.

The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

In some cases, the content dimensions can be automatically set based on the :ref:`childrenRect.width <sdk_qtquick_item_childrenRect_width>` and :ref:`childrenRect.height <sdk_qtquick_item_childrenRect_height>` properties of the :ref:`contentItem <sdk_qtquick_flickable_contentItem>`. For example, the previous snippet could be rewritten with:

.. code:: cpp

    contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height

Though this assumes that the origin of the childrenRect is 0,0.

.. _sdk_qtquick_flickable_contentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The internal item that contains the Items to be moved in the Flickable.

Items declared as children of a Flickable are automatically parented to the Flickable's contentItem.

Items created dynamically need to be explicitly parented to the *contentItem*:

.. code:: cpp

    Flickable {
        id: myFlickable
        function addItem(file) {
            var component = Qt.createComponent(file)
            component.createObject(myFlickable.contentItem);
        }
    }

.. _sdk_qtquick_flickable_contentWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.

The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:

.. code:: qml

    import QtQuick 2.0
    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        Image { id: image; source: "bigImage.png" }
    }

In some cases, the content dimensions can be automatically set based on the :ref:`childrenRect.width <sdk_qtquick_item_childrenRect_width>` and :ref:`childrenRect.height <sdk_qtquick_item_childrenRect_height>` properties of the :ref:`contentItem <sdk_qtquick_flickable_contentItem>`. For example, the previous snippet could be rewritten with:

.. code:: cpp

    contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height

Though this assumes that the origin of the childrenRect is 0,0.

.. _sdk_qtquick_flickable_contentX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentX : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, ``contentY`` will be 100.

.. _sdk_qtquick_flickable_contentY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentY : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, ``contentY`` will be 100.

.. _sdk_qtquick_flickable_dragging:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragging : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

.. _sdk_qtquick_flickable_draggingHorizontally:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| draggingHorizontally : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

.. _sdk_qtquick_flickable_draggingVertically:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| draggingVertically : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

.. _sdk_qtquick_flickable_flickDeceleration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickDeceleration : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default value is platform dependent.

.. _sdk_qtquick_flickable_flickableDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickableDirection : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines which directions the view can be flicked.

-  Flickable.AutoFlickDirection (default) - allows flicking vertically if the *contentHeight* is not equal to the *height* of the Flickable. Allows flicking horizontally if the *contentWidth* is not equal to the *width* of the Flickable.
-  Flickable.HorizontalFlick - allows flicking horizontally.
-  Flickable.VerticalFlick - allows flicking vertically.
-  Flickable.HorizontalAndVerticalFlick - allows flicking in both directions.

.. _sdk_qtquick_flickable_flicking:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flicking : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

.. _sdk_qtquick_flickable_flickingHorizontally:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickingHorizontally : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

.. _sdk_qtquick_flickable_flickingVertically:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickingVertically : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

.. _sdk_qtquick_flickable_horizontalVelocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| horizontalVelocity : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The instantaneous velocity of movement along the x and y axes, in pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.

.. _sdk_qtquick_flickable_interactive:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| interactive : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property describes whether the user can interact with the Flickable. A user cannot drag or flick a Flickable that is not interactive.

By default, this property is true.

This property is useful for temporarily disabling flicking. This allows special interaction with Flickable's children; for example, you might want to freeze a flickable map while scrolling through a pop-up dialog that is a child of the Flickable.

.. _sdk_qtquick_flickable_leftMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| leftMargin : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the margins around the content. This space is reserved in addition to the :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` and :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>`.

.. _sdk_qtquick_flickable_maximumFlickVelocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumFlickVelocity : real                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum velocity that the user can flick the view in pixels/second.

The default value is platform dependent.

.. _sdk_qtquick_flickable_moving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moving : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

.. _sdk_qtquick_flickable_movingHorizontally:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movingHorizontally : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

.. _sdk_qtquick_flickable_movingVertically:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movingVertically : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

.. _sdk_qtquick_flickable_originX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| originX : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.

This is usually (0,0), however :ref:`ListView <sdk_qtquick_listview>` and `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.

.. _sdk_qtquick_flickable_originY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| originY : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.

This is usually (0,0), however :ref:`ListView <sdk_qtquick_listview>` and `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.

.. _sdk_qtquick_flickable_pixelAligned:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pixelAligned : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets the alignment of :ref:`contentX <sdk_qtquick_flickable_contentX>` and :ref:`contentY <sdk_qtquick_flickable_contentY>` to pixels (``true``) or subpixels (``false``).

Enable pixelAligned to optimize for still content or moving content with high constrast edges, such as one-pixel-wide lines, text or vector graphics. Disable pixelAligned when optimizing for animation quality.

The default is ``false``.

.. _sdk_qtquick_flickable_pressDelay:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressDelay : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the time to delay (ms) delivering a press to children of the Flickable. This can be useful where reacting to a press before a flicking action has undesirable effects.

If the flickable is dragged/flicked before the delay times out the press event will not be delivered. If the button is released within the timeout, both the press and release will be delivered.

Note that for nested Flickables with pressDelay set, the pressDelay of outer Flickables is overridden by the innermost Flickable. If the drag exceeds the platform drag threshold, the press event will be delivered regardless of this property.

**See also** QStyleHints.

.. _sdk_qtquick_flickable_rebound:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rebound : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This holds the transition to be applied to the content view when it snaps back to the bounds of the flickable. The transition is triggered when the view is flicked or dragged past the edge of the content area, or when :ref:`returnToBounds() <sdk_qtquick_flickable_returnToBounds>` is called.

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

When the above view is flicked beyond its bounds, it will return to its bounds using the transition specified:

If this property is not set, a default animation is applied.

.. _sdk_qtquick_flickable_rightMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rightMargin : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the margins around the content. This space is reserved in addition to the :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` and :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>`.

.. _sdk_qtquick_flickable_topMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| topMargin : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the margins around the content. This space is reserved in addition to the :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` and :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>`.

.. _sdk_qtquick_flickable_verticalVelocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalVelocity : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The instantaneous velocity of movement along the x and y axes, in pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **visibleArea group**                                                                                                                                                                                                                                                                                        |
+==============================================================================================================================================================================================================================================================================================================+
| visibleArea.xPosition : real                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibleArea.widthRatio : real                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibleArea.yPosition : real                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibleArea.heightRatio : real                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties describe the position and size of the currently viewed area. The size is defined as the percentage of the full view currently visible, scaled to 0.0 - 1.0. The page position is usually in the range 0.0 (beginning) to 1.0 minus size ratio (end), i.e. ``yPosition`` is in the range 0.0 to 1.0-\ ``heightRatio``. However, it is possible for the contents to be dragged outside of the normal range, resulting in the page positions also being outside the normal range.

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

**See also** `UI Components: Scrollbar Example </sdk/apps/qml/QtQuick/customitems-scrollbar/>`_ .

Signal Documentation
--------------------

.. _sdk_qtquick_flickable_flickEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickEnded()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to a flick.

The corresponding handler is ``onFlickEnded``.

.. _sdk_qtquick_flickable_flickStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickStarted()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.

The corresponding handler is ``onFlickStarted``.

.. _sdk_qtquick_flickable_movementEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movementEnded()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal will be emitted once the flick stops. If a flick was not generated, this signal will be emitted when the user stops dragging - i.e. a mouse or touch release.

The corresponding handler is ``onMovementEnded``.

.. _sdk_qtquick_flickable_movementStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movementStarted()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view begins moving due to user interaction.

The corresponding handler is ``onMovementStarted``.

Method Documentation
--------------------

.. _sdk_qtquick_flickable_cancelFlick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelFlick()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancels the current flick animation.

.. _sdk_qtquick_flickable_flick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flick(qreal *xVelocity*, qreal *yVelocity*)                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Flicks the content with *xVelocity* horizontally and *yVelocity* vertically in pixels/sec.

.. _sdk_qtquick_flickable_resizeContent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resizeContent(real *width*, real *height*, QPointF *center*)                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resizes the content to *width* x *height* about *center*.

This does not scale the contents of the Flickable - it only resizes the :ref:`contentWidth <sdk_qtquick_flickable_contentWidth>` and :ref:`contentHeight <sdk_qtquick_flickable_contentHeight>`.

Resizing the content may result in the content being positioned outside the bounds of the Flickable. Calling :ref:`returnToBounds() <sdk_qtquick_flickable_returnToBounds>` will move the content back within legal bounds.

.. _sdk_qtquick_flickable_returnToBounds:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| returnToBounds()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Ensures the content is within legal bounds.

This may be called to ensure that the content is within legal bounds after manually positioning the content.

