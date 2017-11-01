A special ActionContext used in Dialogs and Popups.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ActionContext </sdk/apps/qml/Ubuntu |
|                                      | .Components/ActionContext/>`__       |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

A `PopupContext </sdk/apps/qml/Ubuntu.Components/PopupContext/>`__ is
similar to the
`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__, with
the only difference being that there can be only one
`PopupContext </sdk/apps/qml/Ubuntu.Components/PopupContext/>`__ active
at a time in an application. A
`PopupContext </sdk/apps/qml/Ubuntu.Components/PopupContext/>`__ can
have several active
`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__
children declared, however when deactivated all child contexts will be
deactivated as well, and no Action declared in these contexts will be
available through shortcuts.

The toolkit provides this kind of contexts in
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__, Popup and
Dialog. It is highly recommended for applications to have a
`PopupContext </sdk/apps/qml/Ubuntu.Components/PopupContext/>`__ defined
in their rootItem.
