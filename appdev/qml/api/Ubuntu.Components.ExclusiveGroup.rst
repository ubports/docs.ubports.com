Ubuntu.Components.ExclusiveGroup
================================

.. raw:: html

   <p>

ExclusiveGroup provides a way to declare several checkable controls as
mutually exclusive. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExclusiveGroup -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

ActionList

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

current : Action

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

void bindCheckable(object object)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void unbindCheckable(object object)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ExclusiveGroup-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ExclusiveGroup will only allow a single object to have it's
checkable property set to "true" at any one time. The exclusive group
accepts child Actions, but objects other than Actions can be used by
using the bindCheckable function as long as they support one of the
required signals, and a "checked" property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ExclusiveGroup</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Bool</span>
   <span class="name">state</span>: <span class="number">true</span>
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Bool</span>
   <span class="name">state</span>: <span class="number">false</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ExclusiveGroup -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$current -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="current-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

current : Action

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

Returns the currently checked action

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@current -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$bindCheckable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bindCheckable-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void bindCheckable(object object)

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

Explicitly bind an objects checkability to this exclusive group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This only works with objects which support the following signals
signals:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

toggled(bool)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">ExclusiveGroup</a></span> {
   <span class="name">id</span>: <span class="name">exclusiveGroup</span>
   }
   <span class="type"><a href="QtQml.Instantiator.md">Instantiator</a></span> {
   <span class="name">model</span>: <span class="number">4</span>
   <span class="name">onObjectAdded</span>: <span class="name">exclusiveGroup</span>.<span class="name">bindCheckable</span>(<span class="name">object</span>)
   <span class="name">onObjectRemoved</span>: <span class="name">exclusiveGroup</span>.<span class="name">unbindCheckable</span>(<span class="name">object</span>)
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">checkable</span>: <span class="number">true</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

See also ExclusiveGroup::unbindCheckable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bindCheckable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="unbindCheckable-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void unbindCheckable(object object)

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

Explicitly unbind an objects checkability from this exclusive group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ExclusiveGroup::bindCheckable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@unbindCheckable -->


