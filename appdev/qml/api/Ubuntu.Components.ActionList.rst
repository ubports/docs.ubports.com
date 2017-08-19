Ubuntu.Components.ActionList
============================

.. raw:: html

   <p>

List of Action items An ActionList provies a way of grouping actions
together. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionList -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ExclusiveGroup.

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

actions : list<Action>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

added(Action action)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removed(Action action)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

addAction(Action action)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeAction(Action action)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionList-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ActionList</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action1</span>
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action2</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ActionList -->

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

List of Actions in this ActionList Note that when you set this property,
the children of the ActionList will be ignored, so do not set the list
and define children.

.. raw:: html

   </p>

.. raw:: html

   <p>

The advantage of setting actions over using the children is that the
same Action items can be used in several sets of actions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$added -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="added-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

added(Action action)

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

Signal called when an action is added to the list

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@added -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removed(Action action)

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

Signal called when an action is removed from the list

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML signal was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removed -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addAction-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addAction(Action action)

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

Adds an Action to the list programatically.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQml.Instantiator.md">Instantiator</a></span> {
   <span class="name">model</span>: <span class="number">4</span>
   <span class="name">onObjectAdded</span>: <span class="name">actionList</span>.<span class="name">addAction</span>(<span class="name">object</span>)
   <span class="name">onObjectRemoved</span>: <span class="name">actionList</span>.<span class="name">removeAction</span>(<span class="name">object</span>)
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {}
   }
   <span class="type"><a href="index.html">ActionList</a></span> {
   <span class="name">id</span>: <span class="name">actionList</span>
   }
   }</pre>

.. raw:: html

   <p>

This QML method was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ActionList::removeAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeAction-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeAction(Action action)

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

Removes an action from the list programatically.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ActionList::addAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeAction -->


