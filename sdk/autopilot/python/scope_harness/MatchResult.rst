 *class*
``scope_harness.``\ ``MatchResult``\ (*(object)arg1*)\ ` <#scope_harness.MatchResult>`__
    Represents the result of matching and is the final object you want
    to check in your tests. An instance of MatchResult can be obtained
    by calling one of the match() methods of ResultMatcher,
    CategoryMatcher, CategoryListMatcher, DepartmentMatcher and
    ChildDepartmentMatcher. When implementing tests on top of
    scope\_harness.testing.ScopeHarnessTestCase class, use its
    assertMatchResult helper method to assert on MatchResult instance.

     ``concat_failures``\ ` <#scope_harness.MatchResult.concat_failures>`__

     ``failure``\ (*(MatchResult)arg1*, *(str)arg2*) →
    None\ ` <#scope_harness.MatchResult.failure>`__

     ``failures``\ ` <#scope_harness.MatchResult.failures>`__

     ``success``\ ` <#scope_harness.MatchResult.success>`__

Search results matchers\ ` <#search-results-matchers>`__
--------------------------------------------------------
