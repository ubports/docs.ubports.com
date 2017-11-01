Enables accessibility of QML items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`checkStateMixed </sdk/apps/qml/QtQuick/Accessible#checkStateMixed-prop>`__****
   : bool
-  ****`checkable </sdk/apps/qml/QtQuick/Accessible#checkable-prop>`__****
   : bool
-  ****`checked </sdk/apps/qml/QtQuick/Accessible#checked-prop>`__**** :
   bool
-  ****`defaultButton </sdk/apps/qml/QtQuick/Accessible#defaultButton-prop>`__****
   : bool
-  ****`description </sdk/apps/qml/QtQuick/Accessible#description-prop>`__****
   : string
-  ****`editable </sdk/apps/qml/QtQuick/Accessible#editable-prop>`__****
   : bool
-  ****`focusable </sdk/apps/qml/QtQuick/Accessible#focusable-prop>`__****
   : bool
-  ****`focused </sdk/apps/qml/QtQuick/Accessible#focused-prop>`__**** :
   bool
-  ****`ignored </sdk/apps/qml/QtQuick/Accessible#ignored-prop>`__**** :
   bool
-  ****`multiLine </sdk/apps/qml/QtQuick/Accessible#multiLine-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtQuick/Accessible#name-prop>`__**** :
   string
-  ****`passwordEdit </sdk/apps/qml/QtQuick/Accessible#passwordEdit-prop>`__****
   : bool
-  ****`pressed </sdk/apps/qml/QtQuick/Accessible#pressed-prop>`__**** :
   bool
-  ****`readOnly </sdk/apps/qml/QtQuick/Accessible#readOnly-prop>`__****
   : bool
-  ****`role </sdk/apps/qml/QtQuick/Accessible#role-prop>`__**** :
   enumeration
-  ****`searchEdit </sdk/apps/qml/QtQuick/Accessible#searchEdit-prop>`__****
   : bool
-  ****`selectable </sdk/apps/qml/QtQuick/Accessible#selectable-prop>`__****
   : bool
-  ****`selectableText </sdk/apps/qml/QtQuick/Accessible#selectableText-prop>`__****
   : bool
-  ****`selected </sdk/apps/qml/QtQuick/Accessible#selected-prop>`__****
   : bool

Signals
-------

-  ****`decreaseAction </sdk/apps/qml/QtQuick/Accessible#decreaseAction-signal>`__****\ ()
-  ****`increaseAction </sdk/apps/qml/QtQuick/Accessible#increaseAction-signal>`__****\ ()
-  ****`pressAction </sdk/apps/qml/QtQuick/Accessible#pressAction-signal>`__****\ ()
-  ****`toggleAction </sdk/apps/qml/QtQuick/Accessible#toggleAction-signal>`__****\ ()

Detailed Description
--------------------

This class is part of the Accessibility for Qt Quick Applications.

Items the user interacts with or that give information to the user need
to expose their information to the accessibility framework. Then
assistive tools can make use of that information to enable users to
interact with the application in various ways. This enables Qt Quick
applications to be used with screen-readers for example.

The most important properties are
`name </sdk/apps/qml/QtQuick/Accessible#name-prop>`__,
`description </sdk/apps/qml/QtQuick/Accessible#description-prop>`__ and
`role </sdk/apps/qml/QtQuick/Accessible#role-prop>`__.

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

The `role </sdk/apps/qml/QtQuick/Accessible#role-prop>`__ is set to
``Button`` to indicate the type of control. Accessible.name is the most
important information and bound to the text on the button. The name is a
short and consise description of the control and should reflect the
visual label. In this case it is not clear what the button does with the
name only, so
`description </sdk/apps/qml/QtQuick/Accessible#description-prop>`__
contains an explanation. There is also a signal handler
`Accessible.pressAction </sdk/apps/qml/QtQuick/Accessible#pressAction-signal>`__
which can be invoked by assistive tools to trigger the button. This
signal handler needs to have the same effect as tapping or clicking the
button would have.

**See also** Accessibility.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ checkStateMixed : bool                                          |
+--------------------------------------------------------------------------+

This property holds whether this item is in the partially checked state.

By default this property is ``false``.

**See also** `checked </sdk/apps/qml/QtQuick/Accessible#checked-prop>`__
and `checkable </sdk/apps/qml/QtQuick/Accessible#checkable-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ checkable : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item is checkable (like a check box or
some buttons).

By default this property is ``false``.

**See also**
`checked </sdk/apps/qml/QtQuick/Accessible#checked-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item is currently checked.

By default this property is ``false``.

**See also**
`checkable </sdk/apps/qml/QtQuick/Accessible#checkable-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ defaultButton : bool                                            |
+--------------------------------------------------------------------------+

This property holds whether this item is the default button of a dialog.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property sets an accessible description. Similar to the name it
describes the item. The description can be a little more verbose and
tell what the item does, for example the functionallity of the button it
describes.

| 

+--------------------------------------------------------------------------+
|        \ editable : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether this item has editable text.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ focusable : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item is focusable.

By default, this property is ``false`` except for items where the role
is one of ``CheckBox``, ``RadioButton``, ``Button``, ``MenuItem``,
``PageTab``, ``EditableText``, ``SpinBox``, ``ComboBox``, ``Terminal``
or ``ScrollBar``.

**See also**
`focused </sdk/apps/qml/QtQuick/Accessible#focused-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ focused : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item currently has the active focus.

By default, this property is ``false``, but it will return ``true`` for
items that have QQuickItem::hasActiveFocus() returning ``true``.

**See also**
`focusable </sdk/apps/qml/QtQuick/Accessible#focusable-prop>`__.

| 

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

+--------------------------------------------------------------------------+
|        \ multiLine : bool                                                |
+--------------------------------------------------------------------------+

This property holds whether this item has multiple text lines.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property sets an accessible name. For a button for example, this
should have a binding to its text. In general this property should be
set to a simple and concise but human readable name. Do not include the
type of control you want to represent but just the name.

| 

+--------------------------------------------------------------------------+
|        \ passwordEdit : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether this item is a password text edit.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether this item is pressed (for example a button
during a mouse click).

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates that a text field is read only.

It is relevant when the role is QAccessible::EditableText and set to be
read-only. By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ role : enumeration                                              |
+--------------------------------------------------------------------------+

This flags sets the semantic type of the widget. A button for example
would have "Button" as type. The value must be one of QAccessible::Role.

Some roles have special semantics. In order to implement check boxes for
example a "checked" property is expected.

+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Role**                           | **Properties and signals**                                                                                                                                                                                         | **Explanation**                                                                                                                                                                                                                                                                                           |
+====================================+====================================================================================================================================================================================================================+===========================================================================================================================================================================================================================================================================================================+
| All interactive elements           | `focusable </sdk/apps/qml/QtQuick/Accessible#focusable-prop>`__ and `focused </sdk/apps/qml/QtQuick/Accessible#focused-prop>`__                                                                                    | All elements that the user can interact with should have focusable set to ``true`` and set focus to ``true`` when they have the focus. This is important even for applications that run on touch-only devices since screen readers often implement a virtual focus that can be moved from item to item.   |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Button, CheckBox, RadioButton      | `Accessible.pressAction </sdk/apps/qml/QtQuick/Accessible#pressAction-signal>`__                                                                                                                                   | A button should have a signal handler with the name ``onPressAction``. This signal may be emitted by an assistive tool such as a screen-reader. The implementation needs to behave the same as a mouse click or tap on the button.                                                                        |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| CheckBox, RadioButton              | `checkable </sdk/apps/qml/QtQuick/Accessible#checkable-prop>`__, `checked </sdk/apps/qml/QtQuick/Accessible#checked-prop>`__, `Accessible.toggleAction </sdk/apps/qml/QtQuick/Accessible#toggleAction-signal>`__   | The check state of the check box. Updated on Press, Check and Uncheck actions.                                                                                                                                                                                                                            |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Slider, SpinBox, Dial, ScrollBar   | ``value``, ``minimumValue``, ``maximumValue``, ``stepSize``                                                                                                                                                        | These properties reflect the state and possible values for the elements.                                                                                                                                                                                                                                  |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Slider, SpinBox, Dial, ScrollBar   | `Accessible.increaseAction </sdk/apps/qml/QtQuick/Accessible#increaseAction-signal>`__, `Accessible.decreaseAction </sdk/apps/qml/QtQuick/Accessible#decreaseAction-signal>`__                                     | Actions to increase and decrease the value of the element.                                                                                                                                                                                                                                                |
+------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ searchEdit : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether this item is input for a search query. This
property will only affect editable text.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ selectable : bool                                               |
+--------------------------------------------------------------------------+

This property holds whether this item can be selected.

By default this property is ``false``.

**See also**
`selected </sdk/apps/qml/QtQuick/Accessible#selected-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ selectableText : bool                                           |
+--------------------------------------------------------------------------+

This property holds whether this item contains selectable text.

By default this property is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ selected : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether this item is selected.

By default this property is ``false``.

**See also**
`selectable </sdk/apps/qml/QtQuick/Accessible#selectable-prop>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ decreaseAction()                                                |
+--------------------------------------------------------------------------+

This signal is emitted when a decrease action is received from an
assistive tool such as a screen-reader.

The corresponding handler is ``onDecreaseAction``.

| 

+--------------------------------------------------------------------------+
|        \ increaseAction()                                                |
+--------------------------------------------------------------------------+

This signal is emitted when a increase action is received from an
assistive tool such as a screen-reader.

The corresponding handler is ``onIncreaseAction``.

| 

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
