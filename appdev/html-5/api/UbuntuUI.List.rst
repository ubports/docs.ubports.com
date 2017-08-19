UbuntuUI.List
=============

.. raw:: html

   <p>

A List comes with various options, including: a <em>header</em>, main
text (pushed left), an icon (pushed left), and a secondary label (pushed
right).

.. raw:: html

   </p>

UbuntuUI.List( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>&lt;section data-role=&quot;list&quot; id=&quot;testlist&quot;&gt;
   &lt;header&gt;My header text&lt;/header&gt;
   &lt;ul&gt;
   &lt;li&gt;
   &lt;a href=&quot;#&quot;&gt;Main text, to the left&lt;/a&gt;
   &lt;/li&gt;
   &lt;li&gt;
   &lt;a href=&quot;#&quot;&gt;Main text&lt;/a&gt;
   &lt;label&gt;Right text&lt;/label&gt;
   &lt;/li&gt;
   &lt;li&gt;
   &lt;aside&gt;
   &lt;img src=&quot;someicon.png&quot;&gt;
   &lt;/aside&gt;
   &lt;a href=&quot;#&quot;&gt;Main text&lt;/a&gt;
   &lt;label&gt;Right&lt;/label&gt;
   &lt;/li&gt;
   &lt;/ul&gt;
   &lt;/section&gt;
   JavaScript access:
   var list = UI.list('[id=&quot;testlist&quot;]');</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

Element append( text, label, id, onclick, user\_data )

.. raw:: html

   <p>

Append an item to a list

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

text <String>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The main text, flushed left (no markup)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

label <String>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Additional text, flushed right (no markup)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

An id attribute value set for the new list item (must be unique in DOM)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

onclick <Function>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The click callback function

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

user\_data <Object>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Additional data that is passed to the click callback

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Element>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The created list item, or null on failure ot create

.. raw:: html

   </li>

.. raw:: html

   </ul>

at( index )

.. raw:: html

   <p>

Gets a list item <li> by its index, where index counting starts from 1

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

index <Number>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns:

.. raw:: html

   <p>

The list item, or null on failure

.. raw:: html

   </p>

DOMElement element( )

.. raw:: html

   <p>

Returns the DOM element associated with the selector this widget is bind
to.

.. raw:: html

   </p>

Returns: <DOMElement>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>       var mylist = UI.list(&quot;#listid&quot;).element();</code></pre>

forEach( func )

.. raw:: html

   <p>

Iterates over all list items and runs a provided function on each

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

func <Function>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The function to run on each list item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

remove( index )

.. raw:: html

   <p>

Removes a list item <li> by its index, where index counting starts from
1

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

index <Number>

.. raw:: html

   </li>

.. raw:: html

   </ul>

removeAllItems( )

.. raw:: html

   <p>

Removes all items from a list

.. raw:: html

   </p>

setHeader( text )

.. raw:: html

   <p>

Add or Set the List Header

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

text <String>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The header text

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>
