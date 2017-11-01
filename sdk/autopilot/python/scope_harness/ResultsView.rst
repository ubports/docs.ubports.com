 *class*
``scope_harness.``\ ``ResultsView``\ ` <#scope_harness.ResultsView>`__
    This is the main class for driving search and inspecting search
    results. Set search\_query property to invoke search, then inspect
    categories property to access returned categories and their results.
    Use browse\_department method to change active department.

     ``active_scope``\ ` <#scope_harness.ResultsView.active_scope>`__

    ``alt_department_id``\ ` <#scope_harness.ResultsView.alt_department_id>`__

     ``browse_alt_department``\ (*(ResultsView)arg1*, *(str)arg2*) →
    Department :` <#scope_harness.ResultsView.browse_alt_department>`__
        Go to a specific alternate (e.g. the top-right selection filter
        if provided by the scope) department by id. Returns Department
        instance.

     ``browse_department``\ (*(ResultsView)arg1*, *(str)arg2*) →
    Department :` <#scope_harness.ResultsView.browse_department>`__
        Go to a specific department by id. Returns Department instance.

     ``categories``\ ` <#scope_harness.ResultsView.categories>`__

     ``category``\ (*(ResultsView)arg1*, *(int)arg2*) → Category
    :` <#scope_harness.ResultsView.category>`__

            .. raw:: html

               <div>

            Get Category instance by row index

            .. raw:: html

               </div>

        category( (ResultsView)arg1, (str)arg2) -> Category :
            Get Category instance by id

     ``customizations``\ ` <#scope_harness.ResultsView.customizations>`__

     ``department_id``\ ` <#scope_harness.ResultsView.department_id>`__

     ``description``\ ` <#scope_harness.ResultsView.description>`__

     ``display_name``\ ` <#scope_harness.ResultsView.display_name>`__

    ``has_alt_departments``\ ` <#scope_harness.ResultsView.has_alt_departments>`__

     ``has_departments``\ ` <#scope_harness.ResultsView.has_departments>`__

     ``icon_hint``\ ` <#scope_harness.ResultsView.icon_hint>`__

     ``query_id``\ ` <#scope_harness.ResultsView.query_id>`__

     ``scope_id``\ ` <#scope_harness.ResultsView.scope_id>`__

     ``search_hint``\ ` <#scope_harness.ResultsView.search_hint>`__

     ``search_query``\ ` <#scope_harness.ResultsView.search_query>`__

     ``session_id``\ ` <#scope_harness.ResultsView.session_id>`__

     ``settings``\ ` <#scope_harness.ResultsView.settings>`__

     ``shortcut``\ ` <#scope_harness.ResultsView.shortcut>`__

