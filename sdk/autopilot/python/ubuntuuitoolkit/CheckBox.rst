.. _sdk_ubuntuuitoolkit_checkbox:
ubuntuuitoolkit CheckBox
========================

 *class*
``ubuntuuitoolkit.``\ ``CheckBox``\ (*\*args*)\ ` <#ubuntuuitoolkit.CheckBox>`_ 
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    CheckBox Autopilot custom proxy object.

     ``change_state``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.CheckBox.change_state>`_ 
        Change the state of a CheckBox.

        If it is checked, it will be unchecked. If it is unchecked, it
        will be checked.

        +---------------+----------------------------------------------------------------------------------------------+
        | Parameters:   | **time\_out** – number of seconds to wait for the CheckBox state to change. Default is 10.   |
        +---------------+----------------------------------------------------------------------------------------------+

     ``check``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.CheckBox.check>`_ 
        Check a CheckBox, if its not already checked.

        +---------------+------------------------------------------------------------------------------------------+
        | Parameters:   | **timeout** – number of seconds to wait for the CheckBox to be checked. Default is 10.   |
        +---------------+------------------------------------------------------------------------------------------+

     ``uncheck``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.CheckBox.uncheck>`_ 
        Uncheck a CheckBox, if its not already unchecked.

        +---------------+--------------------------------------------------------------------------------------------+
        | Parameters:   | **timeout** – number of seconds to wait for the CheckBox to be unchecked. Default is 10.   |
        +---------------+--------------------------------------------------------------------------------------------+

``ubuntuuitoolkit.``\ ``get_keyboard``\ ()` <#ubuntuuitoolkit.get_keyboard>`_ 
    Return the keyboard device.

``ubuntuuitoolkit.``\ ``get_pointing_device``\ ()` <#ubuntuuitoolkit.get_pointing_device>`_ 
    Return the pointing device depending on the platform.

    If the platform is Desktop, the pointing device will be a Mouse. If
    not, the pointing device will be Touch.
