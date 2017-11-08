.. _sdk_ubuntuui_pagestack:

UbuntuUI Pagestack
==================


The Pagestack manages all Pages in a stack data structure. Initially, the Pagestack contains no Pages. The <em>push()</em> method is normally executed on load to display the app starting page.

.. code:: html

     UI.pagestack.push("pageID")

The topmost Page on the Pagestack is always displayed.

The Pagestack is declared as a direct child of the <em>content</em> div.

#####Default application wide footer The Pagestack contains a default <em>footer</em> (represented in JavaScript as a Toolbar), even if you do not declare one in HTML. The <em>footer</em> has a single Back button. #####Customized application wide footer This application-wide <em>footer</em> can be customized (for example, you can add Buttons) by declaring a <em>footer</em> as a direct child of the <em>pagestack</em> div (see example). ######Page specific footers A <em>page</em> may declare a page-specific <em>footer</em> as a child element.

**UbuntuUI.Pagestack**\ ()

.. code:: html

    <div data-role="mainview">

           <header data-role="header">
           </header>

           <div data-role="content">

             <div data-role="pagestack">

               <div data-role="page" id="main" data-title="Page 1">
               </div>

               <div data-role="page" id="page2" data-title="Page 2">
                 [...]
                 <footer data-role="footer" class="revealed" id="footerPage2">
                   [...]
                 </footer>
               </div>

               <footer data-role="footer" class="revealed" id="footerAppWide">
                 [...]
               </footer>

             </div>  <!-- end of Pagestack div -->

           </div>

         </div>

         JavaScript access:
         UI.pagestack.METHOD();

-  Methods

**clear**\ ()
Clears the whole page stack

PageID \| Null **currentPage**\ ()
Gets the id attribute of the page element on top of this pagestack

**Returns:** <PageID \| Null>

-  The topmost page's id attribute, else null when there are no pages on this pagestack

Number **depth**\ ()
Gets the number of pages in this pagestack

**Returns:** <Number>

-  The number of pages in this pagestack

Boolean **isEmpty**\ ()
Checks for zero pages in this pagestack

**Returns:** <Boolean>

-  True when this pagestack has no pages, else false

**pop**\ ()
Pops the current page off this pagestack, which causes the next page to become the top page and to display

**push**\ (``id, properties``)
Push a page to the top of this pagestack

**Parameters:**

- ``id`` **<String>**

   -  The id attribute of the page element to be pushed

- ``properties`` **<Object>**

   -  A list of properties passed down to the page that is to be activated

