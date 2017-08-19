Guides - introduction to the HTML5 UI toolkit
=============================================

Your app can use any visual style, but if you want to give a more native
feel to it, Ubuntu provides a set of HTML5 layouts and widgets (with
associated CSS and JavaScript) that you can use to build an HTML5 app
that looks and behaves like other platform apps.

To get started with the UI toolkit , let’s dive first into app layout
options.

App Layouts
-----------

There are two main layout options that organize your app’s GUI at the
highest level:

-  **A header with tabitems**: when the user clicks a tabitem, the GUI
   switches to the associated tab content. This is also called “Flat”
   navigation because the tabs are at the same “level” and the user
   switches between them “horizontally” by clicking the header.
-  **A pagestack of pages**. This is called “deep” navigation. With
   this, the user can drill further into the stack of pages and use the
   “Back” button to climb out.

Be sure to check out `design examples <http://design.ubuntu.com/apps>`__
for further guidance on app layouts and widgets.

Widgets
-------

Let’s take a look at some of the important Ubuntu HTML5 widgets you can
use in your apps. For example, there are tabs, pagestacks/pages,
buttons, dialogs, lists, shapes, popovers, footers, and more.

Naturally, you declare these widgets in the app’s ``index.html`` file
using Ubuntu-specific HTML element/attribute combinations. This specific
markup enables the Ubuntu framework to recognize and manage your app
components and to provide a convenient JavaScript API for use in your
apps.

Most Ubuntu markup is declared with the ``data-role`` attribute
indicating the widget type. An id attribute is often required as well.

For example, you declare:

-  a list with: ``<div data-role=”list”>``,
-  a button with ``<button data-role=”button” id=”uniqueID”>``,
-  and a dialog with ``<div data-role=”Dialog” id=”uniqueID”>``.

It’s all standard HTML5, of course. The Ubuntu HTML5 framework does not
introduce any new elements.

Next, let’s take a look at the overall structure of the ``index.html``
file itself.

**Tip**: Declare all the main markup and widgets in HTML instead of
creating them dynamically in JavaScript in order to minimize app launch
time.

Head and imports
----------------

When you create a new app in the Ubuntu SDK, its index.html file
``<head>…</head>`` imports various JavaScript and CSS files. Let’s
review.

Ubuntu CSS and JavaScript
~~~~~~~~~~~~~~~~~~~~~~~~~

Naturally, the head imports Ubuntu CSS and Javascript. For example:

.. code:: html

    <link href="/usr/share/ubuntu-html5-ui-toolkit/0.1/ambiance/css/appTemplate.css" rel="stylesheet" type="text/css"/>
    <script src="/usr/share/ubuntu-html5-ui-toolkit/0.1/ambiance/js/core.js"></script>
    <!-- [...] -->
    <script src="/usr/share/ubuntu-html5-ui-toolkit/0.1/ambiance/js/fast-buttons.js"></script>

**Note**: The Ubuntu JavaScript framework must also be initialized in
your app’s JavaScript as explained below.

App-specific JavaScript
~~~~~~~~~~~~~~~~~~~~~~~

The app also imports its own app-specific JavaScript file:

.. code:: html

    <script src="js/app.js"></script>

**Tip**: This file is where you initialize the Ubuntu framework, as
described below.

App-specific CSS
~~~~~~~~~~~~~~~~

By default, there is no app-specific CSS file created for you. You can
easily add one to your source tree and use and import it like this:

.. code:: html

    <link href="app.css" rel="stylesheet" type="text/css"/>

Other app-specific JavaScript
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The app may import and use other JavaScript libraries that are included
in the app source tree. Here’s an example with JQuery:

.. code:: html

    <!-- jquery lib -->
    <script src="js/jquery.min.js"></script>

There are no surprises here: the app’s index.html imports everything it
needs, including Ubuntu JavaScript and CSS and app specific JavaScript
and CSS. Let’s take a closer look at the rest of the index.html file and
find out how layouts and widgets are declared.

Body and mainview
-----------------

Each HTML5 app has an Ubuntu mainview inside the ``<body>...</body>``.
This main view typically contains a header and content:

.. code:: html

    <body>
        <header data-role="header">
          <!-- [...] -->
        </header>
        <div data-role="content">
          <!-- [...] -->
        </div>
      </div>
    </body>

The header and content are used for both tab-style and pagestack-style
app navigation. Let’s take a look.

Tabs for flat navigation
------------------------

Here we look at how the header and content are used in tab-style
(“flat”) app navigation.

-  The header that contains tabitems
-  The content section contains the tabs that correspond to each tab
   item

Header with tabitems
~~~~~~~~~~~~~~~~~~~~

The header element contains an unordered list. Each list item has the
tabitem’s text (this id displayed in the app). When a user clicks a
tabitem, the content identified by the tabitem’ s data-page attribute
displays. Here’s a sample with two tabitems:

.. code:: html

    <header data-role="header">
      <ul data-role="tabs">
        <li data-role="tabitem" data-page="main">Main</li>
        <li data-role="tabitem" data-page="anotherpage">Another</li>
      </ul>
    </header>

Content contains tabs
~~~~~~~~~~~~~~~~~~~~~

For each tabitem, your app needs to declare corresponding tab content
with the correct id. Here is a content section with two tabs:

.. code:: html

    <div data-role="content">
      <div data-role="tab" id="main">
        <!-- [...] -->
      </div>
      <div data-role="tab" id="anotherpage">
        <!-- [...] -->
      </div>
    </div>

**Tip**: You can make a single page app with a single ``tabitem`` and
one corresponding tab.

Pagestack for deep navigation
-----------------------------

Some apps are a natural fit for deep navigation, so a pagestack of pages
makes sense. For example, consider an RSS reader app.

-  The top page could list the feeds.
-  When the user selects a feed, a child page displays with list of
   articles.
-  When the user selects an article, a child page displays with the
   article text.

This a hierarchical, or “deep” style:
``Feeds &gt; Articles &gt; Article``

In Ubuntu HTML5, a pagestack is used by the framework to keep track of
pages in “deep” navigation: which Pages exist, and which one is on the
top of the stack, that is, the one that is currently displayed. Pages
are declared inside pagestack markup.

A footer with a “Back” button is provided by the framework when needed.
This allows the user to move from a page up the pagestack to its parent
page.

Naturally, the Ubuntu JavaScript API provides methods for manipulating
the pagestack and pages. A simple pagestack looks like this:

.. code:: html

    <body>
      <div data-role="mainview">
        <header data-role="header">
          <!-- [...] -->
        </header>
        <div data-role="content">
          <div data-role="pagestack">
            <div data-role="page" id="main">
              <!-- [...] -->
            </div> <!-- page: main -->
            <div data-role="page" id="anotherPage">
              <!-- [...] -->
            </div> <!-- page: anotherPage -->
          </div> <!-- pagestack -->
        </div> <!-- content -->
      </div> <!-- mainview -->
    </body>

The footer
----------

As noted, pages have a footer that runs across the bottom with a “Back”
button that displays the parent page. No markup is required for this
default footer to display.

You can modify a pagestack’s default footer by adding footer markup
inside the pagestack and outside of any of its child pages. For example,
you might want to add a button.

You can also add page-specific footers to a page. If a page has a footer
declared, it overrides both the default footer and any pagestack footer
you have declared, if any.

Here is an example of a customized pagestack footer:

.. code:: html

    <div data-role="pagestack">
      <div data-role="page” id="page1">
        <!-- [...] -->
      </div>
      <div data-role="page" id="page2">
        <!-- [...] -->
      </div>
      <!-- this footer overrides
           the default pagestack footer -->
      <footer data-role="footer" id="footerID">
        <div data-role="list">
          <ul>
            <li>
              <a href="#" id="home">
                <img src=”./back.png”/>
                <span>Tap me!</span>
              </a>
            </li>
          </ul>
        </div>
      </footer>
    <div> <!- end of pagestack -->

Here’s how to add footer to a specific page that overrides the default
footer:

.. code:: html

    <div data-role="page" id="anotherPage">
      <!-- [...] -->
      <footer data-role="footer">
      <!-- [...] -->
      </footer>
    </div>

**Note:** A footer is represented by the Toolbar class in the Ubuntu
JavaScript API.

Dialogs and buttons
-------------------

An Ubuntu dialog displays maximized above the current page. It is
“modal” in the traditional sense that it must be dismissed before the
app GUI continues. As such it is useful to obtain needed input from the
user. You declare dialogs inside the content as siblings to tabs or
pagestacks.

Ubuntu buttons have a useful click() method to provide click event
handling.

Here’s an example of declaring a dialog:

.. code:: html

    <body>
      <div data-role="mainview">
        <!-- [...] -->
        <div data-role="content">
          <div data-role="tab" id=”main”>
            <!-- [...] -->
          </div>
            <!-- [...] -->
          <div data-role="dialog" id="mydialog">
            <!-- [...] -->
            <button data-role="button id="close”>Close</button>
          </div>
        </div>
      </div>
    </body>

Dialogs can contain arbitrary markup. They almost always contain a
button to dismiss themselves. Such a button is usually connected to a
JavaScript click event handler that would call the Ubuntu JS method to
hide the dialog.

Dialogs and buttons example
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here’s an example with:

-  A button to show a dialog
-  A dialog with a button to hides the dialog

``html <div data-role="content">   <div data-role="tab” id="hello-page">     <button data-role="button" id='show'>show</button>   </div>   <div data-role='dialog' id='dialog'>     <button data-role="button" id='hide'>Hide</button>   </div> </div>``

The following JavaScript handles the button click events and shows/hides
the dialog:

.. code:: javascript

    window.onload = function () {
      var UI = new UbuntuUI();
      UI.init();
      var dialog = UI.dialog('dialog');
      var show = UI.button('show').click( function () {
        dialog.show();
      });
      var hide = UI.button('hide').click( function () {
      dialog.hide();
      });
    };

Lists
-----

The Ubuntu HTML5 framework provides flexible lists. A list can
optionally have header text. Each list item supports various options,
including primary and secondary text labels, an icon, and more. Here’s a
sample list declaration:

.. code:: html

    <div data-role="list" id="testlist">
      <header>My header text</header>
      <ul>
        <li>
          <a href="#">Main text, to the left</a>
        </li>
        <li>
          <a href="#">Main text</a>
          <label>Right text</label>
        </li>
        <li>
          <aside>
            <img src="someicon.png">
          </aside>
          <a href="#">Main text</a>
          <label>Right</label>
        </li>
      </ul>
    </div>

More widgets
------------

That’s a quick overview of some of the key Ubuntu widgets, but there are
more, for example shapes and popups.

For a presentation of Ubuntu HTML5 widgets, check out the HTML5 Gallery
App (installed by the ubuntu-html5-ui-toolkit-examples package). You can
launch the gallery by searching the Ubuntu Applications scope for
“Ubuntu HTML5 UI Gallery”.

Be sure to check out the JavaScript API reference docs for everything.

Initializing the Ubuntu JavaScript framework
--------------------------------------------

As noted above, your index.html file imports Ubuntu JavaScript framework
files. These bring the app to life as a true Ubuntu app.

Your app must initialize the framework from JavaScript.

**Note**: When you create an HTML5 app in the Ubuntu SDK, your app
already has the code needed for this. Here we simply take a look at this
code to understand why it exists.

The app’s JavaScript file
~~~~~~~~~~~~~~~~~~~~~~~~~

Your brand new app has a ``js/app.js`` file by default. It does a few
key things after the DOM is loaded:

-  Creates an ``UbuntuUI`` object: ``var UI = new UbuntuUI();``
-  Runs its ``init.()`` method: ``UI.init();``
-  (Optional) Create an event handler for the Cordova ``ready`` event
   (below).

This code runs when the window.onload event is received, which means
when the DOM is fully loaded. Here’s an example:

.. code:: javascript

    window.onload = function () {
      var UI = new UbuntuUI();
      UI.init();
      document.addEventListener("deviceready", function() {
        if (console && console.log)
          console.log('Platform layer API ready');
      }, false);
    };

As previous examples show, this onload even handler is where initialize
your own GUI, adding objects and event handlers to be sure the GUI is
ready to respond to user interactions right from the start.
