UbuntuUI.Pagestack
==================

.. raw:: html

   <p>

The Pagestack manages all Pages in a stack data structure. Initially,
the Pagestack contains no Pages. The <em>push()</em> method is normally
executed on load to display the app starting page.

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code> UI.pagestack.push(&quot;pageID&quot;)
   </code></pre>

.. raw:: html

   <p>

The topmost Page on the Pagestack is always displayed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Pagestack is declared as a direct child of the <em>content</em> div.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default application wide footer
'''''''''''''''''''''''''''''''

The Pagestack contains a default <em>footer</em> (represented in
JavaScript as a Toolbar), even if you do not declare one in HTML. The
<em>footer</em> has a single Back button. #####Customized application
wide footer This application-wide <em>footer</em> can be customized (for
example, you can add Buttons) by declaring a <em>footer</em> as a direct
child of the <em>pagestack</em> div (see example). ######Page specific
footers A <em>page</em> may declare a page-specific <em>footer</em> as a
child element.

.. raw:: html

   </p>

UbuntuUI.Pagestack( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>&lt;div data-role=&quot;mainview&quot;&gt;
   &lt;header data-role=&quot;header&quot;&gt;
   &lt;/header&gt;
   &lt;div data-role=&quot;content&quot;&gt;
   &lt;div data-role=&quot;pagestack&quot;&gt;
   &lt;div data-role=&quot;page&quot; id=&quot;main&quot; data-title=&quot;Page 1&quot;&gt;
   &lt;/div&gt;
   &lt;div data-role=&quot;page&quot; id=&quot;page2&quot; data-title=&quot;Page 2&quot;&gt;
   [...]
   &lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerPage2&quot;&gt;
   [...]
   &lt;/footer&gt;
   &lt;/div&gt;
   &lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerAppWide&quot;&gt;
   [...]
   &lt;/footer&gt;
   &lt;/div&gt;  &lt;!-- end of Pagestack div --&gt;
   &lt;/div&gt;
   &lt;/div&gt;
   JavaScript access:
   UI.pagestack.METHOD();
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

clear( )

.. raw:: html

   <p>

Clears the whole page stack

.. raw:: html

   </p>

PageID \| Null currentPage( )

.. raw:: html

   <p>

Gets the id attribute of the page element on top of this pagestack

.. raw:: html

   </p>

Returns: <PageID \| Null>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The topmost page's id attribute, else null when there are no pages on
this pagestack

.. raw:: html

   </li>

.. raw:: html

   </ul>

Number depth( )

.. raw:: html

   <p>

Gets the number of pages in this pagestack

.. raw:: html

   </p>

Returns: <Number>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The number of pages in this pagestack

.. raw:: html

   </li>

.. raw:: html

   </ul>

Boolean isEmpty( )

.. raw:: html

   <p>

Checks for zero pages in this pagestack

.. raw:: html

   </p>

Returns: <Boolean>

.. raw:: html

   <ul>

.. raw:: html

   <li>

True when this pagestack has no pages, else false

.. raw:: html

   </li>

.. raw:: html

   </ul>

pop( )

.. raw:: html

   <p>

Pops the current page off this pagestack, which causes the next page to
become the top page and to display

.. raw:: html

   </p>

push( id, properties )

.. raw:: html

   <p>

Push a page to the top of this pagestack

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <String>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The id attribute of the page element to be pushed

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

properties <Object>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A list of properties passed down to the page that is to be activated

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>
