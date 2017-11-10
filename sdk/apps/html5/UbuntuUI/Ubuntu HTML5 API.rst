.. _sdk_ubuntuui_ubuntu_html5_api:

UbuntuUI Ubuntu HTML5 API
=========================

These pages provide reference docs for the Ubunbtu HTML5 framework.

See `developer.ubuntu.com <http://developer.ubuntu.com>`_  for more information on writing Ubuntu HTML5 apps, including: using the Ubuntu SDK, creating HTML5 app projects, importing Ubuntu HTML5 CSS and JavaScript into your app, and more.

Ubuntu HTML5 widgets
^^^^^^^^^^^^^^^^^^^^

The Ubuntun HTML5 framework provides a set of "widgets" you use to build an application in the Ubuntu style (see design.ubuntu.com for descriptions of Ubuntu app "building blocks" with links to APIs for each supported implementation toolkit). For example, an Ubuntu HTML5 app has a dynamic Header with Tabs that together provide navigation through the app's Pages. Pages may contain Lists, Popovers, Buttons, Shapes, and a lot more. The app has a Footer (also called a Toolbar) to which you can add Buttons. There are many options and the list keeps growing!

Each widget has its HTML part, a corresponding JavaScript object (many of which provide additional methods), and CSS styles.

What you need to know
^^^^^^^^^^^^^^^^^^^^^

To write Ubuntu HTML5 apps, you need to know:

-  How to *declare* each widget type in HTML
-  How to acces the JavaScript widget objects and use their methods
-  How to initialize the Ubuntu HTML5 framework at app load time

These topics are introduced here and explained in the class documentation.

Elements and special attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ubuntu HTML5 apps use normal HTML/HTML5 elements (like <div>, <section>, <ul>, and so on). However, special attributes are added to some key elements to declare them as Ubuntu HTML5 elements. This connects them with the Ubuntu HTML5 JavaScript framework. The *data-role* attribute is often used. Its value indicates the type of Ubuntu HTML5 element. For example, here's a button: <button data-role="button">.

Making correct HTML declarations is necessary to connect your DOM elements to the Ubuntu HTML5 JavaScript framework and to Ubuntu HTML CSS styles. See the JavaScript class docs for sample HTML declarations.

*id* attributes
^^^^^^^^^^^^^^^

You can declare most Ubuntu HTML5 elements without *id* attributes. They will pick up the CSS styles and look fine. But, you generally need an *id* attribute to access the corresponding JavaScript objects. So it's a good idea to add them.

JavaScript classes and methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Almost every Ubuntu HTML5 DOM element has a corresponding Ubuntu HTML5 JavaScript object. These are created automatically when you create an UbuntuUI object and execute its init() method. (This is usually done at startup, for example in the *window.onload* function).

Many of these classes/objects have additional methods. For example, the List class provides methods to add items to the list, remove an item, apply a function to all items, and more.

How these docs are organized
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

These pages or organized by the Ubuntu HTML5 JavaScript classes. Each class has an example showing how the corresponding HTML is declared (as needed). And of course each class has API documentation explaining usage of all (public) methods.

The single most important class is UbuntuUI, so start there.

Then, an Ubuntu HTML5 app is structured as a PageStack of Pages, so be sure to visit those classes.

Ubuntu HTML5 CSS
^^^^^^^^^^^^^^^^

Be sure to check out the Ubuntu HTML5 CSS files you import into your app. They provide a set of styles that theme the HTML5 widgets to the Ubuntu app design and style.

Let's grow this!
^^^^^^^^^^^^^^^^

Let's work together to keep HTML5 as a top-notch app development framework on Ubuntu. Everyone can help by filing bugs, triaging them, and of course, fixing them. So let's get to work writing apps!
