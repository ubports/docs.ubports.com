.. _sdk_ubuntuui_progress:

UbuntuUI Progress
=================


A Progress.

Note the Ubuntu CSS style classes: <em>infinite</em>

**UbuntuUI.Progress**\ ()

.. code:: html

     <progress value="80" max="100"></progress>

         Javascript access:
         var pre = UI.progress("progressID");

-  Methods

**element**\ ()
Returns the DOM element associated with the id this widget is bind to.

.. code:: html

           var myprogress = UI.progress("progressid").element();

**update**\ ()
Updates the value of the progress bar

.. code:: html

           myprogress.update(30);

