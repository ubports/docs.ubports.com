.. _sdk_qtquick_gridview:

QtQuick GridView
================

For specifying a grid view of items provided by a model

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_gridview_add>` : Transition
-  :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>` : Transition
-  :ref:`cacheBuffer <sdk_qtquick_gridview_cacheBuffer>` : int
-  :ref:`cellHeight <sdk_qtquick_gridview_cellHeight>` : real
-  :ref:`cellWidth <sdk_qtquick_gridview_cellWidth>` : real
-  :ref:`count <sdk_qtquick_gridview_count>` : int
-  :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` : int
-  :ref:`currentItem <sdk_qtquick_gridview_currentItem>` : Item
-  :ref:`delegate <sdk_qtquick_gridview_delegate>` : Component
-  :ref:`displaced <sdk_qtquick_gridview_displaced>` : Transition
-  :ref:`displayMarginBeginning <sdk_qtquick_gridview_displayMarginBeginning>` : int
-  :ref:`displayMarginEnd <sdk_qtquick_gridview_displayMarginEnd>` : int
-  :ref:`effectiveLayoutDirection <sdk_qtquick_gridview_effectiveLayoutDirection>` : enumeration
-  :ref:`flow <sdk_qtquick_gridview_flow>` : enumeration
-  :ref:`footer <sdk_qtquick_gridview_footer>` : Component
-  :ref:`footerItem <sdk_qtquick_gridview_footerItem>` : Item
-  :ref:`header <sdk_qtquick_gridview_header>` : Component
-  :ref:`headerItem <sdk_qtquick_gridview_headerItem>` : Item
-  :ref:`highlight <sdk_qtquick_gridview_highlight>` : Component
-  :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>` : bool
-  :ref:`highlightItem <sdk_qtquick_gridview_highlightItem>` : Item
-  :ref:`highlightMoveDuration <sdk_qtquick_gridview_highlightMoveDuration>` : int
-  :ref:`highlightRangeMode <sdk_qtquick_gridview_highlightRangeMode>` : enumeration
-  :ref:`keyNavigationWraps <sdk_qtquick_gridview_keyNavigationWraps>` : bool
-  :ref:`layoutDirection <sdk_qtquick_gridview_layoutDirection>` : enumeration
-  :ref:`model <sdk_qtquick_gridview_model>` : model
-  :ref:`move <sdk_qtquick_gridview_move>` : Transition
-  :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` : Transition
-  :ref:`populate <sdk_qtquick_gridview_populate>` : Transition
-  :ref:`preferredHighlightBegin <sdk_qtquick_gridview_preferredHighlightBegin>` : real
-  :ref:`preferredHighlightEnd <sdk_qtquick_gridview_preferredHighlightEnd>` : real
-  :ref:`remove <sdk_qtquick_gridview_remove>` : Transition
-  :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` : Transition
-  :ref:`snapMode <sdk_qtquick_gridview_snapMode>` : enumeration
-  :ref:`verticalLayoutDirection <sdk_qtquick_gridview_verticalLayoutDirection>` : enumeration

Attached Properties
-------------------

-  :ref:`delayRemove <sdk_qtquick_gridview_delayRemove>` : bool
-  :ref:`isCurrentItem <sdk_qtquick_gridview_isCurrentItem>` : bool
-  :ref:`view <sdk_qtquick_gridview_view>` : GridView

Attached Signals
----------------

-  :ref:`add <sdk_qtquick_gridview_add>`\ ()
-  :ref:`remove <sdk_qtquick_gridview_remove>`\ ()

Methods
-------

-  :ref:`forceLayout <sdk_qtquick_gridview_forceLayout>`\ ()
-  int :ref:`indexAt <sdk_qtquick_gridview_indexAt>`\ (int *x*, int *y*)
-  Item :ref:`itemAt <sdk_qtquick_gridview_itemAt>`\ (int *x*, int *y*)
-  :ref:`moveCurrentIndexDown <sdk_qtquick_gridview_moveCurrentIndexDown>`\ ()
-  :ref:`moveCurrentIndexLeft <sdk_qtquick_gridview_moveCurrentIndexLeft>`\ ()
-  :ref:`moveCurrentIndexRight <sdk_qtquick_gridview_moveCurrentIndexRight>`\ ()
-  :ref:`moveCurrentIndexUp <sdk_qtquick_gridview_moveCurrentIndexUp>`\ ()
-  :ref:`positionViewAtBeginning <sdk_qtquick_gridview_positionViewAtBeginning>`\ ()
-  :ref:`positionViewAtEnd <sdk_qtquick_gridview_positionViewAtEnd>`\ ()
-  :ref:`positionViewAtIndex <sdk_qtquick_gridview_positionViewAtIndex>`\ (int *index*, PositionMode *mode*)

Detailed Description
--------------------

A `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  displays data from models created from built-in QML types like `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  and `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ , or custom model classes defined in C++ that inherit from QAbstractListModel.

A `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  has a :ref:`model <sdk_qtquick_gridview_model>`, which defines the data to be displayed, and a :ref:`delegate <sdk_qtquick_gridview_delegate>`, which defines how the data should be displayed. Items in a `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  are laid out horizontally or vertically. Grid views are inherently flickable as `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  inherits from `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ .

Example Usage
-------------

The following example shows the definition of a simple list model defined in a file called ``ContactModel.qml``:

.. code:: qml

    import QtQuick 2.0
    ListModel {
        ListElement {
            name: "Jim Williams"
            portrait: "pics/portrait.png"
        }
        ListElement {
            name: "John Brown"
            portrait: "pics/portrait.png"
        }
        ListElement {
            name: "Bill Smyth"
            portrait: "pics/portrait.png"
        }
        ListElement {
            name: "Sam Wise"
            portrait: "pics/portrait.png"
        }
    }

This model can be referenced as ``ContactModel`` in other QML files. See QML Modules for more information about creating reusable components like this.

Another component can display this model data in a `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ , as in the following example, which creates a ``ContactModel`` component for its model, and a `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_  (containing `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  and `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  items) for its delegate.

.. code:: qml

    import QtQuick 2.0
    GridView {
        width: 300; height: 200
        model: ContactModel {}
        delegate: Column {
            Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
        }
    }

The view will create a new delegate for each item in the model. Note that the delegate is able to access the model's ``name`` and ``portrait`` data directly.

An improved grid view is shown below. The delegate is visually improved and is moved into a separate ``contactDelegate`` component.

.. code:: qml

    Rectangle {
        width: 300; height: 200
        Component {
            id: contactDelegate
            Item {
                width: grid.cellWidth; height: grid.cellHeight
                Column {
                    anchors.fill: parent
                    Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
                    Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
                }
            }
        }
        GridView {
            id: grid
            anchors.fill: parent
            cellWidth: 80; cellHeight: 80
            model: ContactModel {}
            delegate: contactDelegate
            highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }
    }

The currently selected item is highlighted with a blue :ref:`Rectangle <sdk_qtquick_rectangle>` using the `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  property, and ``focus`` is set to ``true`` to enable keyboard navigation for the grid view. The grid view itself is a focus scope (see `Keyboard Focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  for more details).

Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

`GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  attaches a number of properties to the root item of the delegate, for example ``GridView.isCurrentItem``. In the following example, the root delegate item can access this attached property directly as ``GridView.isCurrentItem``, while the child ``contactInfo`` object must refer to this property as ``wrapper.GridView.isCurrentItem``.

.. code:: qml

    GridView {
        width: 300; height: 200
        cellWidth: 80; cellHeight: 80
        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 80
                height: 80
                color: GridView.isCurrentItem ? "black" : "red"
                Text {
                    id: contactInfo
                    text: name + ": " + number
                    color: wrapper.GridView.isCurrentItem ? "red" : "black"
                }
            }
        }
        model: ContactModel {}
        delegate: contactsDelegate
        focus: true
    }

**Note:** Views do not set the :ref:`clip <sdk_qtquick_item_clip>` property automatically. If the view is not clipped by another item or the screen, it will be necessary to set this property to true in order to clip the items that are partially or fully outside the view.

GridView Layouts
----------------

The layout of the items in a `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  can be controlled by these properties:

-  `flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_  - controls whether items flow from left to right (as a series of rows) or from top to bottom (as a series of columns). This value can be either `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight or `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowTopToBottom.
-  :ref:`layoutDirection <sdk_qtquick_gridview_layoutDirection>` - controls the horizontal layout direction: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.
-  :ref:`verticalLayoutDirection <sdk_qtquick_gridview_verticalLayoutDirection>` - controls the vertical layout direction: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .TopToBottom or `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .BottomToTop.

By default, a `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  flows from left to right, and items are laid out from left to right horizontally, and from top to bottom vertically.

These properties can be combined to produce a variety of layouts, as shown in the table below. The GridViews in the first row all have a `flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_  value of `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight, but use different combinations of horizontal and vertical layout directions (specified by :ref:`layoutDirection <sdk_qtquick_gridview_layoutDirection>` and :ref:`verticalLayoutDirection <sdk_qtquick_gridview_verticalLayoutDirection>` respectively). Similarly, the GridViews in the second row below all have a `flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_  value of `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowTopToBottom, but use different combinations of horizontal and vertical layout directions to lay out their items in different ways.

**GridViews** with `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight flow
**(H)** Left to right **(V)** Top to bottom

**(H)** Right to left **(V)** Top to bottom

**(H)** Left to right **(V)** Bottom to top

**(H)** Right to left **(V)** Bottom to top

**GridViews** with `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowTopToBottom flow
**(H)** Left to right **(V)** Top to bottom

**(H)** Right to left **(V)** Top to bottom

**(H)** Left to right **(V)** Bottom to top

**(H)** Right to left **(V)** Bottom to top

**See also** `QML Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ , :ref:`ListView <sdk_qtquick_listview>`, :ref:`PathView <sdk_qtquick_pathview>`, and `Qt Quick Examples - Views </sdk/apps/qml/QtQuick/views/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_gridview_add:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items that are added to the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        add: Transition {
            NumberAnimation { properties: "x,y"; from: 100; duration: 1000 }
        }
    }

Whenever an item is added to the above view, the item will be animated from the position (100,100) to its final x,y position within the view, over one second. The transition only applies to the new items that are added to the view; it does not apply to the items below that are displaced by the addition of the new items. To animate the displaced items, set the :ref:`displaced <sdk_qtquick_gridview_displaced>` or :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>` properties.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's :ref:`model <sdk_qtquick_gridview_model>` changes. (In those cases, the :ref:`populate <sdk_qtquick_gridview_populate>` transition is applied instead.) Additionally, this transition should *not* animate the height of the new item; doing so will cause any items beneath the new item to be laid out at the wrong position. Instead, the height can be animated within the onAdd handler in the delegate.

**See also** :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, :ref:`populate <sdk_qtquick_gridview_populate>`, and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_addDisplaced:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addDisplaced : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items within the view that are displaced by the addition of other items to the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        addDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever an item is added to the above view, all items beneath the new item are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one second, as specified. This transition is not applied to the new item that has been added to the view; to animate the added items, set the :ref:`add <sdk_qtquick_gridview_add>` property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the addDisplaced, :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` or :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the :ref:`displaced <sdk_qtquick_gridview_displaced>` property instead.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's :ref:`model <sdk_qtquick_gridview_model>` changes. In those cases, the :ref:`populate <sdk_qtquick_gridview_populate>` transition is applied instead.

**See also** :ref:`displaced <sdk_qtquick_gridview_displaced>`, :ref:`add <sdk_qtquick_gridview_add>`, :ref:`populate <sdk_qtquick_gridview_populate>`, and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_cacheBuffer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cacheBuffer : int                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines whether delegates are retained outside the visible area of the view.

If this value is greater than zero, the view may keep as many delegates instantiated as will fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns and ``cacheBuffer`` is set to 40, then up to 6 delegates above and 6 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.

The default value of this property is platform dependent, but will usually be a value greater than zero. Negative values are ignored.

Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.

Setting this value can make scrolling the list smoother at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view may be scrolled.

The cacheBuffer operates outside of any display margins specified by :ref:`displayMarginBeginning <sdk_qtquick_gridview_displayMarginBeginning>` or :ref:`displayMarginEnd <sdk_qtquick_gridview_displayMarginEnd>`.

.. _sdk_qtquick_gridview_cellHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cellHeight : real                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

.. _sdk_qtquick_gridview_cellWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cellWidth : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

.. _sdk_qtquick_gridview_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of items in the view.

.. _sdk_qtquick_gridview_currentIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentIndex : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``currentIndex`` property holds the index of the current item, and ``currentItem`` holds the current item. Setting the currentIndex to -1 will clear the highlight and set :ref:`currentItem <sdk_qtquick_gridview_currentItem>` to null.

If :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>` is ``true``, setting either of these properties will smoothly scroll the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

.. _sdk_qtquick_gridview_currentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``currentIndex`` property holds the index of the current item, and ``currentItem`` holds the current item. Setting the :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` to -1 will clear the highlight and set currentItem to null.

If :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>` is ``true``, setting either of these properties will smoothly scroll the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

.. _sdk_qtquick_gridview_delegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : Component                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible ``index`` property. Properties of the model are also available depending upon the type of `Data Model </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view. If at all possible, place functionality that is not needed for the normal display of the delegate in a :ref:`Loader <sdk_qtquick_loader>` which can load additional components when needed.

The item size of the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  is determined by :ref:`cellHeight <sdk_qtquick_gridview_cellHeight>` and :ref:`cellWidth <sdk_qtquick_gridview_cellWidth>`. It will not resize the items based on the size of the root item in the delegate.

The default stacking order of delegate instances is ``1``.

**Note:** Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

.. _sdk_qtquick_gridview_displaced:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| displaced : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the generic transition to apply to items that have been displaced by any model operation that affects the view.

This is a convenience for specifying a generic transition for items that are displaced by add, move or remove operations, without having to specify the individual :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` and :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` properties. For example, here is a view that specifies a displaced transition:

.. code:: cpp

    GridView {
        ...
        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

When any item is added, moved or removed within the above view, the items below it are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one second, as specified.

If a view specifies this generic displaced transition as well as a specific :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` or :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` transition, the more specific transition will be used instead of the generic displaced transition when the relevant operation occurs, providing that the more specific transition has not been disabled (by setting :ref:`enabled <sdk_qtquick_transition_enabled>` to false). If it has indeed been disabled, the generic displaced transition is applied instead.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>`, :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>`, and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_displayMarginBeginning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| displayMarginBeginning : int                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and ``displayMarginBeginning`` and ``displayMarginEnd`` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the :ref:`cacheBuffer <sdk_qtquick_gridview_cacheBuffer>` property instead.

This QML property was introduced in QtQuick 2.3.

.. _sdk_qtquick_gridview_displayMarginEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| displayMarginEnd : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and ``displayMarginBeginning`` and ``displayMarginEnd`` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the :ref:`cacheBuffer <sdk_qtquick_gridview_cacheBuffer>` property instead.

This QML property was introduced in QtQuick 2.3.

.. _sdk_qtquick_gridview_effectiveLayoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| effectiveLayoutDirection : enumeration                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the effective layout direction of the grid.

When using the attached property :ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring_enabled>` for locale layouts, the visual layout direction of the grid will be mirrored. However, the property :ref:`layoutDirection <sdk_qtquick_gridview_layoutDirection>` will remain unchanged.

**See also** :ref:`GridView::layoutDirection <sdk_qtquick_gridview_layoutDirection>` and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

.. _sdk_qtquick_gridview_flow:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flow : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the flow of the grid.

Possible values:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight (default) - Items are laid out from left to right, and the view scrolls vertically
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowTopToBottom - Items are laid out from top to bottom, and the view scrolls horizontally

.. _sdk_qtquick_gridview_footer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| footer : Component                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the component to use as the footer.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is ``1``.

**See also** :ref:`header <sdk_qtquick_gridview_header>` and :ref:`footerItem <sdk_qtquick_gridview_footerItem>`.

.. _sdk_qtquick_gridview_footerItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| footerItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This holds the footer item created from the :ref:`footer <sdk_qtquick_gridview_footer>` component.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is ``1``.

**See also** :ref:`footer <sdk_qtquick_gridview_footer>` and :ref:`headerItem <sdk_qtquick_gridview_headerItem>`.

.. _sdk_qtquick_gridview_header:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| header : Component                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the component to use as the header.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is ``1``.

**See also** :ref:`footer <sdk_qtquick_gridview_footer>` and :ref:`headerItem <sdk_qtquick_gridview_headerItem>`.

.. _sdk_qtquick_gridview_headerItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| headerItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This holds the header item created from the :ref:`header <sdk_qtquick_gridview_header>` component.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is ``1``.

**See also** :ref:`header <sdk_qtquick_gridview_header>` and :ref:`footerItem <sdk_qtquick_gridview_footerItem>`.

.. _sdk_qtquick_gridview_highlight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlight : Component                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the component to use as the highlight.

An instance of the highlight component is created for each view. The geometry of the resulting component instance will be managed by the view so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is ``0``.

**See also** :ref:`highlightItem <sdk_qtquick_gridview_highlightItem>` and :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>`.

.. _sdk_qtquick_gridview_highlightFollowsCurrentItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightFollowsCurrentItem : bool                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property sets whether the highlight is managed by the view.

If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.

Here is a highlight with its motion defined by a :ref:`SpringAnimation <sdk_qtquick_springanimation>` item:

.. code:: qml

    Component {
        id: highlight
        Rectangle {
            width: view.cellWidth; height: view.cellHeight
            color: "lightsteelblue"; radius: 5
            x: view.currentItem.x
            y: view.currentItem.y
            Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
            Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
        }
    }
    GridView {
        id: view
        width: 300; height: 200
        cellWidth: 80; cellHeight: 80
        model: ContactModel {}
        delegate: Column {
            Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
        }
        highlight: highlight
        highlightFollowsCurrentItem: false
        focus: true
    }

.. _sdk_qtquick_gridview_highlightItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This holds the highlight item created from the `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  component.

The highlightItem is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is ``0``.

**See also** `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  and :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>`.

.. _sdk_qtquick_gridview_highlightMoveDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightMoveDuration : int                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the move animation duration of the highlight delegate.

:ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>` must be true for this property to have effect.

The default value for the duration is 150ms.

**See also** :ref:`highlightFollowsCurrentItem <sdk_qtquick_gridview_highlightFollowsCurrentItem>`.

.. _sdk_qtquick_gridview_highlightRangeMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightRangeMode : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the current item) within the view. The ``preferredHighlightBegin`` value must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the ``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the top and bottom coordinates of where the middle item would be. If the ``currentItem`` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .NoHighlightRange - this is the default value.

.. _sdk_qtquick_gridview_keyNavigationWraps:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| keyNavigationWraps : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the grid wraps key navigation

If this is true, key navigation that would move the current item selection past one end of the view instead wraps around and moves the selection to the other end of the view.

By default, key navigation is not wrapped.

.. _sdk_qtquick_gridview_layoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layoutDirection : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the layout direction of the grid.

Possible values:

-  Qt.LeftToRight (default) - Items will be laid out starting in the top, left corner. The flow is dependent on the :ref:`GridView::flow <sdk_qtquick_gridview_flow>` property.
-  Qt.RightToLeft - Items will be laid out starting in the top, right corner. The flow is dependent on the :ref:`GridView::flow <sdk_qtquick_gridview_flow>` property.

**Note**: If :ref:`GridView::flow <sdk_qtquick_gridview_flow>` is set to `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight, this is not to be confused if GridView::layoutDirection is set to Qt.RightToLeft. The `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .FlowLeftToRight flow value simply indicates that the flow is horizontal.

**See also** :ref:`GridView::effectiveLayoutDirection <sdk_qtquick_gridview_effectiveLayoutDirection>` and :ref:`GridView::verticalLayoutDirection <sdk_qtquick_gridview_verticalLayoutDirection>`.

.. _sdk_qtquick_gridview_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : :ref:`model <sdk_qtquick_gridview_model>`                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the model providing data for the grid.

The model provides the set of data that is used to create the items in the view. Models can be created directly in QML using `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ , `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  or `VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#visualitemmodel>`_ , or provided by C++ model classes. If a C++ model class is used, it must be a subclass of `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  or a simple list.

**See also** `Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

.. _sdk_qtquick_gridview_move:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items in the view that are being moved due to a move operation in the view's :ref:`model <sdk_qtquick_gridview_model>`.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        move: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever the :ref:`model <sdk_qtquick_gridview_model>` performs a move operation to move a particular set of indexes, the respective items in the view will be animated to their new positions in the view over one second. The transition only applies to the items that are the subject of the move operation in the model; it does not apply to items below them that are displaced by the move operation. To animate the displaced items, set the :ref:`displaced <sdk_qtquick_gridview_displaced>` or :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` properties.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_moveDisplaced:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveDisplaced : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items that are displaced by a move operation in the view's :ref:`model <sdk_qtquick_gridview_model>`.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        moveDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever the :ref:`model <sdk_qtquick_gridview_model>` performs a move operation to move a particular set of indexes, the items between the source and destination indexes of the move operation are displaced, causing them to move upwards or downwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one second, as specified. This transition is not applied to the items that are the actual subjects of the move operation; to animate the moved items, set the :ref:`move <sdk_qtquick_gridview_move>` property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, moveDisplaced or :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the :ref:`displaced <sdk_qtquick_gridview_displaced>` property instead.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`displaced <sdk_qtquick_gridview_displaced>`, :ref:`move <sdk_qtquick_gridview_move>`, and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_populate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| populate : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to the items that are initially created for a view.

It is applied to all items that are created when:

-  The view is first created
-  The view's :ref:`model <sdk_qtquick_gridview_model>` changes
-  The view's :ref:`model <sdk_qtquick_gridview_model>` is reset, if the model is a `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  subclass

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        populate: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

When the view is initialized, the view will create all the necessary items for the view, then animate them to their correct positions within the view over one second.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`add <sdk_qtquick_gridview_add>` and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_preferredHighlightBegin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferredHighlightBegin : real                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the current item) within the view. The ``preferredHighlightBegin`` value must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the ``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the top and bottom coordinates of where the middle item would be. If the ``currentItem`` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .NoHighlightRange - this is the default value.

.. _sdk_qtquick_gridview_preferredHighlightEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferredHighlightEnd : real                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the current item) within the view. The ``preferredHighlightBegin`` value must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the ``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the top and bottom coordinates of where the middle item would be. If the ``currentItem`` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .NoHighlightRange - this is the default value.

.. _sdk_qtquick_gridview_remove:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| remove : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items that are removed from the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        remove: Transition {
            ParallelAnimation {
                NumberAnimation { property: "opacity"; to: 0; duration: 1000 }
                NumberAnimation { properties: "x,y"; to: 100; duration: 1000 }
            }
        }
    }

Whenever an item is removed from the above view, the item will be animated to the position (100,100) over one second, and in parallel will also change its opacity to 0. The transition only applies to the items that are removed from the view; it does not apply to the items below them that are displaced by the removal of the items. To animate the displaced items, set the :ref:`displaced <sdk_qtquick_gridview_displaced>` or :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` properties.

Note that by the time the transition is applied, the item has already been removed from the model; any references to the model data for the removed index will not be valid.

Additionally, if the :ref:`delayRemove <sdk_qtquick_gridview_delayRemove>` attached property has been set for a delegate item, the remove transition will not be applied until :ref:`delayRemove <sdk_qtquick_gridview_delayRemove>` becomes false again.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`removeDisplaced <sdk_qtquick_gridview_removeDisplaced>` and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_removeDisplaced:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeDisplaced : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to apply to items in the view that are displaced by the removal of other items in the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    GridView {
        ...
        removeDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever an item is removed from the above view, all items beneath it are displaced, causing them to move upwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one second, as specified. This transition is not applied to the item that has actually been removed from the view; to animate the removed items, set the :ref:`remove <sdk_qtquick_gridview_remove>` property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the :ref:`addDisplaced <sdk_qtquick_gridview_addDisplaced>`, :ref:`moveDisplaced <sdk_qtquick_gridview_moveDisplaced>` or removeDisplaced transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the :ref:`displaced <sdk_qtquick_gridview_displaced>` property instead.

For more details and examples on how to use view transitions, see the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`displaced <sdk_qtquick_gridview_displaced>`, :ref:`remove <sdk_qtquick_gridview_remove>`, and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

.. _sdk_qtquick_gridview_snapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| snapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines how the view scrolling will settle following a drag or flick. The possible values are:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .NoSnap (default) - the view stops anywhere within the visible area.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .SnapToRow - the view settles with a row (or column for ``GridView.FlowTopToBottom`` flow) aligned with the start of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .SnapOneRow - the view will settle no more than one row (or column for ``GridView.FlowTopToBottom`` flow) away from the first visible row at the time the mouse button is released. This mode is particularly useful for moving one page at a time.

.. _sdk_qtquick_gridview_verticalLayoutDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| verticalLayoutDirection : enumeration                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the vertical layout direction of the grid.

Possible values:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .BottomToTop - Items are laid out from the bottom of the view up to the top of the view.

**See also** :ref:`GridView::layoutDirection <sdk_qtquick_gridview_layoutDirection>`.

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_gridview_delayRemove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GridView.delayRemove : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.

It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.

.. code:: qml

    Component {
        id: delegate
        Item {
            GridView.onRemove: SequentialAnimation {
                PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: true }
                NumberAnimation { target: wrapper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
                PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: false }
            }
        }
    }

If a :ref:`remove <sdk_qtquick_gridview_remove>` transition has been specified, it will not be applied until delayRemove is returned to ``false``.

.. _sdk_qtquick_gridview_isCurrentItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GridView.isCurrentItem : bool                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property is true if this delegate is the current item; otherwise false.

It is attached to each instance of the delegate.

.. _sdk_qtquick_gridview_view:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GridView.view : :ref:`GridView <sdk_qtquick_gridview>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate and also to the header, the footer and the highlight delegates.

.. code:: qml

    GridView {
        width: 300; height: 200
        cellWidth: 80; cellHeight: 80
        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 80
                height: 80
                color: GridView.isCurrentItem ? "black" : "red"
                Text {
                    id: contactInfo
                    text: name + ": " + number
                    color: wrapper.GridView.isCurrentItem ? "red" : "black"
                }
            }
        }
        model: ContactModel {}
        delegate: contactsDelegate
        focus: true
    }

Attached Signal Documentation
-----------------------------

.. _sdk_qtquick_gridview_add1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add()                                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached signal is emitted immediately after an item is added to the view.

The corresponding handler is ``onAdd``.

.. _sdk_qtquick_gridview_remove1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| remove()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached signal is emitted immediately before an item is removed from the view.

If a :ref:`remove <sdk_qtquick_gridview_remove>` transition has been specified, it is applied after this signal is handled, providing that :ref:`delayRemove <sdk_qtquick_gridview_delayRemove>` is false.

The corresponding handler is ``onRemove``.

Method Documentation
--------------------

.. _sdk_qtquick_gridview_forceLayout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| forceLayout()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  has not caught up yet.

This method forces the `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  to immediately respond to any outstanding changes in the model.

**Note**: methods should only be called after the Component has completed.

This QML method was introduced in Qt 5.1.

.. _sdk_qtquick_gridview_indexAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int indexAt(int *x*, int *y*)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the index of the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible -1 is returned.

If the item is outside the visible area, -1 is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Item <sdk_qtquick_item>` itemAt(int *x*, int *y*)                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible null is returned.

If the item is outside the visible area, null is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_moveCurrentIndexDown:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCurrentIndexDown()                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Move the :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` down one item in the view. The current index will wrap if :ref:`keyNavigationWraps <sdk_qtquick_gridview_keyNavigationWraps>` is true and it is currently at the end. This method has no effect if the :ref:`count <sdk_qtquick_gridview_count>` is zero.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_moveCurrentIndexLeft:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCurrentIndexLeft()                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Move the :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` left one item in the view. The current index will wrap if :ref:`keyNavigationWraps <sdk_qtquick_gridview_keyNavigationWraps>` is true and it is currently at the end. This method has no effect if the :ref:`count <sdk_qtquick_gridview_count>` is zero.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_moveCurrentIndexRight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCurrentIndexRight()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Move the :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` right one item in the view. The current index will wrap if :ref:`keyNavigationWraps <sdk_qtquick_gridview_keyNavigationWraps>` is true and it is currently at the end. This method has no effect if the :ref:`count <sdk_qtquick_gridview_count>` is zero.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_moveCurrentIndexUp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| moveCurrentIndexUp()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Move the :ref:`currentIndex <sdk_qtquick_gridview_currentIndex>` up one item in the view. The current index will wrap if :ref:`keyNavigationWraps <sdk_qtquick_gridview_keyNavigationWraps>` is true and it is currently at the end. This method has no effect if the :ref:`count <sdk_qtquick_gridview_count>` is zero.

**Note**: methods should only be called after the Component has completed.

.. _sdk_qtquick_gridview_positionViewAtBeginning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionViewAtBeginning()                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use :ref:`contentX <sdk_qtquick_flickable_contentX>` or :ref:`contentY <sdk_qtquick_flickable_contentY>` to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

.. code:: cpp

    Component.onCompleted: positionViewAtEnd()

.. _sdk_qtquick_gridview_positionViewAtEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionViewAtEnd()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use :ref:`contentX <sdk_qtquick_flickable_contentX>` or :ref:`contentY <sdk_qtquick_flickable_contentY>` to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

.. code:: cpp

    Component.onCompleted: positionViewAtEnd()

.. _sdk_qtquick_gridview_positionViewAtIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionViewAtIndex(int *index*, PositionMode *mode*)                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Positions the view such that the *index* is at the position specified by *mode*:

-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .Beginning - position item at the top (or left for ``GridView.FlowTopToBottom`` flow) of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .Center - position item in the center of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .End - position item at bottom (or right for horizontal orientation) of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .Visible - if any part of the item is visible then take no action, otherwise bring the item into view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for ``GridView.FlowTopToBottom`` flow) of the view.
-  `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ .SnapPosition - position the item at :ref:`preferredHighlightBegin <sdk_qtquick_gridview_preferredHighlightBegin>`. This mode is only valid if :ref:`highlightRangeMode <sdk_qtquick_gridview_highlightRangeMode>` is StrictlyEnforceRange or snapping is enabled via :ref:`snapMode <sdk_qtquick_gridview_snapMode>`.

If positioning the view at the index would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.

It is not recommended to use :ref:`contentX <sdk_qtquick_flickable_contentX>` or :ref:`contentY <sdk_qtquick_flickable_contentY>` to position the view at a particular index. This is unreliable since removing items from the start of the view does not cause all other items to be repositioned. The correct way to bring an item into view is with ``positionViewAtIndex``.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

.. code:: cpp

    Component.onCompleted: positionViewAtIndex(count - 1, GridView.Beginning)

