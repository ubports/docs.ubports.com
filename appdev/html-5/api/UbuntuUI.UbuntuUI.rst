UbuntuUI.UbuntuUI
=================

.. raw:: html

   <p>

UbuntuUI is the critical Ubuntu HTML5 framework class. You need to
construct an UbuntuUI object and initialize it to have an Ubuntu HTML5
app. You then use this object to access Ubuntu HTML5 objects (and object
methods) that correspond to the Ubuntu HTML5 DOM elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The UbuntuUI object is "UI" in all API doc examples.

.. raw:: html

   </p>

UbuntuUI( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code> var UI = new UbuntuUI();
   window.onload = function () {
   UI.init();
   UI.pagestack.push('pageid');
   [...]
   };</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

Button button( id )

.. raw:: html

   <p>

Gets an Ubuntu Button object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Button>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Button with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Dialog dialog( id )

.. raw:: html

   <p>

Gets an Ubuntu Dialog object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Dialog>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Dialog with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Element element( )

.. raw:: html

   <p>

Gets the DOM element from a given selector

.. raw:: html

   </p>

Returns: <Element>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The DOM element Gets the HTML element associated with an Ubuntu HTML5
JavaScript object

.. raw:: html

   </li>

.. raw:: html

   </ul>

Header header( id )

.. raw:: html

   <p>

Gets an Ubuntu Header object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Header>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Header with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

init( )

.. raw:: html

   <p>

Required call that initializes the UbuntuUI object

.. raw:: html

   </p>

List list( selector )

.. raw:: html

   <p>

Gets an Ubuntu List

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

selector <Selector>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A selector that JavaScript querySelector method understands

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <List> OptionSelector optionselector( id, expanded,
multiSelection )

.. raw:: html

   <p>

Gets an Ubuntu Option Selector

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

expanded <Boolean>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Specifies whether the list is always expanded

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

multiSelection <Boolean>

.. raw:: html

   <ul>

.. raw:: html

   <li>

If multiple choice selection is enabled the list is always expanded.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <OptionSelector> Page page( id )

.. raw:: html

   <p>

Gets an Ubuntu Page object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Page>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Page with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Pagestack pagestack( )

.. raw:: html

   <p>

Gets this UbuntuUI's single Pagestack object

.. raw:: html

   </p>

Returns: <Pagestack>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Pagestack

.. raw:: html

   </li>

.. raw:: html

   </ul>

Popover popover( el, id )

.. raw:: html

   <p>

Gets an Ubuntu Popover object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

el <Element>

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

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Popover>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Popover with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Progress progress( id )

.. raw:: html

   <p>

Gets an Ubuntu Progress object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Progress>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Progress with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Shape shape( id )

.. raw:: html

   <p>

Gets an Ubuntu Shape object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Shape>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Shape with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Tab tab( id )

.. raw:: html

   <p>

Gets an Ubuntu Tab object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Tab>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Tab with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>

Tabs tabs( )

.. raw:: html

   <p>

Gets this UbuntuUI's single Tabs object

.. raw:: html

   </p>

Returns: <Tabs>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Tabs

.. raw:: html

   </li>

.. raw:: html

   </ul>

Toolbar toolbar( id )

.. raw:: html

   <p>

Gets an Ubuntu Toolbar object

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

id <ID>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The element's id attribute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <Toolbar>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Toolbar with the specified id

.. raw:: html

   </li>

.. raw:: html

   </ul>
