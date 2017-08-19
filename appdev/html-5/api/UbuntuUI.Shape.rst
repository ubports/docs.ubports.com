UbuntuUI.Shape
==============

.. raw:: html

   <p>

An Ubuntu Shape contains and decorates (with CSS styles) some markup,
often an <em>img</em>.

.. raw:: html

   </p>

UbuntuUI.Shape( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;div data-role=&quot;shape&quot; id=&quot;shapeID&quot;&gt;
   &lt;img src=&quot;URI&quot;/&gt;
   &lt;/div&gt;
   JavaScript access:
   var shape = UI.shape(&quot;shapeID&quot;);
   </code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

click( - )

.. raw:: html

   <p>

Associate a function with the Click event

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

- <Function>

.. raw:: html

   <p>

The function to execute on click

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>   UI.shape(&quot;id&quot;).click(function(){
   console.log(&quot;Clicked&quot;);
   });</code></pre>

element( )

.. raw:: html

   <p>

Returns the DOM element associated with the id this widget is bind to.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>   var myshape = UI.shape(&quot;shapeid&quot;).element();</code></pre>
