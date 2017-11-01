Describe an action that can be re-used and shared between different
components.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`checkable </sdk/apps/qml/Ubuntu.Components/Action#checkable-prop>`__****
   : bool
-  ****`checked </sdk/apps/qml/Ubuntu.Components/Action#checked-prop>`__****
   : bool
-  ****`description </sdk/apps/qml/Ubuntu.Components/Action#description-prop>`__****
   : string
-  ****`enabled </sdk/apps/qml/Ubuntu.Components/Action#enabled-prop>`__****
   : bool
-  ****`exclusiveGroup </sdk/apps/qml/Ubuntu.Components/Action#exclusiveGroup-prop>`__****
   : ExclusiveGroup
-  ****`iconName </sdk/apps/qml/Ubuntu.Components/Action#iconName-prop>`__****
   : string
-  ****`iconSource </sdk/apps/qml/Ubuntu.Components/Action#iconSource-prop>`__****
   : url
-  ****`keywords </sdk/apps/qml/Ubuntu.Components/Action#keywords-prop>`__****
   : string
-  ****`name </sdk/apps/qml/Ubuntu.Components/Action#name-prop>`__**** :
   string
-  ****`parameterType </sdk/apps/qml/Ubuntu.Components/Action#parameterType-prop>`__****
   : enum
-  ****`shortcut </sdk/apps/qml/Ubuntu.Components/Action#shortcut-prop>`__****
   : var
-  ****`text </sdk/apps/qml/Ubuntu.Components/Action#text-prop>`__**** :
   string
-  ****`visible </sdk/apps/qml/Ubuntu.Components/Action#visible-prop>`__****
   : bool

Signals
-------

-  ****`toggled </sdk/apps/qml/Ubuntu.Components/Action#toggled-signal>`__****\ (bool
   *value*)
-  ****`triggered </sdk/apps/qml/Ubuntu.Components/Action#triggered-signal>`__****\ (var
   *value*)

Methods
-------

-  ****`trigger </sdk/apps/qml/Ubuntu.Components/Action#trigger-method>`__****\ (var
   *value*)

Detailed Description
--------------------

Actions can be used to define a specific task to be executed in
different contexts using different components. The same action can be
assigned to a `Button </sdk/apps/qml/Ubuntu.Components/Button/>`__, a
**Checkbox** or even a
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__. The
`triggered </sdk/apps/qml/Ubuntu.Components/Action#triggered-signal>`__
signal is emitted depending on the component.
`Button </sdk/apps/qml/Ubuntu.Components/Button/>`__ and **CheckBox**
for instance emits the signal when clicked, whereas
`TextField </sdk/apps/qml/Ubuntu.Components/TextField/>`__ emits the
signal when its accepted signal is triggered.

If the
`parameterType </sdk/apps/qml/Ubuntu.Components/Action#parameterType-prop>`__
property is set, the Action is said to be parameterised. This means that
when it is bound to a menu or button, the action expects a typed input
parameter. The type affects the allowed value of the QVariant that must
be passed to the
`trigger </sdk/apps/qml/Ubuntu.Components/Action#trigger-method>`__ and
`triggered </sdk/apps/qml/Ubuntu.Components/Action#triggered-signal>`__.

.. code:: qml

    Action {
        id: action
        parameterType: Action.Integer
        text: "Int value"
        onTriggered: {
            // the value will be undefined
            console.log("value is", value);
        }
        Component.onCompleted: trigger("Hello World!")
    }

When an Action is assigned to a component, the component takes the
values from the action itself. Therefore assigning the action to a
Button is enough to set up the label and the icon to be shown by the
button.

.. code:: cpp

    Action {
        id: stock
        iconName: "call"
        text: "Call"
    }
    Button {
        // this binding will set the Button's text, iconName and
        // iconSource properties.
        action: stock
    }

Actions are used to populate different Popovers like
`ActionSelectionPopover </sdk/apps/qml/Ubuntu.Components/Popups.ActionSelectionPopover/>`__
as well as to define actions for pages, or when defining options in
``ListItemOptions``.

Examples: See `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__

Mnemonics
~~~~~~~~~

Since Ubuntu.Components 1.3 Action supports mnemonics. Mnemonics are
shortcuts defined in the
`text </sdk/apps/qml/Ubuntu.Components/Action#text-prop>`__ property,
prefixed the shortcut letter with &. For instance ``"\&Call"`` will bint
the ``"Alt-C"`` shortcut to the action. When a mnemonic is detected on
the Action and a keyboard is attached to the device, the
`text </sdk/apps/qml/Ubuntu.Components/Action#text-prop>`__ property
will provide a formatted text having the mnemonic letter underscored.

.. code:: qml

    Action {
        id: call
        iconName: "call"
        text: "&Call"
    }

Checkable property
~~~~~~~~~~~~~~~~~~

Since Ubuntu.Components 1.3 Action supports the checkable/checked
properties.

.. code:: qml

    Button {
        action: Action {
            checkable: true
            checked: false
        }
        color: action.checked ? UbuntuColor.green : UbuntuColor.red
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ checkable : bool                                                |
+--------------------------------------------------------------------------+

Whether the action can be checked. Defaults to false.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`Action::checked </sdk/apps/qml/Ubuntu.Components/Action#checked-prop>`__,
`Action::toggled </sdk/apps/qml/Ubuntu.Components/Action#toggled-signal>`__,
and
`ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__.

| 

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

If the action is checkable, this property reflects its checked state.
Defaults to false. Its value is also false while checkable is false.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`Action::checkable </sdk/apps/qml/Ubuntu.Components/Action#checkable-prop>`__,
`Action::toggled </sdk/apps/qml/Ubuntu.Components/Action#toggled-signal>`__,
and
`ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__.

| 

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

User visible secondary description for the action. Description is more
verbose than the
`text </sdk/apps/qml/Ubuntu.Components/Action#text-prop>`__ and should
describe the Action with couple of words.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

If set to false the action can not be triggered. Components visualizing
the action migth either hide the action or make it insensitive. However
visibility can be controlled separately using the
`visible </sdk/apps/qml/Ubuntu.Components/Action#visible-prop>`__
property.

| 

+--------------------------------------------------------------------------+
|        \ exclusiveGroup :                                                |
| `ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__     |
+--------------------------------------------------------------------------+

The `ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__
associated with this action. An exclusive group allows the
`checked </sdk/apps/qml/Ubuntu.Components/Action#checked-prop>`__
property to belinked to other actions, as in radio controls.

.. code:: qml

    Column {
        ExclusiveGroup {
            Action {
                id: action1
                checkable: true
                checked: true
            }
            Action {
                id: action2
                checkable: true
            }
            Action {
                id: action3
                checkable: true
            }
        }
        Button {
            action: action1
            color: action.checked ? UbuntuColor.green : UbuntuColor.red
        }
        Button {
            action: action2
            color: action.checked ? UbuntuColor.green : UbuntuColor.red
        }
        Button {
            action: action3
            color: action.checked ? UbuntuColor.green : UbuntuColor.grey
        }
    }

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ iconName : string                                               |
+--------------------------------------------------------------------------+

The icon associated with the action. If both iconName and
`iconSource </sdk/apps/qml/Ubuntu.Components/Action#iconSource-prop>`__
are defined, iconName will be ignored by the components.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folder where the icon theme
is installed:

-  Ubuntu Touch: /usr/share/icons/suru

| 

+--------------------------------------------------------------------------+
|        \ iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`__       |
+--------------------------------------------------------------------------+

This is a URL to any image file. In order to use an icon from the Ubuntu
theme, use the
`iconName </sdk/apps/qml/Ubuntu.Components/Action#iconName-prop>`__
property instead.

| 

+--------------------------------------------------------------------------+
|        \ keywords : string                                               |
+--------------------------------------------------------------------------+

Additional user visible keywords for the action. The format of the
keywords string is "Keyword 1;Keyword 2;Keyword 3" to allow translators
to define different number of keywords per language. The keywords are
separated by ; and they may contain spaces.

.. code:: qml

    Action {
        text: i18n.tr("Crop")
        description: i18n.tr("Crop the image")
        keywords: i18n.tr("Trim;Cut")
    }

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of the action. By default an action gets it's name generated
automatically if not overridden with later. If name is set to "" then
the action restores it's autogenerated name. The name is not user
visible.

| 

+--------------------------------------------------------------------------+
|        \ parameterType : enum                                            |
+--------------------------------------------------------------------------+

Type of the parameter passed to
`trigger </sdk/apps/qml/Ubuntu.Components/Action#trigger-method>`__ and
`triggered </sdk/apps/qml/Ubuntu.Components/Action#triggered-signal>`__.
Type is an enumeration:

-  **Action.None**: No paramater. (default)
-  **Action.String**: String parameter.
-  **Action.Integer**: Integer parameter.
-  **Action.Bool**: Boolean parameter.
-  **Action.Real**: Single precision floating point parameter.
-  **Action.Object**: The parameter is an object.

.. code:: qml

    Action {
        id: action
        parameterType: Action.String
        onTriggered: {
            // value arguments now contain strings
            console.log(value);
        }
        Component.onCompleted: action.trigger("Hello World")
    }

| 

+--------------------------------------------------------------------------+
|        \ shortcut : `var <http://doc.qt.io/qt-5/qml-var.html>`__         |
+--------------------------------------------------------------------------+

The keyboard shortcut that can be used to trigger the action.
**StandardKey** values such as **StandardKey.Copy** as well as strings
in the form "Ctrl+C" are accepted values.

This QML property was introduced in Qt 1.3.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The user visible primary label of the action.

Mnemonics are shortcuts prefixed in the text with &. If the text has
multiple occurences of the & character, the first one will be considered
for the shortcut. However && can be used for a single & in the text, not
as a mnemonic. The & character cannot be used as shortcut.

| 

+--------------------------------------------------------------------------+
|        \ visible : bool                                                  |
+--------------------------------------------------------------------------+

Specifies whether the action is visible to the user. Defaults to true.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ toggled(bool *value*)                                           |
+--------------------------------------------------------------------------+

Signal called when the action's checked property changes.

**Note:** The toggled signal should be used for checkable actions rather
than the triggered signal.

**See also**
`Action::checkable </sdk/apps/qml/Ubuntu.Components/Action#checkable-prop>`__,
`Action::checked </sdk/apps/qml/Ubuntu.Components/Action#checked-prop>`__,
and
`ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__.

| 

+--------------------------------------------------------------------------+
|        \ triggered(`var <http://doc.qt.io/qt-5/qml-var.html>`__ *value*) |
+--------------------------------------------------------------------------+

Signal called when the action is triggered. The user visible primary
label of the action when emitted by components. Custom implementations
must make sure this rule is followed, therefore instead of emitting the
signal the
`trigger </sdk/apps/qml/Ubuntu.Components/Action#trigger-method>`__
function should be called.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ trigger(`var <http://doc.qt.io/qt-5/qml-var.html>`__ *value*)   |
+--------------------------------------------------------------------------+

Checks the ``value`` against the action
`parameterType </sdk/apps/qml/Ubuntu.Components/Action#parameterType-prop>`__
and triggers the action. If
`parameterType </sdk/apps/qml/Ubuntu.Components/Action#parameterType-prop>`__
is ``Action.None``, it will trigger as

.. code:: cpp

    action.trigger()

| 
