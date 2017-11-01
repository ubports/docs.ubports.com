ActionContext groups actions together and by providing multiple contexts
the developer is able to control the visibility of the actions. The
ActionManager then exposes the actions from these different contexts.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `PopupContext </sdk/apps/qml/Ubuntu. |
|                                      | Components/PopupContext/>`__.        |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/ActionContext#actions-prop>`__****
   : list<Action>
-  ****`active </sdk/apps/qml/Ubuntu.Components/ActionContext#active-prop>`__****
   : bool

Detailed Description
--------------------

`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__
drives the state of its
`actions </sdk/apps/qml/Ubuntu.Components/ActionContext#actions-prop>`__.
Shortcuts and mnemonics are only registered if the context is active or
if the action is assigned to an
`ActionItem </sdk/apps/qml/Ubuntu.Components/ActionItem/>`__ all of
whose parent contexts are active. In the following example the
`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__
drives the underlaying ``action1`` and ``action2`` shortcuts, and
``orphanAction`` will never trigger as it is neither enclosed in an
active context nor assigned to an
`ActionItem </sdk/apps/qml/Ubuntu.Components/ActionItem/>`__.

.. code:: qml

    import QtQuick 2.4
    import ubuntu.Componenst 1.3
    Rectangle {
        id: root
        width: units.gu(40)
        height: units.gu(71)
        ActionContext {
            id: rootContext
            active: true
            actions: Action {
                shortcut: 'Ctrl+A'
                text: rootContext.active ? "Deactivate" : "Activate"
                onTriggered: rootContext.active = !rootContext.active
            }
        }
        Action {
            id: orphanAction
            text: "Orphan"
            shortcut: 'Ctrl+O'
            onTriggered: console.log("This will not be called")
        }
        Column {
            Button {
                text: rootContext.active ? "Deactivate" : "Activate"
                onClicked: rootContext.active = !rootContext.active
            }
            Button {
                action: Action {
                    id: action1
                    text: "F&irst Button"
                    onTriggered: console.log("First Button triggered")
                }
            }
            Button {
                action: Action {
                    id: action2
                    text: "S&econd Button"
                    shortcut: 'Ctrl+Alt+2'
                    onTriggered: console.log("Second Button triggered")
                }
            }
        }
    }

The toolkit assigns an
`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__ to
each Page component, which is activated/deactivated together with the
Page itself, driving the shortcut activations on the components and
actions declared in the Page.

**See also**
`PopupContext </sdk/apps/qml/Ubuntu.Components/PopupContext/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] actions :                                             |
| list<`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__>               |
+--------------------------------------------------------------------------+

List of Actions in this
`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__.

| 

+--------------------------------------------------------------------------+
|        \ active : bool                                                   |
+--------------------------------------------------------------------------+

If true the context is active. If false the context is inactive.
Defaults to false.

When context has been added to the
`ActionManager </sdk/apps/qml/Ubuntu.Components/ActionManager/>`__
setting this value controls whether or not the actions in a context are
available to external components.

The `ActionManager </sdk/apps/qml/Ubuntu.Components/ActionManager/>`__
monitors the active property of each of the local contexts that has been
added to it. There can be more than one local context active at a. time.
When a local context is set active the manager will notice this and will
export the actions from the context.

**Note:** An Action declared to a component falling under an item that
is a child of an inactive ActiveContext can be triggered manually using
the mouse or connections.

| 
