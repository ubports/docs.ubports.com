Ubuntu.Components.ActionManager
===============================

.. raw:: html

   <p>

ActionManager manages actions and action contexts withion an
application. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionManager -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

actions : list<Action>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

globalContext : ActionContext

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

localContexts : list<ActionContext>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionManager-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Acts as an interface between the application and external components.
Maintains the global context action registration.

.. raw:: html

   </p>

.. raw:: html

   <p>

There can be many ActionManager instances in an application, and all
instances will have the ActionContexts shared between each other. If
individual ActionManager instances add more Action objects, those will
be published as well.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionManager -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] actions : list<Action>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

A list of actions in the global context.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="globalContext-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

globalContext : ActionContext

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The globalContext of the Application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting the ActionContext::active on the global context has no
effect.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@globalContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="localContexts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

localContexts : list<ActionContext>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

List of local contexts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@localContexts -->


