UbuntuUI.Dialog
===============

.. raw:: html

   <p>

Dialogs are modal full-screen popups that prevent other GUI interactions
with the application until dismissed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Dialogs wrap arbitrary markup.

.. raw:: html

   </p>

.. raw:: html

   <p>

Dialogs are declared at the top level inside the <em>content</em> div.

.. raw:: html

   </p>

UbuntuUI.Dialog( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;div data-role=&quot;content&quot;&gt;
   &lt;div data-role=&quot;pagestack&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;div data-role=&quot;dialog&quot; id=&quot;dialogID&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;/div&gt;
   JavaScript access:
   var dialog = UI.dialog(&quot;dialogID&quot;);
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

   <pre class="code prettyprint"><code>   var mydialog = UI.dialog(&quot;dialogid&quot;).element();</code></pre>

hide( )

.. raw:: html

   <p>

Hide a dialog by removing 'active' class

.. raw:: html

   </p>

show( )

.. raw:: html

   <p>

Display a dialog by adding 'active' CSS class

.. raw:: html

   </p>

toggle( )

.. raw:: html

   <p>

Toggle a dialog, which means removing its 'active' class if it has one,
or adding the 'active' class if it does not have one

.. raw:: html

   </p>
