Lays out model-provided items on a path

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`cacheItemCount </sdk/apps/qml/QtQuick/PathView#cacheItemCount-prop>`__****
   : int
-  ****`count </sdk/apps/qml/QtQuick/PathView#count-prop>`__**** : int
-  ****`currentIndex </sdk/apps/qml/QtQuick/PathView#currentIndex-prop>`__****
   : int
-  ****`currentItem </sdk/apps/qml/QtQuick/PathView#currentItem-prop>`__****
   : Item
-  ****`delegate </sdk/apps/qml/QtQuick/PathView#delegate-prop>`__**** :
   Component
-  ****`dragMargin </sdk/apps/qml/QtQuick/PathView#dragMargin-prop>`__****
   : real
-  ****`dragging </sdk/apps/qml/QtQuick/PathView#dragging-prop>`__**** :
   bool
-  ****`flickDeceleration </sdk/apps/qml/QtQuick/PathView#flickDeceleration-prop>`__****
   : real
-  ****`flicking </sdk/apps/qml/QtQuick/PathView#flicking-prop>`__**** :
   bool
-  ****`highlight </sdk/apps/qml/QtQuick/PathView#highlight-prop>`__****
   : Component
-  ****`highlightItem </sdk/apps/qml/QtQuick/PathView#highlightItem-prop>`__****
   : Item
-  ****`highlightMoveDuration </sdk/apps/qml/QtQuick/PathView#highlightMoveDuration-prop>`__****
   : int
-  ****`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__****
   : enumeration
-  ****`interactive </sdk/apps/qml/QtQuick/PathView#interactive-prop>`__****
   : bool
-  ****`maximumFlickVelocity </sdk/apps/qml/QtQuick/PathView#maximumFlickVelocity-prop>`__****
   : real
-  ****`model </sdk/apps/qml/QtQuick/PathView#model-prop>`__**** : model
-  ****`moving </sdk/apps/qml/QtQuick/PathView#moving-prop>`__**** :
   bool
-  ****`offset </sdk/apps/qml/QtQuick/PathView#offset-prop>`__**** :
   real
-  ****`path </sdk/apps/qml/QtQuick/PathView#path-prop>`__**** : Path
-  ****`pathItemCount </sdk/apps/qml/QtQuick/PathView#pathItemCount-prop>`__****
   : int
-  ****`preferredHighlightBegin </sdk/apps/qml/QtQuick/PathView#preferredHighlightBegin-prop>`__****
   : real
-  ****`preferredHighlightEnd </sdk/apps/qml/QtQuick/PathView#preferredHighlightEnd-prop>`__****
   : real
-  ****`snapMode </sdk/apps/qml/QtQuick/PathView#snapMode-prop>`__**** :
   enumeration

Attached Properties
-------------------

-  ****`isCurrentItem </sdk/apps/qml/QtQuick/PathView#isCurrentItem-attached-prop>`__****
   : bool
-  ****`onPath </sdk/apps/qml/QtQuick/PathView#onPath-attached-prop>`__****
   : bool
-  ****`view </sdk/apps/qml/QtQuick/PathView#view-attached-prop>`__****
   : PathView

Signals
-------

-  ****`dragEnded </sdk/apps/qml/QtQuick/PathView#dragEnded-signal>`__****\ ()
-  ****`dragStarted </sdk/apps/qml/QtQuick/PathView#dragStarted-signal>`__****\ ()
-  ****`flickEnded </sdk/apps/qml/QtQuick/PathView#flickEnded-signal>`__****\ ()
-  ****`flickStarted </sdk/apps/qml/QtQuick/PathView#flickStarted-signal>`__****\ ()
-  ****`movementEnded </sdk/apps/qml/QtQuick/PathView#movementEnded-signal>`__****\ ()
-  ****`movementStarted </sdk/apps/qml/QtQuick/PathView#movementStarted-signal>`__****\ ()

Methods
-------

-  ****`decrementCurrentIndex </sdk/apps/qml/QtQuick/PathView#decrementCurrentIndex-method>`__****\ ()
-  ****`incrementCurrentIndex </sdk/apps/qml/QtQuick/PathView#incrementCurrentIndex-method>`__****\ ()
-  int
   ****`indexAt </sdk/apps/qml/QtQuick/PathView#indexAt-method>`__****\ (int
   *x*, int *y*)
-  Item
   ****`itemAt </sdk/apps/qml/QtQuick/PathView#itemAt-method>`__****\ (int
   *x*, int *y*)
-  ****`positionViewAtIndex </sdk/apps/qml/QtQuick/PathView#positionViewAtIndex-method>`__****\ (int
   *index*, PositionMode *mode*)

Detailed Description
--------------------

A `PathView </sdk/apps/qml/QtQuick/PathView/>`__ displays data from
models created from built-in QML types like
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__
and
`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#xmllistmodel>`__,
or custom model classes defined in C++ that inherit from
QAbstractListModel.

The view has a `model </sdk/apps/qml/QtQuick/PathView#model-prop>`__,
which defines the data to be displayed, and a
`delegate </sdk/apps/qml/QtQuick/PathView#delegate-prop>`__, which
defines how the data should be displayed. The
`delegate </sdk/apps/qml/QtQuick/PathView#delegate-prop>`__ is
instantiated for each item on the
`path </sdk/apps/qml/QtQuick/PathView#path-prop>`__. The items may be
flicked to move them along the path.

For example, if there is a simple list model defined in a file
``ContactModel.qml`` like this:

.. code:: qml

    import QtQuick 2.0
    ListModel {
        ListElement {
            name: "Bill Jones"
            icon: "pics/qtlogo.png"
        }
        ListElement {
            name: "Jane Doe"
            icon: "pics/qtlogo.png"
        }
        ListElement {
            name: "John Smith"
            icon: "pics/qtlogo.png"
        }
    }

This data can be represented as a
`PathView </sdk/apps/qml/QtQuick/PathView/>`__, like this:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 240; height: 200
        Component {
            id: delegate
            Column {
                id: wrapper
                Image {
                    anchors.horizontalCenter: nameText.horizontalCenter
                    width: 64; height: 64
                    source: icon
                }
                Text {
                    id: nameText
                    text: name
                    font.pointSize: 16
                    color: wrapper.PathView.isCurrentItem ? "red" : "black"
                }
            }
        }
        PathView {
            anchors.fill: parent
            model: ContactModel {}
            delegate: delegate
            path: Path {
                startX: 120; startY: 100
                PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
                PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
            }
        }
    }

|image0|

(Note the above example uses
`PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__ to scale and
modify the opacity of the items as they rotate. This additional code can
be seen in the `PathAttribute </sdk/apps/qml/QtQuick/PathAttribute/>`__
documentation.)

`PathView </sdk/apps/qml/QtQuick/PathView/>`__ does not automatically
handle keyboard navigation. This is because the keys to use for
navigation will depend upon the shape of the path. Navigation can be
added quite simply by setting ``focus`` to ``true`` and calling
`decrementCurrentIndex() </sdk/apps/qml/QtQuick/PathView#decrementCurrentIndex-method>`__
or
`incrementCurrentIndex() </sdk/apps/qml/QtQuick/PathView#incrementCurrentIndex-method>`__,
for example to navigate using the left and right arrow keys:

.. code:: qml

    PathView {
        // ...
        focus: true
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
    }

The path view itself is a focus scope (see `Keyboard Focus in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`__ for more details).

Delegates are instantiated as needed and may be destroyed at any time.
State should *never* be stored in a delegate.

`PathView </sdk/apps/qml/QtQuick/PathView/>`__ attaches a number of
properties to the root item of the delegate, for example
``PathView.isCurrentItem``. In the following example, the root delegate
item can access this attached property directly as
``PathView.isCurrentItem``, while the child ``nameText`` object must
refer to this property as ``wrapper.PathView.isCurrentItem``.

.. code:: qml

        Component {
            id: delegate
            Column {
                id: wrapper
                Image {
                    anchors.horizontalCenter: nameText.horizontalCenter
                    width: 64; height: 64
                    source: icon
                }
                Text {
                    id: nameText
                    text: name
                    font.pointSize: 16
                    color: wrapper.PathView.isCurrentItem ? "red" : "black"
                }
            }
        }

**Note** that views do not enable *clip* automatically. If the view is
not clipped by another item or the screen, it will be necessary to set
*clip: true* in order to have the out of view items clipped nicely.

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__, `QML Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__,
`ListView </sdk/apps/qml/QtQuick/ListView/>`__,
`GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__, and `Qt Quick
Examples - Views </sdk/apps/qml/QtQuick/views/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ cacheItemCount : int                                            |
+--------------------------------------------------------------------------+

This property holds the maximum number of items to cache off the path.

For example, a `PathView </sdk/apps/qml/QtQuick/PathView/>`__ with a
model containing 20 items, a
`pathItemCount </sdk/apps/qml/QtQuick/PathView#pathItemCount-prop>`__ of
10, and an cacheItemCount of 4 will create up to 14 items, with 10
visible on the path and 4 invisible cached items.

The cached delegates are created asynchronously, allowing creation to
occur across multiple frames and reducing the likelihood of skipping
frames.

Setting this value can improve the smoothness of scrolling behavior at
the expense of additional memory usage. It is not a substitute for
creating efficient delegates; the fewer objects and bindings in a
delegate, the faster a view can be moved.

**See also**
`pathItemCount </sdk/apps/qml/QtQuick/PathView#pathItemCount-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of items in the model.

| 

+--------------------------------------------------------------------------+
|        \ currentIndex : int                                              |
+--------------------------------------------------------------------------+

This property holds the index of the current item.

| 

+--------------------------------------------------------------------------+
|        \ currentItem : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+

This property holds the current item in the view.

| 

+--------------------------------------------------------------------------+
|        \ delegate : Component                                            |
+--------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the
view. The index is exposed as an accessible ``index`` property.
Properties of the model are also available depending upon the type of
`Data
Model </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.

The number of objects and bindings in the delegate has a direct effect
on the flicking performance of the view when
`pathItemCount </sdk/apps/qml/QtQuick/PathView#pathItemCount-prop>`__ is
specified. If at all possible, place functionality that is not needed
for the normal display of the delegate in a
`Loader </sdk/apps/qml/QtQuick/Loader/>`__ which can load additional
components when needed.

Note that the `PathView </sdk/apps/qml/QtQuick/PathView/>`__ will layout
the items based on the size of the root item in the delegate.

Here is an example delegate:

.. code:: qml

        Component {
            id: delegate
            Column {
                id: wrapper
                Image {
                    anchors.horizontalCenter: nameText.horizontalCenter
                    width: 64; height: 64
                    source: icon
                }
                Text {
                    id: nameText
                    text: name
                    font.pointSize: 16
                    color: wrapper.PathView.isCurrentItem ? "red" : "black"
                }
            }
        }

| 

+--------------------------------------------------------------------------+
|        \ dragMargin : real                                               |
+--------------------------------------------------------------------------+

This property holds the maximum distance from the path that initiate
mouse dragging.

By default the path can only be dragged by clicking on an item. If
dragMargin is greater than zero, a drag can be initiated by clicking
within dragMargin pixels of the path.

| 

+--------------------------------------------------------------------------+
|        \ dragging : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user
dragging the view.

| 

+--------------------------------------------------------------------------+
|        \ flickDeceleration : real                                        |
+--------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default is 100.

| 

+--------------------------------------------------------------------------+
|        \ flicking : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user
flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ highlight : Component                                           |
+--------------------------------------------------------------------------+

This property holds the component to use as the highlight.

An instance of the highlight component will be created for each view.
The geometry of the resultant component instance will be managed by the
view so as to stay with the current item.

The below example demonstrates how to make a simple highlight. Note the
use of the
`PathView.onPath </sdk/apps/qml/QtQuick/PathView#onPath-attached-prop>`__
attached property to ensure that the highlight is hidden when flicked
away from the path.

.. code:: qml

    Component {
        Rectangle {
            visible: PathView.onPath
            // ...
        }
    }

**See also**
`highlightItem </sdk/apps/qml/QtQuick/PathView#highlightItem-prop>`__
and
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ highlightItem : `Item </sdk/apps/qml/QtQuick/Item/>`__          |
+--------------------------------------------------------------------------+

``highlightItem`` holds the highlight item, which was created from the
`highlight </sdk/apps/qml/QtQuick/views#highlight>`__ component.

**See also** `highlight </sdk/apps/qml/QtQuick/views#highlight>`__.

| 

+--------------------------------------------------------------------------+
|        \ highlightMoveDuration : int                                     |
+--------------------------------------------------------------------------+

This property holds the move animation duration of the highlight
delegate.

If the
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__
is StrictlyEnforceRange then this property determines the speed that the
items move along the path.

The default value for the duration is 300ms.

| 

+--------------------------------------------------------------------------+
|        \ highlightRangeMode : enumeration                                |
+--------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight
   will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the
   highlight within the range, however the highlight can move outside of
   the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move
   outside of the range. This means that the current item will change if
   a keyboard or mouse action would cause the highlight to move outside
   of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and highlightRangeMode to
*PathView.StrictlyEnforceRange*. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater
than or equal to ``preferredHighlightBegin``.

| 

+--------------------------------------------------------------------------+
|        \ interactive : bool                                              |
+--------------------------------------------------------------------------+

A user cannot drag or flick a
`PathView </sdk/apps/qml/QtQuick/PathView/>`__ that is not interactive.

This property is useful for temporarily disabling flicking. This allows
special interaction with
`PathView </sdk/apps/qml/QtQuick/PathView/>`__'s children.

| 

+--------------------------------------------------------------------------+
|        \ maximumFlickVelocity : real                                     |
+--------------------------------------------------------------------------+

This property holds the approximate maximum velocity that the user can
flick the view in pixels/second.

The default value is platform dependent.

| 

+--------------------------------------------------------------------------+
|        \ model : `model </sdk/apps/qml/QtQuick/PathView#model-prop>`__   |
+--------------------------------------------------------------------------+

This property holds the model providing data for the view.

The model provides a set of data that is used to create the items for
the view. For large or dynamic datasets the model is usually provided by
a C++ model object. Models can also be created directly in QML, using
the
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__
type.

**Note:** changing the model will reset the offset and
`currentIndex </sdk/apps/qml/QtQuick/PathView#currentIndex-prop>`__ to
0.

**See also** `Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.

| 

+--------------------------------------------------------------------------+
|        \ moving : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user
either dragging or flicking the view.

| 

+--------------------------------------------------------------------------+
|        \ offset : real                                                   |
+--------------------------------------------------------------------------+

The offset specifies how far along the path the items are from their
initial positions. This is a real number that ranges from 0.0 to the
count of items in the model.

| 

+--------------------------------------------------------------------------+
|        \ path : `Path </sdk/apps/qml/QtQuick/Path/>`__                   |
+--------------------------------------------------------------------------+

This property holds the path used to lay out the items. For more
information see the `Path </sdk/apps/qml/QtQuick/Path/>`__
documentation.

| 

+--------------------------------------------------------------------------+
|        \ pathItemCount : int                                             |
+--------------------------------------------------------------------------+

This property holds the number of items visible on the path at any one
time.

Setting pathItemCount to undefined will show all items on the path.

| 

+--------------------------------------------------------------------------+
|        \ preferredHighlightBegin : real                                  |
+--------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight
   will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the
   highlight within the range, however the highlight can move outside of
   the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move
   outside of the range. This means that the current item will change if
   a keyboard or mouse action would cause the highlight to move outside
   of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__
to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater
than or equal to ``preferredHighlightBegin``.

| 

+--------------------------------------------------------------------------+
|        \ preferredHighlightEnd : real                                    |
+--------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item)
within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight
   will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the
   highlight within the range, however the highlight can move outside of
   the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move
   outside of the range. This means that the current item will change if
   a keyboard or mouse action would cause the highlight to move outside
   of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the
current item ends up when the view moves. For example, if you want the
currently selected item to be in the middle of the path, then set the
highlight range to be 0.5,0.5 and
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__
to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the
currently selected item will be the item at that position. This also
applies to when the currently selected item changes - it will scroll to
within the preferred highlight range. Furthermore, the behaviour of the
current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater
than or equal to ``preferredHighlightBegin``.

| 

+--------------------------------------------------------------------------+
|        \ snapMode : enumeration                                          |
+--------------------------------------------------------------------------+

This property determines how the items will settle following a drag or
flick. The possible values are:

-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.NoSnap (default) - the
   items stop anywhere along the path.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.SnapToItem - the items
   settle with an item aligned with the
   `preferredHighlightBegin </sdk/apps/qml/QtQuick/PathView#preferredHighlightBegin-prop>`__.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.SnapOneItem - the
   items settle no more than one item away from the item nearest
   `preferredHighlightBegin </sdk/apps/qml/QtQuick/PathView#preferredHighlightBegin-prop>`__
   at the time the press is released. This mode is particularly useful
   for moving one page at a time.

``snapMode`` does not affect the
`currentIndex </sdk/apps/qml/QtQuick/PathView#currentIndex-prop>`__. To
update the
`currentIndex </sdk/apps/qml/QtQuick/PathView#currentIndex-prop>`__ as
the view is moved, set
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__
to ``PathView.StrictlyEnforceRange`` (default for
`PathView </sdk/apps/qml/QtQuick/PathView/>`__).

**See also**
`highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__.

| 

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ PathView.isCurrentItem : bool                                   |
+--------------------------------------------------------------------------+

This attached property is true if this delegate is the current item;
otherwise false.

It is attached to each instance of the delegate.

This property may be used to adjust the appearance of the current item.

.. code:: qml

        Component {
            id: delegate
            Column {
                id: wrapper
                Image {
                    anchors.horizontalCenter: nameText.horizontalCenter
                    width: 64; height: 64
                    source: icon
                }
                Text {
                    id: nameText
                    text: name
                    font.pointSize: 16
                    color: wrapper.PathView.isCurrentItem ? "red" : "black"
                }
            }
        }

| 

+--------------------------------------------------------------------------+
|        \ PathView.onPath : bool                                          |
+--------------------------------------------------------------------------+

This attached property holds whether the item is currently on the path.

If a
`pathItemCount </sdk/apps/qml/QtQuick/PathView#pathItemCount-prop>`__
has been set, it is possible that some items may be instantiated, but
not considered to be currently on the path. Usually, these items would
be set invisible, for example:

.. code:: qml

    Component {
        Rectangle {
            visible: PathView.onPath
            // ...
        }
    }

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ PathView.view : `PathView </sdk/apps/qml/QtQuick/PathView/>`__  |
+--------------------------------------------------------------------------+

This attached property holds the view that manages this delegate
instance.

It is attached to each instance of the delegate.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ dragEnded()                                                     |
+--------------------------------------------------------------------------+

This signal is emitted when the user stops dragging the view.

If the velocity of the drag is suffient at the time the touch/mouse
button is released then a flick will start.

The corresponding handler is ``onDragEnded``.

| 

+--------------------------------------------------------------------------+
|        \ dragStarted()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when the view starts to be dragged due to user
interaction.

The corresponding handler is ``onDragStarted``.

| 

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
|        \ decrementCurrentIndex()                                         |
+--------------------------------------------------------------------------+

Decrements the current index.

**Note**: methods should only be called after the Component has
completed.

| 

+--------------------------------------------------------------------------+
|        \ incrementCurrentIndex()                                         |
+--------------------------------------------------------------------------+

Increments the current index.

**Note**: methods should only be called after the Component has
completed.

| 

+--------------------------------------------------------------------------+
|        \ int indexAt(int *x*, int *y*)                                   |
+--------------------------------------------------------------------------+

Returns the index of the item containing the point *x*, *y* in content
coordinates. If there is no item at the point specified, -1 is returned.

**Note**: methods should only be called after the Component has
completed.

| 

+--------------------------------------------------------------------------+
|        \ `Item </sdk/apps/qml/QtQuick/Item/>`__ itemAt(int *x*, int *y*) |
+--------------------------------------------------------------------------+

Returns the item containing the point *x*, *y* in content coordinates.
If there is no item at the point specified, null is returned.

**Note**: methods should only be called after the Component has
completed.

| 

+--------------------------------------------------------------------------+
|        \ positionViewAtIndex(int *index*, PositionMode *mode*)           |
+--------------------------------------------------------------------------+

Positions the view such that the *index* is at the position specified by
*mode*:

-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.Beginning - position
   item at the beginning of the path.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.Center - position item
   in the center of the path.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.End - position item at
   the end of the path.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.Contain - ensure the
   item is positioned on the path.
-  `PathView </sdk/apps/qml/QtQuick/PathView/>`__.SnapPosition -
   position the item at
   `preferredHighlightBegin </sdk/apps/qml/QtQuick/PathView#preferredHighlightBegin-prop>`__.
   This mode is only valid if
   `highlightRangeMode </sdk/apps/qml/QtQuick/PathView#highlightRangeMode-prop>`__
   is StrictlyEnforceRange or snapping is enabled via
   `snapMode </sdk/apps/qml/QtQuick/PathView#snapMode-prop>`__.

**Note**: methods should only be called after the Component has
completed. To position the view at startup, this method should be called
by Component.onCompleted. For example, to position the view at the end:

.. code:: cpp

    Component.onCompleted: positionViewAtIndex(count - 1, PathView.End)

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathView/images/pathview.gif

