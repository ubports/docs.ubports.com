
A Progress.

Note the Ubuntu CSS style classes: <em>infinite</em>

**``UbuntuUI.Progress``**\ ( ``  `` )
.. rubric:: Example
   :name: example

.. code:: code

     <progress value="80" max="100"></progress>

         Javascript access:
         var pre = UI.progress("progressID");

-  Methods

**``element``**\ ( ``  `` )
Returns the DOM element associated with the id this widget is bind to.

.. rubric:: Example
   :name: example-1

.. code:: code

           var myprogress = UI.progress("progressid").element();

**``update``**\ ( ``  `` )
Updates the value of the progress bar

.. rubric:: Example
   :name: example-2

.. code:: code

           myprogress.update(30);

