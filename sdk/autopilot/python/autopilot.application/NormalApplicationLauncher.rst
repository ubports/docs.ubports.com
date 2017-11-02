.. _sdk_autopilot_application_normalapplicationlauncher:
autopilot.application NormalApplicationLauncher
===============================================

 *class*
``autopilot.application.``\ ``NormalApplicationLauncher``\ (*case\_addDetail=None*,
*emulator\_base=None*,
*dbus\_bus='session'*)\ ` <#autopilot.application.NormalApplicationLauncher>`_ 
    Fixture to manage launching an application.A class that knows how to
    launch an application with a certain type of introspection enabled.

    +---------------+------------------------------------------------------------------------------------------------------------------------------+
    | Parameters:   | -  **case\_addDetail** – addDetail method to use.                                                                            |
    |               | -  **proxy\_base** – custom proxy base class to use, defaults to None                                                        |
    |               | -  **dbus\_bus** – dbus bus to use, if set to something other than the default (‘session’) the environment will be patched   |
    +---------------+------------------------------------------------------------------------------------------------------------------------------+

     ``launch``\ (*application*, *arguments=[]*, *app\_type=None*,
    *launch\_dir=None*,
    *capture\_output=True*)\ ` <#autopilot.application.NormalApplicationLauncher.launch>`_ 
        Launch an application and return a proxy object.

        Use this method to launch an application and start testing it.
        The arguments passed in ``arguments`` are used as arguments to
        the application to launch. Additional keyword arguments are used
        to control the manner in which the application is launched.

        This fixture is designed to be flexible enough to launch all
        supported types of applications. Autopilot can automatically
        determine how to enable introspection support for dynamically
        linked binary applications. For example, to launch a binary Gtk
        application, a test might start with:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            from autopilot.application import NormalApplicationLauncher
            launcher = NormalApplicationLauncher()
            launcher.setUp()
            app_proxy = launcher.launch('gedit')

        .. raw:: html

           </div>

        .. raw:: html

           </div>

        For use within a testcase, use useFixture:

            .. raw:: html

               <div>

            from autopilot.application import NormalApplicationLauncher
            launcher = self.useFixture(NormalApplicationLauncher())
            app\_proxy = launcher.launch(‘gedit’)

            .. raw:: html

               </div>

        Applications can be given command line arguments by supplying an
        ``arguments`` argument to this method. For example, if we want
        to launch ``gedit`` with a certain document loaded, we might do
        this:

        .. raw:: html

           <div class="highlight-python">

        .. raw:: html

           <div class="highlight">

        ::

            app_proxy = launcher.launch(
                'gedit', arguments=['/tmp/test-document.txt'])

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

            app_proxy = launcher.launch(
                'qmlscene', arguments=['my_scene.qml'])

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

            app_proxy = launcher.launch(
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

            app_proxy = launcher.launch(
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
        |               | -  **arguments** – If set, the list of arguments is passed to the launched app.                                                                                                                                                                                         |
        |               | -  **app\_type** – If set, provides a hint to autopilot as to which kind of introspection to enable. This is needed when the application you wish to launch is *not* a dynamically linked binary. Valid values are ‘gtk’ or ‘qt’. These strings are case insensitive.   |
        |               | -  **launch\_dir** – If set to a directory that exists the process will be launched from that directory.                                                                                                                                                                |
        |               | -  **capture\_output** – If set to True (the default), the process output will be captured and attached to the test as test detail.                                                                                                                                     |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Returns:      | A proxy object that represents the application. Introspection data is retrievable via this object.                                                                                                                                                                      |
        +---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
