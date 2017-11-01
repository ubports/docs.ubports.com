 *class*
``autopilot.process.``\ ``Window``\ ` </sdk/autopilot/python/autopilot.process/Window#Window>`__\ ` <#autopilot.process.Window>`__

    ``x_id``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.x_id>`__\ ` <#autopilot.process.Window.x_id>`__
        Get the X11 Window Id.

    ``x_win``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.x_win>`__\ ` <#autopilot.process.Window.x_win>`__
        Get the X11 window object of the underlying window.

    ``get_wm_state``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.get_wm_state>`__\ ` <#autopilot.process.Window.get_wm_state>`__
        Get the state of the underlying window.

    ``name``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.name>`__\ ` <#autopilot.process.Window.name>`__
        Get the window name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change according to the current locale. If you want a
        unique string to match windows against, use the x\_id instead.

        .. raw:: html

           </div>

    ``title``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.title>`__\ ` <#autopilot.process.Window.title>`__
        Get the window title.

        This may be different from the application name.

        .. raw:: html

           <div class="admonition note">

        Note

        This may change depending on the current locale.

        .. raw:: html

           </div>

    ``geometry``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.geometry>`__\ ` <#autopilot.process.Window.geometry>`__
        Get the geometry for this window.

        +------------+-------------------------------------------+
        | Returns:   | Tuple containing (x, y, width, height).   |
        +------------+-------------------------------------------+

    ``is_maximized``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.is_maximized>`__\ ` <#autopilot.process.Window.is_maximized>`__
        Is the window maximized?

        Maximized in this case means both maximized vertically and
        horizontally. If a window is only maximized in one direction it
        is not considered maximized.

    ``application``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.application>`__\ ` <#autopilot.process.Window.application>`__
        Get the application that owns this window.

        This method may return None if the window does not have an
        associated application. The ‘desktop’ window is one such
        example.

    ``user_visible``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.user_visible>`__\ ` <#autopilot.process.Window.user_visible>`__
        Is this window visible to the user in the switcher?

    ``is_hidden``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.is_hidden>`__\ ` <#autopilot.process.Window.is_hidden>`__
        Is this window hidden?

        Windows are hidden when the ‘Show Desktop’ mode is activated.

    ``is_focused``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.is_focused>`__\ ` <#autopilot.process.Window.is_focused>`__
        Is this window focused?

    ``is_valid``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.is_valid>`__\ ` <#autopilot.process.Window.is_valid>`__
        Is this window object valid?

        Invalid windows are caused by windows closing during the
        construction of this object instance.

    ``monitor``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.monitor>`__\ ` <#autopilot.process.Window.monitor>`__
        Returns the monitor to which the windows belongs to

    ``closed``\ ` </sdk/autopilot/python/autopilot.process/Window#Window.closed>`__\ ` <#autopilot.process.Window.closed>`__
        Returns True if the window has been closed

    ``close``\ ()` </sdk/autopilot/python/autopilot.process/Window#Window.close>`__\ ` <#autopilot.process.Window.close>`__
        Close the window.

    ``set_focus``\ ()` </sdk/autopilot/python/autopilot.process/Window#Window.set_focus>`__\ ` <#autopilot.process.Window.set_focus>`__

