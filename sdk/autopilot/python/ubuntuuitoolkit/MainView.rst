 *class*
``ubuntuuitoolkit.``\ ``MainView``\ (*\*args*)\ ` <#ubuntuuitoolkit.MainView>`__
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    MainView Autopilot custom proxy object.

     ``click_action_button``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.click_action_button>`__
        Click the specified button.

        Parameters:

        **action\_object\_name** – the objectName of the action to
        trigger.

        Raises ToolkitException:

         

        The requested button is not available.

     ``close_toolbar``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.close_toolbar>`__
        Close the toolbar if it is opened.

        Raises ToolkitException:

         

        If the main view has no toolbar.

    ``get_action_selection_popover``\ (*object\_name*)\ ` <#ubuntuuitoolkit.MainView.get_action_selection_popover>`__
        Return an ActionSelectionPopover custom proxy object.

        +---------------+------------------------------------------------------------------+
        | Parameters:   | **object\_name** – The QML objectName property of the popover.   |
        +---------------+------------------------------------------------------------------+

     ``get_header``\ ()` <#ubuntuuitoolkit.MainView.get_header>`__
        Return the AppHeader custom proxy object of the MainView.

     ``get_tabs``\ ()` <#ubuntuuitoolkit.MainView.get_tabs>`__
        Return the Tabs custom proxy object of the MainView.

        Raises ToolkitException:

         

        If the main view has no tabs.

    ``get_text_input_context_menu``\ (*object\_name*)\ ` <#ubuntuuitoolkit.MainView.get_text_input_context_menu>`__
        Return a TextInputContextMenu emulator.

        +---------------+------------------------------------------------------------------+
        | Parameters:   | **object\_name** – The QML objectName property of the popover.   |
        +---------------+------------------------------------------------------------------+

     ``get_toolbar``\ ()` <#ubuntuuitoolkit.MainView.get_toolbar>`__
        Return the Toolbar custom proxy object of the MainView.

        Raises ToolkitException:

         

        If the main view has no toolbar.

     ``go_back``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.go_back>`__
        Go to the previous page.

     ``open_toolbar``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.open_toolbar>`__
        Open the toolbar if it is not already opened.

        Returns:

        The toolbar.

        Raises ToolkitException:

         

        If the main view has no toolbar.

     ``switch_to_next_tab``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.switch_to_next_tab>`__
        Open the next tab.

        +------------+-------------------------+
        | Returns:   | The newly opened tab.   |
        +------------+-------------------------+

     ``switch_to_previous_tab``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.switch_to_previous_tab>`__
        Open the previous tab.

        +------------+-------------------------+
        | Returns:   | The newly opened tab.   |
        +------------+-------------------------+

     ``switch_to_tab``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.switch_to_tab>`__
        Open a tab.

        Parameters:

        **object\_name** – The QML objectName property of the tab.

        Returns:

        The newly opened tab.

        Raises ToolkitException:

         

        If there is no tab with that object name.

     ``switch_to_tab_by_index``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.MainView.switch_to_tab_by_index>`__
        Open a tab.

        Parameters:

        **index** – The index of the tab to open.

        Returns:

        The newly opened tab.

        Raises ToolkitException:

         

        If the tab index is out of range.

     *classmethod* ``validate_dbus_object``\ (*path*,
    *state*)\ ` <#ubuntuuitoolkit.MainView.validate_dbus_object>`__

