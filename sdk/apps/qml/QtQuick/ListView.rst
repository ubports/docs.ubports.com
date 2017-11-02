.. _sdk_qtquick_listview:
QtQuick ListView
================

Provides a list view of items provided by a model

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Flickable <sdk_qtquick_flickable>`_ |
|                                      | _                                    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_listview_add-prop>` : Transition
-  :ref:`addDisplaced <sdk_qtquick_listview_addDisplaced-prop>` :
   Transition
-  :ref:`cacheBuffer <sdk_qtquick_listview_cacheBuffer-prop>` : int
-  :ref:`count <sdk_qtquick_listview_count-prop>` : int
-  :ref:`currentIndex <sdk_qtquick_listview_currentIndex-prop>` :
   int
-  :ref:`currentItem <sdk_qtquick_listview_currentItem-prop>` :
   Item
-  :ref:`currentSection <sdk_qtquick_listview_currentSection-prop>`
   : string
-  :ref:`delegate <sdk_qtquick_listview_delegate-prop>` : Component
-  :ref:`displaced <sdk_qtquick_listview_displaced-prop>` :
   Transition
-  :ref:`displayMarginBeginning <sdk_qtquick_listview_displayMarginBeginning-prop>`
   : int
-  :ref:`displayMarginEnd <sdk_qtquick_listview_displayMarginEnd-prop>`
   : int
-  :ref:`effectiveLayoutDirection <sdk_qtquick_listview_effectiveLayoutDirection-prop>`
   : enumeration
-  :ref:`footer <sdk_qtquick_listview_footer-prop>` : Component
-  :ref:`footerItem <sdk_qtquick_listview_footerItem-prop>` : Item
-  :ref:`footerPositioning <sdk_qtquick_listview_footerPositioning-prop>`
   : enumeration
-  :ref:`header <sdk_qtquick_listview_header-prop>` : Component
-  :ref:`headerItem <sdk_qtquick_listview_headerItem-prop>` : Item
-  :ref:`headerPositioning <sdk_qtquick_listview_headerPositioning-prop>`
   : enumeration
-  :ref:`highlight <sdk_qtquick_listview_highlight-prop>` :
   Component
-  :ref:`highlightFollowsCurrentItem <sdk_qtquick_listview_highlightFollowsCurrentItem-prop>`
   : bool
-  :ref:`highlightItem <sdk_qtquick_listview_highlightItem-prop>` :
   Item
-  :ref:`highlightMoveDuration <sdk_qtquick_listview_highlightMoveDuration-prop>`
   : int
-  :ref:`highlightMoveVelocity <sdk_qtquick_listview_highlightMoveVelocity-prop>`
   : real
-  :ref:`highlightRangeMode <sdk_qtquick_listview_highlightRangeMode-prop>`
   : enumeration
-  :ref:`highlightResizeDuration <sdk_qtquick_listview_highlightResizeDuration-prop>`
   : int
-  :ref:`highlightResizeVelocity <sdk_qtquick_listview_highlightResizeVelocity-prop>`
   : real
-  :ref:`keyNavigationWraps <sdk_qtquick_listview_keyNavigationWraps-prop>`
   : bool
-  :ref:`layoutDirection <sdk_qtquick_listview_layoutDirection-prop>`
   : enumeration
-  :ref:`model <sdk_qtquick_listview_model-prop>` : model
-  :ref:`move <sdk_qtquick_listview_move-prop>` : Transition
-  :ref:`moveDisplaced <sdk_qtquick_listview_moveDisplaced-prop>` :
   Transition
-  :ref:`orientation <sdk_qtquick_listview_orientation-prop>` :
   enumeration
-  :ref:`populate <sdk_qtquick_listview_populate-prop>` :
   Transition
-  :ref:`preferredHighlightBegin <sdk_qtquick_listview_preferredHighlightBegin-prop>`
   : real
-  :ref:`preferredHighlightEnd <sdk_qtquick_listview_preferredHighlightEnd-prop>`
   : real
-  :ref:`remove <sdk_qtquick_listview_remove-prop>` : Transition
-  :ref:`removeDisplaced <sdk_qtquick_listview_removeDisplaced-prop>`
   : Transition
-  :ref:`section <sdk_qtquick_listview_section-prop>`

   -  :ref:`section.property <sdk_qtquick_listview_section.property-prop>`
      : string
   -  :ref:`section.criteria <sdk_qtquick_listview_section.criteria-prop>`
      : enumeration
   -  :ref:`section.delegate <sdk_qtquick_listview_section.delegate-prop>`
      : Component
   -  :ref:`section.labelPositioning <sdk_qtquick_listview_section.labelPositioning-prop>`
      : enumeration

-  :ref:`snapMode <sdk_qtquick_listview_snapMode-prop>` :
   enumeration
-  :ref:`spacing <sdk_qtquick_listview_spacing-prop>` : real
-  :ref:`verticalLayoutDirection <sdk_qtquick_listview_verticalLayoutDirection-prop>`
   : enumeration

Attached Properties
-------------------

-  :ref:`delayRemove <sdk_qtquick_listview_delayRemove-attached-prop>`
   : bool
-  :ref:`isCurrentItem <sdk_qtquick_listview_isCurrentItem-attached-prop>`
   : bool
-  :ref:`nextSection <sdk_qtquick_listview_nextSection-attached-prop>`
   : string
-  :ref:`previousSection <sdk_qtquick_listview_previousSection-attached-prop>`
   : string
-  :ref:`section <sdk_qtquick_listview_section-attached-prop>` :
   string
-  :ref:`view <sdk_qtquick_listview_view-attached-prop>` : ListView

Attached Signals
----------------

-  :ref:`add <sdk_qtquick_listview_add-signal>`\ ()
-  :ref:`remove <sdk_qtquick_listview_remove-signal>`\ ()

Methods
-------

-  :ref:`decrementCurrentIndex <sdk_qtquick_listview_decrementCurrentIndex-method>`\ ()
-  :ref:`forceLayout <sdk_qtquick_listview_forceLayout-method>`\ ()
-  :ref:`incrementCurrentIndex <sdk_qtquick_listview_incrementCurrentIndex-method>`\ ()
-  int :ref:`indexAt <sdk_qtquick_listview_indexAt-method>`\ (int
   *x*, int *y*)
-  Item :ref:`itemAt <sdk_qtquick_listview_itemAt-method>`\ (int
   *x*, int *y*)
-  :ref:`positionViewAtBeginning <sdk_qtquick_listview_positionViewAtBeginning-method>`\ ()
-  :ref:`positionViewAtEnd <sdk_qtquick_listview_positionViewAtEnd-method>`\ ()
-  :ref:`positionViewAtIndex <sdk_qtquick_listview_positionViewAtIndex-method>`\ (int
   *index*, PositionMode *mode*)

Detailed Description
--------------------

A :ref:`ListView <sdk_qtquick_listview>` displays data from models created
from built-in QML types like
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ 
and
`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ ,
or custom model classes defined in C++ that inherit from
`QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ 
or QAbstractListModel.

A :ref:`ListView <sdk_qtquick_listview>` has a
:ref:`model <sdk_qtquick_listview#model-prop>`, which defines the data to
be displayed, and a :ref:`delegate <sdk_qtquick_listview#delegate-prop>`,
which defines how the data should be displayed. Items in a
:ref:`ListView <sdk_qtquick_listview>` are laid out horizontally or
vertically. List views are inherently flickable because
:ref:`ListView <sdk_qtquick_listview>` inherits from
`Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ .

Example Usage
-------------

The following example shows the definition of a simple list model
defined in a file called ``ContactModel.qml``:

.. code:: qml

    import QtQuick 2.0
    ListModel {
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
        }
        ListElement {
            name: "Sam Wise"
            number: "555 0473"
        }
    }

Another component can display this model data in a
:ref:`ListView <sdk_qtquick_listview>`, like this:

.. code:: qml

    import QtQuick 2.0
    ListView {
        width: 180; height: 200
        model: ContactModel {}
        delegate: Text {
            text: name + ": " + number
        }
    }

|image0|

Here, the :ref:`ListView <sdk_qtquick_listview>` creates a ``ContactModel``
component for its model, and a
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  item for its
delegate. The view will create a new
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  component
for each item in the model. Notice the delegate is able to access the
model's ``name`` and ``number`` data directly.

An improved list view is shown below. The delegate is visually improved
and is moved into a separate ``contactDelegate`` component.

.. code:: qml

    Rectangle {
        width: 180; height: 200
        Component {
            id: contactDelegate
            Item {
                width: 180; height: 40
                Column {
                    Text { text: '<b>Name:</b> ' + name }
                    Text { text: '<b>Number:</b> ' + number }
                }
            }
        }
        ListView {
            anchors.fill: parent
            model: ContactModel {}
            delegate: contactDelegate
            highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }
    }

|image1|

The currently selected item is highlighted with a blue
:ref:`Rectangle <sdk_qtquick_rectangle>` using the
`highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  property, and
``focus`` is set to ``true`` to enable keyboard navigation for the list
view. The list view itself is a focus scope (see `Keyboard Focus in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  for more details).

Delegates are instantiated as needed and may be destroyed at any time.
They are parented to :ref:`ListView <sdk_qtquick_listview>`'s
:ref:`contentItem <sdk_qtquick_flickable#contentItem-prop>`, not to the
view itself. State should *never* be stored in a delegate.

:ref:`ListView <sdk_qtquick_listview>` attaches a number of properties to
the root item of the delegate, for example ``ListView:isCurrentItem``.
In the following example, the root delegate item can access this
attached property directly as ``ListView.isCurrentItem``, while the
child ``contactInfo`` object must refer to this property as
``wrapper.ListView.isCurrentItem``.

.. code:: qml

    ListView {
        width: 180; height: 200
        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 180
                height: contactInfo.height
                color: ListView.isCurrentItem ? "black" : "red"
                Text {
                    id: contactInfo
                    text: name + ": " + number
                    color: wrapper.ListView.isCurrentItem ? "red" : "black"
                }
            }
        }
        model: ContactModel {}
        delegate: contactsDelegate
        focus: true
    }

**Note:** Views do not enable *clip* automatically. If the view is not
clipped by another item or the screen, it will be necessary to set
*clip: true* in order to have the out of view items clipped nicely.

ListView Layouts
----------------

The layout of the items in a :ref:`ListView <sdk_qtquick_listview>` can be
controlled by these properties:

-  :ref:`orientation <sdk_qtquick_listview#orientation-prop>` - controls
   whether items flow horizontally or vertically. This value can be
   either Qt.Horizontal or Qt.Vertical.
-  :ref:`layoutDirection <sdk_qtquick_listview#layoutDirection-prop>` -
   controls the horizontal layout direction for a horizontally-oriented
   view: that is, whether items are laid out from the left side of the
   view to the right, or vice-versa. This value can be either
   Qt.LeftToRight or Qt.RightToLeft.
-  :ref:`verticalLayoutDirection <sdk_qtquick_listview#verticalLayoutDirection-prop>`
   - controls the vertical layout direction for a vertically-oriented
   view: that is, whether items are laid out from the top of the view
   down towards the bottom of the view, or vice-versa. This value can be
   either :ref:`ListView <sdk_qtquick_listview>`.TopToBottom or
   :ref:`ListView <sdk_qtquick_listview>`.BottomToTop.

By default, a :ref:`ListView <sdk_qtquick_listview>` has a vertical
orientation, and items are laid out from top to bottom. The table below
shows the different layouts that a :ref:`ListView <sdk_qtquick_listview>`
can have, depending on the values of the properties listed above.

**ListViews** with Qt.Vertical orientation
Top to bottom
|image2|

Bottom to top
|image3|

**ListViews** with Qt.Horizontal orientation
Left to right
|image4|

Right to left
|image5|

**See also** `QML Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ ,
`GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_ ,
:ref:`PathView <sdk_qtquick_pathview>`, and `Qt Quick Examples -
Views </sdk/apps/qml/QtQuick/views/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ add : `Transition <sdk_qtquick_transition>`                |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items that are added to
the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        add: Transition {
            NumberAnimation { properties: "x,y"; from: 100; duration: 1000 }
        }
    }

Whenever an item is added to the above view, the item will be animated
from the position (100,100) to its final x,y position within the view,
over one second. The transition only applies to the new items that are
added to the view; it does not apply to the items below that are
displaced by the addition of the new items. To animate the displaced
items, set the :ref:`displaced <sdk_qtquick_listview#displaced-prop>` or
:ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>` properties.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**Note:** This transition is not applied to the items that are created
when the view is initially populated, or when the view's
:ref:`model <sdk_qtquick_listview#model-prop>` changes. (In those cases,
the :ref:`populate <sdk_qtquick_listview#populate-prop>` transition is
applied instead.) Additionally, this transition should *not* animate the
height of the new item; doing so will cause any items beneath the new
item to be laid out at the wrong position. Instead, the height can be
animated within the onAdd handler in the delegate.

**See also** :ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`,
:ref:`populate <sdk_qtquick_listview#populate-prop>`, and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ addDisplaced : `Transition <sdk_qtquick_transition>`       |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items within the view
that are displaced by the addition of other items to the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        addDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever an item is added to the above view, all items beneath the new
item are displaced, causing them to move down (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one
second, as specified. This transition is not applied to the new item
that has been added to the view; to animate the added items, set the
:ref:`add <sdk_qtquick_listview#add-prop>` property.

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the addDisplaced,
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>` or
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`
transition will be applied. Additionally, if it is not necessary to
specify different transitions depending on whether an item is displaced
by an add, move or remove operation, consider setting the
:ref:`displaced <sdk_qtquick_listview#displaced-prop>` property instead.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**Note:** This transition is not applied to the items that are created
when the view is initially populated, or when the view's
:ref:`model <sdk_qtquick_listview#model-prop>` changes. In those cases, the
:ref:`populate <sdk_qtquick_listview#populate-prop>` transition is applied
instead.

**See also** :ref:`displaced <sdk_qtquick_listview#displaced-prop>`,
:ref:`add <sdk_qtquick_listview#add-prop>`,
:ref:`populate <sdk_qtquick_listview#populate-prop>`, and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_cacheBuffer-prop:

+--------------------------------------------------------------------------+
|        \ cacheBuffer : int                                               |
+--------------------------------------------------------------------------+

This property determines whether delegates are retained outside the
visible area of the view.

If this value is greater than zero, the view may keep as many delegates
instantiated as it can fit within the buffer specified. For example, if
in a vertical view the delegate is 20 pixels high and ``cacheBuffer`` is
set to 40, then up to 2 delegates above and 2 delegates below the
visible area may be created/retained. The buffered delegates are created
asynchronously, allowing creation to occur across multiple frames and
reducing the likelihood of skipping frames. In order to improve painting
performance delegates outside the visible area are not painted.

The default value of this property is platform dependent, but will
usually be a value greater than zero. Negative values are ignored.

Note that cacheBuffer is not a pixel buffer - it only maintains
additional instantiated delegates.

Setting this value can improve the smoothness of scrolling behavior at
the expense of additional memory usage. It is not a substitute for
creating efficient delegates; the fewer objects and bindings in a
delegate, the faster a view can be scrolled.

The cacheBuffer operates outside of any display margins specified by
:ref:`displayMarginBeginning <sdk_qtquick_listview#displayMarginBeginning-prop>`
or :ref:`displayMarginEnd <sdk_qtquick_listview#displayMarginEnd-prop>`.

| 

.. _sdk_qtquick_listview_count-prop:

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of items in the view.

| 

.. _sdk_qtquick_listview_currentIndex-prop:

+--------------------------------------------------------------------------+
|        \ currentIndex : int                                              |
+--------------------------------------------------------------------------+

The ``currentIndex`` property holds the index of the current item, and
``currentItem`` holds the current item. Setting the currentIndex to -1
will clear the highlight and set
:ref:`currentItem <sdk_qtquick_listview#currentItem-prop>` to null.

If
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
is ``true``, setting either of these properties will smoothly scroll the
:ref:`ListView <sdk_qtquick_listview>` so that the current item becomes
visible.

Note that the position of the current item may only be approximate until
it becomes visible in the view.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ currentItem : `Item <sdk_qtquick_item>`                    |
+--------------------------------------------------------------------------+

The ``currentIndex`` property holds the index of the current item, and
``currentItem`` holds the current item. Setting the
:ref:`currentIndex <sdk_qtquick_listview#currentIndex-prop>` to -1 will
clear the highlight and set currentItem to null.

If
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
is ``true``, setting either of these properties will smoothly scroll the
:ref:`ListView <sdk_qtquick_listview>` so that the current item becomes
visible.

Note that the position of the current item may only be approximate until
it becomes visible in the view.

| 

.. _sdk_qtquick_listview_currentSection-prop:

+--------------------------------------------------------------------------+
|        \ currentSection : string                                         |
+--------------------------------------------------------------------------+

This property holds the section that is currently at the beginning of
the view.

| 

.. _sdk_qtquick_listview_delegate-prop:

+--------------------------------------------------------------------------+
|        \ delegate : Component                                            |
+--------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the
view. The index is exposed as an accessible ``index`` property.
Properties of the model are also available depending upon the type of
`Data
Model </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

The number of objects and bindings in the delegate has a direct effect
on the flicking performance of the view. If at all possible, place
functionality that is not needed for the normal display of the delegate
in a :ref:`Loader <sdk_qtquick_loader>` which can load additional
components when needed.

The :ref:`ListView <sdk_qtquick_listview>` will lay out the items based on
the size of the root item in the delegate.

It is recommended that the delegate's size be a whole number to avoid
sub-pixel alignment of items.

The default stacking order of delegate instances is ``1``.

**Note:** Delegates are instantiated as needed and may be destroyed at
any time. They are parented to :ref:`ListView <sdk_qtquick_listview>`'s
:ref:`contentItem <sdk_qtquick_flickable#contentItem-prop>`, not to the
view itself. State should *never* be stored in a delegate.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ displaced : `Transition <sdk_qtquick_transition>`          |
+--------------------------------------------------------------------------+

This property holds the generic transition to apply to items that have
been displaced by any model operation that affects the view.

This is a convenience for specifying the generic transition to be
applied to any items that are displaced by an add, move or remove
operation, without having to specify the individual
:ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`,
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>` and
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`
properties. For example, here is a view that specifies a displaced
transition:

.. code:: cpp

    ListView {
        ...
        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

When any item is added, moved or removed within the above view, the
items below it are displaced, causing them to move down (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one
second, as specified.

If a view specifies this generic displaced transition as well as a
specific :ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`,
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>` or
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`
transition, the more specific transition will be used instead of the
generic displaced transition when the relevant operation occurs,
providing that the more specific transition has not been disabled (by
setting :ref:`enabled <sdk_qtquick_transition#enabled-prop>` to false). If
it has indeed been disabled, the generic displaced transition is applied
instead.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`,
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>`,
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`, and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_displayMarginBeginning-prop:

+--------------------------------------------------------------------------+
|        \ displayMarginBeginning : int                                    |
+--------------------------------------------------------------------------+

This property allows delegates to be displayed outside of the view
geometry.

If this value is non-zero, the view will create extra delegates before
the start of the view, or after the end. The view will create as many
delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high and
``displayMarginBeginning`` and ``displayMarginEnd`` are both set to 40,
then 2 delegates above and 2 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not
as a performance optimization. If you wish to create delegates outside
of the view geometry for performance reasons, you probably want to use
the :ref:`cacheBuffer <sdk_qtquick_listview#cacheBuffer-prop>` property
instead.

This QML property was introduced in QtQuick 2.3.

| 

.. _sdk_qtquick_listview_displayMarginEnd-prop:

+--------------------------------------------------------------------------+
|        \ displayMarginEnd : int                                          |
+--------------------------------------------------------------------------+

This property allows delegates to be displayed outside of the view
geometry.

If this value is non-zero, the view will create extra delegates before
the start of the view, or after the end. The view will create as many
delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high and
``displayMarginBeginning`` and ``displayMarginEnd`` are both set to 40,
then 2 delegates above and 2 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not
as a performance optimization. If you wish to create delegates outside
of the view geometry for performance reasons, you probably want to use
the :ref:`cacheBuffer <sdk_qtquick_listview#cacheBuffer-prop>` property
instead.

This QML property was introduced in QtQuick 2.3.

| 

.. _sdk_qtquick_listview_effectiveLayoutDirection-prop:

+--------------------------------------------------------------------------+
|        \ effectiveLayoutDirection : enumeration                          |
+--------------------------------------------------------------------------+

This property holds the effective layout direction of a
horizontally-oriented list.

When using the attached property
:ref:`LayoutMirroring::enabled <sdk_qtquick_layoutmirroring#enabled-prop>`
for locale layouts, the visual layout direction of the horizontal list
will be mirrored. However, the property
:ref:`layoutDirection <sdk_qtquick_listview#layoutDirection-prop>` will
remain unchanged.

**See also**
:ref:`ListView::layoutDirection <sdk_qtquick_listview#layoutDirection-prop>`
and :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>`.

| 

.. _sdk_qtquick_listview_footer-prop:

+--------------------------------------------------------------------------+
|        \ footer : Component                                              |
+--------------------------------------------------------------------------+

This property holds the component to use as the footer.

An instance of the footer component is created for each view. The footer
is positioned at the end of the view, after any items. The default
stacking order of the footer is ``1``.

**See also** :ref:`header <sdk_qtquick_listview#header-prop>` and
:ref:`footerItem <sdk_qtquick_listview#footerItem-prop>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ footerItem : `Item <sdk_qtquick_item>`                     |
+--------------------------------------------------------------------------+

This holds the footer item created from the
:ref:`footer <sdk_qtquick_listview#footer-prop>` component.

An instance of the footer component is created for each view. The footer
is positioned at the end of the view, after any items. The default
stacking order of the footer is ``1``.

**See also** :ref:`footer <sdk_qtquick_listview#footer-prop>` and
:ref:`headerItem <sdk_qtquick_listview#headerItem-prop>`.

| 

.. _sdk_qtquick_listview_footerPositioning-prop:

+--------------------------------------------------------------------------+
|        \ footerPositioning : enumeration                                 |
+--------------------------------------------------------------------------+

This property determines the positioning of the `footer
item <sdk_qtquick_listview#footerItem-prop>:ref:`.

The possible values are:

-  :ref:`ListView <sdk_qtquick_listview>`.InlineFooter (default) - the
   footer is positioned in the end of the content and moves together
   with the content like an ordinary item.
-  :ref:`ListView <sdk_qtquick_listview>`.OverlayFooter - the footer is
   positioned in the end of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.PullBackFooter - the footer is
   positioned in the end of the view. The footer can be pushed away by
   moving the content backwards, and pulled back by moving the content
   forwards.

This QML property was introduced in Qt 5.4.

| 

.. _sdk_qtquick_listview_header-prop:

+--------------------------------------------------------------------------+
|        \ header : Component                                              |
+--------------------------------------------------------------------------+

This property holds the component to use as the header.

An instance of the header component is created for each view. The header
is positioned at the beginning of the view, before any items. The
default stacking order of the header is ``1``.

**See also** :ref:`footer <sdk_qtquick_listview#footer-prop>` and
:ref:`headerItem <sdk_qtquick_listview#headerItem-prop>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ headerItem : `Item <sdk_qtquick_item>`                     |
+--------------------------------------------------------------------------+

This holds the header item created from the
:ref:`header <sdk_qtquick_listview#header-prop>` component.

An instance of the header component is created for each view. The header
is positioned at the beginning of the view, before any items. The
default stacking order of the header is ``1``.

**See also** :ref:`header <sdk_qtquick_listview#header-prop>` and
:ref:`footerItem <sdk_qtquick_listview#footerItem-prop>`.

| 

.. _sdk_qtquick_listview_headerPositioning-prop:

+--------------------------------------------------------------------------+
|        \ headerPositioning : enumeration                                 |
+--------------------------------------------------------------------------+

This property determines the positioning of the `header
item <sdk_qtquick_listview#headerItem-prop>:ref:`.

The possible values are:

-  :ref:`ListView <sdk_qtquick_listview>`.InlineHeader (default) - the
   header is positioned in the beginning of the content and moves
   together with the content like an ordinary item.
-  :ref:`ListView <sdk_qtquick_listview>`.OverlayHeader - the header is
   positioned in the beginning of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.PullBackHeader - the header is
   positioned in the beginning of the view. The header can be pushed
   away by moving the content forwards, and pulled back by moving the
   content backwards.

This QML property was introduced in Qt 5.4.

| 

.. _sdk_qtquick_listview_highlight-prop:

+--------------------------------------------------------------------------+
|        \ highlight : Component                                           |
+--------------------------------------------------------------------------+

This property holds the component to use as the highlight.

An instance of the highlight component is created for each list. The
geometry of the resulting component instance is managed by the list so
as to stay with the current item, unless the highlightFollowsCurrentItem
property is false. The default stacking order of the highlight item is
``0``.

**See also**
:ref:`highlightItem <sdk_qtquick_listview#highlightItem-prop>`,
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`,
and `ListView highlight
example </sdk/apps/qml/QtQuick/views/#highlight>`_ .

| 

.. _sdk_qtquick_listview_highlightFollowsCurrentItem-prop:

+--------------------------------------------------------------------------+
|        \ highlightFollowsCurrentItem : bool                              |
+--------------------------------------------------------------------------+

This property holds whether the highlight is managed by the view.

If this property is true (the default value), the highlight is moved
smoothly to follow the current item. Otherwise, the highlight is not
moved by the view, and any movement must be implemented by the
highlight.

Here is a highlight with its motion defined by a
:ref:`SpringAnimation <sdk_qtquick_springanimation>` item:

.. code:: qml

    Component {
        id: highlight
        Rectangle {
            width: 180; height: 40
            color: "lightsteelblue"; radius: 5
            y: list.currentItem.y
            Behavior on y {
                SpringAnimation {
                    spring: 3
                    damping: 0.2
                }
            }
        }
    }
    ListView {
        id: list
        width: 180; height: 200
        model: ContactModel {}
        delegate: Text { text: name }
        highlight: highlight
        highlightFollowsCurrentItem: false
        focus: true
    }

Note that the highlight animation also affects the way that the view is
scrolled. This is because the view moves to maintain the highlight
within the preferred highlight range (or visible viewport).

**See also** `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  and
:ref:`highlightMoveVelocity <sdk_qtquick_listview#highlightMoveVelocity-prop>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ highlightItem : `Item <sdk_qtquick_item>`                  |
+--------------------------------------------------------------------------+

This holds the highlight item created from the
`highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  component.

The ``highlightItem`` is managed by the view unless
highlightFollowsCurrentItem is set to false. The default stacking order
of the highlight item is ``0``.

**See also** `highlight </sdk/apps/qml/QtQuick/views/#highlight>`_  and
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`.

| 

.. _sdk_qtquick_listview_highlightMoveDuration-prop:

+--------------------------------------------------------------------------+
|        \ highlightMoveDuration : int                                     |
+--------------------------------------------------------------------------+

These properties control the speed of the move and resize animations for
the highlight delegate.

:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

These properties have the same characteristics as a
:ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.

**See also**
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`.

| 

.. _sdk_qtquick_listview_highlightMoveVelocity-prop:

+--------------------------------------------------------------------------+
|        \ highlightMoveVelocity : real                                    |
+--------------------------------------------------------------------------+

These properties control the speed of the move and resize animations for
the highlight delegate.

:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

These properties have the same characteristics as a
:ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.

**See also**
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`.

| 

.. _sdk_qtquick_listview_highlightRangeMode-prop:

+--------------------------------------------------------------------------+
|        \ highlightRangeMode : enumeration                                |
+--------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the
current item) within the view. The ``preferredHighlightBegin`` value
must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the
top and bottom coordinates of where the middle item would be. If the
``currentItem`` is changed programmatically, the list will automatically
scroll so that the current item is in the middle of the view.
Furthermore, the behavior of the current item index will occur whether
or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  :ref:`ListView <sdk_qtquick_listview>`.ApplyRange - the view attempts to
   maintain the highlight within the range. However, the highlight can
   move outside of the range at the ends of the list or due to mouse
   interaction.
-  :ref:`ListView <sdk_qtquick_listview>`.StrictlyEnforceRange - the
   highlight never moves outside of the range. The current item changes
   if a keyboard or mouse action would cause the highlight to move
   outside of the range.
-  :ref:`ListView <sdk_qtquick_listview>`.NoHighlightRange - this is the
   default value.

| 

.. _sdk_qtquick_listview_highlightResizeDuration-prop:

+--------------------------------------------------------------------------+
|        \ highlightResizeDuration : int                                   |
+--------------------------------------------------------------------------+

These properties control the speed of the move and resize animations for
the highlight delegate.

:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

These properties have the same characteristics as a
:ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.

**See also**
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`.

| 

.. _sdk_qtquick_listview_highlightResizeVelocity-prop:

+--------------------------------------------------------------------------+
|        \ highlightResizeVelocity : real                                  |
+--------------------------------------------------------------------------+

These properties control the speed of the move and resize animations for
the highlight delegate.

:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`
must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The
default value for the duration properties is -1, i.e. the highlight will
take as much time as necessary to move at the set speed.

These properties have the same characteristics as a
:ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>`.

**See also**
:ref:`highlightFollowsCurrentItem <sdk_qtquick_listview#highlightFollowsCurrentItem-prop>`.

| 

.. _sdk_qtquick_listview_keyNavigationWraps-prop:

+--------------------------------------------------------------------------+
|        \ keyNavigationWraps : bool                                       |
+--------------------------------------------------------------------------+

This property holds whether the list wraps key navigation.

If this is true, key navigation that would move the current item
selection past the end of the list instead wraps around and moves the
selection to the start of the list, and vice-versa.

By default, key navigation is not wrapped.

| 

.. _sdk_qtquick_listview_layoutDirection-prop:

+--------------------------------------------------------------------------+
|        \ layoutDirection : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the layout direction of a horizontally-oriented
list.

Possible values:

-  Qt.LeftToRight (default) - Items will be laid out from left to right.
-  Qt.RightToLeft - Items will be laid out from right to let.

Setting this property has no effect if the
:ref:`orientation <sdk_qtquick_listview#orientation-prop>` is Qt.Vertical.

**See also**
:ref:`ListView::effectiveLayoutDirection <sdk_qtquick_listview#effectiveLayoutDirection-prop>`
and
:ref:`ListView::verticalLayoutDirection <sdk_qtquick_listview#verticalLayoutDirection-prop>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ model : `model <sdk_qtquick_listview#model-prop>`          |
+--------------------------------------------------------------------------+

This property holds the model providing data for the list.

The model provides the set of data that is used to create the items in
the view. Models can be created directly in QML using
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ ,
`XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_ 
or
`VisualItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#visualitemmodel>`_ ,
or provided by C++ model classes. If a C++ model class is used, it must
be a subclass of
`QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ 
or a simple list.

**See also** `Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ move : `Transition <sdk_qtquick_transition>`               |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items in the view that
are being moved due to a move operation in the view's
:ref:`model <sdk_qtquick_listview#model-prop>`.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        move: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever the :ref:`model <sdk_qtquick_listview#model-prop>` performs a move
operation to move a particular set of indexes, the respective items in
the view will be animated to their new positions in the view over one
second. The transition only applies to the items that are the subject of
the move operation in the model; it does not apply to items below them
that are displaced by the move operation. To animate the displaced
items, set the :ref:`displaced <sdk_qtquick_listview#displaced-prop>` or
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>` properties.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>`
and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ moveDisplaced : `Transition <sdk_qtquick_transition>`      |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items that are displaced
by a move operation in the view's
:ref:`model <sdk_qtquick_listview#model-prop>`.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        moveDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever the :ref:`model <sdk_qtquick_listview#model-prop>` performs a move
operation to move a particular set of indexes, the items between the
source and destination indexes of the move operation are displaced,
causing them to move upwards or downwards (or sideways, if horizontally
orientated) within the view. As this displacement occurs, the items'
movement to their new x,y positions within the view will be animated by
a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one second, as
specified. This transition is not applied to the items that are the
actual subjects of the move operation; to animate the moved items, set
the :ref:`move <sdk_qtquick_listview#move-prop>` property.

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the
:ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`, moveDisplaced
or :ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`
transition will be applied. Additionally, if it is not necessary to
specify different transitions depending on whether an item is displaced
by an add, move or remove operation, consider setting the
:ref:`displaced <sdk_qtquick_listview#displaced-prop>` property instead.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`displaced <sdk_qtquick_listview#displaced-prop>`,
:ref:`move <sdk_qtquick_listview#move-prop>`, and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_orientation-prop:

+--------------------------------------------------------------------------+
|        \ orientation : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the orientation of the list.

Possible values:

-  :ref:`ListView <sdk_qtquick_listview>`.Horizontal - Items are laid out
   horizontally
-  :ref:`ListView <sdk_qtquick_listview>`.Vertical (default) - Items are
   laid out vertically

.. _sdk_qtquick_listview_Horizontal orientation-prop:

+--------------------------------------------------------------------------+
| Horizontal orientation:                                                  |
.. _sdk_qtquick_listview_Vertical orientation-prop:
| |image6|                                                                 |
+--------------------------------------------------------------------------+
| Vertical orientation:                                                    |
| |image7|                                                                 |
+--------------------------------------------------------------------------+

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ populate : `Transition <sdk_qtquick_transition>`           |
+--------------------------------------------------------------------------+

This property holds the transition to apply to the items that are
initially created for a view.

It is applied to all items that are created when:

-  The view is first created
-  The view's :ref:`model <sdk_qtquick_listview#model-prop>` changes
-  The view's :ref:`model <sdk_qtquick_listview#model-prop>` is reset, if
   the model is a
   `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ 
   subclass

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        populate: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

When the view is initialized, the view will create all the necessary
items for the view, then animate them to their correct positions within
the view over one second.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`add <sdk_qtquick_listview#add-prop>` and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_preferredHighlightBegin-prop:

+--------------------------------------------------------------------------+
|        \ preferredHighlightBegin : real                                  |
+--------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the
current item) within the view. The ``preferredHighlightBegin`` value
must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the
top and bottom coordinates of where the middle item would be. If the
``currentItem`` is changed programmatically, the list will automatically
scroll so that the current item is in the middle of the view.
Furthermore, the behavior of the current item index will occur whether
or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  :ref:`ListView <sdk_qtquick_listview>`.ApplyRange - the view attempts to
   maintain the highlight within the range. However, the highlight can
   move outside of the range at the ends of the list or due to mouse
   interaction.
-  :ref:`ListView <sdk_qtquick_listview>`.StrictlyEnforceRange - the
   highlight never moves outside of the range. The current item changes
   if a keyboard or mouse action would cause the highlight to move
   outside of the range.
-  :ref:`ListView <sdk_qtquick_listview>`.NoHighlightRange - this is the
   default value.

| 

.. _sdk_qtquick_listview_preferredHighlightEnd-prop:

+--------------------------------------------------------------------------+
|        \ preferredHighlightEnd : real                                    |
+--------------------------------------------------------------------------+

These properties define the preferred range of the highlight (for the
current item) within the view. The ``preferredHighlightBegin`` value
must be less than the ``preferredHighlightEnd`` value.

These properties affect the position of the current item when the list
is scrolled. For example, if the currently selected item should stay in
the middle of the list when the view is scrolled, set the
``preferredHighlightBegin`` and ``preferredHighlightEnd`` values to the
top and bottom coordinates of where the middle item would be. If the
``currentItem`` is changed programmatically, the list will automatically
scroll so that the current item is in the middle of the view.
Furthermore, the behavior of the current item index will occur whether
or not a highlight exists.

Valid values for ``highlightRangeMode`` are:

-  :ref:`ListView <sdk_qtquick_listview>`.ApplyRange - the view attempts to
   maintain the highlight within the range. However, the highlight can
   move outside of the range at the ends of the list or due to mouse
   interaction.
-  :ref:`ListView <sdk_qtquick_listview>`.StrictlyEnforceRange - the
   highlight never moves outside of the range. The current item changes
   if a keyboard or mouse action would cause the highlight to move
   outside of the range.
-  :ref:`ListView <sdk_qtquick_listview>`.NoHighlightRange - this is the
   default value.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ remove : `Transition <sdk_qtquick_transition>`             |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items that are removed
from the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        remove: Transition {
            ParallelAnimation {
                NumberAnimation { property: "opacity"; to: 0; duration: 1000 }
                NumberAnimation { properties: "x,y"; to: 100; duration: 1000 }
            }
        }
    }

Whenever an item is removed from the above view, the item will be
animated to the position (100,100) over one second, and in parallel will
also change its opacity to 0. The transition only applies to the items
that are removed from the view; it does not apply to the items below
them that are displaced by the removal of the items. To animate the
displaced items, set the
:ref:`displaced <sdk_qtquick_listview#displaced-prop>` or
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>`
properties.

Note that by the time the transition is applied, the item has already
been removed from the model; any references to the model data for the
removed index will not be valid.

Additionally, if the
:ref:`delayRemove <sdk_qtquick_listview#delayRemove-attached-prop>`
attached property has been set for a delegate item, the remove
transition will not be applied until
:ref:`delayRemove <sdk_qtquick_listview#delayRemove-attached-prop>` becomes
false again.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also**
:ref:`removeDisplaced <sdk_qtquick_listview#removeDisplaced-prop>` and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ removeDisplaced : `Transition <sdk_qtquick_transition>`    |
+--------------------------------------------------------------------------+

This property holds the transition to apply to items in the view that
are displaced by the removal of other items in the view.

For example, here is a view that specifies such a transition:

.. code:: cpp

    ListView {
        ...
        removeDisplaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    }

Whenever an item is removed from the above view, all items beneath it
are displaced, causing them to move upwards (or sideways, if
horizontally orientated) within the view. As this displacement occurs,
the items' movement to their new x,y positions within the view will be
animated by a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` over one
second, as specified. This transition is not applied to the item that
has actually been removed from the view; to animate the removed items,
set the :ref:`remove <sdk_qtquick_listview#remove-prop>` property.

If an item is displaced by multiple types of operations at the same
time, it is not defined as to whether the
:ref:`addDisplaced <sdk_qtquick_listview#addDisplaced-prop>`,
:ref:`moveDisplaced <sdk_qtquick_listview#moveDisplaced-prop>` or
removeDisplaced transition will be applied. Additionally, if it is not
necessary to specify different transitions depending on whether an item
is displaced by an add, move or remove operation, consider setting the
:ref:`displaced <sdk_qtquick_listview#displaced-prop>` property instead.

For more details and examples on how to use view transitions, see the
:ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation.

**See also** :ref:`displaced <sdk_qtquick_listview#displaced-prop>`,
:ref:`remove <sdk_qtquick_listview#remove-prop>`, and
:ref:`ViewTransition <sdk_qtquick_viewtransition>`.

| 

.. _sdk_qtquick_listview_**section group**-prop:

+--------------------------------------------------------------------------+
|        \ **section group**                                               |
+==========================================================================+
.. _sdk_qtquick_listview_section.criteria-prop:
|        \ section.property : string                                       |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_listview_section.delegate-prop:
|        \ section.criteria : enumeration                                  |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_listview_section.labelPositioning-prop:
|        \ section.delegate : Component                                    |
+--------------------------------------------------------------------------+
|        \ section.labelPositioning : enumeration                          |
+--------------------------------------------------------------------------+

These properties determine the expression to be evaluated and appearance
of the section labels.

``section.property`` holds the name of the property that is the basis of
each section.

``section.criteria`` holds the criteria for forming each section based
on ``section.property``. This value can be one of:

-  ViewSection.FullString (default) - sections are created based on the
   ``section.property`` value.
-  ViewSection.FirstCharacter - sections are created based on the first
   character of the ``section.property`` value (for example, 'A', 'B',
   'C' sections, etc. for an address book)

A case insensitive comparison is used when determining section
boundaries.

``section.delegate`` holds the delegate component for each section. The
default stacking order of section delegate instances is ``2``.

``section.labelPositioning`` determines whether the current and/or next
section labels stick to the start/end of the view, and whether the
labels are shown inline. This value can be a combination of:

-  ViewSection.InlineLabels - section labels are shown inline between
   the item delegates separating sections (default).
-  ViewSection.CurrentLabelAtStart - the current section label sticks to
   the start of the view as it is moved.
-  ViewSection.NextLabelAtEnd - the next section label (beyond all
   visible sections) sticks to the end of the view as it is moved.

   **Note:** Enabling ``ViewSection.NextLabelAtEnd`` requires the view
   to scan ahead for the next section, which has performance
   implications, especially for slower models.

Each item in the list has attached properties named
``ListView.section``, ``ListView.previousSection`` and
``ListView.nextSection``.

For example, here is a :ref:`ListView <sdk_qtquick_listview>` that displays
a list of animals, separated into sections. Each item in the
:ref:`ListView <sdk_qtquick_listview>` is placed in a different section
depending on the "size" property of the model item. The
``sectionHeading`` delegate component provides the light blue bar that
marks the beginning of each section.

.. code:: qml

        // The delegate for each section header
        Component {
            id: sectionHeading
            Rectangle {
                width: container.width
                height: childrenRect.height
                color: "lightsteelblue"
                Text {
                    text: section
                    font.bold: true
                    font.pixelSize: 20
                }
            }
        }
        ListView {
            id: view
            anchors.top: parent.top
            anchors.bottom: buttonBar.top
            width: parent.width
            model: animalsModel
            delegate: Text { text: name; font.pixelSize: 18 }
            section.property: "size"
            section.criteria: ViewSection.FullString
            section.delegate: sectionHeading
        }

|image8|

**Note:** Adding sections to a :ref:`ListView <sdk_qtquick_listview>` does
not automatically re-order the list items by the section criteria. If
the model is not ordered by section, then it is possible that the
sections created will not be unique; each boundary between differing
sections will result in a section header being created even if that
section exists elsewhere.

**See also** `ListView examples </sdk/apps/qml/QtQuick/views/>`_ .

| 

.. _sdk_qtquick_listview_snapMode-prop:

+--------------------------------------------------------------------------+
|        \ snapMode : enumeration                                          |
+--------------------------------------------------------------------------+

This property determines how the view scrolling will settle following a
drag or flick. The possible values are:

-  :ref:`ListView <sdk_qtquick_listview>`.NoSnap (default) - the view stops
   anywhere within the visible area.
-  :ref:`ListView <sdk_qtquick_listview>`.SnapToItem - the view settles
   with an item aligned with the start of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.SnapOneItem - the view settles no
   more than one item away from the first visible item at the time the
   mouse button is released. This mode is particularly useful for moving
   one page at a time.

``snapMode`` does not affect the
:ref:`currentIndex <sdk_qtquick_listview#currentIndex-prop>`. To update the
:ref:`currentIndex <sdk_qtquick_listview#currentIndex-prop>` as the list is
moved, set
:ref:`highlightRangeMode <sdk_qtquick_listview#highlightRangeMode-prop>` to
``ListView.StrictlyEnforceRange``.

**See also**
:ref:`highlightRangeMode <sdk_qtquick_listview#highlightRangeMode-prop>`.

| 

.. _sdk_qtquick_listview_spacing-prop:

+--------------------------------------------------------------------------+
|        \ spacing : real                                                  |
+--------------------------------------------------------------------------+

This property holds the spacing between items.

The default value is 0.

| 

.. _sdk_qtquick_listview_verticalLayoutDirection-prop:

+--------------------------------------------------------------------------+
|        \ verticalLayoutDirection : enumeration                           |
+--------------------------------------------------------------------------+

This property holds the layout direction of a vertically-oriented list.

Possible values:

-  :ref:`ListView <sdk_qtquick_listview>`.TopToBottom (default) - Items are
   laid out from the top of the view down to the bottom of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.BottomToTop - Items are laid out
   from the bottom of the view up to the top of the view.

Setting this property has no effect if the
:ref:`orientation <sdk_qtquick_listview#orientation-prop>` is
Qt.Horizontal.

**See also**
:ref:`ListView::layoutDirection <sdk_qtquick_listview#layoutDirection-prop>`.

| 

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_listview_ListView.delayRemove-prop:

+--------------------------------------------------------------------------+
|        \ ListView.delayRemove : bool                                     |
+--------------------------------------------------------------------------+

This attached property holds whether the delegate may be destroyed. It
is attached to each instance of the delegate. The default value is
false.

It is sometimes necessary to delay the destruction of an item until an
animation completes. The example delegate below ensures that the
animation completes before the item is removed from the list.

.. code:: qml

    Component {
        id: delegate
        Item {
            ListView.onRemove: SequentialAnimation {
                PropertyAction { target: wrapper; property: "ListView.delayRemove"; value: true }
                NumberAnimation { target: wrapper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
                PropertyAction { target: wrapper; property: "ListView.delayRemove"; value: false }
            }
        }
    }

If a :ref:`remove <sdk_qtquick_listview#remove-prop>` transition has been
specified, it will not be applied until delayRemove is returned to
``false``.

| 

.. _sdk_qtquick_listview_ListView.isCurrentItem-prop:

+--------------------------------------------------------------------------+
|        \ ListView.isCurrentItem : bool                                   |
+--------------------------------------------------------------------------+

This attached property is true if this delegate is the current item;
otherwise false.

It is attached to each instance of the delegate.

This property may be used to adjust the appearance of the current item,
for example:

.. code:: qml

    ListView {
        width: 180; height: 200
        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 180
                height: contactInfo.height
                color: ListView.isCurrentItem ? "black" : "red"
                Text {
                    id: contactInfo
                    text: name + ": " + number
                    color: wrapper.ListView.isCurrentItem ? "red" : "black"
                }
            }
        }
        model: ContactModel {}
        delegate: contactsDelegate
        focus: true
    }

| 

.. _sdk_qtquick_listview_ListView.nextSection-prop:

+--------------------------------------------------------------------------+
|        \ ListView.nextSection : string                                   |
+--------------------------------------------------------------------------+

This attached property holds the section of the next element.

It is attached to each instance of the delegate.

The section is evaluated using the
:ref:`section <sdk_qtquick_listview#section.property-prop>` properties.

| 

.. _sdk_qtquick_listview_ListView.previousSection-prop:

+--------------------------------------------------------------------------+
|        \ ListView.previousSection : string                               |
+--------------------------------------------------------------------------+

This attached property holds the section of the previous element.

It is attached to each instance of the delegate.

The section is evaluated using the
:ref:`section <sdk_qtquick_listview#section.property-prop>` properties.

| 

.. _sdk_qtquick_listview_ListView.section-prop:

+--------------------------------------------------------------------------+
|        \ ListView.section : string                                       |
+--------------------------------------------------------------------------+

This attached property holds the section of this element.

It is attached to each instance of the delegate.

The section is evaluated using the
:ref:`section <sdk_qtquick_listview#section.property-prop>` properties.

| 

.. _sdk_qtquick_listview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ ListView.view : `ListView <sdk_qtquick_listview>`          |
+--------------------------------------------------------------------------+

This attached property holds the view that manages this delegate
instance.

It is attached to each instance of the delegate and also to the header,
the footer, the section and the highlight delegates.

| 

Attached Signal Documentation
-----------------------------

.. _sdk_qtquick_listview_add-method:

+--------------------------------------------------------------------------+
|        \ add()                                                           |
+--------------------------------------------------------------------------+

This attached signal is emitted immediately after an item is added to
the view.

If an :ref:`add <sdk_qtquick_listview#add-prop>` transition is specified,
it is applied immediately after this signal is handled.

The corresponding handler is ``onAdd``.

| 

.. _sdk_qtquick_listview_remove-method:

+--------------------------------------------------------------------------+
|        \ remove()                                                        |
+--------------------------------------------------------------------------+

This attached signal is emitted immediately before an item is removed
from the view.

If a :ref:`remove <sdk_qtquick_listview#remove-prop>` transition has been
specified, it is applied after this signal is handled, providing that
:ref:`delayRemove <sdk_qtquick_listview#delayRemove-attached-prop>` is
false.

The corresponding handler is ``onRemove``.

| 

Method Documentation
--------------------

.. _sdk_qtquick_listview_decrementCurrentIndex-method:

+--------------------------------------------------------------------------+
|        \ decrementCurrentIndex()                                         |
+--------------------------------------------------------------------------+

Decrements the current index. The current index will wrap if
:ref:`keyNavigationWraps <sdk_qtquick_listview#keyNavigationWraps-prop>` is
true and it is currently at the beginning. This method has no effect if
the :ref:`count <sdk_qtquick_listview#count-prop>` is zero.

**Note**: methods should only be called after the Component has
completed.

| 

.. _sdk_qtquick_listview_forceLayout-method:

+--------------------------------------------------------------------------+
|        \ forceLayout()                                                   |
+--------------------------------------------------------------------------+

Responding to changes in the model is usually batched to happen only
once per frame. This means that inside script blocks it is possible for
the underlying model to have changed, but the
:ref:`ListView <sdk_qtquick_listview>` has not caught up yet.

This method forces the :ref:`ListView <sdk_qtquick_listview>` to
immediately respond to any outstanding changes in the model.

**Note**: methods should only be called after the Component has
completed.

This QML method was introduced in Qt 5.1.

| 

.. _sdk_qtquick_listview_incrementCurrentIndex-method:

+--------------------------------------------------------------------------+
|        \ incrementCurrentIndex()                                         |
+--------------------------------------------------------------------------+

Increments the current index. The current index will wrap if
:ref:`keyNavigationWraps <sdk_qtquick_listview#keyNavigationWraps-prop>` is
true and it is currently at the end. This method has no effect if the
:ref:`count <sdk_qtquick_listview#count-prop>` is zero.

**Note**: methods should only be called after the Component has
completed.

| 

.. _sdk_qtquick_listview_int indexAt-method:

+--------------------------------------------------------------------------+
|        \ int indexAt(int *x*, int *y*)                                   |
+--------------------------------------------------------------------------+

Returns the index of the visible item containing the point *x*, *y* in
content coordinates. If there is no item at the point specified, or the
item is not visible -1 is returned.

If the item is outside the visible area, -1 is returned, regardless of
whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has
completed.

| 

.. _sdk_qtquick_listview_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `Item <sdk_qtquick_item>` itemAt(int *x*, int *y*)            |
+--------------------------------------------------------------------------+

Returns the visible item containing the point *x*, *y* in content
coordinates. If there is no item at the point specified, or the item is
not visible null is returned.

If the item is outside the visible area, null is returned, regardless of
whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has
completed.

| 

.. _sdk_qtquick_listview_positionViewAtBeginning-method:

+--------------------------------------------------------------------------+
|        \ positionViewAtBeginning()                                       |
+--------------------------------------------------------------------------+

Positions the view at the beginning or end, taking into account any
header or footer.

It is not recommended to use
:ref:`contentX <sdk_qtquick_flickable#contentX-prop>` or
:ref:`contentY <sdk_qtquick_flickable#contentY-prop>` to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates.

**Note**: methods should only be called after the Component has
completed. To position the view at startup, this method should be called
by Component.onCompleted. For example, to position the view at the end
on startup:

.. code:: cpp

    Component.onCompleted: positionViewAtEnd()

| 

.. _sdk_qtquick_listview_positionViewAtEnd-method:

+--------------------------------------------------------------------------+
|        \ positionViewAtEnd()                                             |
+--------------------------------------------------------------------------+

Positions the view at the beginning or end, taking into account any
header or footer.

It is not recommended to use
:ref:`contentX <sdk_qtquick_flickable#contentX-prop>` or
:ref:`contentY <sdk_qtquick_flickable#contentY-prop>` to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates.

**Note**: methods should only be called after the Component has
completed. To position the view at startup, this method should be called
by Component.onCompleted. For example, to position the view at the end
on startup:

.. code:: cpp

    Component.onCompleted: positionViewAtEnd()

| 

.. _sdk_qtquick_listview_positionViewAtIndex-method:

+--------------------------------------------------------------------------+
|        \ positionViewAtIndex(int *index*, PositionMode *mode*)           |
+--------------------------------------------------------------------------+

Positions the view such that the *index* is at the position specified by
*mode*:

-  :ref:`ListView <sdk_qtquick_listview>`.Beginning - position item at the
   top (or left for horizontal orientation) of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.Center - position item in the
   center of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.End - position item at bottom (or
   right for horizontal orientation) of the view.
-  :ref:`ListView <sdk_qtquick_listview>`.Visible - if any part of the item
   is visible then take no action, otherwise bring the item into view.
-  :ref:`ListView <sdk_qtquick_listview>`.Contain - ensure the entire item
   is visible. If the item is larger than the view the item is
   positioned at the top (or left for horizontal orientation) of the
   view.
-  :ref:`ListView <sdk_qtquick_listview>`.SnapPosition - position the item
   at
   :ref:`preferredHighlightBegin <sdk_qtquick_listview#preferredHighlightBegin-prop>`.
   This mode is only valid if
   :ref:`highlightRangeMode <sdk_qtquick_listview#highlightRangeMode-prop>`
   is StrictlyEnforceRange or snapping is enabled via
   :ref:`snapMode <sdk_qtquick_listview#snapMode-prop>`.

If positioning the view at *index* would cause empty space to be
displayed at the beginning or end of the view, the view will be
positioned at the boundary.

It is not recommended to use
:ref:`contentX <sdk_qtquick_flickable#contentX-prop>` or
:ref:`contentY <sdk_qtquick_flickable#contentY-prop>` to position the view
at a particular index. This is unreliable since removing items from the
start of the list does not cause all other items to be repositioned, and
because the actual start of the view can vary based on the size of the
delegates. The correct way to bring an item into view is with
``positionViewAtIndex``.

**Note**: methods should only be called after the Component has
completed. To position the view at startup, this method should be called
by Component.onCompleted. For example, to position the view at the end:

.. code:: cpp

    Component.onCompleted: positionViewAtIndex(count - 1, ListView.Beginning)

| 

.. |image0| image:: /mediasdk_qtquick_listviewimages/listview-simple.png
.. |image1| image:: /mediasdk_qtquick_listviewimages/listview-highlight.png
.. |image2| image:: /mediasdk_qtquick_listviewimages/listview-layout-toptobottom.png
.. |image3| image:: /mediasdk_qtquick_listviewimages/listview-layout-bottomtotop.png
.. |image4| image:: /mediasdk_qtquick_listviewimages/listview-layout-lefttoright.png
.. |image5| image:: /mediasdk_qtquick_listviewimages/listview-layout-righttoleft.png
.. |image6| image:: /mediasdk_qtquick_listviewimages/ListViewHorizontal.png
.. |image7| image:: /mediasdk_qtquick_listviewimages/listview-highlight.png
.. |image8| image:: /mediasdk_qtquick_listviewimages/qml-listview-sections-example.png

