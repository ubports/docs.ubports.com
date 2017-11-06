.. _sdk_ubuntuui_shape:

UbuntuUI Shape
==============


An Ubuntu Shape contains and decorates (with CSS styles) some markup, often an <em>img</em>.

**UbuntuUI.Shape**\ ()

.. code:: html

     <div data-role="shape" id="shapeID">
           <img src="URI"/>
         </div>

         JavaScript access:
         var shape = UI.shape("shapeID");

-  Methods

**click**\ (``-``)
Associate a function with the Click event

**Parameters:**

- ``-`` **<Function>**

   The function to execute on click

.. code:: html

       UI.shape("id").click(function(){
                        console.log("Clicked");
                       });

**element**\ ()
Returns the DOM element associated with the id this widget is bind to.

.. code:: html

       var myshape = UI.shape("shapeid").element();

