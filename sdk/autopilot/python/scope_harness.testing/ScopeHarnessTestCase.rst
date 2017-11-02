.. _sdk_scope_harness_testing_scopeharnesstestcase:
scope_harness.testing ScopeHarnessTestCase
==========================================

 *class*
``scope_harness.testing.``\ ``ScopeHarnessTestCase``\ (*methodName='runTest'*)\ ` <#scope_harness.testing.ScopeHarnessTestCase>`_ 
    A class whose instances are single test cases.

    This class extends unittest.TestCase with helper methods relevant
    for testing of Unity scopes.

    ``assertMatchResult``\ (*match\_result*)\ ` <#scope_harness.testing.ScopeHarnessTestCase.assertMatchResult>`_ 
        Assert for MatchResult object that fails if match wasn’t
        successful and prints conditions which were not met by the
        matcher.
