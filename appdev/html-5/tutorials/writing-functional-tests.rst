HTML5 tutorials - writing functional tests
==========================================

In this tutorial you will learn how to write functional tests to
strengthen the quality of your Ubuntu HTML5 application. It builds upon
the HTML5 development tutorials.

Requirements
~~~~~~~~~~~~

-  Ubuntu 14.10 or later

   -  `Get Ubuntu <https://www.ubuntu.com/download/desktop/>`__

-  The HTML5 development tutorials

   -  If you haven't already complete the `HTML5 development
      tutorials <index.md>`__

-  ``autopilot``, ``selenium``

   -  Open a terminal with ``Ctrl+Alt+T`` and run these commands to
      install all required packages:
   -  ``sudo apt-add-repository ppa:canonical-platform-qa/selenium``
   -  ``sudo apt-get update``
   -  ``sudo apt-get install python3-autopilot python3-selenium oxideqt-chromedriver``

What are acceptance tests?
~~~~~~~~~~~~~~~~~~~~~~~~~~

Functional or acceptance tests help ensure your application behaves
properly from a user perspective. The tests seek to mimic the user as
closely as possible. Acceptance tests are the pinnacle of the `testing
pyramid <../../scopes/tutorials/scopes-unit-testing.md>`__. The testing
pyramid describes the three levels of testing an application, going from
low level tests at the bottom and increasing to high level tests at the
top. As acceptance tests are the highest level, they will represent the
smallest number of tests, but will also likely be the most complex.

In Ubuntu, functional tests for your HTML5 application:

-  Are written in python
-  Utilize selenium and autopilot

What is autopilot? selenium?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Autopilot is a tool for introspecting applications using dbus. What this
means is autopilot can read application objects and their properties,
while also allowing you to mock user interactions like clicking, tapping
and sending keystrokes.

Selenium is also a testing tool meant for testing web applications. Like
autopilot, it allows you to find and interact with page elements, but
does this by driving a browser and providing programmatic access to it.

A simple testcase
~~~~~~~~~~~~~~~~~

The setup
^^^^^^^^^

Before you can run a testcase, you’ll need to setup your environment.

-  Create a test class that inherits
   `AutopilotTestCase <../api-autopilot-current/autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase>`__
-  Define your ``Setup()`` and ``TearDown()`` functions
-  Launch the application with introspection via
   ``launch_test_application``

Fortunately, this setup is taken care of for you by the testing
templates provided by the SDK. Let’s break down a few important pieces
to understand.

First is how we launch the application. Autopilot is used to introspect
the ``html5-app-launcher`` executable which will run the web app and
contains the web view.

.. code:: javascript

    def launch_html5_app_inline(self, args):
            return self.launch_test_application(
                'ubuntu-html5-app-launcher',
                *args,
                emulator_base=uitk.UbuntuUIToolkitCustomProxyObjectBase)

Next, we define a
`webdriver <http://www.seleniumhq.org/projects/webdriver/>`__ for
selenium that we can use to interact with the webview. A webdriver an
interface to a browser allowing for programmatically interacting with an
application. Each browser has a separate browser driver. Since our HTML5
application will be running utilizing Blink, we launch a Chrome driver.

.. code:: javascript

    def launch_webdriver(self):
        options = Options()
        options.binary_location = ''
        options.debugger_address = '{}:{}'.format(
            DEFAULT_WEBVIEW_INSPECTOR_IP,
            DEFAULT_WEBVIEW_INSPECTOR_PORT)
        self.driver = webdriver.Chrome(
            executable_path=CHROMEDRIVER_EXEC_PATH,
            chrome_options=options)

Finally we are able to launch the application and start the webdriver
once it’s loaded.

.. code:: javascript

    def launch_html5_app(self):
        self.app_proxy = self.launch_html5_app_inline()
        self.wait_for_app_to_launch()
        self.launch_webdriver()

Building blocks of a testcase

Testcase
^^^^^^^^

-  Create a Testcase class that inherits your test class
-  Define your ``Setup()`` (and perhaps T\ ``earDown()``) functions
-  Launch the application with introspection via
   ``launch_test_application``

Here’s a simple test example of testing an HTML5 app with 2 buttons.

.. code:: javascript

    def test_for_buttons(self):
            html5_doc_buttons = self.page.find_elements_by_css_selector(
                "#hello-page a")
            self.assertThat(len(html5_doc_buttons), Equals(2))

Making use of selenium
----------------------

Once you’ve launched the application successfully, you will have access
to the object tree as usual. You will find the objects you need under
the WebAppContainer object. A simple select will get you the object:

``select_single(WebAppContainer)``

Even further, you can also utilize the selenium webdriver methods to
interact with the application.

For example, you will find it useful to search for objects using
selenium, while interacting with the container will be easier using
autopilot (tapping the back button for example). As you see in the
example above we are able to easily find elements on the page using a
``find_elements_by_css_selector`` method which is provided by the
selenium webdriver. This is in contrast to introspecting for the object
over the dbus tree via autopilot.

Finding and Selecting Objects
-----------------------------

Fortunately selenium also makes it easy to find and introspect objects.
You can issue a find by id, name, path, link, tag, class, and css! You
can also find multiple elements by most of the same attributes.

You can read more about finding elements in the `Selenium
documentation <http://selenium-python.readthedocs.io/locating-elements.html#locating-elements>`__.

Once you have found an element you can interact with it by reading its
properties or performing an action. Let’s talk about each one.

Reading attributes
------------------

You can read element attributes by utilizing the get\_attribute method.
For example, we can read attributes of the button from the previous
example.

``button.get_attribute(“class”)``

Note that getting a list of all attributes isn’t possible via the API.
Instead, you can visualize the element using web developer tools or
javascript to list it’s attributes.

You can also get values of css properties via the
``value_of_css_property`` method.

Action Chains
-------------

Now that we can find objects and get details about them, let’s interact
with them as well. A user interacting with our application will swipe
and tap our UI elements. To do the same in selenium, we can utilize what
is known as an action chain. This is simply a set of actions that we ask
selenium to perform in the same way as a user.

Let’s provide an example, by expanding the example testcase we gave
above. After finding the buttons, let’s add an action to click the first
button.

First, let’s define a new actionchain for the main page.

``actions = ActionChains(self.page)``

Now we can add actions to perform. Selenium allows us to click on items,
drag, move, etc. For our purposes let’s add a single action to click the
button.

``actions.click(button)``

Once all of our actions are added, we call the perform method to execute
the actions. So putting it all together, here’s our full testcase:

.. code:: javascript

    def test_click_button(self):
            button = self.page.find_elements_by_class_name(“ubuntu”)[0]
            actions = ActionChains(self.page)
            actions.click(button)
            actions.perform()

To find out about other useful methods, check out the `Actions Chain
documentation <http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.action_chains>`__.

Assertions and Expectations
---------------------------

In addition to the suite of assertions that autopilot has, selenium
allows for you to create expectations about elements. These are called
`expected
conditions <http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.support.expected_conditions>`__.
For example, we could wait for an element to be clickable before
clicking on it.

``wait.until(expected_conditions.element_to_be_clickable(By.class("ubuntu")))``

Page Object Model
-----------------

When you are architecting your test suite, it’s important to think about
design. Functional tests are the most UI sensitive testcases in your
project and are more likely to break than lower level tests. To address
this issue, the page object model can guide you towards writing tests
that can scale and deal with changes over time easily. Check out the
`Page ObjectModel <../api-autopilot-current/guides-page_object.md>`__
for more information.

Conclusion
----------

You've just learned how to write acceptance tests for a Ubuntu HTML5
application. But there is more information to be learned about how to
write HTML5 tests. Check out the links below for more documentation and
help.

Resources
~~~~~~~~~

-  `Autopilot API <../api-autopilot-current/index.md>`__
-  `Selenium Webdriver
   API <http://selenium-python.readthedocs.io/api.html>`__
-  `HTML5 SDK documentation <api.md>`__
