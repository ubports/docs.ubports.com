A department with optional sub-departments.
`More... </sdk/scopes/cpp/unity.scopes.qt/QDepartment#details>`__

``#include <unity/scopes/qt/QDepartment.h>``

        Public Member Functions
-------------------------------

void 

`set\_subdepartments </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`__
(QDepartmentList const &departments)

 

| Set sub-departments of this department.

 

void 

`add\_subdepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a872794120c2b7337bf23f2ef5dae4330>`__
(QDepartment::SCPtr const &department)

 

| Add sub-department to this department.

 

void 

`set\_alternate\_label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a902b615bdfbccb322f65a5306b3a85dc>`__
(QString const
&\ `label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ae4fa435a1362b32544c79100e7d28c74>`__)

 

| Set the alternate label (plural of the normal label) of this
  department.

 

void 

`set\_has\_subdepartments </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a5ec4d42b6421e9661894432d347d2e05>`__
(bool
`subdepartments </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a07b6395359cbdb456c3200df852988a0>`__\ =true)

 

| Sets has\_subdepartments flag of this department.

 

QString 

`id </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ad0cbefd8c90f4b0cdd147ca7b16d5144>`__
() const

 

| Get the identifier of this department.

 

QString 

`label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ae4fa435a1362b32544c79100e7d28c74>`__
() const

 

| Get the label of this department.

 

QString 

`alternate\_label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a7ede92fdfc67214d6a6761d1d694bdfb>`__
() const

 

| Get the alternate label of this department.

 

`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ 

`query </sdk/scopes/cpp/unity.scopes.qt/QDepartment#aa5184890c7503571408d3d8ef9e58ed6>`__
() const

 

| Get the canned query associated with this department.

 

QDepartmentList 

`subdepartments </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a07b6395359cbdb456c3200df852988a0>`__
() const

 

| Get list of sub-departments of this department.

 

bool 

`has\_subdepartments </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ae1075a9dbc4f92d51393dd57a36adf6e>`__
() const

 

| Check if this department has subdepartments or has\_subdepartments
  flag is set.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QDepartment**
(`QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__ const
&other)

 

         

**QDepartment**
(`QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__ &&)

 

        `QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__
& 

**operator=**
(`QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__ const
&other)

 

        `QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__
& 

**operator=**
(`QDepartment </sdk/scopes/cpp/unity.scopes.qt/QDepartment/>`__ &&)

 

        Static Public Member Functions
--------------------------------------

static QDepartment::UPtr 

`create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a9bf07a3b3b3e57a391100f15abb4c651>`__
(`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ const
&\ `query </sdk/scopes/cpp/unity.scopes.qt/QDepartment#aa5184890c7503571408d3d8ef9e58ed6>`__,
QString const
&\ `label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ae4fa435a1362b32544c79100e7d28c74>`__)

 

| Create a department with the given canned query and name.

 

static QDepartment::UPtr 

`create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a7c90a04ab4d200edc1270ed915914442>`__
(QString const &department\_id,
`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ const
&\ `query </sdk/scopes/cpp/unity.scopes.qt/QDepartment#aa5184890c7503571408d3d8ef9e58ed6>`__,
QString const
&\ `label </sdk/scopes/cpp/unity.scopes.qt/QDepartment#ae4fa435a1362b32544c79100e7d28c74>`__)

 

| Create a department with the given department identifier, canned
  query, and name.

 

Detailed Description
--------------------

A department with optional sub-departments.

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QDepartment: | *department* | )            |              |
| QDepartment: |              | :SCPtr       |              |              |              |
| :add\_subdep |              | const &      |              |              |              |
| artment      |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Add sub-department to this department.

Parameters
    +--------------+-------------------------------+
    | department   | The subdepartment instance.   |
    +--------------+-------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QDepartment::a |                |                |                |                |
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
|       | `QCannedQuery </sd | *query* |                                      |
| ,           |                        |                                      |
| | QDepartment::UPtr  |               |                                      |
|       | k/scopes/cpp/unity |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | .scopes.qt/QCanned |         |                                      |
|             |                        |                                      |
| | :QDepartment::crea |               |                                      |
|       | Query/>`__         |         |                                      |
|             |                        |                                      |
| | te                 |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | QString const &    | *label* |                                      |
|             |                        |                                      |
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
(`QCannedQuery::department\_id() </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery#aa8de764af79922d974e1bef6186be9ed>`__).

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
|       | QString const &    | *depart |                                      |
| ment\_id*,  |                        |                                      |
| | QDepartment::UPtr  |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | :QDepartment::crea |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | te                 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `QCannedQuery </sd | *query* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | k/scopes/cpp/unity |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | .scopes.qt/QCanned |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | Query/>`__         |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | QString const &    | *label* |                                      |
|             |                        |                                      |
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
| QDepartment::h |                |                |                |                |
| as\_subdepartm |                |                |                |                |
| ents           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this department has subdepartments or has\_subdepartments flag
is set.

Returns
    true if this deparment has subdepartments or has\_subdepartments
    flag is set

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QDepartment::i |                |                |                |                |
| d              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the identifier of this department.

Returns
    The department identifier.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| QDepartment::l |                |                |                |                |
| abel           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the label of this department.

Returns
    The department label.

+----------------+----------------+----------------+----------------+----------------+
| `QCannedQuery  | (              |                | )              | const          |
| </sdk/scopes/c |                |                |                |                |
| pp/unity.scope |                |                |                |                |
| s.qt/QCannedQu |                |                |                |                |
| ery/>`__       |                |                |                |                |
| QDepartment::q |                |                |                |                |
| uery           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the canned query associated with this department.

Returns
    The canned query for this department.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QString      | *label*      | )            |              |
| QDepartment: |              | const &      |              |              |              |
| :set\_altern |              |              |              |              |              |
| ate\_label   |              |              |              |              |              |
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
| QDepartment: |              |              | nts*         |              |              |
| :set\_has\_s |              |              | = ``true``   |              |              |
| ubdepartment |              |              |              |              |              |
| s            |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sets has\_subdepartments flag of this department.

This flag is a display hint for the Shell that indicates if this
department has sub-departments and as such should be displayed in a way
that suggests further navigation to the user. Setting this flag is not
needed when sub-departments have been added with
`set\_subdepartments() </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`__
method. Setting this flag to false after adding sub-departments with
`set\_subdepartments() </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`__
throws unity::LogicException.

Exceptions
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if called with false after adding sub-departments with `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__   |
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | QDepartmentL | *departments | )            |              |
| QDepartment: |              | ist          | *            |              |              |
| :set\_subdep |              | const &      |              |              |              |
| artments     |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set sub-departments of this department.

Parameters
    +---------------+--------------------------------+
    | departments   | The list of sub-departments.   |
    +---------------+--------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| QDepartmentLis | (              |                | )              | const          |
| t              |                |                |                |                |
| QDepartment::s |                |                |                |                |
| ubdepartments  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get list of sub-departments of this department.

Returns
    The list of sub-departments.

