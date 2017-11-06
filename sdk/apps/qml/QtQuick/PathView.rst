.. _sdk_qtquick_pathview:

QtQuick PathView
================

Lays out model-provided items on a path

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`cacheItemCount <sdk_qtquick_pathview_cacheItemCount>` : int
-  :ref:`count <sdk_qtquick_pathview_count>` : int
-  :ref:`currentIndex <sdk_qtquick_pathview_currentIndex>` : int
-  :ref:`currentItem <sdk_qtquick_pathview_currentItem>` : Item
-  :ref:`delegate <sdk_qtquick_pathview_delegate>` : Component
-  :ref:`dragMargin <sdk_qtquick_pathview_dragMargin>` : real
-  :ref:`dragging <sdk_qtquick_pathview_dragging>` : bool
-  :ref:`flickDeceleration <sdk_qtquick_pathview_flickDeceleration>` : real
-  :ref:`flicking <sdk_qtquick_pathview_flicking>` : bool
-  :ref:`highlight <sdk_qtquick_pathview_highlight>` : Component
-  :ref:`highlightItem <sdk_qtquick_pathview_highlightItem>` : Item
-  :ref:`highlightMoveDuration <sdk_qtquick_pathview_highlightMoveDuration>` : int
-  :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` : enumeration
-  :ref:`interactive <sdk_qtquick_pathview_interactive>` : bool
-  :ref:`maximumFlickVelocity <sdk_qtquick_pathview_maximumFlickVelocity>` : real
-  :ref:`model <sdk_qtquick_pathview_model>` : model
-  :ref:`moving <sdk_qtquick_pathview_moving>` : bool
-  :ref:`offset <sdk_qtquick_pathview_offset>` : real
-  :ref:`path <sdk_qtquick_pathview_path>` : Path
-  :ref:`pathItemCount <sdk_qtquick_pathview_pathItemCount>` : int
-  :ref:`preferredHighlightBegin <sdk_qtquick_pathview_preferredHighlightBegin>` : real
-  :ref:`preferredHighlightEnd <sdk_qtquick_pathview_preferredHighlightEnd>` : real
-  :ref:`snapMode <sdk_qtquick_pathview_snapMode>` : enumeration

Attached Properties
-------------------

-  :ref:`isCurrentItem <sdk_qtquick_pathview_isCurrentItem>` : bool
-  :ref:`onPath <sdk_qtquick_pathview_onPath>` : bool
-  :ref:`view <sdk_qtquick_pathview_view>` : PathView

Signals
-------

-  :ref:`dragEnded <sdk_qtquick_pathview_dragEnded>`\ ()
-  :ref:`dragStarted <sdk_qtquick_pathview_dragStarted>`\ ()
-  :ref:`flickEnded <sdk_qtquick_pathview_flickEnded>`\ ()
-  :ref:`flickStarted <sdk_qtquick_pathview_flickStarted>`\ ()
-  :ref:`movementEnded <sdk_qtquick_pathview_movementEnded>`\ ()
-  :ref:`movementStarted <sdk_qtquick_pathview_movementStarted>`\ ()

Methods
-------

-  :ref:`decrementCurrentIndex <sdk_qtquick_pathview_decrementCurrentIndex>`\ ()
-  :ref:`incrementCurrentIndex <sdk_qtquick_pathview_incrementCurrentIndex>`\ ()
-  int :ref:`indexAt <sdk_qtquick_pathview_indexAt>`\ (int *x*, int *y*)
-  Item :ref:`itemAt <sdk_qtquick_pathview_itemAt>`\ (int *x*, int *y*)
-  :ref:`positionViewAtIndex <sdk_qtquick_pathview_positionViewAtIndex>`\ (int *index*, PositionMode *mode*)

Detailed Description
--------------------

A :ref:`PathView <sdk_qtquick_pathview>` displays data from models created from built-in QML types like `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  and `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ , or custom model classes defined in C++ that inherit from QAbstractListModel.

The view has a :ref:`model <sdk_qtquick_pathview_model>`, which defines the data to be displayed, and a :ref:`delegate <sdk_qtquick_pathview_delegate>`, which defines how the data should be displayed. The :ref:`delegate <sdk_qtquick_pathview_delegate>` is instantiated for each item on the :ref:`path <sdk_qtquick_pathview_path>`. The items may be flicked to move them along the path.

For example, if there is a simple list model defined in a file ``ContactModel.qml`` like this:

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

This data can be represented as a :ref:`PathView <sdk_qtquick_pathview>`, like this:

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

(Note the above example uses :ref:`PathAttribute <sdk_qtquick_pathattribute>` to scale and modify the opacity of the items as they rotate. This additional code can be seen in the :ref:`PathAttribute <sdk_qtquick_pathattribute>` documentation.)

:ref:`PathView <sdk_qtquick_pathview>` does not automatically handle keyboard navigation. This is because the keys to use for navigation will depend upon the shape of the path. Navigation can be added quite simply by setting ``focus`` to ``true`` and calling :ref:`decrementCurrentIndex() <sdk_qtquick_pathview_decrementCurrentIndex>` or :ref:`incrementCurrentIndex() <sdk_qtquick_pathview_incrementCurrentIndex>`, for example to navigate using the left and right arrow keys:

.. code:: qml

    PathView {
        // ...
        focus: true
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
    }

The path view itself is a focus scope (see `Keyboard Focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  for more details).

Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

:ref:`PathView <sdk_qtquick_pathview>` attaches a number of properties to the root item of the delegate, for example ``PathView.isCurrentItem``. In the following example, the root delegate item can access this attached property directly as ``PathView.isCurrentItem``, while the child ``nameText`` object must refer to this property as ``wrapper.PathView.isCurrentItem``.

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

**Note** that views do not enable *clip* automatically. If the view is not clipped by another item or the screen, it will be necessary to set *clip: true* in order to have the out of view items clipped nicely.

**See also** :ref:`Path <sdk_qtquick_path>`, `QML Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ , :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ , and `Qt Quick Examples - Views </sdk/apps/qml/QtQuick/views/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_pathview_cacheItemCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cacheItemCount : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum number of items to cache off the path.

For example, a :ref:`PathView <sdk_qtquick_pathview>` with a model containing 20 items, a :ref:`pathItemCount <sdk_qtquick_pathview_pathItemCount>` of 10, and an cacheItemCount of 4 will create up to 14 items, with 10 visible on the path and 4 invisible cached items.

The cached delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames.

Setting this value can improve the smoothness of scrolling behavior at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view can be moved.

**See also** :ref:`pathItemCount <sdk_qtquick_pathview_pathItemCount>`.

.. _sdk_qtquick_pathview_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of items in the model.

.. _sdk_qtquick_pathview_currentIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentIndex : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the index of the current item.

.. _sdk_qtquick_pathview_currentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current item in the view.

.. _sdk_qtquick_pathview_delegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : Component                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible ``index`` property. Properties of the model are also available depending upon the type of `Data Model </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view when :ref:`pathItemCount <sdk_qtquick_pathview_pathItemCount>` is specified. If at all possible, place functionality that is not needed for the normal display of the delegate in a :ref:`Loader <sdk_qtquick_loader>` which can load additional components when needed.

Note that the :ref:`PathView <sdk_qtquick_pathview>` will layout the items based on the size of the root item in the delegate.

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

.. _sdk_qtquick_pathview_dragMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragMargin : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum distance from the path that initiate mouse dragging.

By default the path can only be dragged by clicking on an item. If dragMargin is greater than zero, a drag can be initiated by clicking within dragMargin pixels of the path.

.. _sdk_qtquick_pathview_dragging:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragging : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user dragging the view.

.. _sdk_qtquick_pathview_flickDeceleration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickDeceleration : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rate at which a flick will decelerate.

The default is 100.

.. _sdk_qtquick_pathview_flicking:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flicking : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user flicking the view.

.. _sdk_qtquick_pathview_highlight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlight : Component                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the component to use as the highlight.

An instance of the highlight component will be created for each view. The geometry of the resultant component instance will be managed by the view so as to stay with the current item.

The below example demonstrates how to make a simple highlight. Note the use of the :ref:`PathView.onPath <sdk_qtquick_pathview_onPath>` attached property to ensure that the highlight is hidden when flicked away from the path.

.. code:: qml

    Component {
        Rectangle {
            visible: PathView.onPath
            // ...
        }
    }

**See also** :ref:`highlightItem <sdk_qtquick_pathview_highlightItem>` and :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>`.

.. _sdk_qtquick_pathview_highlightItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

``highlightItem`` holds the highlight item, which was created from the `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  component.

**See also** `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_ .

.. _sdk_qtquick_pathview_highlightMoveDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightMoveDuration : int                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the move animation duration of the highlight delegate.

If the :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` is StrictlyEnforceRange then this property determines the speed that the items move along the path.

The default value for the duration is 300ms.

.. _sdk_qtquick_pathview_highlightRangeMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightRangeMode : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and highlightRangeMode to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater than or equal to ``preferredHighlightBegin``.

.. _sdk_qtquick_pathview_interactive:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| interactive : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A user cannot drag or flick a :ref:`PathView <sdk_qtquick_pathview>` that is not interactive.

This property is useful for temporarily disabling flicking. This allows special interaction with :ref:`PathView <sdk_qtquick_pathview>`'s children.

.. _sdk_qtquick_pathview_maximumFlickVelocity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumFlickVelocity : real                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the approximate maximum velocity that the user can flick the view in pixels/second.

The default value is platform dependent.

.. _sdk_qtquick_pathview_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : :ref:`model <sdk_qtquick_pathview_model>`                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the model providing data for the view.

The model provides a set of data that is used to create the items for the view. For large or dynamic datasets the model is usually provided by a C++ model object. Models can also be created directly in QML, using the `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  type.

**Note:** changing the model will reset the offset and :ref:`currentIndex <sdk_qtquick_pathview_currentIndex>` to 0.

**See also** `Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

.. _sdk_qtquick_pathview_moving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moving : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the view is currently moving due to the user either dragging or flicking the view.

.. _sdk_qtquick_pathview_offset:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| offset : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The offset specifies how far along the path the items are from their initial positions. This is a real number that ranges from 0.0 to the count of items in the model.

.. _sdk_qtquick_pathview_path:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : :ref:`Path <sdk_qtquick_path>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the path used to lay out the items. For more information see the :ref:`Path <sdk_qtquick_path>` documentation.

.. _sdk_qtquick_pathview_pathItemCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pathItemCount : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of items visible on the path at any one time.

Setting pathItemCount to undefined will show all items on the path.

.. _sdk_qtquick_pathview_preferredHighlightBegin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferredHighlightBegin : real                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater than or equal to ``preferredHighlightBegin``.

.. _sdk_qtquick_pathview_preferredHighlightEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferredHighlightEnd : real                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for ``highlightRangeMode`` are:

-  *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-  *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-  *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires ``preferredHighlightEnd`` to be greater than or equal to ``preferredHighlightBegin``.

.. _sdk_qtquick_pathview_snapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| snapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines how the items will settle following a drag or flick. The possible values are:

-  :ref:`PathView <sdk_qtquick_pathview>`.NoSnap (default) - the items stop anywhere along the path.
-  :ref:`PathView <sdk_qtquick_pathview>`.SnapToItem - the items settle with an item aligned with the :ref:`preferredHighlightBegin <sdk_qtquick_pathview_preferredHighlightBegin>`.
-  :ref:`PathView <sdk_qtquick_pathview>`.SnapOneItem - the items settle no more than one item away from the item nearest :ref:`preferredHighlightBegin <sdk_qtquick_pathview_preferredHighlightBegin>` at the time the press is released. This mode is particularly useful for moving one page at a time.

``snapMode`` does not affect the :ref:`currentIndex <sdk_qtquick_pathview_currentIndex>`. To update the :ref:`currentIndex <sdk_qtquick_pathview_currentIndex>` as the view is moved, set :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` to ``PathView.StrictlyEnforceRange`` (default for :ref:`PathView <sdk_qtquick_pathview>`).

**See also** :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>`.

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_pathview_isCurrentItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PathView.isCurrentItem : bool                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property is true if this delegate is the current item; otherwise false.

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

.. _sdk_qtquick_pathview_onPath:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PathView.onPath : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the item is currently on the path.

If a :ref:`pathItemCount <sdk_qtquick_pathview_pathItemCount>` has been set, it is possible that some items may be instantiated, but not considered to be currently on the path. Usually, these items would be set invisible, for example:

.. code:: qml

    Component {
        Rectangle {
            visible: PathView.onPath
            // ...
        }
    }

It is attached to each instance of the delegate.

.. _sdk_qtquick_pathview_view:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PathView.view : :ref:`PathView <sdk_qtquick_pathview>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate.

Signal Documentation
--------------------

.. _sdk_qtquick_pathview_dragEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragEnded()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user stops dragging the view.

If the velocity of the drag is suffient at the time the touch/mouse button is released then a flick will start.

The corresponding handler is ``onDragEnded``.

.. _sdk_qtquick_pathview_dragStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragStarted()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view starts to be dragged due to user interaction.

The corresponding handler is ``onDragStarted``.

.. _sdk_qtquick_pathview_flickEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickEnded()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to a flick.

The corresponding handler is ``onFlickEnded``.

.. _sdk_qtquick_pathview_flickStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flickStarted()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.

The corresponding handler is ``onFlickStarted``.

.. _sdk_qtquick_pathview_movementEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movementEnded()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal will be emitted once the flick stops. If a flick was not generated, this signal will be emitted when the user stops dragging - i.e. a mouse or touch release.

The corresponding handler is ``onMovementEnded``.

.. _sdk_qtquick_pathview_movementStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| movementStarted()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the view begins moving due to user interaction.

The corresponding handler is ``onMovementStarted``.

Method Documentation
--------------------

.. _sdk_qtquick_pathview_decrementCurrentIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| decrementCurrentIndex()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Decrements the current index.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_pathview_incrementCurrentIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| incrementCurrentIndex()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Increments the current index.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_pathview_indexAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int indexAt(int *x*, int *y*)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the index of the item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, -1 is returned.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_pathview_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Item <sdk_qtquick_item>` itemAt(int *x*, int *y*)                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, null is returned.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_pathview_positionViewAtIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionViewAtIndex(int *index*, PositionMode *mode*)                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Positions the view such that the *index* is at the position specified by *mode*:

-  :ref:`PathView <sdk_qtquick_pathview>`.Beginning - position item at the beginning of the path.
-  :ref:`PathView <sdk_qtquick_pathview>`.Center - position item in the center of the path.
-  :ref:`PathView <sdk_qtquick_pathview>`.End - position item at the end of the path.
-  :ref:`PathView <sdk_qtquick_pathview>`.Contain - ensure the item is positioned on the path.
-  :ref:`PathView <sdk_qtquick_pathview>`.SnapPosition - position the item at :ref:`preferredHighlightBegin <sdk_qtquick_pathview_preferredHighlightBegin>`. This mode is only valid if :ref:`highlightRangeMode <sdk_qtquick_pathview_highlightRangeMode>` is StrictlyEnforceRange or snapping is enabled via :ref:`snapMode <sdk_qtquick_pathview_snapMode>`.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

.. code:: cpp

    Component.onCompleted: positionViewAtIndex(count - 1, PathView.End)

