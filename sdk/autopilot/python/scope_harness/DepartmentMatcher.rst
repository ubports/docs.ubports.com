.. _sdk_scope_harness_departmentmatcher:
scope_harness DepartmentMatcher
===============================

 *class*
``scope_harness.``\ ``DepartmentMatcher``\ (*(object)arg1*)\ ` <#scope_harness.DepartmentMatcher>`_ 
    Matcher object that holds constraints for matching departments.

     ``all_label``\ (*(DepartmentMatcher)arg1*, *(str)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.all_label>`_ 
        Set the department alternate (the ‘all’ variant’) label to match

     ``child``\ (*(DepartmentMatcher)arg1*,
    *(ChildDepartmentMatcher)arg2*) → DepartmentMatcher
    :` <#scope_harness.DepartmentMatcher.child>`_ 
        Set the matcher for child department

     ``has_at_least``\ (*(DepartmentMatcher)arg1*, *(int)arg2*) →
    DepartmentMatcher
    :` <#scope_harness.DepartmentMatcher.has_at_least>`_ 
        Set the minimum number of departments

     ``has_exactly``\ (*(DepartmentMatcher)arg1*, *(int)arg2*) →
    DepartmentMatcher
    :` <#scope_harness.DepartmentMatcher.has_exactly>`_ 
        Set the exact number of departments

     ``id``\ (*(DepartmentMatcher)arg1*, *(str)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.id>`_ 
        Set the department id to match

     ``is_hidden``\ (*(DepartmentMatcher)arg1*, *(bool)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.is_hidden>`_ 
        Set the ‘hidden’ flag to match

     ``is_root``\ (*(DepartmentMatcher)arg1*, *(bool)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.is_root>`_ 
        Set the ‘root’ flag to match

     ``label``\ (*(DepartmentMatcher)arg1*, *(str)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.label>`_ 
        Set the department name (label) to match

     ``match``\ (*(DepartmentMatcher)arg1*, *(Department)arg2*) →
    MatchResult :` <#scope_harness.DepartmentMatcher.match>`_ 

            .. raw:: html

               <div>

            Match the department

            .. raw:: html

               </div>

        match( (ResultMatcher)arg1, (MatchResult)arg2, (Department)arg3)
        -> None :
            Match the department

     ``mode``\ (*(DepartmentMatcher)arg1*,
    *(DepartmentMatcherMode)arg2*) → DepartmentMatcher
    :` <#scope_harness.DepartmentMatcher.mode>`_ 
        Set the matching mode, see DepartmentMatcherMode.

     ``parent_id``\ (*(DepartmentMatcher)arg1*, *(str)arg2*) →
    DepartmentMatcher :` <#scope_harness.DepartmentMatcher.parent_id>`_ 
        Set the id of parent department to match

     ``parent_label``\ (*(DepartmentMatcher)arg1*, *(str)arg2*) →
    DepartmentMatcher
    :` <#scope_harness.DepartmentMatcher.parent_label>`_ 
        Set the label of parent department to match
