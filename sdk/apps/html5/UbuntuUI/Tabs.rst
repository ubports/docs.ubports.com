.. _sdk_ubuntuui_tabs:

UbuntuUI Tabs
=============


One of the navigation pattern that can be used within an Ubuntu App is the flat navigation. Tabs are the standard way to provide such a navigation pattern from within your application.

Tabs are defined from within the Header part of your application HTML. See the Header class for more information.

Declare the Header and Tabs in HTML as a direct child of the top level Page as a sibling to the content div.

**UbuntuUI.Tabs**\ ()

.. code:: html

     <body>
           <div data-role="mainview">

             <header data-role="header">
               <ul data-role="tabs">
                 <li data-role="tabitem" data-page="main">
                   Main
                 </li>
                 <li data-role="tabitem" data-page="page2">
                   Two
                 </li>
               </ul>
             </header>

             <div data-role="content">
               <div data-role="tab" id="main">
                 [...]
               </div>

               <div data-role="tab" id="page2">
                 [...]
               </div>
             </div>

           </div>
         </body>

         JavaScript access:
         UI.tabs.METHOD();

-  Properties

``count`` <**Unknown**>
Return the number of tab elements in the header

``currentPage`` <**Unknown**>
Return the page associated with the currently selected tab

``selectedTab`` <**Unknown**>
Return the currently selected tab element

``selectedTabIndex`` <**Unknown**>
Return the index of the selected tab

``selectedTabIndex`` <**Unknown**>
Sets the index of the selected tab

``tabChildren`` <**Unknown**>
Return the list of DOM elements of the tab

