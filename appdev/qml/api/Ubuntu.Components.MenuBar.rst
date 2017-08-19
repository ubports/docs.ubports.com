Ubuntu.Components.MenuBar
=========================

.. raw:: html

   <p>

MenuBar defines an application menu bar structure More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MenuBar -->

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

menus : list<Menu>

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

void appendMenu(Menu menu)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void insertMenu(int index, Menu menu)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void removeMenu(Menu menu)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MenuBar-description -->

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
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="type"><a href="index.html">MenuBar</a></span> {
   <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;_File&quot;</span>
   <span class="type">MenuItem</span> {
   <span class="name">text</span>: <span class="string">&quot;_New&quot;</span>
   <span class="name">shortcut</span>: <span class="string">&quot;Ctrl+N&quot;</span>
   }
   <span class="type">MenuItem</span> {
   <span class="name">text</span>: <span class="string">&quot;_Open&quot;</span>
   <span class="name">shortcut</span>: <span class="string">&quot;Ctrl+O&quot;</span>
   }
   <span class="type">MenuSeparator</span> {}
   <span class="type">MenuItem</span> {
   <span class="name">action</span>: <span class="name">exitAction</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;_Edit&quot;</span>
   <span class="type">MenuItem</span> {
   <span class="name">text</span>: <span class="string">&quot;_Undo&quot;</span>
   <span class="name">iconSource</span>: <span class="string">&quot;image://theme/undo&quot;</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
   <span class="name">text</span>: <span class="string">&quot;_Window&quot;</span>
   <span class="type">MenuItem</span> {
   <span class="name">text</span>: <span class="string">&quot;Fullscreen&quot;</span>
   <span class="name">checkable</span>: <span class="number">true</span>
   <span class="name">checked</span>: <span class="number">false</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">boundAction</span>
   <span class="name">text</span>: <span class="string">&quot;E_xit&quot;</span>
   <span class="name">onTriggered</span>: {
   <span class="name">Qt</span>.<span class="name">quit</span>();
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@MenuBar -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$menus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="menus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] menus : list<Menu>

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

List of Menus in this MenuBar.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@menus -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$appendMenu -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="appendMenu-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void appendMenu(Menu menu)

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

   -  Append a Menu to the MenuBar

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@appendMenu -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="insertMenu-method">

      .. raw:: html

         <td class="tblQmlFuncNode">

      .. raw:: html

         <p>

      void insertMenu(int index, Menu menu)

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

         -  Insert a Menu to the MenuBar at the specified position

            .. raw:: html

               </p>

            .. raw:: html

               <!-- @@@insertMenu -->

            .. raw:: html

               <table class="qmlname">

            .. raw:: html

               <tr valign="top" id="removeMenu-method">

            .. raw:: html

               <td class="tblQmlFuncNode">

            .. raw:: html

               <p>

            void removeMenu(Menu menu)

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

               -  Remove a Menu from the MenuBar

                  .. raw:: html

                     </p>

                  .. raw:: html

                     <!-- @@@removeMenu -->
