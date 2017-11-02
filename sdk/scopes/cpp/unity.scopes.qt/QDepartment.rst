.. _sdk_unity_scopes_qt_qdepartment:
unity.scopes.qt QDepartment
===========================

A department with optional sub-departments.
:ref:`More... <sdk_unity_scopes_qt_qdepartment#details>`

``#include <unity/scopes/qt/QDepartment.h>``

        Public Member Functions
-------------------------------

void 

:ref:`set\_subdepartments <sdk_unity_scopes_qt_qdepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`
(QDepartmentList const &departments)

 

| Set sub-departments of this department.

 

void 

:ref:`add\_subdepartment <sdk_unity_scopes_qt_qdepartment#a872794120c2b7337bf23f2ef5dae4330>`
(QDepartment::SCPtr const &department)

 

| Add sub-department to this department.

 

void 

:ref:`set\_alternate\_label <sdk_unity_scopes_qt_qdepartment#a902b615bdfbccb322f65a5306b3a85dc>`
(QString const
&\ :ref:`label <sdk_unity_scopes_qt_qdepartment#ae4fa435a1362b32544c79100e7d28c74>`)

 

| Set the alternate label (plural of the normal label) of this
  department.

 

void 

:ref:`set\_has\_subdepartments <sdk_unity_scopes_qt_qdepartment#a5ec4d42b6421e9661894432d347d2e05>`
(bool
:ref:`subdepartments <sdk_unity_scopes_qt_qdepartment#a07b6395359cbdb456c3200df852988a0>`\ =true)

 

| Sets has\_subdepartments flag of this department.

 

QString 

:ref:`id <sdk_unity_scopes_qt_qdepartment#ad0cbefd8c90f4b0cdd147ca7b16d5144>`
() const

 

| Get the identifier of this department.

 

QString 

:ref:`label <sdk_unity_scopes_qt_qdepartment#ae4fa435a1362b32544c79100e7d28c74>`
() const

 

| Get the label of this department.

 

QString 

:ref:`alternate\_label <sdk_unity_scopes_qt_qdepartment#a7ede92fdfc67214d6a6761d1d694bdfb>`
() const

 

| Get the alternate label of this department.

 

:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` 

:ref:`query <sdk_unity_scopes_qt_qdepartment#aa5184890c7503571408d3d8ef9e58ed6>`
() const

 

| Get the canned query associated with this department.

 

QDepartmentList 

:ref:`subdepartments <sdk_unity_scopes_qt_qdepartment#a07b6395359cbdb456c3200df852988a0>`
() const

 

| Get list of sub-departments of this department.

 

bool 

:ref:`has\_subdepartments <sdk_unity_scopes_qt_qdepartment#ae1075a9dbc4f92d51393dd57a36adf6e>`
() const

 

| Check if this department has subdepartments or has\_subdepartments
  flag is set.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**QDepartment** (:ref:`QDepartment <sdk_unity_scopes_qt_qdepartment>` const
&other)

 

         

**QDepartment** (:ref:`QDepartment <sdk_unity_scopes_qt_qdepartment>` &&)

 

:ref:` <>` `QDepartment <sdk_unity_scopes_qt_qdepartment>` & 

**operator=** (:ref:`QDepartment <sdk_unity_scopes_qt_qdepartment>` const
&other)

 

:ref:` <>` `QDepartment <sdk_unity_scopes_qt_qdepartment>` & 

**operator=** (:ref:`QDepartment <sdk_unity_scopes_qt_qdepartment>` &&)

 

        Static Public Member Functions
--------------------------------------

static QDepartment::UPtr 

:ref:`create <sdk_unity_scopes_qt_qdepartment#a9bf07a3b3b3e57a391100f15abb4c651>`
(:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` const
&\ :ref:`query <sdk_unity_scopes_qt_qdepartment#aa5184890c7503571408d3d8ef9e58ed6>`,
QString const
&\ :ref:`label <sdk_unity_scopes_qt_qdepartment#ae4fa435a1362b32544c79100e7d28c74>`)

 

| Create a department with the given canned query and name.

 

static QDepartment::UPtr 

:ref:`create <sdk_unity_scopes_qt_qdepartment#a7c90a04ab4d200edc1270ed915914442>`
(QString const &department\_id,
:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` const
&\ :ref:`query <sdk_unity_scopes_qt_qdepartment#aa5184890c7503571408d3d8ef9e58ed6>`,
QString const
&\ :ref:`label <sdk_unity_scopes_qt_qdepartment#ae4fa435a1362b32544c79100e7d28c74>`)

 

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
|       | `QCannedQuery <sdk | *query* |                                      |
| ,           |                        |                                      |
| | QDepartment::UPtr  |               |                                      |
|       | _unity_scopes_qt_q |         |                                      |
|             |                        |                                      |
| | unity::scopes::qt: |               |                                      |
|       | cannedquery>`_     |         |                                      |
|             |                        |                                      |
| | :QDepartment::crea |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | te                 |               |                                      |
|       |                    |         |                                      |
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
(:ref:`QCannedQuery::department\_id() <sdk_unity_scopes_qt_qcannedquery#aa8de764af79922d974e1bef6186be9ed>`).

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
|       | `QCannedQuery <sdk | *query* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | _unity_scopes_qt_q |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | cannedquery>`_     |         |                                      |
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
| <sdk_unity_sco |                |                |                |                |
| pes_qt_qcanned |                |                |                |                |
| query>`_       |                |                |                |                |
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
:ref:`set\_subdepartments() <sdk_unity_scopes_qt_qdepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`
method. Setting this flag to false after adding sub-departments with
:ref:`set\_subdepartments() <sdk_unity_scopes_qt_qdepartment#a2b9f07697f4a811afa26d9a0b951f9ca>`
throws unity::LogicException.

Exceptions
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if called with false after adding sub-departments with `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department/#ab17057cef9ce35f1302f5421a087c067>`_    |
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

