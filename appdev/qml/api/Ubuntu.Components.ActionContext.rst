Ubuntu.Components.ActionContext
===============================

.. raw:: html

   <p>

ActionContext groups actions together and by providing multiple contexts
the developer is able to control the visibility of the actions. The
ActionManager then exposes the actions from these different contexts.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionContext -->

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

PopupContext.

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

active : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActionContext-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ActionContext drives the state of its actions. Shortcuts and mnemonics
are only registered if the context is active or if the action is
assigned to an ActionItem all of whose parent contexts are active. In
the following example the ActionContext drives the underlaying action1
and action2 shortcuts, and orphanAction will never trigger as it is
neither enclosed in an active context nor assigned to an ActionItem.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import ubuntu.Componenst 1.3
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="type"><a href="index.html">ActionContext</a></span> {
   <span class="name">id</span>: <span class="name">rootContext</span>
   <span class="name">active</span>: <span class="number">true</span>
   <span class="name">actions</span>: <span class="name">Action</span> {
   <span class="name">shortcut</span>: <span class="string">'Ctrl+A'</span>
   <span class="name">text</span>: <span class="name">rootContext</span>.<span class="name">active</span> ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">rootContext</span>.<span class="name">active</span> <span class="operator">=</span> !<span class="name">rootContext</span>.<span class="name">active</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">orphanAction</span>
   <span class="name">text</span>: <span class="string">&quot;Orphan&quot;</span>
   <span class="name">shortcut</span>: <span class="string">'Ctrl+O'</span>
   <span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This will not be called&quot;</span>)
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="name">rootContext</span>.<span class="name">active</span> ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
   <span class="name">onClicked</span>: <span class="name">rootContext</span>.<span class="name">active</span> <span class="operator">=</span> !<span class="name">rootContext</span>.<span class="name">active</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">Action</span> {
   <span class="name">id</span>: <span class="name">action1</span>
   <span class="name">text</span>: <span class="string">&quot;F&amp;irst Button&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;First Button triggered&quot;</span>)
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">action</span>: <span class="name">Action</span> {
   <span class="name">id</span>: <span class="name">action2</span>
   <span class="name">text</span>: <span class="string">&quot;S&amp;econd Button&quot;</span>
   <span class="name">shortcut</span>: <span class="string">'Ctrl+Alt+2'</span>
   <span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Second Button triggered&quot;</span>)
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The toolkit assigns an ActionContext to each Page component, which is
activated/deactivated together with the Page itself, driving the
shortcut activations on the components and actions declared in the Page.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PopupContext.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActionContext -->

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

List of Actions in this ActionContext.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

active : bool

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

If true the context is active. If false the context is inactive.
Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

When context has been added to the ActionManager setting this value
controls whether or not the actions in a context are available to
external components.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ActionManager monitors the active property of each of the local
contexts that has been added to it. There can be more than one local
context active at a. time. When a local context is set active the
manager will notice this and will export the actions from the context.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: An Action declared to a component falling under an item that is a
child of an inactive ActiveContext can be triggered manually using the
mouse or connections.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->


