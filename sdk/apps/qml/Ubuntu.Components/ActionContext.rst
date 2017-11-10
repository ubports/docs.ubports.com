.. _sdk_ubuntu_components_actioncontext:

Ubuntu.Components ActionContext
===============================

ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`PopupContext <sdk_ubuntu_components_popupcontext>`.                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`actions <sdk_ubuntu_components_actioncontext_actions>` : list<Action>
-  :ref:`active <sdk_ubuntu_components_actioncontext_active>` : bool

Detailed Description
--------------------

:ref:`ActionContext <sdk_ubuntu_components_actioncontext>` drives the state of its :ref:`actions <sdk_ubuntu_components_actioncontext_actions>`. Shortcuts and mnemonics are only registered if the context is active or if the action is assigned to an :ref:`ActionItem <sdk_ubuntu_components_actionitem>` all of whose parent contexts are active. In the following example the :ref:`ActionContext <sdk_ubuntu_components_actioncontext>` drives the underlaying ``action1`` and ``action2`` shortcuts, and ``orphanAction`` will never trigger as it is neither enclosed in an active context nor assigned to an :ref:`ActionItem <sdk_ubuntu_components_actionitem>`.

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

The toolkit assigns an :ref:`ActionContext <sdk_ubuntu_components_actioncontext>` to each Page component, which is activated/deactivated together with the Page itself, driving the shortcut activations on the components and actions declared in the Page.

**See also** :ref:`PopupContext <sdk_ubuntu_components_popupcontext>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_actioncontext_actions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] actions : list<:ref:`Action <sdk_ubuntu_components_action>`>                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of Actions in this :ref:`ActionContext <sdk_ubuntu_components_actioncontext>`.

.. _sdk_ubuntu_components_actioncontext_active:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| active : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true the context is active. If false the context is inactive. Defaults to false.

When context has been added to the :ref:`ActionManager <sdk_ubuntu_components_actionmanager>` setting this value controls whether or not the actions in a context are available to external components.

The :ref:`ActionManager <sdk_ubuntu_components_actionmanager>` monitors the active property of each of the local contexts that has been added to it. There can be more than one local context active at a. time. When a local context is set active the manager will notice this and will export the actions from the context.

**Note:** An Action declared to a component falling under an item that is a child of an inactive ActiveContext can be triggered manually using the mouse or connections.

