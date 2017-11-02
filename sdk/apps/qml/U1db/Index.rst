.. _sdk_u1db_index:
U1db Index
==========

An Index defines what fields can be filtered using Query.

+---------------------+--------------------------------------------------------------------------+
| Import Statement:   | import U1db .                                                            |
+---------------------+--------------------------------------------------------------------------+
| Instantiates:       | :ref:` <sdk_u1db_index>`\ `Index </sdk/apps/qml/Ubuntu.Content/index/>`|
+---------------------+--------------------------------------------------------------------------+

Properties
----------

-  :ref:`database <sdk_u1db_index_database-prop>` : Database
-  :ref:`expression <sdk_u1db_index_expression-prop>` :
   list<string>
-  :ref:`name <sdk_u1db_index_name-prop>` : string

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

**See also** :ref:`Query <sdk_u1db_query>`.

Property Documentation
----------------------

.. _sdk_u1db_index_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ database : `Database <sdk_u1db_database>`                  |
+--------------------------------------------------------------------------+

Sets the Database to lookup documents from and store the index in. The
dataInvalidated() signal will be emitted on all changes that could
affect the index.

| 

.. _sdk_u1db_index_expression-prop:

+--------------------------------------------------------------------------+
|        \ expression : list<string>                                       |
+--------------------------------------------------------------------------+

Sets the expression used. Both an expression and a name must be
specified for an index to be created.

Also starts the process of creating the Index result list, which can
then be queried or populate the Query model as is.

| 

.. _sdk_u1db_index_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Sets the name used. Both an expression and a name must be specified for
an index to be created.

| 
