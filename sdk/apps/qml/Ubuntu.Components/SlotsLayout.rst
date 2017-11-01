The SlotsLayout component provides an easy way to layout a list of
user-interface elements horizontally following Ubuntu design standards.
We call the elements which we want to layout "slots". **Slots** is just
another name for SlotsLayout's **visual children**.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ListItemLayout </sdk/apps/qml/Ubunt |
|                                      | u.Components/ListItemLayout/>`__.    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__****
   : Item
-  ****`padding </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding-prop>`__****

   -  ****`padding.top </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.top-prop>`__****
      : real
   -  ****`padding.bottom </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.bottom-prop>`__****
      : real
   -  ****`padding.leading </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.leading-prop>`__****
      : real
   -  ****`padding.trailing </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.trailing-prop>`__****
      : real

Attached Properties
-------------------

-  ****`overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__****
   : bool
-  ****`padding </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding-attached-prop>`__****
   : QtObject
-  ****`position </sdk/apps/qml/Ubuntu.Components/SlotsLayout#position-attached-prop>`__****
   : enumeration

Detailed Description
--------------------

`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ will
layout its children according to Ubuntu's visual design rules, providing
automatic spacing and positioning (both horizontal and vertical, unless
`overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
is set) for each of them.

**If you're building list items,** we recommend to use
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__, as
it is designed to accomodate up to 3 labels that follow our UI
standards.

There are three conceptual types of slots:

-  The **leading slots**, which are the ones positioned at the beginning
   of the layout (i.e. they are the leftmost elements in left-to-right
   locales).
-  The **trailing slots**, which are positioned after
   `mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__,
   if any, or after the leading slots otherwise.
-  The **main slot**, which drives the positioning of the vertical
   dimension of each slot as described in section `Automatic vertical
   positioning of
   slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__.
   This slot sits between leading and trailing slots, and can be set
   using the property
   `mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__.

In order to comply with Ubuntu design standards, this component hosts a
maximum of 1 leading and 2 trailing slots. The layout algorithm will
ignore any additional item.

`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ also
provides a series of properties which are attached to each slot. However
not all properties are valid in all the circumstances. These properties
allow an easy tweaking of slot's positioning within the layout.
`SlotsLayout::position </sdk/apps/qml/Ubuntu.Components/SlotsLayout#position-attached-prop>`__
can be used to set whether a slot should be a leading or trailing one.
`SlotsLayout::padding </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding-attached-prop>`__
can be used to tweak the padding around a slot.
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
allows to disable the automatic positioning of the vertical coordinate
of a slot as described in `Automatic vertical positioning of
slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__,
in case a custom behaviour is needed.

The following example shows a very simple
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ with an
`Icon </sdk/apps/qml/Ubuntu.Components/Icon/>`__ as leading slot, and a
`CheckBox </sdk/apps/qml/Ubuntu.Components/CheckBox/>`__ as trailing
slot. There is no need to specify any size or margin, everything is
handled automatically by the layout component.

.. code:: qml

    SlotsLayout {
        mainSlot: Label {
            text: "Hello developers!"
        }
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
        Icon {
            name: "message"
            SlotsLayout.position: SlotsLayout.Leading;
            width: units.gu(2)
        }
    }

The positioning of each slot should only be tweaked using its attached
properties. Just like when using
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__'s Row, a
child item within the layout should not set its **x** or **anchors**
affecting the horizontal positioning (left, right, horizontalCenter,
centerIn, fill). If you need to perform these actions, consider
positioning the items without the use of a
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.

The vertical **anchors** of a slot can be modified, **provided that**
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
for that slot is set. More about this in the `Advanced layout
tweaks </sdk/apps/qml/Ubuntu.Components/SlotsLayout#advanced-layout-tweaks>`__
section.

Resizing the layout
-------------------

`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__'s
**implicit width** is by default set to the width of the parent (usually
a `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__). Changing
the width of the layout is possible but should not be needed in most of
the usecases: keeping the width in sync with the width of its parent
allows the user interface to be scalable across devices with varying
resolution and form factors.

The **implicit height** is not fixed either. In order not to clip any of
the slots, the
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ adapts to
accomodate its highest slot with padding and the padding around the
layout.

Because of the above, it is recommended to have items wrapping the
layout bind to
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__'s
**height** (adding
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ **divider**'s
height if needed), not the opposite. It is not recommended, for
instance, to use anchors.fill to force
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ to fill
another Item, because that item might not have enough space to accomdate
all the slots, and therefore the slots will be clipped.

.. code:: qml

    ListItem {
        //CORRECT
        height: layout.height + (divider.visible ? divider.height : 0)
        SlotsLayout {
            id: layout
            //WRONG
            //anchors.fill: parent
            mainSlot: Label {
                text: "Hello developers!"
            }
            CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
        }
    }

Manually resizing
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ (or
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__) is
usually not needed and we recommend to avoid it, as the component will
already take care of doing the job for you. The following example shows
what a standard
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ should
look like:

.. code:: qml

    SlotsLayout {
        mainSlot: Label {
            text: "Hello developers!"
        }
        //just an example of something inside SlotsLayout
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    }

Automatic vertical positioning of slots
---------------------------------------

In order to provide a visually pleasing and consistent layout across the
whole platform,
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__
automatically handles the vertical positioning of its slots so that they
comply with the following rules:

-  if there's any slot which is taller or as tall as
   `mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__
   or if no
   `mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__
   is defined, all slots will be **vertically centered** within the
   layout (still taking
   `SlotsLayout::padding.top </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.top-prop>`__
   and
   `SlotsLayout::padding.bottom </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.bottom-prop>`__
   into account).

   |image0|

-  **Otherwise**, all the slots (including
   `mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__)
   will be **aligned to the top** of the layout with a padding of
   `SlotsLayout::padding.top </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding.top-prop>`__
   plus the top padding of the slot, defined in its attached properties.

   |image1|

Even though it is **not recommended**, it is still possible to override
this behaviour on a slot-by-slot basis by setting
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
to true. This is described in `Advanced layout
tweaks </sdk/apps/qml/Ubuntu.Components/SlotsLayout#advanced-layout-tweaks>`__.

Input handling
--------------

The purpose of
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ is to
position its slots following the rules defined in `Automatic vertical
positioning of
slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__.
There are two recommended ways to implement input handling: the first
one, in case the target is to create a list item, is to put the
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ (or any
derived component, like
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__)
inside a `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__, and
use `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s onClicked
handler to handle clicks and taps.

.. code:: qml

    ListItem {
        height: layout.height + (divider.visible ? divider.height : 0)
        onClicked: console.log("clicked!")
        SlotsLayout {
            id: layout
            mainSlot: Label {
                text: "Hello developers!"
            }
            //just an example of something inside SlotsLayout
            CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
        }
    }

The second option is to use a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ as a wrapper around
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__, as the
following code demonstrates:

.. code:: qml

    MouseArea {
        anchors.left: parent.left
        anchors.right: parent.right
        height: layout.height
        onClicked: console.log("clicked!")
        SlotsLayout {
            id: layout
            mainSlot: Label {
                text: "Hello developers!"
            }
            //just an example of something inside SlotsLayout
            CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
        }
    }

**Note**: as recommended in `Resizing the
layout </sdk/apps/qml/Ubuntu.Components/SlotsLayout#resizing-the-layout>`__,
since `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ has
a dynamic height, it is important to have the parent item's height (in
this case `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__) follow
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__'s
**height**, and not the opposite, to avoid getting the slots clipped out
of the layout.

Advanced layout tweaks
----------------------

The automatic layout provided by
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ is
designed to cover most of the usecases. There could be times, however,
where you might want to tweak the positioning of one particular slot.

A slot can set its attached properties
`SlotsLayout::padding </sdk/apps/qml/Ubuntu.Components/SlotsLayout#padding-attached-prop>`__
and
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
to reach the desired position.

When a slot enables
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__,
it gains control over its vertical anchors (top, bottom,
verticalCenter). Moreover,
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ will
ignore the height of that slot in the following computations of its
implicitHeight (see `Resizing the
layout </sdk/apps/qml/Ubuntu.Components/SlotsLayout#resizing-the-layout>`__).

When manually positioning a slot, care must be taken to avoid pushing
the slot outside of the layout perimeter, to avoid getting it clipped.

The following example shows a
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ which has
both custom padding and a slot which uses custom vertical positioning:

.. code:: qml

    SlotsLayout {
        id: layout
        mainSlot: Label { id: label; text: "Hello developers!" }
        padding {
            top: units.gu(3)
            bottom: units.gu(3)
        }
        CheckBox {
            anchors.top: label.top
            SlotsLayout.position: SlotsLayout.Trailing
            SlotsLayout.overrideVerticalPositioning: true
        }
    }

It is also possible to sort the slots in a relative fashion, by using
positions such as
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Leading+1,
for instance, if we want that slot to always be positioned after items
with position
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Leading.
This is particularly useful, for example, when subclassing
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__-based
components which already have predefined slots inside them. If, for
instance, the component we're subclassing has a slot with position
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Trailing,
we can add a slot to our subclass with position
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Trailing-1
if we want to make sure our slot is always positioned before the one in
the component we are deriving from. This scenario is shown in the
following example code:

.. code:: qml

    //ExampleLayout.qml
    SlotsLayout {
        id: layout
        mainSlot: Label { id: label; text: "Hello developers!" }
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    }

.. code:: qml

    //DerivedLayout.qml
    ExampleLayout {
        id: derivedLayout
        Icon {
            id: newSlot
            width: units.gu(2)
            name: "message"
            SlotsLayout.position: SlotsLayout.Trailing - 1
        }
    }

**See also**
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ mainSlot : `Item </sdk/apps/qml/QtQuick/Item/>`__               |
+--------------------------------------------------------------------------+

This property represents the main slot of the layout. By default,
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ has no
mainSlot set.

The main slot is the one that defines the vertical positioning of the
other slots. Because of this, changing its position and
`overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
attached properties has no effect. More details can be found in the
section `Automatic vertical positioning of
slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__.

**Note**: because of limitations in
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__/QML, it is
not possible to initialize mainSlot's attached properties. Setting
mainSlot's attached properties has to be done via JS, for example inside
Component.onCompleted, as shown in the following example:

.. code:: qml

    SlotsLayout {
        id: layout
        Component.onCompleted: {
            mainSlot.SlotsLayout.padding.leading =
                Qt.binding(function() { return units.gu(5) })
        }
        mainSlot: Label { id: label; text: "Hello developers!" }
        CheckBox {
            anchors.top: label.top
            SlotsLayout.position: SlotsLayout.Trailing
            SlotsLayout.overrideVerticalPositioning: true
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ **padding group**                                               |
+==========================================================================+
|        \ padding.top : real                                              |
+--------------------------------------------------------------------------+
|        \ padding.bottom : real                                           |
+--------------------------------------------------------------------------+
|        \ padding.leading : real                                          |
+--------------------------------------------------------------------------+
|        \ padding.trailing : real                                         |
+--------------------------------------------------------------------------+

This property defines the padding around the bounding box which holds
all the slots. The default value for padding.leading is 1 Grid Unit. The
default value for padding.trailing is 1 Grid Unit.

The value of padding.top and padding.bottom depends on the size of the
slots which are in the layout:

-  if, according to the rules defined in `Automatic vertical positioning
   of
   slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__,
   the slots are supposed to align to the top of the layout, padding.top
   and padding.bottom will have a value of **2** Grid Units.
-  otherwise, if according to the rules defined in `Automatic vertical
   positioning of
   slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__
   the slots are supposed to be vertically centered in the layout,
   **and** the tallest slot
   (`mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__
   excluded) has a height of at least 4 Grid Units, padding.top and
   padding.bottom will be set to **1** Grid Unit.

**Note**: the automatic handling of padding.top and padding.bottom is
disabled once either padding.top or padding.bottom is set to a custom
value.

| 

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ SlotsLayout.overrideVerticalPositioning : bool                  |
+--------------------------------------------------------------------------+

This attached property holds whether the layout should automatically
handle the vertical positioning of a slot. It is attached to every slot.
The default value is **false**.

If this property is set to true, the layout will ignore the
corresponding slot during the computation of the **implicitHeight** of
the whole layout (see `Resizing the
layout </sdk/apps/qml/Ubuntu.Components/SlotsLayout#resizing-the-layout>`__)
and will not modify its vertical position during the layout process. As
a consequence, it is possible, in that case, to manually set the
vertical anchors of that slot (verticalCenter, top, bottom) or even its
**y** property.

Care must be taken to avoid getting the slot clipped by positioning it
partly or completely outside of the
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__ that
holds it.

**Note**: changing the value of overrideVerticalPositioning of one slot
after the layout has already been initialized will reset its top,
bottom, verticalCenter, fill, centerIn anchors for that slot, and the
corresponding margins. Care must be taken to set the anchors to the
desired values only after setting overrideVerticalPositioning.

**Note**: this property is only valid for standard slots. Changing the
value of
`mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__'s
overrideVerticalPositioning has no effect.

| 

+--------------------------------------------------------------------------+
|        \ SlotsLayout.padding :                                           |
| `QtObject </sdk/apps/qml/QtQml/QtObject/>`__                             |
+--------------------------------------------------------------------------+

While `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__'s
padding property defines the padding around the whole layout, this
attached property defines the padding around the slot it is attached to.

It is a grouped property that exposes the properties padding.top,
padding.bottom, padding.leading, padding.trailing.

The default value for
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.padding.top
is 0. The default value for
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.padding.bottom
is 0. The default value for
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.padding.leading
is 1 Grid Unit. The default value for
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.padding.trailing
is 1 Grid Unit.

Please note that **top** and **bottom** paddings are only used when
`SlotsLayout::overrideVerticalPositioning </sdk/apps/qml/Ubuntu.Components/SlotsLayout#overrideVerticalPositioning-attached-prop>`__
is set to false. More about this in `Automatic vertical positioning of
slots </sdk/apps/qml/Ubuntu.Components/SlotsLayout#automatic-vertical-positioning-of-slots>`__.

| 

+--------------------------------------------------------------------------+
|        \ SlotsLayout.position : enumeration                              |
+--------------------------------------------------------------------------+

This attached property defines the relative position of the slot inside
the layout. It is attached to each slot. The default value is
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Trailing.

Valid values for position are:

-  `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.First:
   the slot will be positioned at the beginning of the layout
-  `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Leading:
   the slot will be positioned in the leading slots
-  `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Trailing:
   the slot will be positioned in the trailing slots, i.e. the one
   towards the end of the layout.
-  `SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Last:
   the slot will be positioned at the end of the layout.

`ProgressionSlot </sdk/apps/qml/Ubuntu.Components/ProgressionSlot/>`__,
for instance, has its position set to
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Last, in
order to make sure the chevron is always displayed as the last trailing
slot.

Whenever there are more slots with the same SlotsLayout::position, they
will be positioned following the order in which they were added to the
layout.

It is also possible to define relative positioning between the slots, by
using values such as
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Leading+1,
or
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.Trailing-3.
More about this in `Advanced layout
tweaks </sdk/apps/qml/Ubuntu.Components/SlotsLayout#advanced-layout-tweaks>`__.

**Note**: you can only change the position of standard slots. Changing
the position of
`mainSlot </sdk/apps/qml/Ubuntu.Components/SlotsLayout#mainSlot-prop>`__
has no effect.

| 

.. |image0| image:: /media/sdk/apps/qml/Ubuntu.Components/SlotsLayout/images/SlotsLayout_centerVertically.png
.. |image1| image:: /media/sdk/apps/qml/Ubuntu.Components/SlotsLayout/images/SlotsLayout_alignToTop.png

