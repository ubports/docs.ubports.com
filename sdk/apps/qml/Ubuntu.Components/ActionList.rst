List of Action items An ActionList provies a way of grouping actions
together.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ExclusiveGroup </sdk/apps/qml/Ubunt |
|                                      | u.Components/ExclusiveGroup/>`__.    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/ActionList#actions-prop>`__****
   : list<Action>

Signals
-------

-  ****`added </sdk/apps/qml/Ubuntu.Components/ActionList#added-signal>`__****\ (Action
   *action*)
-  ****`removed </sdk/apps/qml/Ubuntu.Components/ActionList#removed-signal>`__****\ (Action
   *action*)

Methods
-------

-  ****`addAction </sdk/apps/qml/Ubuntu.Components/ActionList#addAction-method>`__****\ (Action
   *action*)
-  ****`removeAction </sdk/apps/qml/Ubuntu.Components/ActionList#removeAction-method>`__****\ (Action
   *action*)

Detailed Description
--------------------

.. code:: qml

    ActionList {
        Action {
            id: action1
        }
        Action {
            id: action2
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] actions :                                             |
| list<`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__>               |
+--------------------------------------------------------------------------+

List of Actions in this
`ActionList </sdk/apps/qml/Ubuntu.Components/ActionList/>`__ Note that
when you set this property, the children of the
`ActionList </sdk/apps/qml/Ubuntu.Components/ActionList/>`__ will be
ignored, so do not set the list and define children.

The advantage of setting actions over using the children is that the
same `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__ items can be
used in several sets of actions.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ added(`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__      |
| *action*)                                                                |
+--------------------------------------------------------------------------+

Signal called when an action is added to the list

This QML signal was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ removed(`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__    |
| *action*)                                                                |
+--------------------------------------------------------------------------+

Signal called when an action is removed from the list

This QML signal was introduced in Ubuntu.Components 1.3.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addAction(`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__  |
| *action*)                                                                |
+--------------------------------------------------------------------------+

Adds an Action to the list programatically.

.. code:: qml

    Item {
        Instantiator {
            model: 4
            onObjectAdded: actionList.addAction(object)
            onObjectRemoved: actionList.removeAction(object)
            Action {}
        }
        ActionList {
            id: actionList
        }
    }

This QML method was introduced in Ubuntu.Components 1.3.

**See also**
`ActionList::removeAction </sdk/apps/qml/Ubuntu.Components/ActionList#removeAction-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ removeAction(`Action </sdk/apps/qml/Ubuntu.Components/Action/>` |
| __                                                                       |
| *action*)                                                                |
+--------------------------------------------------------------------------+

Removes an action from the list programatically.

This QML method was introduced in Ubuntu.Components 1.3.

**See also**
`ActionList::addAction </sdk/apps/qml/Ubuntu.Components/ActionList#addAction-method>`__.

| 
