
A Button.

Note the Ubuntu CSS style classes: <em>positive</em>,
<em>information</em>, <em>secondary</em>, and <em>negative</em>

**``UbuntuUI.Button``**\ ( ``  `` )
.. rubric:: Example
   :name: example

.. code:: code

     <button data-role="button" id="buttonID">text</button>

         Javascript access:
         var button = UI.button("buttonID");

-  Methods

**``click``**\ ( ``callback `` )
Associate a function with the button's Click event

**Parameters:**

-  ``callback`` **<Function>**

   -  The function to execute on click

.. rubric:: Example
   :name: example-1

.. code:: code

       UI.button("buttonid").click(function(){
                        console.log("clicked");
                       });

DOMElement **``element``**\ ( ``  `` )
Returns the DOM element associated with the id this widget is bind to.

**Returns:** <DOMElement>

.. rubric:: Example
   :name: example-2

.. code:: code

       var mybutton = UI.button("buttonid").element();

