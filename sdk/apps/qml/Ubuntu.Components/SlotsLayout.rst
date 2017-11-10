.. _sdk_ubuntu_components_slotslayout:

Ubuntu.Components SlotsLayout
=============================

The SlotsLayout component provides an easy way to layout a list of user-interface elements horizontally following Ubuntu design standards. We call the elements which we want to layout "slots". **Slots** is just another name for SlotsLayout's **visual children**.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`.                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` : Item
-  :ref:`padding <sdk_ubuntu_components_slotslayout_padding>`

   -  :ref:`padding.top <sdk_ubuntu_components_slotslayout_padding_top>` : real
   -  :ref:`padding.bottom <sdk_ubuntu_components_slotslayout_padding_bottom>` : real
   -  :ref:`padding.leading <sdk_ubuntu_components_slotslayout_padding_leading>` : real
   -  :ref:`padding.trailing <sdk_ubuntu_components_slotslayout_padding_trailing>` : real

Attached Properties
-------------------

-  :ref:`overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` : bool
-  :ref:`padding <sdk_ubuntu_components_slotslayout_padding>` : QtObject
-  :ref:`position <sdk_ubuntu_components_slotslayout_position>` : enumeration

Detailed Description
--------------------

:ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` will layout its children according to Ubuntu's visual design rules, providing automatic spacing and positioning (both horizontal and vertical, unless :ref:`overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` is set) for each of them.

**If you're building list items,** we recommend to use :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`, as it is designed to accomodate up to 3 labels that follow our UI standards.

There are three conceptual types of slots:

-  The **leading slots**, which are the ones positioned at the beginning of the layout (i.e. they are the leftmost elements in left-to-right locales).
-  The **trailing slots**, which are positioned after :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>`, if any, or after the leading slots otherwise.
-  The **main slot**, which drives the positioning of the vertical dimension of each slot as described in section :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`. This slot sits between leading and trailing slots, and can be set using the property :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>`.

In order to comply with Ubuntu design standards, this component hosts a maximum of 1 leading and 2 trailing slots. The layout algorithm will ignore any additional item.

:ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` also provides a series of properties which are attached to each slot. However not all properties are valid in all the circumstances. These properties allow an easy tweaking of slot's positioning within the layout. :ref:`SlotsLayout::position <sdk_ubuntu_components_slotslayout_position>` can be used to set whether a slot should be a leading or trailing one. :ref:`SlotsLayout::padding <sdk_ubuntu_components_slotslayout_padding>` can be used to tweak the padding around a slot. :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` allows to disable the automatic positioning of the vertical coordinate of a slot as described in :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`, in case a custom behaviour is needed.

The following example shows a very simple :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` with an :ref:`Icon <sdk_ubuntu_components_icon>` as leading slot, and a :ref:`CheckBox <sdk_ubuntu_components_checkbox>` as trailing slot. There is no need to specify any size or margin, everything is handled automatically by the layout component.

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

The positioning of each slot should only be tweaked using its attached properties. Just like when using `QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_ 's Row, a child item within the layout should not set its **x** or **anchors** affecting the horizontal positioning (left, right, horizontalCenter, centerIn, fill). If you need to perform these actions, consider positioning the items without the use of a :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.

The vertical **anchors** of a slot can be modified, **provided that** :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` for that slot is set. More about this in the :ref:`Advanced layout tweaks <sdk_ubuntu_components_slotslayout_advanced>` section.

Resizing the layout
-------------------

:ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`'s **implicit width** is by default set to the width of the parent (usually a :ref:`ListItem <sdk_ubuntu_components_listitem>`). Changing the width of the layout is possible but should not be needed in most of the usecases: keeping the width in sync with the width of its parent allows the user interface to be scalable across devices with varying resolution and form factors.

The **implicit height** is not fixed either. In order not to clip any of the slots, the :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` adapts to accomodate its highest slot with padding and the padding around the layout.

Because of the above, it is recommended to have items wrapping the layout bind to :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`'s **height** (adding :ref:`ListItem <sdk_ubuntu_components_listitem>` **divider**'s height if needed), not the opposite. It is not recommended, for instance, to use anchors.fill to force :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` to fill another Item, because that item might not have enough space to accomdate all the slots, and therefore the slots will be clipped.

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

Manually resizing :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` (or :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`) is usually not needed and we recommend to avoid it, as the component will already take care of doing the job for you. The following example shows what a standard :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` should look like:

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

In order to provide a visually pleasing and consistent layout across the whole platform, :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` automatically handles the vertical positioning of its slots so that they comply with the following rules:

-  if there's any slot which is taller or as tall as :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` or if no :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` is defined, all slots will be **vertically centered** within the layout (still taking :ref:`SlotsLayout::padding.top <sdk_ubuntu_components_slotslayout_padding_top>` and :ref:`SlotsLayout::padding.bottom <sdk_ubuntu_components_slotslayout_padding_bottom>` into account).

-  **Otherwise**, all the slots (including :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>`) will be **aligned to the top** of the layout with a padding of :ref:`SlotsLayout::padding.top <sdk_ubuntu_components_slotslayout_padding_top>` plus the top padding of the slot, defined in its attached properties.

Even though it is **not recommended**, it is still possible to override this behaviour on a slot-by-slot basis by setting :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` to true. This is described in :ref:`Advanced layout tweaks <sdk_ubuntu_components_slotslayout_advanced>`.

Input handling
--------------

The purpose of :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` is to position its slots following the rules defined in :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`. There are two recommended ways to implement input handling: the first one, in case the target is to create a list item, is to put the :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` (or any derived component, like :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`) inside a :ref:`ListItem <sdk_ubuntu_components_listitem>`, and use :ref:`ListItem <sdk_ubuntu_components_listitem>`'s onClicked handler to handle clicks and taps.

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

The second option is to use a :ref:`MouseArea <sdk_qtquick_mousearea>` as a wrapper around :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`, as the following code demonstrates:

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

**Note**: as recommended in :ref:`Resizing the layout <sdk_ubuntu_components_slotslayout_resizing>`, since :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` has a dynamic height, it is important to have the parent item's height (in this case :ref:`MouseArea <sdk_qtquick_mousearea>`) follow :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`'s **height**, and not the opposite, to avoid getting the slots clipped out of the layout.

Advanced layout tweaks
----------------------

The automatic layout provided by :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` is designed to cover most of the usecases. There could be times, however, where you might want to tweak the positioning of one particular slot.

A slot can set its attached properties :ref:`SlotsLayout::padding <sdk_ubuntu_components_slotslayout_padding>` and :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` to reach the desired position.

When a slot enables :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>`, it gains control over its vertical anchors (top, bottom, verticalCenter). Moreover, :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` will ignore the height of that slot in the following computations of its implicitHeight (see :ref:`Resizing the layout <sdk_ubuntu_components_slotslayout_resizing>`).

When manually positioning a slot, care must be taken to avoid pushing the slot outside of the layout perimeter, to avoid getting it clipped.

The following example shows a :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` which has both custom padding and a slot which uses custom vertical positioning:

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

It is also possible to sort the slots in a relative fashion, by using positions such as :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Leading+1, for instance, if we want that slot to always be positioned after items with position :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Leading. This is particularly useful, for example, when subclassing :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`-based components which already have predefined slots inside them. If, for instance, the component we're subclassing has a slot with position :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Trailing, we can add a slot to our subclass with position :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Trailing-1 if we want to make sure our slot is always positioned before the one in the component we are deriving from. This scenario is shown in the following example code:

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

**See also** :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_slotslayout_mainSlot:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mainSlot : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property represents the main slot of the layout. By default, :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` has no mainSlot set.

The main slot is the one that defines the vertical positioning of the other slots. Because of this, changing its position and :ref:`overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` attached properties has no effect. More details can be found in the section :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`.

**Note**: because of limitations in `QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`_ /QML, it is not possible to initialize mainSlot's attached properties. Setting mainSlot's attached properties has to be done via JS, for example inside Component.onCompleted, as shown in the following example:

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

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **padding group**                                                                                                                                                                                                                                                                                            |
+==============================================================================================================================================================================================================================================================================================================+
| padding.top : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| padding.bottom : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| padding.leading : real                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| padding.trailing : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the padding around the bounding box which holds all the slots. The default value for padding.leading is 1 Grid Unit. The default value for padding.trailing is 1 Grid Unit.

The value of padding.top and padding.bottom depends on the size of the slots which are in the layout:

-  if, according to the rules defined in :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`, the slots are supposed to align to the top of the layout, padding.top and padding.bottom will have a value of **2** Grid Units.
-  otherwise, if according to the rules defined in :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>` the slots are supposed to be vertically centered in the layout, **and** the tallest slot (:ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` excluded) has a height of at least 4 Grid Units, padding.top and padding.bottom will be set to **1** Grid Unit.

**Note**: the automatic handling of padding.top and padding.bottom is disabled once either padding.top or padding.bottom is set to a custom value.

Attached Property Documentation
-------------------------------

.. _sdk_ubuntu_components_slotslayout_overrideVerticalPositioning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SlotsLayout.overrideVerticalPositioning : bool                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the layout should automatically handle the vertical positioning of a slot. It is attached to every slot. The default value is **false**.

If this property is set to true, the layout will ignore the corresponding slot during the computation of the **implicitHeight** of the whole layout (see :ref:`Resizing the layout <sdk_ubuntu_components_slotslayout_resizing>`) and will not modify its vertical position during the layout process. As a consequence, it is possible, in that case, to manually set the vertical anchors of that slot (verticalCenter, top, bottom) or even its **y** property.

Care must be taken to avoid getting the slot clipped by positioning it partly or completely outside of the :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>` that holds it.

**Note**: changing the value of overrideVerticalPositioning of one slot after the layout has already been initialized will reset its top, bottom, verticalCenter, fill, centerIn anchors for that slot, and the corresponding margins. Care must be taken to set the anchors to the desired values only after setting overrideVerticalPositioning.

**Note**: this property is only valid for standard slots. Changing the value of :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>`'s overrideVerticalPositioning has no effect.

.. _sdk_ubuntu_components_slotslayout_padding:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SlotsLayout.padding : :ref:`QtObject <sdk_qtqml_qtobject>`                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

While :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`'s padding property defines the padding around the whole layout, this attached property defines the padding around the slot it is attached to.

It is a grouped property that exposes the properties padding.top, padding.bottom, padding.leading, padding.trailing.

The default value for :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.padding.top is 0. The default value for :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.padding.bottom is 0. The default value for :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.padding.leading is 1 Grid Unit. The default value for :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.padding.trailing is 1 Grid Unit.

Please note that **top** and **bottom** paddings are only used when :ref:`SlotsLayout::overrideVerticalPositioning <sdk_ubuntu_components_slotslayout_overrideVerticalPositioning>` is set to false. More about this in :ref:`Automatic vertical positioning of slots <sdk_ubuntu_components_slotslayout_automatic>`.

.. _sdk_ubuntu_components_slotslayout_position:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SlotsLayout.position : enumeration                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property defines the relative position of the slot inside the layout. It is attached to each slot. The default value is :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Trailing.

Valid values for position are:

-  :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.First: the slot will be positioned at the beginning of the layout
-  :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Leading: the slot will be positioned in the leading slots
-  :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Trailing: the slot will be positioned in the trailing slots, i.e. the one towards the end of the layout.
-  :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Last: the slot will be positioned at the end of the layout.

:ref:`ProgressionSlot <sdk_ubuntu_components_progressionslot>`, for instance, has its position set to :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Last, in order to make sure the chevron is always displayed as the last trailing slot.

Whenever there are more slots with the same SlotsLayout::position, they will be positioned following the order in which they were added to the layout.

It is also possible to define relative positioning between the slots, by using values such as :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Leading+1, or :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.Trailing-3. More about this in :ref:`Advanced layout tweaks <sdk_ubuntu_components_slotslayout_advanced>`.

**Note**: you can only change the position of standard slots. Changing the position of :ref:`mainSlot <sdk_ubuntu_components_slotslayout_mainSlot>` has no effect.

