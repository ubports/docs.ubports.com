.. _sdk_autopilot_application_clickapplicationlauncher:
autopilot.application ClickApplicationLauncher
==============================================

 *class*
``autopilot.application.``\ ``ClickApplicationLauncher``\ (*case\_addDetail=None*,
*emulator\_base=None*,
*dbus\_bus='session'*)\ ` <#autopilot.application.ClickApplicationLauncher>`_ 
    Fixture to manage launching a Click application.A class that knows
    how to launch an application with a certain type of introspection
    enabled.

    +---------------+------------------------------------------------------------------------------------------------------------------------------+
    | Parameters:   | -  **case\_addDetail** – addDetail method to use.                                                                            |
    |               | -  **proxy\_base** – custom proxy base class to use, defaults to None                                                        |
    |               | -  **dbus\_bus** – dbus bus to use, if set to something other than the default (‘session’) the environment will be patched   |
    +---------------+------------------------------------------------------------------------------------------------------------------------------+

     ``launch``\ (*package\_id*, *app\_name=None*,
    *app\_uris=[]*)\ ` <#autopilot.application.ClickApplicationLauncher.launch>`_ 
        Launch a click package application with introspection enabled.

        This method takes care of launching a click package with
        introspection exabled. You probably want to use this method if
        your application is packaged in a click application, or is
        started via upstart.

        Usage is similar to NormalApplicationLauncher.launch:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            from autopilot.application import ClickApplicationLauncher
            launcher = ClickApplicationLauncher()
            launcher.setUp()
            app_proxy = launcher.launch('com.ubuntu.dropping-letters')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **package\_id** – The Click package name you want to launch. For example: ``com.ubuntu.dropping-letters``                                                                                         |
        |               | -  **app\_name** – Currently, only one application can be packaged in a click package, and this parameter can be left at None. If specified, it should be the application name you wish to launch.   |
        |               | -  **app\_uris** – Parameters used to launch the click package. This parameter will be left empty if not used.                                                                                       |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Raises:       | -  **RuntimeError** – If the specified package\_id cannot be found in the click package manifest.                                                                                                    |
        |               | -  **RuntimeError** – If the specified app\_name cannot be found within the specified click package.                                                                                                 |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | proxy object for the launched package application                                                                                                                                                    |
        +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
