.. _sdk_scope_harness_category:
scope_harness Category
======================

 *class*
``scope_harness.``\ ``Category``\ ` <#scope_harness.Category>`_ 
    Represents a read-only view of a category returned by scope

     ``components``\ ` <#scope_harness.Category.components>`_ 

     ``empty``\ ` <#scope_harness.Category.empty>`_ 

     ``header_link``\ ` <#scope_harness.Category.header_link>`_ 

     ``icon``\ ` <#scope_harness.Category.icon>`_ 

     ``id``\ ` <#scope_harness.Category.id>`_ 

     ``renderer``\ ` <#scope_harness.Category.renderer>`_ 

     ``result``\ (*(Category)arg1*, *(str)arg2*) → Result
    :` <#scope_harness.Category.result>`_ 

            .. raw:: html

               <div>

            Get a Result instance by its uri.

            +---------------+-----------------------------------+
            | param arg2:   | uri                               |
            +---------------+-----------------------------------+
            | type arg2:    | string                            |
            +---------------+-----------------------------------+
            | returns:      | instance of Result                |
            +---------------+-----------------------------------+
            | raises:       | ValueError if uri doesn’t exist   |
            +---------------+-----------------------------------+

            .. raw:: html

               </div>

        result( (Category)arg1, (int)arg2) -> Result :
            Get a Result instance by index.

            +---------------+----------------------------------+
            | param arg2:   | index                            |
            +---------------+----------------------------------+
            | type arg2:    | int                              |
            +---------------+----------------------------------+
            | returns:      | instance of Result               |
            +---------------+----------------------------------+
            | raises:       | ValueError if index is invalid   |
            +---------------+----------------------------------+

     ``results``\ ` <#scope_harness.Category.results>`_ 

     ``title``\ ` <#scope_harness.Category.title>`_ 

