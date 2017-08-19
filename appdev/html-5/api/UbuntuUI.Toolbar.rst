UbuntuUI.Toolbar
================

.. raw:: html

   <p>

A Toolbar is the JavaScript representation of an Ubuntu HTML5 app
<em>footer</em>.

.. raw:: html

   </p>

.. raw:: html

   <p>

Contained List provides buttons
                               

The Toolbar contains a List, where each list item is treated as a Button
(see below). List items (Buttons) are pushed to the right. The default
Back button always exists to the left and does not need to be declared.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default and custom footers
''''''''''''''''''''''''''

See the Pagestack class documentation for information about the default
application-wide Footer, customizing it, and adding Page-specific
Footers.

.. raw:: html

   </p>

UbuntuUI.Toolbar( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerID&quot;&gt;
   &lt;nav&gt;
   &lt;ul&gt;
   &lt;li&gt;
   &lt;a href=&quot;#&quot; id=&quot;home&quot;&gt;Home&lt;/a&gt;
   &lt;/li&gt;
   &lt;/ul&gt;
   &lt;/nav&gt;
   &lt;/footer&gt;
   JavaScript access:
   var toolbar = UI.toolbar(&quot;toolbarID&quot;);
   UI.button('home').click(function () {
   UI.pagestack.push(&quot;main&quot;);
   });
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

   <pre class="code prettyprint"><code>       var mytoolbar = UI.toolbar(&quot;toolbarid&quot;).element();</code></pre>

hide( )

.. raw:: html

   <p>

Hide a Toolbar

.. raw:: html

   </p>

show( )

.. raw:: html

   <p>

Display a Toolbar

.. raw:: html

   </p>

toggle( )

.. raw:: html

   <p>

Toggle show/hide status of a Toolbar

.. raw:: html

   </p>
