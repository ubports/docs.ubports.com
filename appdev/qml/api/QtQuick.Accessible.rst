QtQuick.Accessible
==================

.. raw:: html

   <p>

Enables accessibility of QML items More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Accessible -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

checkStateMixed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

checkable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

checked : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultButton : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

editable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focusable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focused : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ignored : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

multiLine : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

passwordEdit : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

readOnly : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

role : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searchEdit : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectableText : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selected : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

decreaseAction()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

increaseAction()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressAction()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

toggleAction()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Accessible-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This class is part of the Accessibility for Qt Quick Applications.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items the user interacts with or that give information to the user need
to expose their information to the accessibility framework. Then
assistive tools can make use of that information to enable users to
interact with the application in various ways. This enables Qt Quick
applications to be used with screen-readers for example.

.. raw:: html

   </p>

.. raw:: html

   <p>

The most important properties are name, description and role.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example implementation of a simple button:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">myButton</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">text</span>: <span class="string">&quot;next&quot;</span>
   }
   <span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
   <span class="name">Accessible</span>.name: <span class="name">label</span>.<span class="name">text</span>
   <span class="name">Accessible</span>.description: <span class="string">&quot;shows the next page&quot;</span>
   <span class="name">Accessible</span>.onPressAction: {
   <span class="comment">// do a button click</span>
   }
   }</pre>

.. raw:: html

   <p>

The role is set to Button to indicate the type of control.
Accessible.name is the most important information and bound to the text
on the button. The name is a short and consise description of the
control and should reflect the visual label. In this case it is not
clear what the button does with the name only, so description contains
an explanation. There is also a signal handler Accessible.pressAction
which can be invoked by assistive tools to trigger the button. This
signal handler needs to have the same effect as tapping or clicking the
button would have.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Accessibility.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Accessible -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$checkStateMixed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="checkStateMixed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

checkStateMixed : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is in the partially checked state.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also checked and checkable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@checkStateMixed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="checkable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

checkable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is checkable (like a check box or
some buttons).

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also checked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@checkable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="checked-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

checked : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is currently checked.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also checkable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@checked -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultButton-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultButton : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is the default button of a dialog.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultButton -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="description-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

description : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property sets an accessible description. Similar to the name it
describes the item. The description can be a little more verbose and
tell what the item does, for example the functionallity of the button it
describes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="editable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

editable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item has editable text.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@editable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focusable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focusable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is focusable.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false except for items where the role is
one of CheckBox, RadioButton, Button, MenuItem, PageTab, EditableText,
SpinBox, ComboBox, Terminal or ScrollBar.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also focused.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@focusable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focused-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focused : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item currently has the active focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false, but it will return true for items
that have QQuickItem::hasActiveFocus() returning true.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also focusable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@focused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ignored-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ignored : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item should be ignored by the
accessibility framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sometimes an item is part of a group of items that should be treated as
one. For example two labels might be visually placed next to each other,
but separate items. For accessibility purposes they should be treated as
one and thus they are represented by a third invisible item with the
right geometry.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example a speed display adds "m/s" as a smaller label:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type">Label</span> {
   <span class="name">id</span>: <span class="name">speedLabel</span>
   <span class="name">text</span>: <span class="string">&quot;Speed: 5&quot;</span>
   <span class="name">Accessible</span>.ignored: <span class="number">true</span>
   }
   <span class="type">Label</span> {
   <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;m/s&quot;</span>)
   <span class="name">Accessible</span>.ignored: <span class="number">true</span>
   }
   <span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">StaticText</span>
   <span class="name">Accessible</span>.name: <span class="name">speedLabel</span>.<span class="name">text</span> <span class="operator">+</span> <span class="string">&quot; meters per second&quot;</span>
   }</pre>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ignored -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="multiLine-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

multiLine : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item has multiple text lines.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@multiLine -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property sets an accessible name. For a button for example, this
should have a binding to its text. In general this property should be
set to a simple and concise but human readable name. Do not include the
type of control you want to represent but just the name.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="passwordEdit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

passwordEdit : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is a password text edit.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@passwordEdit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressed : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is pressed (for example a button
during a mouse click).

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="readOnly-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

readOnly : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates that a text field is read only.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is relevant when the role is QAccessible::EditableText and set to be
read-only. By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@readOnly -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="role-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

role : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This flags sets the semantic type of the widget. A button for example
would have "Button" as type. The value must be one of QAccessible::Role.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some roles have special semantics. In order to implement check boxes for
example a "checked" property is expected.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Role

.. raw:: html

   </th>

.. raw:: html

   <th>

Properties and signals

.. raw:: html

   </th>

.. raw:: html

   <th>

Explanation

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

All interactive elements

.. raw:: html

   </td>

.. raw:: html

   <td>

focusable and focused

.. raw:: html

   </td>

.. raw:: html

   <td>

All elements that the user can interact with should have focusable set
to true and set focus to true when they have the focus. This is
important even for applications that run on touch-only devices since
screen readers often implement a virtual focus that can be moved from
item to item.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Button, CheckBox, RadioButton

.. raw:: html

   </td>

.. raw:: html

   <td>

Accessible.pressAction

.. raw:: html

   </td>

.. raw:: html

   <td>

A button should have a signal handler with the name onPressAction. This
signal may be emitted by an assistive tool such as a screen-reader. The
implementation needs to behave the same as a mouse click or tap on the
button.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CheckBox, RadioButton

.. raw:: html

   </td>

.. raw:: html

   <td>

checkable, checked, Accessible.toggleAction

.. raw:: html

   </td>

.. raw:: html

   <td>

The check state of the check box. Updated on Press, Check and Uncheck
actions.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Slider, SpinBox, Dial, ScrollBar

.. raw:: html

   </td>

.. raw:: html

   <td>

value, minimumValue, maximumValue, stepSize

.. raw:: html

   </td>

.. raw:: html

   <td>

These properties reflect the state and possible values for the elements.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Slider, SpinBox, Dial, ScrollBar

.. raw:: html

   </td>

.. raw:: html

   <td>

Accessible.increaseAction, Accessible.decreaseAction

.. raw:: html

   </td>

.. raw:: html

   <td>

Actions to increase and decrease the value of the element.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@role -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchEdit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

searchEdit : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is input for a search query. This
property will only affect editable text.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@searchEdit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item can be selected.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also selected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectableText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectableText : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item contains selectable text.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectableText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selected-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selected : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether this item is selected.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also selectable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selected -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$decreaseAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="decreaseAction-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

decreaseAction()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a decrease action is received from an
assistive tool such as a screen-reader.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDecreaseAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@decreaseAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="increaseAction-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

increaseAction()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a increase action is received from an
assistive tool such as a screen-reader.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onIncreaseAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@increaseAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressAction-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pressAction()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a press action is received from an assistive
tool such as a screen-reader.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPressAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toggleAction-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

toggleAction()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a toggle action is received from an
assistive tool such as a screen-reader.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onToggleAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toggleAction -->


