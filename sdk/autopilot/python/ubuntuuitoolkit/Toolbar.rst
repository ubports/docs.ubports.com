 *class*
``ubuntuuitoolkit.``\ ``Toolbar``\ (*\*args*)\ ` <#ubuntuuitoolkit.Toolbar>`__
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    Toolbar Autopilot custom proxy object.

     ``click_back_button``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.Toolbar.click_back_button>`__
        Click the back button of the toolbar.

     ``click_button``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.Toolbar.click_button>`__
        Click a button of the toolbar.

        The toolbar should be opened before clicking the button, or an
        exception will be raised. If the toolbar is closed for some
        reason (e.g., timer finishes) after moving the mouse cursor and
        before clicking the button, it is re-opened automatically by
        this function.

        Parameters:

        **object\_name** – The QML objectName property of the button.

        Raises ToolkitException:

         

        If there is no button with that object name.

     ``close``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.Toolbar.close>`__
        Close the toolbar if it’s opened.

     ``open``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.Toolbar.open>`__
        Open the toolbar if it’s not already opened.

        +------------+----------------+
        | Returns:   | The toolbar.   |
        +------------+----------------+

 *exception*
``ubuntuuitoolkit.``\ ``ToolkitException``\ ` <#ubuntuuitoolkit.ToolkitException>`__
    Bases: ``exceptions.Exception``

    Exception raised when there is an error with the custom proxy
    object.
