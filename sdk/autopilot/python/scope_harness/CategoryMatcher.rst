 *class* ``scope_harness.``\ ``CategoryMatcher``\ (*(object)arg1*,
*(str)arg2*)\ ` <#scope_harness.CategoryMatcher>`__
    Matcher object that holds constraints for matching search category.

     ``components``\ (*(CategoryMatcher)arg1*, *(object)arg2*) →
    CategoryMatcher\ ` <#scope_harness.CategoryMatcher.components>`__

     ``has_at_least``\ (*(CategoryMatcher)arg1*, *(int)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.has_at_least>`__
        Set the minimum number of categories

     ``header_link``\ (*(CategoryMatcher)arg1*, *(str)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.header_link>`__
        Set the header link to match

     ``icon``\ (*(CategoryMatcher)arg1*, *(str)arg2*) → CategoryMatcher
    :` <#scope_harness.CategoryMatcher.icon>`__
        Set the icon to match

     ``id``\ ` <#scope_harness.CategoryMatcher.id>`__

     ``match``\ (*(CategoryMatcher)arg1*, *(Category)arg2*) →
    MatchResult\ ` <#scope_harness.CategoryMatcher.match>`__
        match( (CategoryMatcher)arg1, (MatchResult)arg2, (Category)arg3)
        -> None

     ``mode``\ (*(CategoryMatcher)arg1*, *(CategoryMatcherMode)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.mode>`__
        Set the matching mode, see CategoryMatcherMode.

     ``renderer``\ (*(CategoryMatcher)arg1*, *(object)arg2*) →
    CategoryMatcher :` <#scope_harness.CategoryMatcher.renderer>`__
        Set the renderer string to match

     ``result``\ (*(CategoryMatcher)arg1*, *(ResultMatcher)arg2*) →
    CategoryMatcher\ ` <#scope_harness.CategoryMatcher.result>`__

     ``title``\ (*(CategoryMatcher)arg1*, *(str)arg2*) → CategoryMatcher
    :` <#scope_harness.CategoryMatcher.title>`__
        Set the title to match
