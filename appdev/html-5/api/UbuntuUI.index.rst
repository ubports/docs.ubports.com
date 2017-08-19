UbuntuUI.index
==============

.. raw:: html

   <p>

These pages provide reference docs for the Ubunbtu HTML5 framework.

.. raw:: html

   </p>

.. raw:: html

   <p>

See developer.ubuntu.com for more information on writing Ubuntu HTML5
apps, including: using the Ubuntu SDK, creating HTML5 app projects,
importing Ubuntu HTML5 CSS and JavaScript into your app, and more.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Ubuntu HTML5 widgets

.. raw:: html

   </h4>

.. raw:: html

   <p>

The Ubuntun HTML5 framework provides a set of "widgets" you use to build
an application in the Ubuntu style (see design.ubuntu.com for
descriptions of Ubuntu app "building blocks" with links to APIs for each
supported implementation toolkit). For example, an Ubuntu HTML5 app has
a dynamic Header with Tabs that together provide navigation through the
app's Pages. Pages may contain Lists, Popovers, Buttons, Shapes, and a
lot more. The app has a Footer (also called a Toolbar) to which you can
add Buttons. There are many options and the list keeps growing!

.. raw:: html

   <p>

.. raw:: html

   <p>

Each widget has its HTML part, a corresponding JavaScript object (many
of which provide additional methods), and CSS styles.

.. raw:: html

   </p>

.. raw:: html

   <h4>

What you need to know

.. raw:: html

   </h4>

.. raw:: html

   <p>

To write Ubuntu HTML5 apps, you need to know:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

How to declare each widget type in HTML

.. raw:: html

   </li>

.. raw:: html

   <li>

How to acces the JavaScript widget objects and use their methods

.. raw:: html

   </li>

.. raw:: html

   <li>

How to initialize the Ubuntu HTML5 framework at app load time

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These topics are introduced here and explained in the class
documentation.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Elements and special attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

Ubuntu HTML5 apps use normal HTML/HTML5 elements (like <div>, <section>,
<ul>, and so on). However, special attributes are added to some key
elements to declare them as Ubuntu HTML5 elements. This connects them
with the Ubuntu HTML5 JavaScript framework. The data-role attribute is
often used. Its value indicates the type of Ubuntu HTML5 element. For
example, here's a button: <button data-role="button">.

.. raw:: html

   </p>

.. raw:: html

   </p>

Making correct HTML declarations is necessary to connect your DOM
elements to the Ubuntu HTML5 JavaScript framework and to Ubuntu HTML CSS
styles. See the JavaScript class docs for sample HTML declarations.

.. raw:: html

   </p>

.. raw:: html

   <h4>

id attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

You can declare most Ubuntu HTML5 elements without id attributes. They
will pick up the CSS styles and look fine. But, you generally need an id
attribute to access the corresponding JavaScript objects. So it's a good
idea to add them.

.. raw:: html

   </p>

.. raw:: html

   <h4>

JavaScript classes and methods

.. raw:: html

   </h4>

.. raw:: html

   <p>

Almost every Ubuntu HTML5 DOM element has a corresponding Ubuntu HTML5
JavaScript object. These are created automatically when you create an
UbuntuUI object and execute its init() method. (This is usually done at
startup, for example in the window.onload function).

.. raw:: html

   </p>

.. raw:: html

   <p>

Many of these classes/objects have additional methods. For example, the
List class provides methods to add items to the list, remove an item,
apply a function to all items, and more.

.. raw:: html

   </p>

.. raw:: html

   <h4>

How these docs are organized

.. raw:: html

   </h4>

.. raw:: html

   <p>

These pages or organized by the Ubuntu HTML5 JavaScript classes. Each
class has an example showing how the corresponding HTML is declared (as
needed). And of course each class has API documentation explaining usage
of all (public) methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

The single most important class is UbuntuUI, so start there.

.. raw:: html

   </p>

.. raw:: html

   <p>

Then, an Ubuntu HTML5 app is structured as a PageStack of Pages, so be
sure to visit those classes.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Ubuntu HTML5 CSS

.. raw:: html

   </h4>

.. raw:: html

   <p>

Be sure to check out the Ubuntu HTML5 CSS files you import into your
app. They provide a set of styles that theme the HTML5 widgets to the
Ubuntu app design and style.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Let's grow this!

.. raw:: html

   </h4>

.. raw:: html

   <p>

Let's work together to keep HTML5 as a top-notch app development
framework on Ubuntu. Everyone can help by filing bugs, triaging them,
and of course, fixing them. So let's get to work writing apps!

.. raw:: html

   </p>

.. raw:: html

   <script src="https://developer.ubuntu.com../assets/vendor/prettify/prettify-min.js"></script>

.. raw:: html

   <script>prettyPrint();</script>

.. raw:: html

   <script src="https://developer.ubuntu.com../assets/js/yui-prettify.js"></script>

.. raw:: html

   <script src="https://developer.ubuntu.com../assets/js/tabs.js"></script>
