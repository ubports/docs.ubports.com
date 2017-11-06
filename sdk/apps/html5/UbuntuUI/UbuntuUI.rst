.. _sdk_ubuntuui_ubuntuui:

UbuntuUI UbuntuUI
=================


UbuntuUI is the critical Ubuntu HTML5 framework class. You need to construct an UbuntuUI object and initialize it to have an Ubuntu HTML5 app. You then use this object to access Ubuntu HTML5 objects (and object methods) that correspond to the Ubuntu HTML5 DOM elements.

Note: The UbuntuUI object is "UI" in all API doc examples.

**UbuntuUI**\ ()

.. code:: html

     var UI = new UbuntuUI();
         window.onload = function () {
           UI.init();
           UI.pagestack.push('pageid');
           [...]
         };

-  Methods

Button **button**\ (``id``)
Gets an Ubuntu Button object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Button>

-  The Button with the specified id

Dialog **dialog**\ (``id``)
Gets an Ubuntu Dialog object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Dialog>

-  The Dialog with the specified id

Element **element**\ ()
Gets the DOM element from a given selector

**Returns:** <Element>

-  The DOM element Gets the HTML element associated with an Ubuntu HTML5 JavaScript object

Header **header**\ (``id``)
Gets an Ubuntu Header object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Header>

-  The Header with the specified id

**init**\ ()
Required call that initializes the UbuntuUI object

List **list**\ (``selector``)
Gets an Ubuntu List

**Parameters:**

- ``selector`` **<Selector>**

   -  A selector that JavaScript querySelector method understands

**Returns:** <List>

OptionSelector **optionselector**\ (``id, expanded, multiSelection``)
Gets an Ubuntu Option Selector

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

- ``expanded`` **<Boolean>**

   -  Specifies whether the list is always expanded

- ``multiSelection`` **<Boolean>**

   -  If multiple choice selection is enabled the list is always expanded.

**Returns:** <OptionSelector>

Page **page**\ (``id``)
Gets an Ubuntu Page object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Page>

-  The Page with the specified id

Pagestack **pagestack**\ ()
Gets this UbuntuUI's single Pagestack object

**Returns:** <Pagestack>

-  The Pagestack

Popover **popover**\ (``el, id``)
Gets an Ubuntu Popover object

**Parameters:**

- ``el`` **<Element>**

   -  The element to which the Popover's position is relative

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Popover>

-  The Popover with the specified id

Progress **progress**\ (``id``)
Gets an Ubuntu Progress object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Progress>

-  The Progress with the specified id

Shape **shape**\ (``id``)
Gets an Ubuntu Shape object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Shape>

-  The Shape with the specified id

Tab **tab**\ (``id``)
Gets an Ubuntu Tab object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Tab>

-  The Tab with the specified id

Tabs **tabs**\ ()
Gets this UbuntuUI's single Tabs object

**Returns:** <Tabs>

-  The Tabs

Toolbar **toolbar**\ (``id``)
Gets an Ubuntu Toolbar object

**Parameters:**

- ``id`` **<ID>**

   -  The element's id attribute

**Returns:** <Toolbar>

-  The Toolbar with the specified id

