UbuntuUI.Popover
================

.. raw:: html

   <p>

A Popover is a div containng markup that can pop up and disappear.
(Unlike a Dialog, Popovers are not full screen.)

.. raw:: html

   </p>

.. raw:: html

   <p>

A Popoves often contain a List whose items are connected to useful
JavaScript functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Popover Position
                

The Popover's position is set relative to a specified base element with
the <em>data-gravity="LETTER"</em> attribute. LETTER values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'n': the base element is above the Popover

.. raw:: html

   </li>

.. raw:: html

   <li>

's': the base element is below the Popover

.. raw:: html

   </li>

.. raw:: html

   <li>

'e': the base element is to the east of (to the right of) the Popover
(in right-to-left locales)

.. raw:: html

   </li>

.. raw:: html

   <li>

'w': the base element is to the west of (to the left of) the Popover (in
right-to-left locale)

.. raw:: html

   </li>

.. raw:: html

   </ul>

UbuntuUI.Popover( elem, id ) Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

elem <String>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element to which the Popover's position is relative

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

The id attribute of the Popover in HTML

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

   <pre class="code prettyprint"><code> &lt;p id=&quot;popoverBase&quot;&gt;Text&lt;/p&gt;
   &lt;div class=&quot;popover active&quot; data-gravity=&quot;n&quot; id=&quot;popover&quot;&gt;
   &lt;ul class=&quot;list&quot;&gt;
   &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Item1&lt;/a&gt;&lt;/li&gt;
   &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Item2&lt;/a&gt;&lt;/li&gt;
   &lt;/ul&gt;
   &lt;/div&gt;
   Javascript:
   var popBase = document.getElementById(&quot;popoverBase&quot;);
   var popover = UI.popover(popBase, &quot;popover&quot;);</code></pre>

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

   <pre class="code prettyprint"><code>   var mypopover = UI.popover(&quot;popoverid&quot;).element();</code></pre>

hide( )

.. raw:: html

   <p>

Hide a Popover

.. raw:: html

   </p>

show( )

.. raw:: html

   <p>

Display a Popover

.. raw:: html

   </p>

toggle( )

.. raw:: html

   <p>

Toggle show/hide status of a Popover

.. raw:: html

   </p>
