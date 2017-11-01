 *class*
``scope_harness.``\ ``PreviewWidget``\ ` <#scope_harness.PreviewWidget>`__
    This class represents a single widget of a preview, such as an image
    or header. The ‘data’ property is a regular python dictionary that
    corresponds to Scopes API VariantMap and contains actual key-values
    that constitute the widget. See the documentation of Unity Scopes
    API for more information about supported values.

     ``data``\ ` <#scope_harness.PreviewWidget.data>`__

     ``id``\ ` <#scope_harness.PreviewWidget.id>`__

     ``trigger``\ (*(PreviewWidget)arg1*, *(str)arg2*, *(object)arg3*) →
    AbstractView :` <#scope_harness.PreviewWidget.trigger>`__
        Trigger preview action.

        +---------------+---------------------------------------------------------------------------------------------------------------+
        | Parameters:   | -  **arg2** (*string*) – action identifier                                                                    |
        |               | -  **arg3** (*dict*) – dictionary holding additional action data, typically the value of ``data`` property.   |
        +---------------+---------------------------------------------------------------------------------------------------------------+
        | Returns:      | instance of PreviewView or ResultsView.                                                                       |
        +---------------+---------------------------------------------------------------------------------------------------------------+
        | Raises:       | ValueError if action couldn’t be executed                                                                     |
        +---------------+---------------------------------------------------------------------------------------------------------------+

     ``type``\ ` <#scope_harness.PreviewWidget.type>`__

