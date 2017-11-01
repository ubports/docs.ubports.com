A special popover presenting actions to the user. The popover is closed
automatically when the action is chosen.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Popups 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Popover </sdk/apps/qml/Ubuntu.Compo |
|                                      | nents/Popups.Popover/>`__            |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/Popups.ActionSelectionPopover#actions-prop>`__****
   : var
-  ****`delegate </sdk/apps/qml/Ubuntu.Components/Popups.ActionSelectionPopover#delegate-prop>`__****
   : Component
-  ****`target </sdk/apps/qml/Ubuntu.Components/Popups.ActionSelectionPopover#target-prop>`__****
   : Item

Detailed Description
--------------------

The actions can be given either using
`ActionList </sdk/apps/qml/Ubuntu.Components/ActionList/>`__ or as an
array of action objects. The visualization of the actions is realized
either using the default visualization, which is realised using list
items having centered text, or using the component given as delegate.
The actions are triggered with the specified target as parameter.

The popover recognizes the following properties from the delegate:

-  data properties like **modelData**, **refModelData** or **action**.
   When either of these is detected the popover will set their value to
   the action object to be visualized.
-  trigger signals like **clicked**, **accepted** or **triggered**. When
   these are detected, the popover will automatically connect those to
   the action's trigger.

An example presenting list of actions using
`ActionList </sdk/apps/qml/Ubuntu.Components/ActionList/>`__:

.. code:: qml

    ActionSelectionPopover {
        delegate: ListItems.Standard {
          text: action.text
        }
        actions: ActionList {
          Action {
              text: "Action one"
              onTriggered: print(text)
          }
          Action {
              text: "Action two"
              onTriggered: print(text)
          }
        }
    }

An array of actions can be used when the actions to be presented are
reused from a set of predefined actions:

.. code:: qml

    Item {
        Action {
            id: action1
            text: "Action one"
            onTriggered: print(text)
        }
        Action {
            id: action2
            text: "Action two"
            onTriggered: print(text)
        }
        Action {
            id: action3
            text: "Action three"
            onTriggered: print(text)
        }
        ActionListPopover {
            actions: [action1, action3]
            delegate: ListItems.Standard {
                text: action.text
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ actions : `var <http://doc.qt.io/qt-5/qml-var.html>`__          |
+--------------------------------------------------------------------------+

The property holds the list of actions to be presented. Each action
triggered will use the actionHost as caller.

| 

+--------------------------------------------------------------------------+
|        \ delegate : `Component </sdk/apps/qml/QtQml/Component/>`__       |
+--------------------------------------------------------------------------+

The property holds the delegate to visualize the action. The delegate
should define one of the data holder properties recognized by the
popover in order to access action data.

| 

+--------------------------------------------------------------------------+
|        \ target : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

The property holds the object on which the action will be performed.

| 
