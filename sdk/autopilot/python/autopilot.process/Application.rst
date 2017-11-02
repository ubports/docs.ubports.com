.. _sdk_autopilot_process_application:
autopilot.process Application
=============================

 *class*
:ref:``autopilot.process.``\ ``Application``\ ` <sdk_autopilot_process_application#Application>`\ ` <#autopilot.process.Application>`

    :ref:``desktop_file``\ ` <sdk_autopilot_process_application#Application.desktop_file>`\ ` <#autopilot.process.Application.desktop_file>`
        Get the application desktop file.

        This returns just the filename, not the full path. If the
        application no longer exists, this returns an empty string.

    :ref:``name``\ ` <sdk_autopilot_process_application#Application.name>`\ ` <#autopilot.process.Application.name>`
        Get the application name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change according to the current locale. If you want a
        unique string to match applications against, use desktop\_file
        instead.

        .. raw:: html

           </div>

    :ref:``icon``\ ` <sdk_autopilot_process_application#Application.icon>`\ ` <#autopilot.process.Application.icon>`
        Get the application icon.

        +------------+-------------------------+
        | Returns:   | The name of the icon.   |
        +------------+-------------------------+

    :ref:``is_active``\ ` <sdk_autopilot_process_application#Application.is_active>`\ ` <#autopilot.process.Application.is_active>`
        Is the application active (i.e. has keyboard focus)?

    :ref:``is_urgent``\ ` <sdk_autopilot_process_application#Application.is_urgent>`\ ` <#autopilot.process.Application.is_urgent>`
        Is the application currently signalling urgency?

    :ref:``user_visible``\ ` <sdk_autopilot_process_application#Application.user_visible>`\ ` <#autopilot.process.Application.user_visible>`
        Is this application visible to the user?

        .. raw:: html

           <div class="admonition note">

        Note

        Some applications (such as the panel) are hidden to the user but
        may still be returned.

        .. raw:: html

           </div>

    :ref:``get_windows``\ ()` <sdk_autopilot_process_application#Application.get_windows>`\ ` <#autopilot.process.Application.get_windows>`
        Get a list of the application windows.
