A department with optional sub-departments.
`More... </sdk/scopes/cpp/unity.scopes.Department#details>`__

``#include <unity/scopes/Department.h>``

        Public Member Functions
-------------------------------

void 

`set\_subdepartments </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__
(`DepartmentList </sdk/scopes/cpp/unity.scopes#ab8effc4ea05a59f2ddea896833f07231>`__
const &departments)

 

| Set sub-departments of this department.

 

void 

`add\_subdepartment </sdk/scopes/cpp/unity.scopes.Department#acfea57f2fcca24339e0b3c2f58cde567>`__
(Department::SCPtr const &department)

 

| Add sub-department to this department.

 

void 

`set\_alternate\_label </sdk/scopes/cpp/unity.scopes.Department#a9ab1192cdfcbce44b9164df11290c217>`__
(std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.Department#aa84ff5c8a1ebaf43beceb8379330db42>`__)

 

| Set the alternate label (plural of the normal label) of this
  department.

 

void 

`set\_has\_subdepartments </sdk/scopes/cpp/unity.scopes.Department#af1adb3d18a901c0b8a1cb5b98e924dfa>`__
(bool
`subdepartments </sdk/scopes/cpp/unity.scopes.Department#aee8ee96bcd5a6ce0d6ca5786aa6f6450>`__\ =true)

 

| Sets has\_subdepartments flag of this department.

 

std::string 

`id </sdk/scopes/cpp/unity.scopes.Department#ad715a9991355c4f08efa6cf32c61b2c6>`__
() const

 

| Get the identifier of this department.

 

std::string 

`label </sdk/scopes/cpp/unity.scopes.Department#aa84ff5c8a1ebaf43beceb8379330db42>`__
() const

 

| Get the label of this department.

 

std::string 

`alternate\_label </sdk/scopes/cpp/unity.scopes.Department#a77c6faaed77693259c0862dca2fc2459>`__
() const

 

| Get the alternate label of this department.

 

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ 

`query </sdk/scopes/cpp/unity.scopes.Department#a6256e78d1e3eece6e2afd8a63978bce4>`__
() const

 

| Get the canned query associated with this department.

 

`DepartmentList </sdk/scopes/cpp/unity.scopes#ab8effc4ea05a59f2ddea896833f07231>`__ 

`subdepartments </sdk/scopes/cpp/unity.scopes.Department#aee8ee96bcd5a6ce0d6ca5786aa6f6450>`__
() const

 

| Get list of sub-departments of this department.

 

bool 

`has\_subdepartments </sdk/scopes/cpp/unity.scopes.Department#a0ca9c7c16072e881f245063c19fae179>`__
() const

 

| Check if this department has subdepartments or has\_subdepartments
  flag is set.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**Department**
(`Department </sdk/scopes/cpp/unity.scopes.Department/>`__ const &other)

 

         

**Department**
(`Department </sdk/scopes/cpp/unity.scopes.Department/>`__ &&)

 

        `Department </sdk/scopes/cpp/unity.scopes.Department/>`__ & 

**operator=** (`Department </sdk/scopes/cpp/unity.scopes.Department/>`__
const &other)

 

        `Department </sdk/scopes/cpp/unity.scopes.Department/>`__ & 

**operator=** (`Department </sdk/scopes/cpp/unity.scopes.Department/>`__
&&)

 

        Static Public Member Functions
--------------------------------------

static Department::UPtr 

`create </sdk/scopes/cpp/unity.scopes.Department#a11a3b8e9a3317f963d4bc9f46f79922b>`__
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ const
&\ `query </sdk/scopes/cpp/unity.scopes.Department#a6256e78d1e3eece6e2afd8a63978bce4>`__,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.Department#aa84ff5c8a1ebaf43beceb8379330db42>`__)

 

| Create a department with the given canned query and name.

 

static Department::UPtr 

`create </sdk/scopes/cpp/unity.scopes.Department#a1f4feec9298abd3eefbacf60d9ba1fd9>`__
(std::string const &department\_id,
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ const
&\ `query </sdk/scopes/cpp/unity.scopes.Department#a6256e78d1e3eece6e2afd8a63978bce4>`__,
std::string const
&\ `label </sdk/scopes/cpp/unity.scopes.Department#aa84ff5c8a1ebaf43beceb8379330db42>`__)

 

| Create a department with the given department identifier, canned
  query, and name.

 

Detailed Description
--------------------

A department with optional sub-departments.

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | Department:: | *department* | )            |              |
| unity::scope |              | SCPtr        |              |              |              |
| s::Departmen |              | const &      |              |              |              |
| t::add\_subd |              |              |              |              |              |
| epartment    |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Add sub-department to this department.

Parameters
    +--------------+-------------------------------+
    | department   | The subdepartment instance.   |
    +--------------+-------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Department::a |                |                |                |                |
| lternate\_labe |                |                |                |                |
| l              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the alternate label of this department.

Return the alternate label of this department. The alternate label
expresses the plural "all" form of the normal label. For example, if the
normal label is "Books", then the alternate label is "All Books". Note
that alternate label and can be empty - in that case the normal label
should be displayed instead.

Returns
    The alternate label.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | static             | (             |                                      |
|       | `CannedQuery </sdk | *query* |                                      |
| ,           |                        |                                      |
| | Department::UPtr   |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| | unity::scopes::Dep |               |                                      |
|       | scopes.CannedQuery |         |                                      |
|             |                        |                                      |
| | artment::create    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *label* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Create a department with the given canned query and name.

The identifier of this department instance is that of the ``query``
instance
(`CannedQuery::department\_id() </sdk/scopes/cpp/unity.scopes.CannedQuery#a61351960149bb4c0840f020c4e645f66>`__).

Parameters
    +---------+---------------------------------------------------------------------------------------------------------------------+
    | query   | The query (and associated parameters, such as filter state) to be executed when the user selects this department.   |
    +---------+---------------------------------------------------------------------------------------------------------------------+
    | label   | The display name of this department.                                                                                |
    +---------+---------------------------------------------------------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | static                               |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | static             | (             |                                      |
|       | std::string const  | *depart |                                      |
| ment\_id*,  |                        |                                      |
| | Department::UPtr   |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Dep |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | artment::create    |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `CannedQuery </sdk | *query* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.CannedQuery |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *label* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Create a department with the given department identifier, canned query,
and name.

The canned query's target department identifier is updated with
department\_id. This constructor is convenient for creating multiple
departments that use the same query and only need a different department
identifier.

Parameters
    +------------------+----------------------------------------------------------------------------------------------------------------------------+
    | department\_id   | The department identifier.                                                                                                 |
    +------------------+----------------------------------------------------------------------------------------------------------------------------+
    | query            | The canned query (and associated parameters, such as filter state) to be executed when the user selects this department.   |
    +------------------+----------------------------------------------------------------------------------------------------------------------------+
    | label            | The display name of this department.                                                                                       |
    +------------------+----------------------------------------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Department::h |                |                |                |                |
| as\_subdepartm |                |                |                |                |
| ents           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this department has subdepartments or has\_subdepartments flag
is set.

Returns
    true if this deparment has subdepartments or has\_subdepartments
    flag is set

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Department::i |                |                |                |                |
| d              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this department.

Returns
    The department identifier.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Department::l |                |                |                |                |
| abel           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label of this department.

Returns
    The department label.

+----------------+----------------+----------------+----------------+----------------+
| `CannedQuery < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .CannedQuery/> |                |                |                |                |
| `__            |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Department::q |                |                |                |                |
| uery           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the canned query associated with this department.

Returns
    The canned query for this department.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::string  | *label*      | )            |              |
| unity::scope |              | const &      |              |              |              |
| s::Departmen |              |              |              |              |              |
| t::set\_alte |              |              |              |              |              |
| rnate\_label |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the alternate label (plural of the normal label) of this department.

The alternate label should express the plural "all" form of the normal
label. For example, if the normal label is "Books", then the alternate
label should be "All Books". The alternate label needs to be provided
for the current department only.

Parameters
    +---------+--------------------------------------------------------------------------------------+
    | label   | The alternate label to display when showing plural form of this department's name.   |
    +---------+--------------------------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | bool         | *subdepartme | )            |              |
| unity::scope |              |              | nts*         |              |              |
| s::Departmen |              |              | = ``true``   |              |              |
| t::set\_has\ |              |              |              |              |              |
| _subdepartme |              |              |              |              |              |
| nts          |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sets has\_subdepartments flag of this department.

This flag is a display hint for the Shell that indicates if this
department has sub-departments and as such should be displayed in a way
that suggests further navigation to the user. Setting this flag is not
needed when sub-departments have been added with
`set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__
method. Setting this flag to false after adding sub-departments with
`set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__
throws unity::LogicException.

Exceptions
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if called with false after adding sub-departments with `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__   |
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `DepartmentL | *departments | )            |              |
| unity::scope |              | ist </sdk/sc | *            |              |              |
| s::Departmen |              | opes/cpp/uni |              |              |              |
| t::set\_subd |              | ty.scopes#ab |              |              |              |
| epartments   |              | 8effc4ea05a5 |              |              |              |
|              |              | 9f2ddea89683 |              |              |              |
|              |              | 3f07231>`__  |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set sub-departments of this department.

Parameters
    +---------------+--------------------------------+
    | departments   | The list of sub-departments.   |
    +---------------+--------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `DepartmentLis | (              |                | )              | const          |
| t </sdk/scopes |                |                |                |                |
| /cpp/unity.sco |                |                |                |                |
| pes#ab8effc4ea |                |                |                |                |
| 05a59f2ddea896 |                |                |                |                |
| 833f07231>`__  |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Department::s |                |                |                |                |
| ubdepartments  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get list of sub-departments of this department.

Returns
    The list of sub-departments.

