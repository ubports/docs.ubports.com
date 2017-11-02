.. _sdk_scopejs_department:
ScopeJS Department
==================


A department with optional sub-department

-  Methods

**``add_subdepartment``**\ ( ``sub `` )
Add sub-department to this department

**Parameters:**

-  :ref:``sub`` **<`Department <sdk_scopejs_department>`>**

   department

String **``alternate_label``**\ ( ``  `` )
Get the alternate label of this department Return the alternate label of
this department. The alternate label expresses the plural "all" form of
the normal label. For example, if the normal label is "Books", then the
alternate label is "All Books". Note that alternate label and can be
empty - in that case the normal label should be displayed instead

**Returns:** <String>
alternate label

String **``alternate_label``**\ ( ``  `` )
Get the alternate label of this department

**Returns:** <String>
alternate label of this department

Boolean **``has_subdepartments``**\ ( ``  `` )
Check if this department has subdepartments or has\_subdepartments flag
is set

**Returns:** <Boolean>
True if this department has subdepartments or has\_subdepartments flag
is set

String **``id``**\ ( ``  `` )
Get the identifier of this department

**Returns:** <String>
identifier of this department

String **``label``**\ ( ``  `` )
Get the label of this department

**Returns:** <String>
label of this department

CannedQuery **``query``**\ ( ``  `` )
Get the canned query associated with this department

**Returns:** <CannedQuery>
canned query associated with this department

**``set_has_subdepartments``**\ ( ``subdepartments `` )
Sets has\_subdepartments flag of this department

**Parameters:**

-  ``subdepartments`` **<Boolean>**

**``set_subdepartments``**\ ( ``departments `` )
Set sub-departments of this department

**Parameters:**

-  ``departments`` **<Array of Department>**

Array of Department **``subdepartments``**\ ( ``  `` )
Get list of sub-departments of this department

**Returns:** <Array of Department>
list of sub-departments of this department

