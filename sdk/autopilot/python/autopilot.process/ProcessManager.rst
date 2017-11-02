.. _sdk_autopilot_process_processmanager:
autopilot.process ProcessManager
================================

 *class*
:ref:``autopilot.process.``\ ``ProcessManager``\ ` <sdk_autopilot_process_processmanager#ProcessManager>`\ ` <#autopilot.process.ProcessManager>`
    A simple process manager class.

    The process manager is used to handle processes, windows and
    applications. This class should not be instantiated directly
    however. To get an instance of the keyboard class, call
    :ref:```create`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.create>`
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
    'gcalctool.desktop'}}*\ ` <#autopilot.process.ProcessManager.KNOWN_APPS>`_ 

     *static*
    :ref:``create``\ (*preferred\_backend=''*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.create>`\ ` <#autopilot.process.ProcessManager.create>`
        Get an instance of the
        :ref:```ProcessManager`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager>`
        class.

        For more infomration on picking specific backends, see
        `*Advanced Backend
        Picking* </sdk/autopilot/python/tutorial-advanced_autopilot/#tut-picking-backends>`_ 

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
    *process\_name*)\ :ref:` <sdk_autopilot_process_processmanager#ProcessManager.register_known_application>`\ ` <#autopilot.process.ProcessManager.register_known_application>`
        Register an application with autopilot.

        After calling this method, you may call
        :ref:```start_app`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.start_app>`
        or
        :ref:```start_app_window`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.start_app_window>`
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
    :ref:``unregister_known_application``\ (*name*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.unregister_known_application>`\ ` <#autopilot.process.ProcessManager.unregister_known_application>`
        Unregister an application with the known\_apps dictionary.

        +---------------+------------------------------------------------------------------+
        | Parameters:   | **name** – The name to be used when launching the application.   |
        +---------------+------------------------------------------------------------------+
        | Raises:       | **KeyError** if the application has not been registered.         |
        +---------------+------------------------------------------------------------------+

     ``start_app``\ (*app\_name*, *files=[]*,
    *locale=None*)\ :ref:` <sdk_autopilot_process_processmanager#ProcessManager.start_app>`\ ` <#autopilot.process.ProcessManager.start_app>`
        Start one of the known applications, and kill it on tear down.

        .. raw:: html

           <div class="admonition warning">

        Warning

        This method will clear all instances of this application on
        tearDown, not just the one opened by this method! We recommend
        that you use the
        :ref:```start_app_window`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.start_app_window>`
        method instead, as it is generally safer.

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered using* :ref:```register_known_application`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.register_known_application>` *beforehand.*   |
        |               | -  **files** – (Optional) A list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                              |
        |               | -  **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                        |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A :ref:```Application`` <sdk_autopilot_process_application#autopilot.process.Application>` instance.                                                                                                                                                                                                                                                    |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

     ``start_app_window``\ (*app\_name*, *files=[]*,
    *locale=None*)\ :ref:` <sdk_autopilot_process_processmanager#ProcessManager.start_app_window>`\ ` <#autopilot.process.ProcessManager.start_app_window>`
        Open a single window for one of the known applications, and
        close it at the end of the test.

        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered with* :ref:```register_known_application`` <sdk_autopilot_process_processmanager#autopilot.process.ProcessManager.register_known_application>` *beforehand.*   |
        |               | -  **files** – (Optional) Should be a list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                   |
        |               | -  **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                       |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | **AssertionError** if no window was opened, or more than one window was opened.                                                                                                                                                                                                                                                                     |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A :ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>` instance.                                                                                                                                                                                                                                                                  |
        +---------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

    :ref:``get_open_windows_by_application``\ (*app\_name*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.get_open_windows_by_application>`\ ` <#autopilot.process.ProcessManager.get_open_windows_by_application>`
        Get a list of ~autopilot.process.Window\` instances for the
        given application name.

        +---------------+-----------------------------------------------------------------------------------------------+
        | Parameters:   | **app\_name** – The name of one of the well-known applications.                               |
        +---------------+-----------------------------------------------------------------------------------------------+
        | Returns:      | A list of :ref:```Window`` <sdk_autopilot_process_window#autopilot.process.Window>` instances.   |
        +---------------+-----------------------------------------------------------------------------------------------+

    :ref:``close_all_app``\ (*app\_name*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.close_all_app>`\ ` <#autopilot.process.ProcessManager.close_all_app>`

    :ref:``get_app_instances``\ (*app\_name*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.get_app_instances>`\ ` <#autopilot.process.ProcessManager.get_app_instances>`

    :ref:``app_is_running``\ (*app\_name*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.app_is_running>`\ ` <#autopilot.process.ProcessManager.app_is_running>`

    :ref:``get_running_applications``\ (*user\_visible\_only=True*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.get_running_applications>`\ ` <#autopilot.process.ProcessManager.get_running_applications>`
        Get a list of the currently running applications.

        If user\_visible\_only is True (the default), only applications
        visible to the user in the switcher will be returned.

    :ref:``get_running_applications_by_desktop_file``\ (*desktop\_file*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.get_running_applications_by_desktop_file>`\ ` <#autopilot.process.ProcessManager.get_running_applications_by_desktop_file>`
        Return a list of applications with the desktop file
        *desktop\_file*.

        This method will return an empty list if no applications are
        found with the specified desktop file.

    :ref:``get_open_windows``\ (*user\_visible\_only=True*)\ ` <sdk_autopilot_process_processmanager#ProcessManager.get_open_windows>`\ ` <#autopilot.process.ProcessManager.get_open_windows>`
        Get a list of currently open windows.

        If *user\_visible\_only* is True (the default), only
        applications visible to the user in the switcher will be
        returned.

        The result is sorted to be in stacking order.

     ``wait_until_application_is_running``\ (*desktop\_file*,
    *timeout*)\ :ref:` <sdk_autopilot_process_processmanager#ProcessManager.wait_until_application_is_running>`\ ` <#autopilot.process.ProcessManager.wait_until_application_is_running>`
        Wait until a given application is running.

        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **desktop\_file** (*string*) – The name of the application desktop file.                                                            |
        |               | -  **timeout** (*integer*) – The maximum time to wait, in seconds. *If set to something less than 0, this method will wait forever.*   |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | true once the application is found, or false if the application was not found until the timeout was reached.                           |
        +---------------+----------------------------------------------------------------------------------------------------------------------------------------+

     ``launch_application``\ (*desktop\_file*, *files=[]*,
    *wait=True*)\ :ref:` <sdk_autopilot_process_processmanager#ProcessManager.launch_application>`\ ` <#autopilot.process.ProcessManager.launch_application>`
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
