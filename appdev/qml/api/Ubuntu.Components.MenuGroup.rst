Ubuntu.Components.MenuGroup
===========================

.. raw:: html

   <p>

Logical list of items for a menu. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MenuGroup -->

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

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

added(Object action)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

changed()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removed(Object action)

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

addObject(Object object)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeObject(Object object)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MenuGroup-description -->

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
   <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Edit&quot;</span>
   <span class="type"><a href="index.html">MenuGroup</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Undo&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Redo&quot;</span> }
   }
   <span class="type"><a href="index.html">MenuGroup</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Cut&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.ActionList.md">ActionList</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Copy&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Paste&quot;</span> }
   }
   }
   <span class="type"><a href="index.html">MenuGroup</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Select All&quot;</span> }
   }
   }</pre>

.. raw:: html

   <!-- @@@MenuGroup -->

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

-  

   -  

      -  List of Objects in this MenuGroup \* Note that when you set
         this property, the children of the MenuGroup will be ignored,
         \* so do not set the list and define children.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@data -->

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

         added(Object action)

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

         Signal called when a action is added to the list

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@added -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="changed-signal">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         changed()

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

         Signal called when the contents of the group change, including
         child content changes (eg. ActionList child add/remove)

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@changed -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="removed-signal">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         removed(Object action)

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

         Signal called when a action is removed from the list

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

            <!-- $$$addObject -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="addObject-method">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         addObject(Object object)

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

         Adds an Object to the list programatically.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@addObject -->

         .. raw:: html

            <table class="qmlname">

         .. raw:: html

            <tr valign="top" id="removeObject-method">

         .. raw:: html

            <td class="tblQmlFuncNode">

         .. raw:: html

            <p>

         removeObject(Object object)

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

         Removes an object from the list programatically.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@removeObject -->
