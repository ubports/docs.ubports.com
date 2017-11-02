.. _sdk_autopilot_testcase_autopilottestcase:
autopilot.testcase AutopilotTestCase
====================================

 *class* ``autopilot.testcase.``\ ``AutopilotTestCase``\ (*\*args*,
*\*\*kwargs*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase>`\ ` <#autopilot.testcase.AutopilotTestCase>`
    Wrapper around testtools.TestCase that adds significant
    functionality.

    This class should be the base class for all autopilot test case
    classes. Not using this class as the base class disables several
    important convenience methods, and also prevents the use of the
    failed-test recording tools.

     ``launch_test_application``\ (*application*, *\*arguments*,
    *\*\*kwargs*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.launch_test_application>`\ ` <#autopilot.testcase.AutopilotTestCase.launch_test_application>`
        Launch ``application`` and return a proxy object for the
        application.

        Use this method to launch an application and start testing it.
        The positional arguments are used as arguments to the
        application to lanch. Keyword arguments are used to control the
        manner in which the application is launched.

        This method is designed to be flexible enough to launch all
        supported types of applications. Autopilot can automatically
        determine how to enable introspection support for dynamically
        linked binary applications. For example, to launch a binary Gtk
        application, a test might start with:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_test_application('gedit')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        Applications can be given command line arguments by supplying
        positional arguments to this method. For example, if we want to
        launch ``gedit`` with a certain document loaded, we might do
        this:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_test_application(
                'gedit', '/tmp/test-document.txt')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        ... a Qt5 Qml application is launched in a similar fashion:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_test_application(
                'qmlscene', 'my_scene.qml')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        If you wish to launch an application that is not a dynamically
        linked binary, you must specify the application type. For
        example, a Qt4 python application might be launched like this:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_test_application(
                'my_qt_app.py', app_type='qt')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        Similarly, a python/Gtk application is launched like so:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_test_application(
                'my_gtk_app.py', app_type='gtk')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **application** –                                                                                                                                                                                                                                                    |
        |               |                                                                                                                                                                                                                                                                         |
        |               |    The application to launch. The application can be specified as:                                                                                                                                                                                                      |
        |               |                                                                                                                                                                                                                                                                         |
        |               |        .. raw:: html                                                                                                                                                                                                                                                    |
        |               |                                                                                                                                                                                                                                                                         |
        |               |           <div>                                                                                                                                                                                                                                                         |
        |               |                                                                                                                                                                                                                                                                         |
        |               |        -  A full, absolute path to an executable file. (``/usr/bin/gedit``)                                                                                                                                                                                             |
        |               |        -  A relative path to an executable file. (``./build/my_app``)                                                                                                                                                                                                   |
        |               |        -  An app name, which will be searched for in $PATH (``my_app``)                                                                                                                                                                                                 |
        |               |                                                                                                                                                                                                                                                                         |
        |               |        .. raw:: html                                                                                                                                                                                                                                                    |
        |               |                                                                                                                                                                                                                                                                         |
        |               |           </div>                                                                                                                                                                                                                                                        |
        |               |                                                                                                                                                                                                                                                                         |
        |               | -  **app\_type** – If set, provides a hint to autopilot as to which kind of introspection to enable. This is needed when the application you wish to launch is *not* a dynamically linked binary. Valid values are ‘gtk’ or ‘qt’. These strings are case insensitive.   |
        |               | -  **launch\_dir** – If set to a directory that exists the process will be launched from that directory.                                                                                                                                                                |
        |               | -  **capture\_output** – If set to True (the default), the process output will be captured and attached to the test as test detail.                                                                                                                                     |
        |               | -  **emulator\_base** – If set, specifies the base class to be used for all emulators for this loaded application.                                                                                                                                                      |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A proxy object that represents the application. Introspection data is retrievable via this object.                                                                                                                                                                      |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

     ``launch_click_package``\ (*package\_id*, *app\_name=None*,
    *app\_uris=[]*,
    *\*\*kwargs*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.launch_click_package>`\ ` <#autopilot.testcase.AutopilotTestCase.launch_click_package>`
        Launch a click package application with introspection enabled.

        This method takes care of launching a click package with
        introspection exabled. You probably want to use this method if
        your application is packaged in a click application, or is
        started via upstart.

        Usage is similar to the
        :ref:```AutopilotTestCase.launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_click_package(
                "com.ubuntu.dropping-letters"
            )

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **package\_id** – The Click package name you want to launch. For example: ``com.ubuntu.dropping-letters``                                                                                         |
        |               | -  **app\_name** – Currently, only one application can be packaged in a click package, and this parameter can be left at None. If specified, it should be the application name you wish to launch.   |
        |               | -  **app\_uris** – Parameters used to launch the click package. This parameter will be left empty if not used.                                                                                       |
        |               | -  **emulator\_base** – If set, specifies the base class to be used for all emulators for this loaded application.                                                                                   |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **RuntimeError** – If the specified package\_id cannot be found in the click package manifest.                                                                                                    |
        |               | -  **RuntimeError** – If the specified app\_name cannot be found within the specified click package.                                                                                                 |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | proxy object for the launched package application                                                                                                                                                    |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

     ``launch_upstart_application``\ (*application\_name*, *uris=[]*,
    *launcher\_class=<class
    'autopilot.application.\_launcher.UpstartApplicationLauncher'>*,
    *\*\*kwargs*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.launch_upstart_application>`\ ` <#autopilot.testcase.AutopilotTestCase.launch_upstart_application>`
        Launch an application with upstart.

        This method launched an application via the
        ``ubuntu-app-launch`` library, on platforms that support it.

        Usage is similar to the
        :ref:```AutopilotTestCase.launch_test_application`` <sdk_autopilot_testcase_autopilottestcase#autopilot.testcase.AutopilotTestCase.launch_test_application>`:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = self.launch_upstart_application("gallery-app")

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        +---------------+-----------------------------------------------------------------------------+
        | Parameters:   | -  **application\_name** – The name of the application to launch.           |
        |               | -  **launcher\_class** – The application launcher class to use. Useful if   |
        +---------------+-----------------------------------------------------------------------------+

        you need to overwrite the default to do something custom (i.e.
        using
            AlreadyLaunchedUpstartLauncher)

        Parameters:

        **emulator\_base** – If set, specifies the base class to be used
        for all emulators for this loaded application.

        Raises RuntimeError:

         

        If the specified application cannot be launched.

    :ref:``take_screenshot``\ (*attachment\_name*)\ ` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.take_screenshot>`\ ` <#autopilot.testcase.AutopilotTestCase.take_screenshot>`
        Take a screenshot of the current screen and adds it to the test
        as a detail named *attachment\_name*.

        If *attachment\_name* already exists as a detail the name will
        be modified to remove the naming conflict (i.e. using
        TestCase.addDetailUniqueName).

        Returns True if the screenshot was taken and attached
        successfully, False otherwise.

     ``patch_environment``\ (*key*,
    *value*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.patch_environment>`\ ` <#autopilot.testcase.AutopilotTestCase.patch_environment>`
        Patch environment using fixture.

        This function is deprecated and planned for removal in autopilot
        1.6. New implementations should use EnvironmenVariable from the
        fixtures module:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            from fixtures import EnvironmentVariable

            def my_test(AutopilotTestCase):
                my_patch = EnvironmentVariable('key', 'value')
                self.useFixture(my_patch)

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        ‘key’ will be set to ‘value’. During tearDown, it will be reset
        to a previous value, if one is found, or unset if not.

    :ref:``assertVisibleWindowStack``\ (*stack\_start*)\ ` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.assertVisibleWindowStack>`\ ` <#autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack>`
        Check that the visible window stack starts with the windows
        passed in.

        .. raw:: html

           <div class="admonition note">

        Note

        Minimised windows are skipped.

        .. raw:: html

           </div>

        Parameters:

        **stack\_start** – An iterable of
        :ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>`
        instances.

        Raises AssertionError:

         

        if the top of the window stack does not match the contents of
        the stack\_start parameter.

     ``assertProperty``\ (*obj*,
    *\*\*kwargs*)\ :ref:` <sdk_autopilot_testcase_autopilottestcase#AutopilotTestCase.assertProperty>`\ ` <#autopilot.testcase.AutopilotTestCase.assertProperty>`
        Assert that *obj* has properties equal to the key/value pairs in
        kwargs.

        This method is intended to be used on objects whose attributes
        do not have the ``wait_for`` method (i.e.- objects that do not
        come from the autopilot DBus interface).

        For example, from within a test, to assert certain properties on
        a ~autopilot.process.Window instance:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            self.assertProperty(my_window, is_maximized=True)

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           <div class="admonition note">

        Note

        assertProperties is a synonym for this method.

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **obj** – The object to test.                                                                                             |
        |               | -  **kwargs** – One or more keyword arguments to match against the attributes of the *obj* parameter.                        |
        +---------------+------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **ValueError** – if no keyword arguments were given.                                                                      |
        |               | -  **ValueError** – if a named attribute is a callable object.                                                               |
        |               | -  **AssertionError** – if any of the attribute/value pairs in kwargs do not match the attributes on the object passed in.   |
        +---------------+------------------------------------------------------------------------------------------------------------------------------+

     ``assertProperties``\ (*obj*,
    *\*\*kwargs*)\ ` <#autopilot.testcase.AutopilotTestCase.assertProperties>`_ 
        Assert that *obj* has properties equal to the key/value pairs in
        kwargs.

        This method is intended to be used on objects whose attributes
        do not have the ``wait_for`` method (i.e.- objects that do not
        come from the autopilot DBus interface).

        For example, from within a test, to assert certain properties on
        a ~autopilot.process.Window instance:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            self.assertProperty(my_window, is_maximized=True)

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        .. raw:: html

           <div class="admonition note">

        Note

        assertProperties is a synonym for this method.

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **obj** – The object to test.                                                                                             |
        |               | -  **kwargs** – One or more keyword arguments to match against the attributes of the *obj* parameter.                        |
        +---------------+------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **ValueError** – if no keyword arguments were given.                                                                      |
        |               | -  **ValueError** – if a named attribute is a callable object.                                                               |
        |               | -  **AssertionError** – if any of the attribute/value pairs in kwargs do not match the attributes on the object passed in.   |
        +---------------+------------------------------------------------------------------------------------------------------------------------------+
