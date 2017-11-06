.. _sdk_ubuntuui_tab:

UbuntuUI Tab
============


One of the navigation pattern that can be used within an Ubuntu App is the flat navigation. Tabs are the standard way to provide such a navigation pattern from within your application.

A Tab represents the UI element that hosts your tab content. This UI element is being activated by the user selecting it as part of the Header element.

**UbuntuUI.Tab**\ ()

.. code:: html

     </body>

           <div data-role="mainview">
             <header data-role="header" id="headerID">
               <ul data-role="tabs">
                 <li data-role="tabitem" data-page="tabID">
                   Main
                 </li>
                 <li data-role="tabitem" data-page="page2">
                   Two
                 </li>
               </ul>
             </header>

             <div data-role="content">
                 <div data-role="tab" id="tabID">
                   [...]
                 </div>
                 <div data-role="tab" id="page2">
                   [...]
                 </div>
             </div>

           </div>
         </body>

         JavaScript access:
         var tab = UI.tab("tabID");

-  Methods

**activate**\ ()
Activates the current tab.

**deactivate**\ ()
Deactivates the current tab.

DOMElement **element**\ ()
Returns the DOM element associated with the selector this widget is bind to.

**Returns:** <DOMElement>

.. code:: html

      var mytab = UI.tab("tabid").element();

Boolean **isTab**\ ()
Validates that a given DOM node element is a Ubuntu UI Tab.

**Returns:** <Boolean>
if the DOM element is a tab

