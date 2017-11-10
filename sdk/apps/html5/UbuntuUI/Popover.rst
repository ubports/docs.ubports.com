.. _sdk_ubuntuui_popover:

UbuntuUI Popover
================


A Popover is a div containng markup that can pop up and disappear. (Unlike a Dialog, Popovers are not full screen.)

A Popoves often contain a List whose items are connected to useful JavaScript functions.

######Popover Position The Popover's position is set relative to a specified base element with the <em>data-gravity="LETTER"</em> attribute. LETTER values:

-  'n': the base element is above the Popover
-  's': the base element is below the Popover
-  'e': the base element is to the east of (to the right of) the Popover (in right-to-left locales)
-  'w': the base element is to the west of (to the left of) the Popover (in right-to-left locale)

**UbuntuUI.Popover**\ (``elem, id``)
**Parameters:**

- ``elem`` **<String>**

   -  The element to which the Popover's position is relative

- ``id`` **<ID>**

   -  The id attribute of the Popover in HTML

.. code:: html

     <p id="popoverBase">Text</p>
         <div class="popover active" data-gravity="n" id="popover">
           <ul class="list">
             <li class="active"><a href="#">Item1</a></li>
             <li><a href="#">Item2</a></li>
           </ul>
         </div>

         Javascript:
         var popBase = document.getElementById("popoverBase");
         var popover = UI.popover(popBase, "popover");

-  Methods

**element**\ ()
Returns the DOM element associated with the id this widget is bind to.

.. code:: html

       var mypopover = UI.popover("popoverid").element();

**hide**\ ()
Hide a Popover

**show**\ ()
Display a Popover

**toggle**\ ()
Toggle show/hide status of a Popover

