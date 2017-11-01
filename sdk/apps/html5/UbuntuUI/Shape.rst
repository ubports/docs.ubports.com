
An Ubuntu Shape contains and decorates (with CSS styles) some markup,
often an <em>img</em>.

**``UbuntuUI.Shape``**\ ( ``  `` )
.. rubric:: Example
   :name: example

.. code:: code

     <div data-role="shape" id="shapeID">
           <img src="URI"/>
         </div>

         JavaScript access:
         var shape = UI.shape("shapeID");

-  Methods

**``click``**\ ( ``- `` )
Associate a function with the Click event

**Parameters:**

-  ``-`` **<Function>**

   The function to execute on click

.. rubric:: Example
   :name: example-1

.. code:: code

       UI.shape("id").click(function(){
                        console.log("Clicked");
                       });

**``element``**\ ( ``  `` )
Returns the DOM element associated with the id this widget is bind to.

.. rubric:: Example
   :name: example-2

.. code:: code

       var myshape = UI.shape("shapeid").element();

