.. _sdk_ubuntuuitoolkit_qquicklistview:
ubuntuuitoolkit QQuickListView
==============================

 *class*
``ubuntuuitoolkit.``\ ``QQuickListView``\ (*\*args*)\ ` <#ubuntuuitoolkit.QQuickListView>`_ 
    Bases:
    ``ubuntuuitoolkit._custom_proxy_objects._flickable.QQuickFlickable``

     ``click_element``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.QQuickListView.click_element>`_ 
        Click an element from the list.

        It swipes the element into view if it’s center is not visible.

        +---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **objectName** – The objectName property of the element to click.                                                                                                                                         |
        |               | -  **direction** – The direction where the element is, it can be either ‘above’ or ‘below’. Default value is None, which means we don’t know where the object is and we will need to search the full list.   |
        +---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

     ``drag_item``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.QQuickListView.drag_item>`_ 

     ``enable_select_mode``\ (*instance*, *\*args*,
    *\*\*kwargs*)\ ` <#ubuntuuitoolkit.QQuickListView.enable_select_mode>`_ 
        Default implementation to enable select mode. Performs a long
        tap over the first list item in the ListView. The delegates must
        be the new ListItem components.
