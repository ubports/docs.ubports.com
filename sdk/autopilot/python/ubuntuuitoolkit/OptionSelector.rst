 *class*
``ubuntuuitoolkit.``\ ``OptionSelector``\ (*\*args*)\ ` <#ubuntuuitoolkit.OptionSelector>`__
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase``

    OptionSelector Autopilot custom proxy object

    ``get_current_label``\ ()` <#ubuntuuitoolkit.OptionSelector.get_current_label>`__
        gets the text of the currently selected item

    ``get_option_count``\ ()` <#ubuntuuitoolkit.OptionSelector.get_option_count>`__
        Gets the number of items in the option selector

    ``get_selected_index``\ ()` <#ubuntuuitoolkit.OptionSelector.get_selected_index>`__
        Gets the current selected index of the QQuickListView

    ``get_selected_text``\ ()` <#ubuntuuitoolkit.OptionSelector.get_selected_text>`__
        gets the text of the currently selected item

     ``select_option``\ (*\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.OptionSelector.select_option>`__
        Select delegate in option selector

        Example usage::
            select\_option(objectName=”myOptionSelectorDelegate”)
            select\_option(‘Label’, text=”some\_text\_here”)

        +---------------+---------------------------------------------------------------------------------+
        | Parameters:   | **kwargs** – keywords used to find property(s) of delegate in option selector   |
        +---------------+---------------------------------------------------------------------------------+
