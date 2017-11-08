.. _sdk_ubuntu_components_actionmanager:

Ubuntu.Components ActionManager
===============================

ActionManager manages actions and action contexts withion an application.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`actions <sdk_ubuntu_components_actionmanager_actions>` : list<Action>
-  :ref:`globalContext <sdk_ubuntu_components_actionmanager_globalContext>` : ActionContext
-  :ref:`localContexts <sdk_ubuntu_components_actionmanager_localContexts>` : list<ActionContext>

Detailed Description
--------------------

Acts as an interface between the application and external components. Maintains the global context action registration.

There can be many :ref:`ActionManager <sdk_ubuntu_components_actionmanager>` instances in an application, and all instances will have the ActionContexts shared between each other. If individual :ref:`ActionManager <sdk_ubuntu_components_actionmanager>` instances add more Action objects, those will be published as well.

Property Documentation
----------------------

.. _sdk_ubuntu_components_actionmanager_actions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] actions : list<:ref:`Action <sdk_ubuntu_components_action>`>                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A list of actions in the global context.

.. _sdk_ubuntu_components_actionmanager_globalContext:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| globalContext : :ref:`ActionContext <sdk_ubuntu_components_actioncontext>`                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The globalContext of the Application.

**Note:** Setting the :ref:`ActionContext::active <sdk_ubuntu_components_actioncontext_active>` on the global context has no effect.

.. _sdk_ubuntu_components_actionmanager_localContexts:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| localContexts : list<:ref:`ActionContext <sdk_ubuntu_components_actioncontext>`>                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of local contexts.

