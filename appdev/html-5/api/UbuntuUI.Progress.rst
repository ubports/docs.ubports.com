UbuntuUI.Progress
=================

.. raw:: html

   <p>

A Progress.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note the Ubuntu CSS style classes: <em>infinite</em>

.. raw:: html

   </p>

UbuntuUI.Progress( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;progress value=&quot;80&quot; max=&quot;100&quot;&gt;&lt;/progress&gt;
   Javascript access:
   var pre = UI.progress(&quot;progressID&quot;);</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

   <pre class="code prettyprint"><code>       var myprogress = UI.progress(&quot;progressid&quot;).element();</code></pre>

update( )

.. raw:: html

   <p>

Updates the value of the progress bar

.. raw:: html

   </p>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>       myprogress.update(30);</code></pre>
