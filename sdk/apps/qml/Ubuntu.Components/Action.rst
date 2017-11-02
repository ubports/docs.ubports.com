.. _sdk_ubuntu_components_action:
Ubuntu.Components Action
========================

Describe an action that can be re-used and shared between different
components.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`checkable <sdk_ubuntu_components_action_checkable-prop>` :
   bool
-  :ref:`checked <sdk_ubuntu_components_action_checked-prop>` :
   bool
-  :ref:`description <sdk_ubuntu_components_action_description-prop>`
   : string
-  :ref:`enabled <sdk_ubuntu_components_action_enabled-prop>` :
   bool
-  :ref:`exclusiveGroup <sdk_ubuntu_components_action_exclusiveGroup-prop>`
   : ExclusiveGroup
-  :ref:`iconName <sdk_ubuntu_components_action_iconName-prop>` :
   string
-  :ref:`iconSource <sdk_ubuntu_components_action_iconSource-prop>`
   : url
-  :ref:`keywords <sdk_ubuntu_components_action_keywords-prop>` :
   string
-  :ref:`name <sdk_ubuntu_components_action_name-prop>` : string
-  :ref:`parameterType <sdk_ubuntu_components_action_parameterType-prop>`
   : enum
-  :ref:`shortcut <sdk_ubuntu_components_action_shortcut-prop>` :
   var
-  :ref:`text <sdk_ubuntu_components_action_text-prop>` : string
-  :ref:`visible <sdk_ubuntu_components_action_visible-prop>` :
   bool

Signals
-------

-  :ref:`toggled <sdk_ubuntu_components_action_toggled-signal>`\ (bool
   *value*)
-  :ref:`triggered <sdk_ubuntu_components_action_triggered-signal>`\ (var
   *value*)

Methods
-------

-  :ref:`trigger <sdk_ubuntu_components_action_trigger-method>`\ (var
   *value*)

Detailed Description
--------------------

Actions can be used to define a specific task to be executed in
different contexts using different components. The same action can be
assigned to a :ref:`Button <sdk_ubuntu_components_button>`, a **Checkbox**
or even a :ref:`TextField <sdk_ubuntu_components_textfield>`. The
:ref:`triggered <sdk_ubuntu_components_action#triggered-signal>` signal is
emitted depending on the component.
:ref:`Button <sdk_ubuntu_components_button>` and **CheckBox** for instance
emits the signal when clicked, whereas
:ref:`TextField <sdk_ubuntu_components_textfield>` emits the signal when
its accepted signal is triggered.

If the
:ref:`parameterType <sdk_ubuntu_components_action#parameterType-prop>`
property is set, the Action is said to be parameterised. This means that
when it is bound to a menu or button, the action expects a typed input
parameter. The type affects the allowed value of the QVariant that must
be passed to the
:ref:`trigger <sdk_ubuntu_components_action#trigger-method>` and
:ref:`triggered <sdk_ubuntu_components_action#triggered-signal>`.

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
`ActionSelectionPopover </sdk/apps/qml/Ubuntu.Components/Popups.ActionSelectionPopover/>`_ 
as well as to define actions for pages, or when defining options in
``ListItemOptions``.

Examples: See :ref:`Page <sdk_ubuntu_components_page>`

Mnemonics
~~~~~~~~~

Since Ubuntu.Components 1.3 Action supports mnemonics. Mnemonics are
shortcuts defined in the
:ref:`text <sdk_ubuntu_components_action#text-prop>` property, prefixed the
shortcut letter with &. For instance ``"\&Call"`` will bint the
``"Alt-C"`` shortcut to the action. When a mnemonic is detected on the
Action and a keyboard is attached to the device, the
:ref:`text <sdk_ubuntu_components_action#text-prop>` property will provide
a formatted text having the mnemonic letter underscored.

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

.. _sdk_ubuntu_components_action_checkable-prop:

+--------------------------------------------------------------------------+
|        \ checkable : bool                                                |
+--------------------------------------------------------------------------+

Whether the action can be checked. Defaults to false.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
:ref:`Action::checked <sdk_ubuntu_components_action#checked-prop>`,
:ref:`Action::toggled <sdk_ubuntu_components_action#toggled-signal>`, and
:ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>`.

| 

.. _sdk_ubuntu_components_action_checked-prop:

+--------------------------------------------------------------------------+
|        \ checked : bool                                                  |
+--------------------------------------------------------------------------+

If the action is checkable, this property reflects its checked state.
Defaults to false. Its value is also false while checkable is false.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
:ref:`Action::checkable <sdk_ubuntu_components_action#checkable-prop>`,
:ref:`Action::toggled <sdk_ubuntu_components_action#toggled-signal>`, and
:ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>`.

| 

.. _sdk_ubuntu_components_action_description-prop:

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

User visible secondary description for the action. Description is more
verbose than the :ref:`text <sdk_ubuntu_components_action#text-prop>` and
should describe the Action with couple of words.

| 

.. _sdk_ubuntu_components_action_enabled-prop:

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

If set to false the action can not be triggered. Components visualizing
the action migth either hide the action or make it insensitive. However
visibility can be controlled separately using the
:ref:`visible <sdk_ubuntu_components_action#visible-prop>` property.

| 

.. _sdk_ubuntu_components_action_exclusiveGroup-prop:

+--------------------------------------------------------------------------+
|        \ exclusiveGroup :                                                |
| :ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>`                |
+--------------------------------------------------------------------------+

The :ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>` associated
with this action. An exclusive group allows the
:ref:`checked <sdk_ubuntu_components_action#checked-prop>` property to
belinked to other actions, as in radio controls.

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

.. _sdk_ubuntu_components_action_iconName-prop:

+--------------------------------------------------------------------------+
|        \ iconName : string                                               |
+--------------------------------------------------------------------------+

The icon associated with the action. If both iconName and
:ref:`iconSource <sdk_ubuntu_components_action#iconSource-prop>` are
defined, iconName will be ignored by the components.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folder where the icon theme
is installed:

-  Ubuntu Touch: /usr/share/icons/suru

| 

.. _sdk_ubuntu_components_action_iconSource-prop:

+--------------------------------------------------------------------------+
|        \ iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`_        |
+--------------------------------------------------------------------------+

This is a URL to any image file. In order to use an icon from the Ubuntu
theme, use the :ref:`iconName <sdk_ubuntu_components_action#iconName-prop>`
property instead.

| 

.. _sdk_ubuntu_components_action_keywords-prop:

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

.. _sdk_ubuntu_components_action_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of the action. By default an action gets it's name generated
automatically if not overridden with later. If name is set to "" then
the action restores it's autogenerated name. The name is not user
visible.

| 

.. _sdk_ubuntu_components_action_parameterType-prop:

+--------------------------------------------------------------------------+
|        \ parameterType : enum                                            |
+--------------------------------------------------------------------------+

Type of the parameter passed to
:ref:`trigger <sdk_ubuntu_components_action#trigger-method>` and
:ref:`triggered <sdk_ubuntu_components_action#triggered-signal>`. Type is
an enumeration:

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

.. _sdk_ubuntu_components_action_shortcut-prop:

+--------------------------------------------------------------------------+
|        \ shortcut : `var <http://doc.qt.io/qt-5/qml-var.html>`_          |
+--------------------------------------------------------------------------+

The keyboard shortcut that can be used to trigger the action.
**StandardKey** values such as **StandardKey.Copy** as well as strings
in the form "Ctrl+C" are accepted values.

This QML property was introduced in Qt 1.3.

| 

.. _sdk_ubuntu_components_action_text-prop:

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The user visible primary label of the action.

Mnemonics are shortcuts prefixed in the text with &. If the text has
multiple occurences of the & character, the first one will be considered
for the shortcut. However && can be used for a single & in the text, not
as a mnemonic. The & character cannot be used as shortcut.

| 

.. _sdk_ubuntu_components_action_visible-prop:

+--------------------------------------------------------------------------+
|        \ visible : bool                                                  |
+--------------------------------------------------------------------------+

Specifies whether the action is visible to the user. Defaults to true.

| 

Signal Documentation
--------------------

.. _sdk_ubuntu_components_action_toggled(bool *value*)-prop:

+--------------------------------------------------------------------------+
|        \ toggled(bool *value*)                                           |
+--------------------------------------------------------------------------+

Signal called when the action's checked property changes.

**Note:** The toggled signal should be used for checkable actions rather
than the triggered signal.

**See also**
:ref:`Action::checkable <sdk_ubuntu_components_action#checkable-prop>`,
:ref:`Action::checked <sdk_ubuntu_components_action#checked-prop>`, and
:ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>`.

| 

.. _sdk_ubuntu_components_action_triggered(`var <http-prop:

+--------------------------------------------------------------------------+
|        \ triggered(`var <http://doc.qt.io/qt-5/qml-var.html>`_  *value*) |
+--------------------------------------------------------------------------+

Signal called when the action is triggered. The user visible primary
label of the action when emitted by components. Custom implementations
must make sure this rule is followed, therefore instead of emitting the
signal the :ref:`trigger <sdk_ubuntu_components_action#trigger-method>`
function should be called.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_action_trigger-method:

+--------------------------------------------------------------------------+
|        \ trigger(`var <http://doc.qt.io/qt-5/qml-var.html>`_  *value*)   |
+--------------------------------------------------------------------------+

Checks the ``value`` against the action
:ref:`parameterType <sdk_ubuntu_components_action#parameterType-prop>` and
triggers the action. If
:ref:`parameterType <sdk_ubuntu_components_action#parameterType-prop>` is
``Action.None``, it will trigger as

.. code:: cpp

    action.trigger()

| 
