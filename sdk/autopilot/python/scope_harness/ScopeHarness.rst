 *class*
``scope_harness.``\ ``ScopeHarness``\ ` <#scope_harness.ScopeHarness>`__
    This is the main class for scope harness testing. An instance of it
    needs to be created using one of the static class methods
    (new\_from\_\*) before any tests can be performed. The instance of
    ResultsView provided by results\_view property is the entry point
    for invoking actual queries.

    Here is an example of a search request:
        harness =
        ScopeHarness.new\_from\_scope\_list(Parameters([‘my-scope.ini’])
        view = harness.results\_view view.active\_scope = ‘my-scope’
        view.search\_query = ‘’

     *static* ``new_from_pre_existing_config``\ (*(str)arg1*) →
    ScopeHarness
    :` <#scope_harness.ScopeHarness.new_from_pre_existing_config>`__
        Creates ScopeHarness instance from scope runtime configuration
        files in given directory

     *static* ``new_from_scope_list``\ (*(Parameters)arg1*) →
    ScopeHarness :` <#scope_harness.ScopeHarness.new_from_scope_list>`__
        Creates ScopeHarness instance from a configuration provided by
        an instance of CustomRegistry passed to this factory method

     *static* ``new_from_system``\ () → ScopeHarness
    :` <#scope_harness.ScopeHarness.new_from_system>`__
        Creates ScopeHarness instance using default configuration from
        the system
