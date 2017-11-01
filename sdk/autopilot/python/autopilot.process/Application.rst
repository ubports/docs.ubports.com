 *class*
``autopilot.process.``\ ``Application``\ ` </sdk/autopilot/python/autopilot.process/Application#Application>`__\ ` <#autopilot.process.Application>`__

    ``desktop_file``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.desktop_file>`__\ ` <#autopilot.process.Application.desktop_file>`__
        Get the application desktop file.

        This returns just the filename, not the full path. If the
        application no longer exists, this returns an empty string.

    ``name``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.name>`__\ ` <#autopilot.process.Application.name>`__
        Get the application name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change according to the current locale. If you want a
        unique string to match applications against, use desktop\_file
        instead.

        .. raw:: html

           </div>

    ``icon``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.icon>`__\ ` <#autopilot.process.Application.icon>`__
        Get the application icon.

        +------------+-------------------------+
        | Returns:   | The name of the icon.   |
        +------------+-------------------------+

    ``is_active``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.is_active>`__\ ` <#autopilot.process.Application.is_active>`__
        Is the application active (i.e. has keyboard focus)?

    ``is_urgent``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.is_urgent>`__\ ` <#autopilot.process.Application.is_urgent>`__
        Is the application currently signalling urgency?

    ``user_visible``\ ` </sdk/autopilot/python/autopilot.process/Application#Application.user_visible>`__\ ` <#autopilot.process.Application.user_visible>`__
        Is this application visible to the user?

        .. raw:: html

           <div class="admonition note">

        Note

        Some applications (such as the panel) are hidden to the user but
        may still be returned.

        .. raw:: html

           </div>

    ``get_windows``\ ()` </sdk/autopilot/python/autopilot.process/Application#Application.get_windows>`__\ ` <#autopilot.process.Application.get_windows>`__
        Get a list of the application windows.
