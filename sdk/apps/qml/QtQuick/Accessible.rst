.. _sdk_qtquick_accessible:
QtQuick Accessible
==================

Enables accessibility of QML items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`checkStateMixed <sdk_qtquick_accessible_checkStateMixed-prop>`
   : bool
-  :ref:`checkable <sdk_qtquick_accessible_checkable-prop>` : bool
-  :ref:`checked <sdk_qtquick_accessible_checked-prop>` : bool
-  :ref:`defaultButton <sdk_qtquick_accessible_defaultButton-prop>`
   : bool
-  :ref:`description <sdk_qtquick_accessible_description-prop>` :
   string
-  :ref:`editable <sdk_qtquick_accessible_editable-prop>` : bool
-  :ref:`focusable <sdk_qtquick_accessible_focusable-prop>` : bool
-  :ref:`focused <sdk_qtquick_accessible_focused-prop>` : bool
-  :ref:`ignored <sdk_qtquick_accessible_ignored-prop>` : bool
-  :ref:`multiLine <sdk_qtquick_accessible_multiLine-prop>` : bool
-  :ref:`name <sdk_qtquick_accessible_name-prop>` : string
-  :ref:`passwordEdit <sdk_qtquick_accessible_passwordEdit-prop>` :
   bool
-  :ref:`pressed <sdk_qtquick_accessible_pressed-prop>` : bool
-  :ref:`readOnly <sdk_qtquick_accessible_readOnly-prop>` : bool
-  :ref:`role <sdk_qtquick_accessible_role-prop>` : enumeration
-  :ref:`searchEdit <sdk_qtquick_accessible_searchEdit-prop>` :
   bool
-  :ref:`selectable <sdk_qtquick_accessible_selectable-prop>` :
   bool
-  :ref:`selectableText <sdk_qtquick_accessible_selectableText-prop>`
   : bool
-  :ref:`selected <sdk_qtquick_accessible_selected-prop>` : bool

Signals
-------

-  :ref:`decreaseAction <sdk_qtquick_accessible_decreaseAction-signal>`\ ()
-  :ref:`increaseAction <sdk_qtquick_accessible_increaseAction-signal>`\ ()
-  :ref:`pressAction <sdk_qtquick_accessible_pressAction-signal>`\ ()
-  :ref:`toggleAction <sdk_qtquick_accessible_toggleAction-signal>`\ ()

Detailed Description
--------------------

This class is part of the Accessibility for Qt Quick Applications.

Items the user interacts with or that give information to the user need
to expose their information to the accessibility framework. Then
assistive tools can make use of that information to enable users to
interact with the application in various ways. This enables Qt Quick
applications to be used with screen-readers for example.

The most important properties are
:ref:`name <sdk_qtquick_accessible#name-prop>`,
:ref:`description <sdk_qtquick_accessible#description-prop>` and
:ref:`role <sdk_qtquick_accessible#role-prop>`.

Example implementation of a simple button:

.. code:: qml

    Rectangle {
        id: myButton
        Text {
            id: label
            text: "next"
        }
        Accessible.role: Accessible.Button
        Accessible.name: label.text
        Accessible.description: "shows the next page"
        Accessible.onPressAction: {
            // do a button click
        }
    }

The :ref:`role <sdk_qtquick_accessible#role-prop>` is set to ``Button`` to
indicate the type of control. Accessible.name is the most important
information and bound to the text on the button. The name is a short and
consise description of the control and should reflect the visual label.
In this case it is not clear what the button does with the name only, so
:ref:`description <sdk_qtquick_accessible#description-prop>` contains an
explanation. There is also a signal handler
:ref:`Accessible.pressAction <sdk_qtquick_accessible#pressAction-signal>`
which can be invoked by assistive tools to trigger the button. This
signal handler needs to have the same effect as tapping or clicking the
button would have.

**See also** Accessibility.

Property Documentation
----------------------

.. _sdk_qtquick_accessible_checkStateMixed-prop:

+--------------------------------------------------------------------------+
|        \ checkStateMixed : bool                                          |
+--------------------------------------------------------------------------+

This property holds whether this item is in the partially checked state.

By default this property is ``false``.

**See also** :ref:`checked <sdk_qtquick_accessible#checked-prop>` and
:ref:`checkable <sdk_qtquick_accessible#checkable-prop>`.

| 

.. _sdk_qtquick_accessible_checkable-prop:

+--------------------------------------------------------------------------+
|        \ checkable : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item is checkable (like a check box or
some buttons).

By default this property is ``false``.

**See also** :ref:`checked <sdk_qtquick_accessible#checked-prop>`.

| 

.. _sdk_qtquick_accessible_checked-prop:

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item is currently checked.

By default this property is ``false``.

**See also** :ref:`checkable <sdk_qtquick_accessible#checkable-prop>`.

| 

.. _sdk_qtquick_accessible_defaultButton-prop:

+--------------------------------------------------------------------------+
|        \ defaultButton : bool                                            |
+--------------------------------------------------------------------------+

This property holds whether this item is the default button of a dialog.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_description-prop:

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property sets an accessible description. Similar to the name it
describes the item. The description can be a little more verbose and
tell what the item does, for example the functionallity of the button it
describes.

| 

.. _sdk_qtquick_accessible_editable-prop:

+--------------------------------------------------------------------------+
|        \ editable : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether this item has editable text.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_focusable-prop:

+--------------------------------------------------------------------------+
|        \ focusable : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item is focusable.

By default, this property is ``false`` except for items where the role
is one of ``CheckBox``, ``RadioButton``, ``Button``, ``MenuItem``,
``PageTab``, ``EditableText``, ``SpinBox``, ``ComboBox``, ``Terminal``
or ``ScrollBar``.

**See also** :ref:`focused <sdk_qtquick_accessible#focused-prop>`.

| 

.. _sdk_qtquick_accessible_focused-prop:

+--------------------------------------------------------------------------+
|        \ focused : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item currently has the active focus.

By default, this property is ``false``, but it will return ``true`` for
items that have QQuickItem::hasActiveFocus() returning ``true``.

**See also** :ref:`focusable <sdk_qtquick_accessible#focusable-prop>`.

| 

.. _sdk_qtquick_accessible_ignored-prop:

+--------------------------------------------------------------------------+
|        \ ignored : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item should be ignored by the
accessibility framework.

Sometimes an item is part of a group of items that should be treated as
one. For example two labels might be visually placed next to each other,
but separate items. For accessibility purposes they should be treated as
one and thus they are represented by a third invisible item with the
right geometry.

For example a speed display adds "m/s" as a smaller label:

.. code:: qml

    Row {
        Label {
            id: speedLabel
            text: "Speed: 5"
            Accessible.ignored: true
        }
        Label {
            text: qsTr("m/s")
            Accessible.ignored: true
        }
        Accessible.role: Accessible.StaticText
        Accessible.name: speedLabel.text + " meters per second"
    }

By default this property is ``false``.

This QML property was introduced in Qt 5.4.

| 

.. _sdk_qtquick_accessible_multiLine-prop:

+--------------------------------------------------------------------------+
|        \ multiLine : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item has multiple text lines.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property sets an accessible name. For a button for example, this
should have a binding to its text. In general this property should be
set to a simple and concise but human readable name. Do not include the
type of control you want to represent but just the name.

| 

.. _sdk_qtquick_accessible_passwordEdit-prop:

+--------------------------------------------------------------------------+
|        \ passwordEdit : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether this item is a password text edit.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_pressed-prop:

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item is pressed (for example a button
during a mouse click).

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_readOnly-prop:

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates that a text field is read only.

It is relevant when the role is QAccessible::EditableText and set to be
read-only. By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_role-prop:

+--------------------------------------------------------------------------+
|        \ role : enumeration                                              |
+--------------------------------------------------------------------------+

This flags sets the semantic type of the widget. A button for example
would have "Button" as type. The value must be one of QAccessible::Role.

Some roles have special semantics. In order to implement check boxes for
example a "checked" property is expected.

.. _sdk_qtquick_accessible_**Role**                            **Properties and signals**                                                                                                                                                            **Explanation**-prop:

+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Role**                           | **Properties and signals**                                                                                                                                                           | **Explanation**                                                                                                                                                                                                                                                                                           |
+====================================+======================================================================================================================================================================================+===========================================================================================================================================================================================================================================================================================================+
.. _sdk_qtquick_accessible_Button, CheckBox, RadioButton-prop:
| All interactive elements           | :ref:`focusable <sdk_qtquick_accessible#focusable-prop>` and `focused <sdk_qtquick_accessible#focused-prop>`                                                                          | All elements that the user can interact with should have focusable set to ``true`` and set focus to ``true`` when they have the focus. This is important even for applications that run on touch-only devices since screen readers often implement a virtual focus that can be moved from item to item.   |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtquick_accessible_CheckBox, RadioButton-prop:
| Button, CheckBox, RadioButton      | :ref:`Accessible.pressAction <sdk_qtquick_accessible#pressAction-signal>`                                                                                                            | A button should have a signal handler with the name ``onPressAction``. This signal may be emitted by an assistive tool such as a screen-reader. The implementation needs to behave the same as a mouse click or tap on the button.                                                                        |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtquick_accessible_Slider, SpinBox, Dial, ScrollBar    ``value``, ``minimumValue``, ``maximumValue``, ``stepSize``                                                                                                                           These properties reflect the state and possible values for the elements.-prop:
| CheckBox, RadioButton              | :ref:`checkable <sdk_qtquick_accessible#checkable-prop>`, `checked <sdk_qtquick_accessible#checked-prop>`, `Accessible.toggleAction <sdk_qtquick_accessible#toggleAction-signal>`| The check state of the check box. Updated on Press, Check and Uncheck actions.                                                                                                                                                                                                                            |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtquick_accessible_Slider, SpinBox, Dial, ScrollBar-prop:
| Slider, SpinBox, Dial, ScrollBar   | ``value``, ``minimumValue``, ``maximumValue``, ``stepSize``                                                                                                                          | These properties reflect the state and possible values for the elements.                                                                                                                                                                                                                                  |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Slider, SpinBox, Dial, ScrollBar   | :ref:`Accessible.increaseAction <sdk_qtquick_accessible#increaseAction-signal>`, `Accessible.decreaseAction <sdk_qtquick_accessible#decreaseAction-signal>`                        | Actions to increase and decrease the value of the element.                                                                                                                                                                                                                                                |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtquick_accessible_searchEdit-prop:

+--------------------------------------------------------------------------+
|        \ searchEdit : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether this item is input for a search query. This
property will only affect editable text.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_selectable-prop:

+--------------------------------------------------------------------------+
|        \ selectable : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether this item can be selected.

By default this property is ``false``.

**See also** :ref:`selected <sdk_qtquick_accessible#selected-prop>`.

| 

.. _sdk_qtquick_accessible_selectableText-prop:

+--------------------------------------------------------------------------+
|        \ selectableText : bool                                           |
+--------------------------------------------------------------------------+

This property holds whether this item contains selectable text.

By default this property is ``false``.

| 

.. _sdk_qtquick_accessible_selected-prop:

+--------------------------------------------------------------------------+
|        \ selected : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether this item is selected.

By default this property is ``false``.

**See also** :ref:`selectable <sdk_qtquick_accessible#selectable-prop>`.

| 

Signal Documentation
--------------------

.. _sdk_qtquick_accessible_decreaseAction()-prop:

+--------------------------------------------------------------------------+
|        \ decreaseAction()                                                |
+--------------------------------------------------------------------------+

This signal is emitted when a decrease action is received from an
assistive tool such as a screen-reader.

The corresponding handler is ``onDecreaseAction``.

| 

.. _sdk_qtquick_accessible_increaseAction()-prop:

+--------------------------------------------------------------------------+
|        \ increaseAction()                                                |
+--------------------------------------------------------------------------+

This signal is emitted when a increase action is received from an
assistive tool such as a screen-reader.

The corresponding handler is ``onIncreaseAction``.

| 

.. _sdk_qtquick_accessible_pressAction()-prop:

+--------------------------------------------------------------------------+
|        \ pressAction()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when a press action is received from an assistive
tool such as a screen-reader.

The corresponding handler is ``onPressAction``.

| 

+--------------------------------------------------------------------------+
|        \ toggleAction()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when a toggle action is received from an
assistive tool such as a screen-reader.

The corresponding handler is ``onToggleAction``.

| 
