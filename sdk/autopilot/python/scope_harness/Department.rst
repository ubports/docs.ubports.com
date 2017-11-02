.. _sdk_scope_harness_department:
scope_harness Department
========================

 *class*
``scope_harness.``\ ``Department``\ ` <#scope_harness.Department>`_ 
    Represents a read-only view of a department returned by a scope. Use
    id, label, all\_label properties to inspect it, and children
    property or child method to inspect child departments (instances of
    ChildDepartment). This class supports \_\_getitem\_\_ call, which
    acts as a shortcut for child(index) method, and responds to
    \_\_len\_\_ call, so python’s len(department) may be used instead of
    department.size

     ``all_label``\ ` <#scope_harness.Department.all_label>`_ 

     ``child``\ (*(Department)arg1*, *(int)arg2*) → ChildDepartment
    :` <#scope_harness.Department.child>`_ 
        Get child department by its index (a number)

     ``children``\ ` <#scope_harness.Department.children>`_ 

     ``id``\ ` <#scope_harness.Department.id>`_ 

     ``is_hidden``\ ` <#scope_harness.Department.is_hidden>`_ 

     ``is_root``\ ` <#scope_harness.Department.is_root>`_ 

     ``label``\ ` <#scope_harness.Department.label>`_ 

     ``parent_id``\ ` <#scope_harness.Department.parent_id>`_ 

     ``parent_label``\ ` <#scope_harness.Department.parent_label>`_ 

     ``size``\ ` <#scope_harness.Department.size>`_ 

