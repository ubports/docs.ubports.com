.. _sdk_scope_harness_resultsview:
scope_harness ResultsView
=========================

 *class*
``scope_harness.``\ ``ResultsView``\ ` <#scope_harness.ResultsView>`_ 
    This is the main class for driving search and inspecting search
    results. Set search\_query property to invoke search, then inspect
    categories property to access returned categories and their results.
    Use browse\_department method to change active department.

     ``active_scope``\ ` <#scope_harness.ResultsView.active_scope>`_ 

    ``alt_department_id``\ ` <#scope_harness.ResultsView.alt_department_id>`_ 

     ``browse_alt_department``\ (*(ResultsView)arg1*, *(str)arg2*) →
    Department :` <#scope_harness.ResultsView.browse_alt_department>`_ 
        Go to a specific alternate (e.g. the top-right selection filter
        if provided by the scope) department by id. Returns Department
        instance.

     ``browse_department``\ (*(ResultsView)arg1*, *(str)arg2*) →
    Department :` <#scope_harness.ResultsView.browse_department>`_ 
        Go to a specific department by id. Returns Department instance.

     ``categories``\ ` <#scope_harness.ResultsView.categories>`_ 

     ``category``\ (*(ResultsView)arg1*, *(int)arg2*) → Category
    :` <#scope_harness.ResultsView.category>`_ 

            .. raw:: html

               <div>

            Get Category instance by row index

            .. raw:: html

               </div>

        category( (ResultsView)arg1, (str)arg2) -> Category :
            Get Category instance by id

     ``customizations``\ ` <#scope_harness.ResultsView.customizations>`_ 

     ``department_id``\ ` <#scope_harness.ResultsView.department_id>`_ 

     ``description``\ ` <#scope_harness.ResultsView.description>`_ 

     ``display_name``\ ` <#scope_harness.ResultsView.display_name>`_ 

    ``has_alt_departments``\ ` <#scope_harness.ResultsView.has_alt_departments>`_ 

     ``has_departments``\ ` <#scope_harness.ResultsView.has_departments>`_ 

     ``icon_hint``\ ` <#scope_harness.ResultsView.icon_hint>`_ 

     ``query_id``\ ` <#scope_harness.ResultsView.query_id>`_ 

     ``scope_id``\ ` <#scope_harness.ResultsView.scope_id>`_ 

     ``search_hint``\ ` <#scope_harness.ResultsView.search_hint>`_ 

     ``search_query``\ ` <#scope_harness.ResultsView.search_query>`_ 

     ``session_id``\ ` <#scope_harness.ResultsView.session_id>`_ 

     ``settings``\ ` <#scope_harness.ResultsView.settings>`_ 

     ``shortcut``\ ` <#scope_harness.ResultsView.shortcut>`_ 

