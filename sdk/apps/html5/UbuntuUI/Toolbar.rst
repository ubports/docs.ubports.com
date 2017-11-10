.. _sdk_ubuntuui_toolbar:

UbuntuUI Toolbar
================


A Toolbar is the JavaScript representation of an Ubuntu HTML5 app <em>footer</em>.

######Contained List provides buttons The Toolbar contains a List, where each list item is treated as a Button (see below). List items (Buttons) are pushed to the right. The default Back button always exists to the left and does not need to be declared.

#####Default and custom footers See the Pagestack class documentation for information about the default application-wide Footer, customizing it, and adding Page-specific Footers.

**UbuntuUI.Toolbar**\ ()

.. code:: html

     <footer data-role="footer" class="revealed" id="footerID">
           <nav>
             <ul>
               <li>
                 <a href="#" id="home">Home</a>
               </li>
             </ul>
           </nav>
         </footer>

         JavaScript access:
         var toolbar = UI.toolbar("toolbarID");
         UI.button('home').click(function () {
           UI.pagestack.push("main");
         });

-  Methods

**element**\ ()
Returns the DOM element associated with the id this widget is bind to.

.. code:: html

           var mytoolbar = UI.toolbar("toolbarid").element();

**hide**\ ()
Hide a Toolbar

**show**\ ()
Display a Toolbar

**toggle**\ ()
Toggle show/hide status of a Toolbar

