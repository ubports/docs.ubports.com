An Index defines what fields can be filtered using Query.

+---------------------+-------------------------------------------------------------------------------------+
| Import Statement:   | import U1db .                                                                       |
+---------------------+-------------------------------------------------------------------------------------+
| Instantiates:       | ` </sdk/apps/qml/U1db/Index/>`__\ `Index </sdk/apps/qml/Ubuntu.Content/index/>`__   |
+---------------------+-------------------------------------------------------------------------------------+

Properties
----------

-  ****`database </sdk/apps/qml/U1db/Index#database-prop>`__**** :
   Database
-  ****`expression </sdk/apps/qml/U1db/Index#expression-prop>`__**** :
   list<string>
-  ****`name </sdk/apps/qml/U1db/Index#name-prop>`__**** : string

Detailed Description
--------------------

Documents in the database will be included if they contain all fields in
the expression.

.. code:: qml

    Index {
        database: myDatabase
        name: 'colorIndex'
        expression: [ 'color' ]
    }

**See also** `Query </sdk/apps/qml/U1db/Query/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ database : `Database </sdk/apps/qml/U1db/Database/>`__          |
+--------------------------------------------------------------------------+

Sets the Database to lookup documents from and store the index in. The
dataInvalidated() signal will be emitted on all changes that could
affect the index.

| 

+--------------------------------------------------------------------------+
|        \ expression : list<string>                                       |
+--------------------------------------------------------------------------+

Sets the expression used. Both an expression and a name must be
specified for an index to be created.

Also starts the process of creating the Index result list, which can
then be queried or populate the Query model as is.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Sets the name used. Both an expression and a name must be specified for
an index to be created.

| 
