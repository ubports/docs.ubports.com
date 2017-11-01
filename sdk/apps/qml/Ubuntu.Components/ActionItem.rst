A visual representation of an Action. The API of ActionItem is a copy of
the API of Action, with additional properties to define visual aspects
of the ActionItem.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `AbstractButton </sdk/apps/qml/Ubunt |
|                                      | u.Components/AbstractButton/>`__,    |
|                                      | `BottomEdgeHint </sdk/apps/qml/Ubunt |
|                                      | u.Components/BottomEdgeHint/>`__,    |
|                                      | and                                  |
|                                      | `ToolbarButton </sdk/apps/qml/Ubuntu |
|                                      | .Components/ToolbarButton/>`__.      |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`action </sdk/apps/qml/Ubuntu.Components/ActionItem#action-prop>`__****
   : Action
-  ****`iconName </sdk/apps/qml/Ubuntu.Components/ActionItem#iconName-prop>`__****
   : string
-  ****`iconSource </sdk/apps/qml/Ubuntu.Components/ActionItem#iconSource-prop>`__****
   : url
-  ****`text </sdk/apps/qml/Ubuntu.Components/ActionItem#text-prop>`__****
   : string

Signals
-------

-  ****`triggered </sdk/apps/qml/Ubuntu.Components/ActionItem#triggered-signal>`__****\ (var
   *value*)

Methods
-------

-  void
   ****`trigger </sdk/apps/qml/Ubuntu.Components/ActionItem#trigger-method>`__****\ (var
   *value*)

Detailed Description
--------------------

If `action </sdk/apps/qml/Ubuntu.Components/ActionItem#action-prop>`__
is set, the values of the other properties will by default be identical
to the `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__'s property
values. Setting the other properties will override the properties copied
from the `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ action : `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__   |
+--------------------------------------------------------------------------+

The `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__ associated with
this `ActionItem </sdk/apps/qml/Ubuntu.Components/ActionItem/>`__. If
action is set, the values of the
`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__ properties are
copied to the values of the
`ActionItem </sdk/apps/qml/Ubuntu.Components/ActionItem/>`__ properties,
unless those were previously overridden.

| 

+--------------------------------------------------------------------------+
|        \ iconName : string                                               |
+--------------------------------------------------------------------------+

The icon associated with the actionItem in the suru icon theme. Defaults
to ``action.iconName``.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folders where the icon themes
are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

If both
`iconSource </sdk/apps/qml/Ubuntu.Components/ActionItem#iconSource-prop>`__
and iconName are defined, iconName will be ignored.

| 

+--------------------------------------------------------------------------+
|        \ iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`__       |
+--------------------------------------------------------------------------+

The image associated with the
`ActionItem </sdk/apps/qml/Ubuntu.Components/ActionItem/>`__. Defaults
to ``action.iconSource``.

This is the URL of any image file. If both iconSource and
`iconName </sdk/apps/qml/Ubuntu.Components/ActionItem#iconName-prop>`__
are defined,
`iconName </sdk/apps/qml/Ubuntu.Components/ActionItem#iconName-prop>`__
will be ignored.

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The title of the actionItem. Defaults to the ``action.text``.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ triggered(`var <http://doc.qt.io/qt-5/qml-var.html>`__ *value*) |
+--------------------------------------------------------------------------+

Called when the actionItem is triggered.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void trigger(`var <http://doc.qt.io/qt-5/qml-var.html>`__       |
| *value*)                                                                 |
+--------------------------------------------------------------------------+

Trigger this action item if it is enabled.

| 
