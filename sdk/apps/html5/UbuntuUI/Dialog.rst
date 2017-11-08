.. _sdk_ubuntuui_dialog:

UbuntuUI Dialog
===============


Dialogs are modal full-screen popups that prevent other GUI interactions with the application until dismissed.

Dialogs wrap arbitrary markup.

Dialogs are declared at the top level inside the <em>content</em> div.

**UbuntuUI.Dialog**\ ()

.. code:: html

     <div data-role="content">
           <div data-role="pagestack">
             [...]
           </div>
           <div data-role="dialog" id="dialogID">
             [...]
           </div>
         </div>

         JavaScript access:
         var dialog = UI.dialog("dialogID");

-  Methods

DOMElement **element**\ ()
Returns the DOM element associated with the id this widget is bind to.

**Returns:** <DOMElement>

.. code:: html

       var mydialog = UI.dialog("dialogid").element();

**hide**\ ()
Hide a dialog by removing 'active' class

**show**\ ()
Display a dialog by adding 'active' CSS class

**toggle**\ ()
Toggle a dialog, which means removing its 'active' class if it has one, or adding the 'active' class if it does not have one

