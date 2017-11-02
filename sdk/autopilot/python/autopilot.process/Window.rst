.. _sdk_autopilot_process_window:
autopilot.process Window
========================

 *class*
:ref:``autopilot.process.``\ ``Window``\ ` <sdk_autopilot_process_window#Window>`\ ` <#autopilot.process.Window>`

    :ref:``x_id``\ ` <sdk_autopilot_process_window#Window.x_id>`\ ` <#autopilot.process.Window.x_id>`
        Get the X11 Window Id.

    :ref:``x_win``\ ` <sdk_autopilot_process_window#Window.x_win>`\ ` <#autopilot.process.Window.x_win>`
        Get the X11 window object of the underlying window.

    :ref:``get_wm_state``\ ` <sdk_autopilot_process_window#Window.get_wm_state>`\ ` <#autopilot.process.Window.get_wm_state>`
        Get the state of the underlying window.

    :ref:``name``\ ` <sdk_autopilot_process_window#Window.name>`\ ` <#autopilot.process.Window.name>`
        Get the window name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change according to the current locale. If you want a
        unique string to match windows against, use the x\_id instead.

        .. raw:: html

           </div>

    :ref:``title``\ ` <sdk_autopilot_process_window#Window.title>`\ ` <#autopilot.process.Window.title>`
        Get the window title.

        This may be different from the application name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change depending on the current locale.

        .. raw:: html

           </div>

    :ref:``geometry``\ ` <sdk_autopilot_process_window#Window.geometry>`\ ` <#autopilot.process.Window.geometry>`
        Get the geometry for this window.

        +------------+-------------------------------------------+
        | Returns:   | Tuple containing (x, y, width, height).   |
        +------------+-------------------------------------------+

    :ref:``is_maximized``\ ` <sdk_autopilot_process_window#Window.is_maximized>`\ ` <#autopilot.process.Window.is_maximized>`
        Is the window maximized?

        Maximized in this case means both maximized vertically and
        horizontally. If a window is only maximized in one direction it
        is not considered maximized.

    :ref:``application``\ ` <sdk_autopilot_process_window#Window.application>`\ ` <#autopilot.process.Window.application>`
        Get the application that owns this window.

        This method may return None if the window does not have an
        associated application. The ‘desktop’ window is one such
        example.

    :ref:``user_visible``\ ` <sdk_autopilot_process_window#Window.user_visible>`\ ` <#autopilot.process.Window.user_visible>`
        Is this window visible to the user in the switcher?

    :ref:``is_hidden``\ ` <sdk_autopilot_process_window#Window.is_hidden>`\ ` <#autopilot.process.Window.is_hidden>`
        Is this window hidden?

        Windows are hidden when the ‘Show Desktop’ mode is activated.

    :ref:``is_focused``\ ` <sdk_autopilot_process_window#Window.is_focused>`\ ` <#autopilot.process.Window.is_focused>`
        Is this window focused?

    :ref:``is_valid``\ ` <sdk_autopilot_process_window#Window.is_valid>`\ ` <#autopilot.process.Window.is_valid>`
        Is this window object valid?

        Invalid windows are caused by windows closing during the
        construction of this object instance.

    :ref:``monitor``\ ` <sdk_autopilot_process_window#Window.monitor>`\ ` <#autopilot.process.Window.monitor>`
        Returns the monitor to which the windows belongs to

    :ref:``closed``\ ` <sdk_autopilot_process_window#Window.closed>`\ ` <#autopilot.process.Window.closed>`
        Returns True if the window has been closed

    :ref:``close``\ ()` <sdk_autopilot_process_window#Window.close>`\ ` <#autopilot.process.Window.close>`
        Close the window.

    :ref:``set_focus``\ ()` <sdk_autopilot_process_window#Window.set_focus>`\ ` <#autopilot.process.Window.set_focus>`

