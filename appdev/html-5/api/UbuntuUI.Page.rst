UbuntuUI.Page
=============

.. raw:: html

   <p>

One of the navigation pattern that can be used within an Ubuntu App is
the deep navigation. This pattern is implemented by the Pagestack. A
Pagestack contains one or more Pages. Each page displays full-screen.
See the Pagestack class.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each Page must have <em>id</em> and <em>data-title</em> attributes. The
<em>id</em> attribute is used a unique reference to push the Page to the
top of the Pagestack (see the Pagestack class). The <em>data-title</em>
attribute is used to update the Header title as pages are pushed and
poped.

.. raw:: html

   </p>

UbuntuUI.Page( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> &lt;/body&gt;
   &lt;div data-role=&quot;mainview&quot;&gt;
   &lt;header data-role=&quot;header&quot;&gt;
   &lt;/header&gt;
   &lt;div data-role=&quot;content&quot;&gt;
   &lt;div data-role=&quot;pagestack&quot;&gt;
   &lt;div data-role=&quot;page&quot; data-title=&quot;Main&quot; id=&quot;main&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;div data-role=&quot;page&quot; data-title=&quot;My Data&quot; id=&quot;data&quot;&gt;
   [...]
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/div&gt;
   &lt;/body&gt;
   JavaScript access:
   var page = UI.page(&quot;pageID&quot;);</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   </ul>

activate( properties )

.. raw:: html

   <p>

Activates the current page.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

properties <Object>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Data to be passed down to any activation callback listening for the page
activation (see Page.onactivated)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

deactivate( )

.. raw:: html

   <p>

Deactivates the current page.

.. raw:: html

   </p>

element( )

.. raw:: html

   <p>

Returns the DOM element associated with the selector this widget is bind
to.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var mypage = UI.page(&quot;pageid&quot;).element();</code></pre>

Boolean isPage( )

.. raw:: html

   <p>

Validates that a given DOM node element is a Ubuntu UI Page.

.. raw:: html

   </p>

Returns: <Boolean>

.. raw:: html

   <p>

if the DOM element is a page

.. raw:: html

   </p>

onactivated( callback )

.. raw:: html

   <p>

Activates the current page.

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

Callback function called with activation properties (from
Pagestack.push) when the page is activated

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

actions <List>

.. raw:: html

   <p>

actions property.

.. raw:: html

   </p>

title <String>

.. raw:: html

   <p>

title property.

.. raw:: html

   </p>
