.. _sdk_ubuntuui_list:

UbuntuUI List
=============


A List comes with various options, including: a <em>header</em>, main text (pushed left), an icon (pushed left), and a secondary label (pushed right).

**UbuntuUI.List**\ ()

.. code:: html

    <section data-role="list" id="testlist">
          <header>My header text</header>
          <ul>
            <li>
              <a href="#">Main text, to the left</a>
            </li>
            <li>
              <a href="#">Main text</a>
              <label>Right text</label>
            </li>
            <li>
              <aside>
                <img src="someicon.png">
              </aside>
              <a href="#">Main text</a>
              <label>Right</label>
            </li>
          </ul>
         </section>

         JavaScript access:
           var list = UI.list('[id="testlist"]');

-  Methods

Element **append**\ (``text, label, id, onclick, user_data``)
Append an item to a list

**Parameters:**

- ``text`` **<String>**

   -  The main text, flushed left (no markup)

- ``label`` **<String>**

   -  Additional text, flushed right (no markup)

- ``id`` **<ID>**

   -  An id attribute value set for the new list item (must be unique in DOM)

- ``onclick`` **<Function>**

   -  The click callback function

- ``user_data`` **<Object>**

   -  Additional data that is passed to the click callback

**Returns:** <Element>

-  The created list item, or null on failure ot create

**at**\ (``index``)
Gets a list item <li> by its index, where index counting starts from 1

**Parameters:**

- ``index`` **<Number>**

**Returns:**
The list item, or null on failure

DOMElement **element**\ ()
Returns the DOM element associated with the selector this widget is bind to.

**Returns:** <DOMElement>

.. code:: html

           var mylist = UI.list("#listid").element();

**forEach**\ (``func``)
Iterates over all list items and runs a provided function on each

**Parameters:**

- ``func`` **<Function>**

   -  The function to run on each list item

**remove**\ (``index``)
Removes a list item <li> by its index, where index counting starts from 1

**Parameters:**

- ``index`` **<Number>**

**removeAllItems**\ ()
Removes all items from a list

**setHeader**\ (``text``)
Add or Set the List Header

**Parameters:**

- ``text`` **<String>**

   -  The header text

