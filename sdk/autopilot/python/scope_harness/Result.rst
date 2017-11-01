 *class* ``scope_harness.``\ ``Result``\ ` <#scope_harness.Result>`__
    Represents a read-only view on a result returned by a scope

     ``__getitem__``\ (*(Result)arg1*, *(str)arg2*) → object
    :` <#scope_harness.Result.__getitem__>`__
        Get result attribute by name.

        +---------------+----------------------------------------+
        | Parameters:   | **arg2** (*string*) – attribute name   |
        +---------------+----------------------------------------+
        | Returns:      | attribute value                        |
        +---------------+----------------------------------------+
        | Raises:       | ValueError if not found                |
        +---------------+----------------------------------------+

     ``__init__``\ ()` <#scope_harness.Result.__init__>`__
        Raises an exception This class cannot be instantiated from
        Python

     ``__module__`` *=
    'scope\_harness'*\ ` <#scope_harness.Result.__module__>`__

     ``__reduce__``\ ()` <#scope_harness.Result.__reduce__>`__

     ``art``\ ` <#scope_harness.Result.art>`__

     ``attributes``\ ` <#scope_harness.Result.attributes>`__

     ``background``\ ` <#scope_harness.Result.background>`__

     ``dnd_uri``\ ` <#scope_harness.Result.dnd_uri>`__

     ``emblem``\ ` <#scope_harness.Result.emblem>`__

     ``long_press``\ (*(Result)arg1*) → AbstractView
    :` <#scope_harness.Result.long_press>`__
        Activates the result, as if user long-pressed it. Returns an
        instance of PreviewView (if result was previewed) or None (if
        result’s uri was a canned scope query)

        +------------+-----------------------+
        | Returns:   | PreviewView or None   |
        +------------+-----------------------+

     ``mascot``\ ` <#scope_harness.Result.mascot>`__

     ``subtitle``\ ` <#scope_harness.Result.subtitle>`__

     ``summary``\ ` <#scope_harness.Result.summary>`__

     ``tap``\ (*(Result)arg1*) → AbstractView
    :` <#scope_harness.Result.tap>`__
        Activates the result, as if user tapped it. Returns an instance
        of PreviewView (if result was previewed) or ResultsView (if
        result’s uri was a canned scope query, resulting in a new
        search)

        +------------+------------------------------------------+
        | Returns:   | instance of PreviewView or ResultsView   |
        +------------+------------------------------------------+

     ``tap_action``\ (*(Result)arg1*, *(str)arg2*) → AbstractView
    :` <#scope_harness.Result.tap_action>`__
        Activates result action. Returns the ResultsView where affected
        result may potentially be updated.

     ``title``\ ` <#scope_harness.Result.title>`__

     ``uri``\ ` <#scope_harness.Result.uri>`__

