.. _sdk_ubuntuui_header:

UbuntuUI Header
===============


An Ubuntu Header wraps the general Tabs definitions and interaction in the case of a Tab navigation pattern or is used to display the title of the current page when using a PageStack navigation pattern.

In the case of a Tab navigation pattern, declare the Header and its Tabs in HTML as a direct child of the top level MainView as a sibling to the <em>content</em> div.

In the case of a PageStack navigation pattern, the Ubuntu Header HTML element should be present and can be left empty. It will be automatically updated to hold the Title of the current Page being visited. The value of such a title is taken from the data-title attribute of the currently visited Page as it is being pushed at the top of the stack (see PageStack.push()).

######Contained list provides Page navigation A contained unordered list has list items, each of which has "data-page" data attribute whose value of a Page ID that it targets. Clicking the Header/Tabs allows the user to navigate to the Pages identified by these IDs.

**UbuntuUI.Header**\ ()

.. code:: html

     <body>
           <div data-role="mainview">

             <header data-role="header" id="headerID">
               <ul data-role="tabs">
                 <li data-role="tabitem" data-page="main">Main</li>
                 <li data-role="tabitem" data-page="two">Two</li>
               </ul>
             </header>

             <div data-role="content">
               <div data-role="tab" id="main">
                   [...]
               </div>
               <div data-role="tab" id="two">
                   [...]
               </div>
             </div>

           </div>
         </body>

         JavaScript access:
         var header = UI.header("headerID");

-  Methods

DOMElement **element**\ ()
Returns the DOM element associated with the id this widget is bind to.

**Returns:** <DOMElement>

.. code:: html

       var myheader = UI.header("headerid").element();

