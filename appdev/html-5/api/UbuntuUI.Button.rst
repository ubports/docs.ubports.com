UbuntuUI.Button
===============

.. raw:: html

   <p>

A Button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note the Ubuntu CSS style classes: <em>positive</em>,
<em>information</em>, <em>secondary</em>, and <em>negative</em>

.. raw:: html

   </p>

UbuntuUI.Button( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;button data-role=&quot;button&quot; id=&quot;buttonID&quot;&gt;text&lt;/button&gt;
   Javascript access:
   var button = UI.button(&quot;buttonID&quot;);</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

click( callback )

.. raw:: html

   <p>

Associate a function with the button's Click event

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The function to execute on click

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

   <pre class="code prettyprint"><code>   UI.button(&quot;buttonid&quot;).click(function(){
   console.log(&quot;clicked&quot;);
   });</code></pre>

DOMElement element( )

.. raw:: html

   <p>

Returns the DOM element associated with the id this widget is bind to.

.. raw:: html

   </p>

Returns: <DOMElement>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>   var mybutton = UI.button(&quot;buttonid&quot;).element();</code></pre>
