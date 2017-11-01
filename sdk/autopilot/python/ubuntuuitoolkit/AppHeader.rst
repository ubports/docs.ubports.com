 *class*
``ubuntuuitoolkit.``\ ``AppHeader``\ (*\*args*)\ ` <#ubuntuuitoolkit.AppHeader>`__
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    AppHeader Autopilot custom proxy object.

    ``click_action_button``\ (*action\_object\_name*)\ ` <#ubuntuuitoolkit.AppHeader.click_action_button>`__
        Click an action button of the header.

        Parameters:

        **object\_name** – The QML objectName property of the action

        Raises ToolkitException:

         

        If there is no action button with that object name.

    ``click_back_button``\ ()` <#ubuntuuitoolkit.AppHeader.click_back_button>`__

    ``click_custom_back_button``\ ()` <#ubuntuuitoolkit.AppHeader.click_custom_back_button>`__

     ``ensure_visible``\ ()` <#ubuntuuitoolkit.AppHeader.ensure_visible>`__

    ``get_selected_section_index``\ ()` <#ubuntuuitoolkit.AppHeader.get_selected_section_index>`__

     ``switch_to_next_tab``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.AppHeader.switch_to_next_tab>`__
        Open the next tab.

        Raises ToolkitException:

         

        If the main view has no tabs.

     ``switch_to_section_by_index``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.AppHeader.switch_to_section_by_index>`__
        Select a section in the header divider

        Parameters:

        **index** – The index of the section to select

        Raises ToolkitEmulatorException:

         

        If the selection index is out of range or useDeprecatedToolbar
        is set.

     ``switch_to_tab_by_index``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.AppHeader.switch_to_tab_by_index>`__
        Open a tab. This only supports the new tabs in the header

        Parameters:

        **index** – The index of the tab to open.

        Raises ToolkitException:

         

        If the tab index is out of range or useDeprecatedToolbar is set.

    ``wait_for_animation``\ ()` <#ubuntuuitoolkit.AppHeader.wait_for_animation>`__

``ubuntuuitoolkit.``\ ``check_autopilot_version``\ ()` <#ubuntuuitoolkit.check_autopilot_version>`__
    Check that the Autopilot installed version matches the one required.

    Raises ToolkitException:

     

    If the installed Autopilot version does’t match the required by the
    custom proxy objects.
