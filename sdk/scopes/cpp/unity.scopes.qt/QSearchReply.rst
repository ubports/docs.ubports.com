Allows the results of a search query to be sent to the query source.
`More... </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#details>`__

``#include <unity/scopes/qt/QSearchReply.h>``

Inheritance diagram for unity::scopes::qt::QSearchReply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

        virtual 

`~QSearchReply </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a6c9794d4fbbd36e2c6f4ce70495a580f>`__
()

 

| Destroys a
  `QSearchReply </sdk/scopes/cpp/unity.scopes.qt/QSearchReply/>`__.

 

virtual void 

`register\_departments </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#acac93ea6c02ccccdae2c72384cc5c5fd>`__
(QDepartment::SCPtr const &parent)

 

| Register departments for the current search reply and provide the
  current department.

 

virtual QCategory::SCPtr 

`register\_category </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#ac208a555cddc39f086b88804bb9bd26f>`__
(QString const &id, QString const &title, QString const &icon,
`unity::scopes::CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__
const
&renderer\_template=\ `unity::scopes::CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__\ ())

 

| Register new category and send it to the source of the query.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a17a9439fd592a2c76b7b74f46053bad5>`__
(`QCategorisedResult </sdk/scopes/cpp/unity.scopes.qt/QCategorisedResult/>`__
const &result)

 

| Sends a single result to the source of a query.

 

virtual void 

`error </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a74f1e3d2dd82ef9810413fa38401e16e>`__
(std::exception\_ptr ex)

 

| Informs the source of a query that the query was terminated due to an
  error.

 

Detailed Description
--------------------

Allows the results of a search query to be sent to the query source.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | std: |                                      |
| :excepti | *ex*         | )          |                                      |
|    |              |                  |                                      |
| | QSearchReply |              | on\_ |                                      |
| ptr      |              |            |                                      |
|    |              |                  |                                      |
| | ::error      |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Informs the source of a query that the query was terminated due to an
error.

Multiple calls to
`error() </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a74f1e3d2dd82ef9810413fa38401e16e>`__
and calls to finished() after
`error() </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a74f1e3d2dd82ef9810413fa38401e16e>`__
was called are ignored.

Parameters
    +------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | ex   | An exception\_ptr indicating the cause of the error. If ex is a ``std::exception``, the return value of ``what()`` is made available to the query source. Otherwise, the query source receives ``"unknown exception"``.   |
    +------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | bool         | (            | `QCa |                                      |
| tegorise | *result*     | )          |                                      |
|    |              |                  |                                      |
| | QSearchReply |              | dRes |                                      |
| ult </sd |              |            |                                      |
|    |              |                  |                                      |
| | ::push       |              | k/sc |                                      |
| opes/cpp |              |            |                                      |
|    |              |                  |                                      |
| |              |              | /uni |                                      |
| ty.scope |              |            |                                      |
|    |              |                  |                                      |
| |              |              | s.qt |                                      |
| /QCatego |              |            |                                      |
|    |              |                  |                                      |
| |              |              | rise |                                      |
| dResult/ |              |            |                                      |
|    |              |                  |                                      |
| |              |              | >`__ |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Sends a single result to the source of a query.

Any calls to
`push() </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#a17a9439fd592a2c76b7b74f46053bad5>`__
after finished() was called are ignored.

Returns
    The return value is true if the result was accepted, false
    otherwise. A false return value can be due to finished() having been
    called earlier, or the client that sent the query having cancelled
    that query. The return value is false also if the query has a
    cardinality limit and is reached or exceeded. (The return value is
    false for the last valid push and subsequent pushes.)

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | virtual                              |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | QCategory::SCPtr   | (             |                                      |
|       | QString const &    | *id*,   |                                      |
|             |                        |                                      |
| | QSearchReply::regi |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ster\_category     |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | QString const &    | *title* |                                      |
| ,           |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | QString const &    | *icon*, |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `unity::scopes::Ca | *render |                                      |
| er\_templat |                        |                                      |
| |                    |               |                                      |
|       | tegoryRenderer </s | e*      |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | dk/scopes/cpp/unit | =       |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | y.scopes.CategoryR | ``unity |                                      |
| ::scopes::C |                        |                                      |
| |                    |               |                                      |
|       | enderer/>`__       | ategory |                                      |
| Renderer()` |                        |                                      |
| |                    |               |                                      |
|       | const &            | `       |                                      |
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

Register new category and send it to the source of the query.

Parameters
    +----------------------+-----------------------------------------------------------------+
    | id                   | The identifier of the category                                  |
    +----------------------+-----------------------------------------------------------------+
    | title                | The title of the category                                       |
    +----------------------+-----------------------------------------------------------------+
    | icon                 | The icon of the category                                        |
    +----------------------+-----------------------------------------------------------------+
    | renderer\_template   | The renderer template to be used for results in this category   |
    +----------------------+-----------------------------------------------------------------+

Returns
    The category instance

Exceptions
    +-------------------------------------------+---------------------------------------------------------+
    | unity::scopes::InvalidArgumentException   | if category with that id has already been registered.   |
    +-------------------------------------------+---------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | QDep |                                      |
| artment: | *parent*     | )          |                                      |
|    |              |                  |                                      |
| | QSearchReply |              | :SCP |                                      |
| tr       |              |            |                                      |
|    |              |                  |                                      |
| | ::register\_ |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | departments  |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Register departments for the current search reply and provide the
current department.

Departments are optional. If scope supports departments, it is expected
to register departments on every search as follows:

-  create a `Department </sdk/scopes/cpp/unity.scopes.Department/>`__
   node for current department and attach to it a list of its
   subdepartments (unless current department is a leaf department) using
   `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__
   method. For every subdepartment on the list set "has\_subdepartments"
   flag if applicable.
-  provide an alternate label for current department with
   `unity::scopes::Department::set\_alternate\_label() </sdk/scopes/cpp/unity.scopes.Department#a9ab1192cdfcbce44b9164df11290c217>`__.
-  create a `Department </sdk/scopes/cpp/unity.scopes.Department/>`__
   node for parent of current department (if applicable - not when in
   root department), and attach current
   `Department </sdk/scopes/cpp/unity.scopes.Department/>`__ node to it
   with
   `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department#ab17057cef9ce35f1302f5421a087c067>`__
   method.
-  register the parent department with
   `unity::scopes::qt::QSearchReply::register\_departments() </sdk/scopes/cpp/unity.scopes.qt/QSearchReply#acac93ea6c02ccccdae2c72384cc5c5fd>`__.

For example, assuming the user is visiting a "History" department in
"Books", and "History" has sub-departments such as "World War Two" and
"Ancient", the code that registers departments for current search in
"History" may look like this:

unity::scopes::qt::QDepartment::SPtr books =
move(\ `unity::scopes::qt::QDepartment::create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a9bf07a3b3b3e57a391100f15abb4c651>`__\ ("books",
query, "Books"));

// the

parent of "History"

unity::scopes::Department::SPtr history =
move(\ `unity::scopes::qt::QDepartment::create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a9bf07a3b3b3e57a391100f15abb4c651>`__\ ("history",
query,

"History"));

`unity::scopes::DepartmentList </sdk/scopes/cpp/unity.scopes#ab8effc4ea05a59f2ddea896833f07231>`__
history\_depts({

move(\ `unity::scopes::qt::QDepartment::create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a9bf07a3b3b3e57a391100f15abb4c651>`__\ ("ww2",
query, "World War

Two")),

move(\ `unity::scopes::qt::QDepartment::create </sdk/scopes/cpp/unity.scopes.qt/QDepartment#a9bf07a3b3b3e57a391100f15abb4c651>`__\ ("ancient",
query,

"Ancient"))});

history->set\_subdepartments(history\_depts);

books->set\_subdepartments({history});

reply->register\_departments(books);

Current department should be the department returned by
`unity::scopes::CannedQuery::department\_id() </sdk/scopes/cpp/unity.scopes.CannedQuery#a61351960149bb4c0840f020c4e645f66>`__.
Empty department id denotes the root deparment.

Parameters
    +----------+--------------------------------------------------------------------------------------------+
    | parent   | The parent department of current department, or current one if visiting root department.   |
    +----------+--------------------------------------------------------------------------------------------+

Exceptions
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree).   |
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QSearchReply/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png

