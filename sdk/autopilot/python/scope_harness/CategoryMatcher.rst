.. _sdk_scope_harness_categorymatcher:
scope_harness CategoryMatcher
=============================

 *class* ``scope_harness.``\ ``CategoryMatcher``\ (*(object)arg1*,
*(str)arg2*)\ ` <#scope_harness.CategoryMatcher>`_ 
    Matcher object that holds constraints for matching search category.

     ``components``\ (*(CategoryMatcher)arg1*, *(object)arg2*) →
    CategoryMatcher\ ` <#scope_harness.CategoryMatcher.components>`_ 

     ``has_at_least``\ (*(CategoryMatcher)arg1*, *(int)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.has_at_least>`_ 
        Set the minimum number of categories

     ``header_link``\ (*(CategoryMatcher)arg1*, *(str)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.header_link>`_ 
        Set the header link to match

     ``icon``\ (*(CategoryMatcher)arg1*, *(str)arg2*) → CategoryMatcher
    :` <#scope_harness.CategoryMatcher.icon>`_ 
        Set the icon to match

     ``id``\ ` <#scope_harness.CategoryMatcher.id>`_ 

     ``match``\ (*(CategoryMatcher)arg1*, *(Category)arg2*) →
    MatchResult\ ` <#scope_harness.CategoryMatcher.match>`_ 
        match( (CategoryMatcher)arg1, (MatchResult)arg2, (Category)arg3)
        -> None

     ``mode``\ (*(CategoryMatcher)arg1*, *(CategoryMatcherMode)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.mode>`_ 
        Set the matching mode, see CategoryMatcherMode.

     ``renderer``\ (*(CategoryMatcher)arg1*, *(object)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.renderer>`_ 
        Set the renderer string to match

     ``result``\ (*(CategoryMatcher)arg1*, *(ResultMatcher)arg2*) →
    CategoryMatcher\ ` <#scope_harness.CategoryMatcher.result>`_ 

     ``title``\ (*(CategoryMatcher)arg1*, *(str)arg2*) → CategoryMatcher
    :` <#scope_harness.CategoryMatcher.title>`_ 
        Set the title to match
