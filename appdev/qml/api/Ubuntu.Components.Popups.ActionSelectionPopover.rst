Ubuntu.Components.Popups.ActionSelectionPopover
===============================================

.. raw:: html

   <p>

A special popover presenting actions to the user. The popover is closed
automatically when the action is chosen. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionSelectionPopover -->

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

import Ubuntu.Components.Popups 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Popover

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

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

actions : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionSelectionPopover-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The actions can be given either using ActionList or as an array of
action objects. The visualization of the actions is realized either
using the default visualization, which is realised using list items
having centered text, or using the component given as delegate. The
actions are triggered with the specified target as parameter.

.. raw:: html

   </p>

.. raw:: html

   <p>

The popover recognizes the following properties from the delegate:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

data properties like modelData, refModelData or action. When either of
these is detected the popover will set their value to the action object
to be visualized.

.. raw:: html

   </li>

.. raw:: html

   <li>

trigger signals like clicked, accepted or triggered. When these are
detected, the popover will automatically connect those to the action's
trigger.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

An example presenting list of actions using ActionList:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ActionSelectionPopover</a></span> {
   <span class="name">delegate</span>: <span class="name">ListItems</span>.Standard {
   <span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span>
   }
   <span class="name">actions</span>: <span class="name">ActionList</span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Action one&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Action two&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

An array of actions can be used when the actions to be presented are
reused from a set of predefined actions:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action1</span>
   <span class="name">text</span>: <span class="string">&quot;Action one&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action2</span>
   <span class="name">text</span>: <span class="string">&quot;Action two&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action3</span>
   <span class="name">text</span>: <span class="string">&quot;Action three&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
   }
   <span class="type">ActionListPopover</span> {
   <span class="name">actions</span>: [<span class="name">action1</span>, <span class="name">action3</span>]
   <span class="name">delegate</span>: <span class="name">ListItems</span>.Standard {
   <span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ActionSelectionPopover -->

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

actions : var

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

The property holds the list of actions to be presented. Each action
triggered will use the actionHost as caller.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

The property holds the delegate to visualize the action. The delegate
should define one of the data holder properties recognized by the
popover in order to access action data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Item

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

The property holds the object on which the action will be performed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->


