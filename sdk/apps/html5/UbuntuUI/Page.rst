.. _sdk_ubuntuui_page:

UbuntuUI Page
=============


One of the navigation pattern that can be used within an Ubuntu App is the deep navigation. This pattern is implemented by the Pagestack. A Pagestack contains one or more Pages. Each page displays full-screen. See the Pagestack class.

Each Page must have <em>id</em> and <em>data-title</em> attributes. The <em>id</em> attribute is used a unique reference to push the Page to the top of the Pagestack (see the Pagestack class). The <em>data-title</em> attribute is used to update the Header title as pages are pushed and poped.

**UbuntuUI.Page**\ ()

.. code:: html

     </body>
           <div data-role="mainview">

             <header data-role="header">
             </header>

             <div data-role="content">
               <div data-role="pagestack">
                 <div data-role="page" data-title="Main" id="main">
                   [...]
                 </div>
                 <div data-role="page" data-title="My Data" id="data">
                   [...]
                 </div>
               </div>
             </div>

           </div>
         </body>

         JavaScript access:
         var page = UI.page("pageID");

-  Methods
-  Properties

**activate**\ (``properties``)
Activates the current page.

**Parameters:**

- ``properties`` **<Object>**

   -  Data to be passed down to any activation callback listening for the page activation (see Page.onactivated)

**deactivate**\ ()
Deactivates the current page.

**element**\ ()
Returns the DOM element associated with the selector this widget is bind to.

.. code:: html

      var mypage = UI.page("pageid").element();

Boolean **isPage**\ ()
Validates that a given DOM node element is a Ubuntu UI Page.

**Returns:** <Boolean>
if the DOM element is a page

**onactivated**\ (``callback``)
Activates the current page.

**Parameters:**

- ``callback`` **<Function>**

   -  Callback function called with activation properties (from Pagestack.push) when the page is activated

``actions`` <**List**>
actions property.

``title`` <**String**>
title property.

