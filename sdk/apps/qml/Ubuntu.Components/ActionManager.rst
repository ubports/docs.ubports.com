ActionManager manages actions and action contexts withion an
application.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/ActionManager#actions-prop>`__****
   : list<Action>
-  ****`globalContext </sdk/apps/qml/Ubuntu.Components/ActionManager#globalContext-prop>`__****
   : ActionContext
-  ****`localContexts </sdk/apps/qml/Ubuntu.Components/ActionManager#localContexts-prop>`__****
   : list<ActionContext>

Detailed Description
--------------------

Acts as an interface between the application and external components.
Maintains the global context action registration.

There can be many
`ActionManager </sdk/apps/qml/Ubuntu.Components/ActionManager/>`__
instances in an application, and all instances will have the
ActionContexts shared between each other. If individual
`ActionManager </sdk/apps/qml/Ubuntu.Components/ActionManager/>`__
instances add more Action objects, those will be published as well.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] actions :                                             |
| list<`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__>               |
+--------------------------------------------------------------------------+

A list of actions in the global context.

| 

+--------------------------------------------------------------------------+
|        \ globalContext :                                                 |
| `ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__       |
+--------------------------------------------------------------------------+

The globalContext of the Application.

**Note:** Setting the
`ActionContext::active </sdk/apps/qml/Ubuntu.Components/ActionContext#active-prop>`__
on the global context has no effect.

| 

+--------------------------------------------------------------------------+
|        \ localContexts :                                                 |
| list<`ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__> |
+--------------------------------------------------------------------------+

List of local contexts.

| 
