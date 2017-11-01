The Index class defines an index to be stored in the database and
queried using Query. Changes in documents affected by the index also
update the index in the database.

+--------------------------------------+--------------------------------------+
| Header:                              | #include <Index>                     |
+--------------------------------------+--------------------------------------+
| Instantiated By:                     | Index                                |
+--------------------------------------+--------------------------------------+
| Inherits:                            |                                      |
+--------------------------------------+--------------------------------------+

Public Functions
----------------

+--------------------------------------+--------------------------------------+
|                                      | **`Index </sdk/scopes/cpp/U1db/Index |
|                                      | #Index>`__**\ (QObject               |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| Database \*                          | **`getDatabase </sdk/scopes/cpp/U1db |
|                                      | /Index#getDatabase>`__**\ ()         |
+--------------------------------------+--------------------------------------+
| QStringList                          | **`getExpression </sdk/scopes/cpp/U1 |
|                                      | db/Index#getExpression>`__**\ ()     |
+--------------------------------------+--------------------------------------+
| QString                              | **`getName </sdk/scopes/cpp/U1db/Ind |
|                                      | ex#getName>`__**\ ()                 |
+--------------------------------------+--------------------------------------+
| void                                 | **`setDatabase </sdk/scopes/cpp/U1db |
|                                      | /Index#setDatabase>`__**\ (Database  |
|                                      | \* *database*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **`setExpression </sdk/scopes/cpp/U1 |
|                                      | db/Index#setExpression>`__**\ (QStri |
|                                      | ngList                               |
|                                      | *expression*)                        |
+--------------------------------------+--------------------------------------+
| void                                 | **`setName </sdk/scopes/cpp/U1db/Ind |
|                                      | ex#setName>`__**\ (const             |
|                                      | QString & *name*)                    |
+--------------------------------------+--------------------------------------+

.. rubric:: Detailed Description
   :name: details

The Index class defines an index to be stored in the database and
queried using Query. Changes in documents affected by the index also
update the index in the database.

.. rubric:: Member Function Documentation
   :name: member-function-documentation

.. rubric::        \ Index::Index(QObject \* *parent* = 0)
   :name: Index
   :class: fn

Instantiate a new Index with an optional *parent*, usually by declaring
it as a QML item.

.. rubric::        \ Database \* Index::getDatabase()
   :name: getDatabase
   :class: fn

Returns the Database to lookup documents from and store the index in.

.. rubric::        \ QStringList Index::getExpression()
   :name: getExpression
   :class: fn

Returns the expression of the index. Both name and expression must be
specified.

.. rubric::        \ QString Index::getName()
   :name: getName
   :class: fn

Returns the name of the index. Both name and expression must be
specified.

.. rubric::        \ void Index::setDatabase(Database \* *database*)
   :name: setDatabase
   :class: fn

Sets the *database* to lookup documents from and store the index in. The
dataInvalidated() signal will be emitted on all changes that could
affect the index.

.. rubric::        \ void Index::setExpression(QStringList *expression*)
   :name: setExpression
   :class: fn

Sets the *expression* used. Both an expression and a name must be
specified for an index to be created.

Also starts the process of creating the Index result list, which can
then be queried or populate the Query model as is.

.. rubric::        \ void Index::setName(const QString & *name*)
   :name: setName
   :class: fn

Sets the *name* used. Both an expression and a name must be specified
for an index to be created.

