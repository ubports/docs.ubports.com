 *class*
``scope_harness.``\ ``CategoryListMatcher``\ (*(object)arg1*)\ ` <#scope_harness.CategoryListMatcher>`__
    Matcher object that holds constraints for matching search
    categories.

     ``category``\ (*(CategoryListMatcher)arg1*,
    *(CategoryMatcher)arg2*) → CategoryListMatcher
    :` <#scope_harness.CategoryListMatcher.category>`__
        Set the category matcher

     ``has_at_least``\ (*(CategoryListMatcher)arg1*, *(int)arg2*) →
    CategoryListMatcher
    :` <#scope_harness.CategoryListMatcher.has_at_least>`__
        Set the minimum number of expected categories

     ``has_exactly``\ (*(CategoryListMatcher)arg1*, *(int)arg2*) →
    CategoryListMatcher
    :` <#scope_harness.CategoryListMatcher.has_exactly>`__
        Set the exact number of expected categories

     ``match``\ (*(CategoryListMatcher)arg1*, *(object)arg2*) →
    MatchResult :` <#scope_harness.CategoryListMatcher.match>`__
        Match the list of categories

     ``mode``\ (*(CategoryListMatcher)arg1*,
    *(CategoryListMatcherMode)arg2*) → CategoryListMatcher
    :` <#scope_harness.CategoryListMatcher.mode>`__
        Set the matching mode, see CategoryListMatcherMode.
