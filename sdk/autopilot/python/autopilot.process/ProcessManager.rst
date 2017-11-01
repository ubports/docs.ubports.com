 *class*
``autopilot.process.``\ ``ProcessManager``\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager>`__\ ` <#autopilot.process.ProcessManager>`__
    A simple process manager class.

    The process manager is used to handle processes, windows and
    applications. This class should not be instantiated directly
    however. To get an instance of the keyboard class, call
    ```create`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.create>`__
    instead.

     ``KNOWN_APPS`` *= {'System Settings': {'process-name':
    'unity-control-center', 'desktop-file':
    'unity-control-center.desktop'}, 'Mahjongg': {'process-name':
    'gnome-mahjongg', 'desktop-file': 'gnome-mahjongg.desktop'}, 'Text
    Editor': {'process-name': 'gedit', 'desktop-file': 'gedit.desktop'},
    'Terminal': {'process-name': 'gnome-terminal', 'desktop-file':
    'gnome-terminal.desktop'}, 'Character Map': {'process-name':
    'gucharmap', 'desktop-file': 'gucharmap.desktop'}, 'Remmina':
    {'process-name': 'remmina', 'desktop-file': 'remmina.desktop'},
    'Calculator': {'process-name': 'gnome-calculator', 'desktop-file':
    'gcalctool.desktop'}}*\ ` <#autopilot.process.ProcessManager.KNOWN_APPS>`__

     *static*
    ``create``\ (*preferred\_backend=''*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.create>`__\ ` <#autopilot.process.ProcessManager.create>`__
        Get an instance of the
        ```ProcessManager`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager>`__
        class.

        For more infomration on picking specific backends, see
        `*Advanced Backend
        Picking* </sdk/autopilot/python/tutorial-advanced_autopilot#tut-picking-backends>`__

        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **preferred\_backend** –                                                                                             |
        |               | A string containing a hint as to which backend you would like. Possible backends are:                                |
        |               |                                                                                                                      |
        |               | -                                                                                                                    |
        |               |                                                                                                                      |
        |               |    ``BAMF`` - Get process information using the BAMF Application                                                     |
        |               |        Matching Framework.                                                                                           |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | RuntimeError if autopilot cannot instantate any of the possible backends.                                            |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class.   |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | ``BackendException`` if the preferred\_backend is set, but that backend could not be instantiated.                   |
        +---------------+----------------------------------------------------------------------------------------------------------------------+

     *classmethod* ``register_known_application``\ (*name*,
    *desktop\_file*,
    *process\_name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.register_known_application>`__\ ` <#autopilot.process.ProcessManager.register_known_application>`__
        Register an application with autopilot.

        After calling this method, you may call
        ```start_app`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.start_app>`__
        or
        ```start_app_window`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.start_app_window>`__
        with the name parameter to start this application. You need only
        call this once within a test run - the application will remain
        registerred until the test run ends.

        +---------------+--------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **name** – The name to be used when launching the application.                                                  |
        |               | -  **desktop\_file** – The filename (without path component) of the desktop file used to launch the application.   |
        |               | -  **process\_name** – The name of the executable process that gets run.                                           |
        +---------------+--------------------------------------------------------------------------------------------------------------------+
        | Raises:       | **KeyError** if application has been registered already                                                            |
        +---------------+--------------------------------------------------------------------------------------------------------------------+

     *classmethod*
    ``unregister_known_application``\ (*name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.unregister_known_application>`__\ ` <#autopilot.process.ProcessManager.unregister_known_application>`__
        Unregister an application with the known\_apps dictionary.

        +---------------+------------------------------------------------------------------+
        | Parameters:   | **name** – The name to be used when launching the application.   |
        +---------------+------------------------------------------------------------------+
        | Raises:       | **KeyError** if the application has not been registered.         |
        +---------------+------------------------------------------------------------------+

     ``start_app``\ (*app\_name*, *files=[]*,
    *locale=None*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.start_app>`__\ ` <#autopilot.process.ProcessManager.start_app>`__
        Start one of the known applications, and kill it on tear down.

        .. raw:: html

           <div class="admonition warning">

        Warning

        This method will clear all instances of this application on
        tearDown, not just the one opened by this method! We recommend
        that you use the
        ```start_app_window`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.start_app_window>`__
        method instead, as it is generally safer.

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered using* ```register_known_application`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.register_known_application>`__ *beforehand.*   |
        |               | -  **files** – (Optional) A list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                                                |
        |               | -  **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                                          |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A ```Application`` </sdk/autopilot/python/autopilot.process/Application#autopilot.process.Application>`__ instance.                                                                                                                                                                                                                                                    |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

     ``start_app_window``\ (*app\_name*, *files=[]*,
    *locale=None*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.start_app_window>`__\ ` <#autopilot.process.ProcessManager.start_app_window>`__
        Open a single window for one of the known applications, and
        close it at the end of the test.

        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered with* ```register_known_application`` </sdk/autopilot/python/autopilot.process/ProcessManager#autopilot.process.ProcessManager.register_known_application>`__ *beforehand.*   |
        |               | -  **files** – (Optional) Should be a list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                                     |
        |               | -  **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                                         |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | **AssertionError** if no window was opened, or more than one window was opened.                                                                                                                                                                                                                                                                                       |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A ```Window`` </sdk/autopilot/python/autopilot.process/Window#autopilot.process.Window>`__ instance.                                                                                                                                                                                                                                                                  |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

    ``get_open_windows_by_application``\ (*app\_name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.get_open_windows_by_application>`__\ ` <#autopilot.process.ProcessManager.get_open_windows_by_application>`__
        Get a list of ~autopilot.process.Window\` instances for the
        given application name.

        +---------------+-----------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **app\_name** – The name of one of the well-known applications.                                                 |
        +---------------+-----------------------------------------------------------------------------------------------------------------+
        | Returns:      | A list of ```Window`` </sdk/autopilot/python/autopilot.process/Window#autopilot.process.Window>`__ instances.   |
        +---------------+-----------------------------------------------------------------------------------------------------------------+

    ``close_all_app``\ (*app\_name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.close_all_app>`__\ ` <#autopilot.process.ProcessManager.close_all_app>`__

    ``get_app_instances``\ (*app\_name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.get_app_instances>`__\ ` <#autopilot.process.ProcessManager.get_app_instances>`__

    ``app_is_running``\ (*app\_name*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.app_is_running>`__\ ` <#autopilot.process.ProcessManager.app_is_running>`__

    ``get_running_applications``\ (*user\_visible\_only=True*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.get_running_applications>`__\ ` <#autopilot.process.ProcessManager.get_running_applications>`__
        Get a list of the currently running applications.

        If user\_visible\_only is True (the default), only applications
        visible to the user in the switcher will be returned.

    ``get_running_applications_by_desktop_file``\ (*desktop\_file*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.get_running_applications_by_desktop_file>`__\ ` <#autopilot.process.ProcessManager.get_running_applications_by_desktop_file>`__
        Return a list of applications with the desktop file
        *desktop\_file*.

        This method will return an empty list if no applications are
        found with the specified desktop file.

    ``get_open_windows``\ (*user\_visible\_only=True*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.get_open_windows>`__\ ` <#autopilot.process.ProcessManager.get_open_windows>`__
        Get a list of currently open windows.

        If *user\_visible\_only* is True (the default), only
        applications visible to the user in the switcher will be
        returned.

        The result is sorted to be in stacking order.

     ``wait_until_application_is_running``\ (*desktop\_file*,
    *timeout*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.wait_until_application_is_running>`__\ ` <#autopilot.process.ProcessManager.wait_until_application_is_running>`__
        Wait until a given application is running.

        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **desktop\_file** (*string*) – The name of the application desktop file.                                                            |
        |               | -  **timeout** (*integer*) – The maximum time to wait, in seconds. *If set to something less than 0, this method will wait forever.*   |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | true once the application is found, or false if the application was not found until the timeout was reached.                           |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+

     ``launch_application``\ (*desktop\_file*, *files=[]*,
    *wait=True*)\ ` </sdk/autopilot/python/autopilot.process/ProcessManager#ProcessManager.launch_application>`__\ ` <#autopilot.process.ProcessManager.launch_application>`__
        Launch an application by specifying a desktop file.

        +---------------+----------------------------------------------------------------------------------------------------------+
        | Parameters:   | **files** (*List of strings*) – List of files to pass to the application. *Not all apps support this.*   |
        +---------------+----------------------------------------------------------------------------------------------------------+

        .. raw:: html

           <div class="admonition note">

        Note

        If wait is True, this method will wait up to 10 seconds for the
        application to appear.

        .. raw:: html

           </div>

        +------------+-----------------------------------------------+
        | Raises:    | **TypeError** on invalid *files* parameter.   |
        +------------+-----------------------------------------------+
        | Returns:   | The Gobject process object.                   |
        +------------+-----------------------------------------------+
