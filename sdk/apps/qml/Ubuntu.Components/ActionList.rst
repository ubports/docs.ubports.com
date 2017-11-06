.. _sdk_ubuntu_components_actionlist:

Ubuntu.Components ActionList
============================

List of Action items An ActionList provies a way of grouping actions together.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>`.                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`actions <sdk_ubuntu_components_actionlist_actions>` : list<Action>

Signals
-------

-  :ref:`added <sdk_ubuntu_components_actionlist_added>`\ (Action *action*)
-  :ref:`removed <sdk_ubuntu_components_actionlist_removed>`\ (Action *action*)

Methods
-------

-  :ref:`addAction <sdk_ubuntu_components_actionlist_addAction>`\ (Action *action*)
-  :ref:`removeAction <sdk_ubuntu_components_actionlist_removeAction>`\ (Action *action*)

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

.. _sdk_ubuntu_components_actionlist_actions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] actions : list<:ref:`Action <sdk_ubuntu_components_action>`>                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of Actions in this :ref:`ActionList <sdk_ubuntu_components_actionlist>` Note that when you set this property, the children of the :ref:`ActionList <sdk_ubuntu_components_actionlist>` will be ignored, so do not set the list and define children.

The advantage of setting actions over using the children is that the same :ref:`Action <sdk_ubuntu_components_action>` items can be used in several sets of actions.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_actionlist_added:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| added(:ref:`Action <sdk_ubuntu_components_action>` *action*)                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal called when an action is added to the list

This QML signal was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_actionlist_removed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removed(:ref:`Action <sdk_ubuntu_components_action>` *action*)                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Signal called when an action is removed from the list

This QML signal was introduced in Ubuntu.Components 1.3.

Method Documentation
--------------------

.. _sdk_ubuntu_components_actionlist_addAction:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addAction(:ref:`Action <sdk_ubuntu_components_action>` *action*)                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

**See also** :ref:`ActionList::removeAction <sdk_ubuntu_components_actionlist_removeAction>`.

.. _sdk_ubuntu_components_actionlist_removeAction:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeAction(:ref:`Action <sdk_ubuntu_components_action>` *action*)                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes an action from the list programatically.

This QML method was introduced in Ubuntu.Components 1.3.

**See also** :ref:`ActionList::addAction <sdk_ubuntu_components_actionlist_addAction>`.

