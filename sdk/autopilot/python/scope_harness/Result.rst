.. _sdk_scope_harness_result:
scope_harness Result
====================

 *class* ``scope_harness.``\ ``Result``\ ` <#scope_harness.Result>`_ 
    Represents a read-only view on a result returned by a scope

     ``_ getitem__``\ (*(Result)arg1*, *(str)arg2*) → object
    :` <#scope_harness.Result.__getitem__>`_ 
        Get result attribute by name.

        +---------------+----------------------------------------+
        | Parameters:   | **arg2** (*string*) – attribute name   |
        +---------------+----------------------------------------+
        | Returns:      | attribute value                        |
        +---------------+----------------------------------------+
        | Raises:       | ValueError if not found                |
        +---------------+----------------------------------------+

     ``_ init__``\ ()` <#scope_harness.Result.__init__>`_ 
        Raises an exception This class cannot be instantiated from
        Python

     ``_ module__`` *=
    'scope\_harness'*\ ` <#scope_harness.Result.__module__>`_ 

     ``_ reduce__``\ ()` <#scope_harness.Result.__reduce__>`_ 

     ``art``\ ` <#scope_harness.Result.art>`_ 

     ``attributes``\ ` <#scope_harness.Result.attributes>`_ 

     ``background``\ ` <#scope_harness.Result.background>`_ 

     ``dnd_uri``\ ` <#scope_harness.Result.dnd_uri>`_ 

     ``emblem``\ ` <#scope_harness.Result.emblem>`_ 

     ``long_press``\ (*(Result)arg1*) → AbstractView
    :` <#scope_harness.Result.long_press>`_ 
        Activates the result, as if user long-pressed it. Returns an
        instance of PreviewView (if result was previewed) or None (if
        result’s uri was a canned scope query)

        +------------+-----------------------+
        | Returns:   | PreviewView or None   |
        +------------+-----------------------+

     ``mascot``\ ` <#scope_harness.Result.mascot>`_ 

     ``subtitle``\ ` <#scope_harness.Result.subtitle>`_ 

     ``summary``\ ` <#scope_harness.Result.summary>`_ 

     ``tap``\ (*(Result)arg1*) → AbstractView
    :` <#scope_harness.Result.tap>`_ 
        Activates the result, as if user tapped it. Returns an instance
        of PreviewView (if result was previewed) or ResultsView (if
        result’s uri was a canned scope query, resulting in a new
        search)

        +------------+------------------------------------------+
        | Returns:   | instance of PreviewView or ResultsView   |
        +------------+------------------------------------------+

     ``tap_action``\ (*(Result)arg1*, *(str)arg2*) → AbstractView
    :` <#scope_harness.Result.tap_action>`_ 
        Activates result action. Returns the ResultsView where affected
        result may potentially be updated.

     ``title``\ ` <#scope_harness.Result.title>`_ 

     ``uri``\ ` <#scope_harness.Result.uri>`_ 

