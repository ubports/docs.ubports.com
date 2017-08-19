Ubuntu.Components.Menu
======================

.. raw:: html

   <p>

Menu defines a context menu or submenu structure of a MenuBar More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Menu -->

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

data : list<Object>

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

appendObject(object o)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dismiss()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

insertObject(int index, object o)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeObject(object o)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

show(point point)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Menu-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="index.html">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;&amp;File&quot;</span>
   <span class="type"><a href="Ubuntu.Components.MenuGroup.md">MenuGroup</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;&amp;New&quot;</span>
   <span class="name">shortcut</span>: <span class="string">&quot;Ctrl+N&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">text</span>: <span class="string">&quot;&amp;Open&quot;</span>
   <span class="name">shortcut</span>: <span class="string">&quot;Ctrl+O&quot;</span>
   }
   }
   <span class="type"><a href="index.html">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Recent Files&quot;</span>
   <span class="type"><a href="Ubuntu.Components.ActionList.md">ActionList</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;1.txt&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;2.txt&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;3.txt&quot;</span> }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">action</span>: <span class="name">Action</span> {
   <span class="name">text</span>: <span class="string">&quot;E&amp;xit&quot;</span>
   <span class="name">shortcut</span>: <span class="string">&quot;Ctrl+X&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Menu -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] data : list<Object>

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

List of objects representing menu items within the menu.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently supports Menu, Action, AcionList & MenuGroup objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Item object which do not support platformItem will not be exported
for native menus.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$appendObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="appendObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

appendObject(object o)

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

Add a object tto the menu

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@appendObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dismiss-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dismiss()

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

Dismiss and destroy the menu popup.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dismiss -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insertObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

insertObject(int index, object o)

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

Inserts an item at the index in the menu.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently supports Menu, Action, AcionList & MenuGroup objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Item object which do not support platformItem will not be exported
for native menus.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insertObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeObject(object o)

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

Removes the item from the menu.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="show-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

show(point point)

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

Show the menu popup at the given point

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@show -->


