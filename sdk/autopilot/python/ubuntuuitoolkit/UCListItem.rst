 *class*
``ubuntuuitoolkit.``\ ``UCListItem``\ (*\*args*)\ ` <#ubuntuuitoolkit.UCListItem>`__
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    Base class to emulate swipe for leading and trailing actions.

     ``toggle_selected``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.UCListItem.toggle_selected>`__
        Toggles selected state of the ListItem.

     ``trigger_leading_action``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.UCListItem.trigger_leading_action>`__
        Swipe the item in from left to right to open leading actions and
        click on the button representing the requested action.

        parameters: action\_objectName - object name of the action to be
            triggered. wait\_function - a custom wait function to wait
            till the action is triggered

     ``trigger_trailing_action``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.UCListItem.trigger_trailing_action>`__
        Swipe the item in from right to left to open trailing actions
        and click on the button representing the requested action.

        parameters: action\_objectName - object name of the action to be
            triggered. wait\_function - a custom wait function to wait
            till the action is triggered
