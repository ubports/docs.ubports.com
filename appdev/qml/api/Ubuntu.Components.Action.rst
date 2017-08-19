Ubuntu.Components.Action
========================

.. raw:: html

   <p>

Describe an action that can be re-used and shared between different
components. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Action -->

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

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

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

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exclusiveGroup : ExclusiveGroup

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconSource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keywords : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parameterType : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shortcut : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visible : bool

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

toggled(bool value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

triggered(var value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

trigger(var value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Action-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Actions can be used to define a specific task to be executed in
different contexts using different components. The same action can be
assigned to a Button, a Checkbox or even a TextField. The triggered
signal is emitted depending on the component. Button and CheckBox for
instance emits the signal when clicked, whereas TextField emits the
signal when its accepted signal is triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the parameterType property is set, the Action is said to be
parameterised. This means that when it is bound to a menu or button, the
action expects a typed input parameter. The type affects the allowed
value of the QVariant that must be passed to the trigger and triggered.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">action</span>
   <span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Integer</span>
   <span class="name">text</span>: <span class="string">&quot;Int value&quot;</span>
   <span class="name">onTriggered</span>: {
   <span class="comment">// the value will be undefined</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;value is&quot;</span>, <span class="name">value</span>);
   }
   <span class="name">Component</span>.onCompleted: <span class="name">trigger</span>(<span class="string">&quot;Hello World!&quot;</span>)
   }</pre>

.. raw:: html

   <p>

When an Action is assigned to a component, the component takes the
values from the action itself. Therefore assigning the action to a
Button is enough to set up the label and the icon to be shown by the
button.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Action {
   id: stock
   iconName: <span class="string">&quot;call&quot;</span>
   text: <span class="string">&quot;Call&quot;</span>
   }
   Button {
   <span class="comment">// this binding will set the Button's text, iconName and</span>
   <span class="comment">// iconSource properties.</span>
   action: stock
   }</pre>

.. raw:: html

   <p>

Actions are used to populate different Popovers like
ActionSelectionPopover as well as to define actions for pages, or when
defining options in ListItemOptions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples: See Page

.. raw:: html

   </p>

.. raw:: html

   <h3>

Mnemonics

.. raw:: html

   </h3>

.. raw:: html

   <p>

Since Ubuntu.Components 1.3 Action supports mnemonics. Mnemonics are
shortcuts defined in the text property, prefixed the shortcut letter
with &. For instance "&amp;Call" will bint the "Alt-C" shortcut to the
action. When a mnemonic is detected on the Action and a keyboard is
attached to the device, the text property will provide a formatted text
having the mnemonic letter underscored.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">call</span>
   <span class="name">iconName</span>: <span class="string">&quot;call&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;&amp;Call&quot;</span>
   }</pre>

.. raw:: html

   <h3>

Checkable property

.. raw:: html

   </h3>

.. raw:: html

   <p>

Since Ubuntu.Components 1.3 Action supports the checkable/checked
properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">Action</span> {
   <span class="name">checkable</span>: <span class="number">true</span>
   <span class="name">checked</span>: <span class="number">false</span>
   }
   <span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
   }</pre>

.. raw:: html

   <!-- @@@Action -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$checkable -->

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

Whether the action can be checked. Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Action::checked, Action::toggled, and ExclusiveGroup.

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

If the action is checkable, this property reflects its checked state.
Defaults to false. Its value is also false while checkable is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Action::checkable, Action::toggled, and ExclusiveGroup.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@checked -->

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

User visible secondary description for the action. Description is more
verbose than the text and should describe the Action with couple of
words.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

If set to false the action can not be triggered. Components visualizing
the action migth either hide the action or make it insensitive. However
visibility can be controlled separately using the visible property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exclusiveGroup-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exclusiveGroup : ExclusiveGroup

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

The ExclusiveGroup associated with this action. An exclusive group
allows the checked property to belinked to other actions, as in radio
controls.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a></span> {
   <span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">action1</span>
   <span class="name">checkable</span>: <span class="number">true</span>
   <span class="name">checked</span>: <span class="number">true</span>
   }
   <span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">action2</span>
   <span class="name">checkable</span>: <span class="number">true</span>
   }
   <span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">action3</span>
   <span class="name">checkable</span>: <span class="number">true</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">action1</span>
   <span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">action2</span>
   <span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">action3</span>
   <span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">grey</span>
   }
   }</pre>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exclusiveGroup -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconName : string

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

The icon associated with the action. If both iconName and iconSource are
defined, iconName will be ignored by the components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The complete list of icons available in Ubuntu is not published
yet. For now please refer to the folder where the icon theme is
installed:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu Touch: /usr/share/icons/suru

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@iconName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconSource : url

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

This is a URL to any image file. In order to use an icon from the Ubuntu
theme, use the iconName property instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keywords-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

keywords : string

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

Additional user visible keywords for the action. The format of the
keywords string is "Keyword 1;Keyword 2;Keyword 3" to allow translators
to define different number of keywords per language. The keywords are
separated by ; and they may contain spaces.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Crop&quot;</span>)
   <span class="name">description</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Crop the image&quot;</span>)
   <span class="name">keywords</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Trim;Cut&quot;</span>)
   }</pre>

.. raw:: html

   <!-- @@@keywords -->

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

The name of the action. By default an action gets it's name generated
automatically if not overridden with later. If name is set to "" then
the action restores it's autogenerated name. The name is not user
visible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parameterType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parameterType : enum

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

Type of the parameter passed to trigger and triggered. Type is an
enumeration:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Action.None: No paramater. (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

Action.String: String parameter.

.. raw:: html

   </li>

.. raw:: html

   <li>

Action.Integer: Integer parameter.

.. raw:: html

   </li>

.. raw:: html

   <li>

Action.Bool: Boolean parameter.

.. raw:: html

   </li>

.. raw:: html

   <li>

Action.Real: Single precision floating point parameter.

.. raw:: html

   </li>

.. raw:: html

   <li>

Action.Object: The parameter is an object.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
   <span class="name">id</span>: <span class="name">action</span>
   <span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">String</span>
   <span class="name">onTriggered</span>: {
   <span class="comment">// value arguments now contain strings</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">value</span>);
   }
   <span class="name">Component</span>.onCompleted: <span class="name">action</span>.<span class="name">trigger</span>(<span class="string">&quot;Hello World&quot;</span>)
   }</pre>

.. raw:: html

   <!-- @@@parameterType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shortcut-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shortcut : var

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

The keyboard shortcut that can be used to trigger the action.
StandardKey values such as StandardKey.Copy as well as strings in the
form "Ctrl+C" are accepted values.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shortcut -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

The user visible primary label of the action.

.. raw:: html

   </p>

.. raw:: html

   <p>

Mnemonics are shortcuts prefixed in the text with &. If the text has
multiple occurences of the & character, the first one will be considered
for the shortcut. However && can be used for a single & in the text, not
as a mnemonic. The & character cannot be used as shortcut.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visible-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visible : bool

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

Specifies whether the action is visible to the user. Defaults to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visible -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$toggled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toggled-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

toggled(bool value)

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

Signal called when the action's checked property changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The toggled signal should be used for checkable actions rather
than the triggered signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Action::checkable, Action::checked, and ExclusiveGroup.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toggled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="triggered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

triggered(var value)

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

Signal called when the action is triggered. The user visible primary
label of the action when emitted by components. Custom implementations
must make sure this rule is followed, therefore instead of emitting the
signal the trigger function should be called.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@triggered -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$trigger -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="trigger-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

trigger(var value)

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

Checks the value against the action parameterType and triggers the
action. If parameterType is Action.None, it will trigger as

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">action<span class="operator">.</span>trigger()</pre>

.. raw:: html

   <!-- @@@trigger -->


