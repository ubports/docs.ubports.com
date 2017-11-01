Query filters documents based on the query and index.

+---------------------+-----------------+
| Import Statement:   | import U1db .   |
+---------------------+-----------------+
| Instantiates:       | Query           |
+---------------------+-----------------+

Properties
----------

-  ****`documents </sdk/apps/qml/U1db/Query#documents-prop>`__**** :
   list<string>
-  ****`index </sdk/apps/qml/U1db/Query#index-prop>`__**** : Index
-  ****`query </sdk/apps/qml/U1db/Query#query-prop>`__**** : Variant
-  ****`results </sdk/apps/qml/U1db/Query#results-prop>`__**** :
   list<Variant>

Detailed Description
--------------------

In a ListView the Query can be used as a model.

.. code:: qml

    ListView {
        model: Query {
            index: Index {
                name: 'colorIndex'
                expression: [ 'color' ]
                database: myDatabase
            }
            query: [ 'blue' ]
        }
        delegate: ListItem.Subtitled {
            text: docId
            subText: contents.color
        }
    }

**See also** `Index </sdk/apps/qml/U1db/Index/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ documents : list<string>                                        |
+--------------------------------------------------------------------------+

The docId's of all matched documents.

| 

+--------------------------------------------------------------------------+
|        \ index : `Index </sdk/apps/qml/U1db/Index/>`__                   |
+--------------------------------------------------------------------------+

Sets the Index to use. *index* must have a valid name and index
expressions. If no query is set, the default is all results of the
index.

| 

+--------------------------------------------------------------------------+
|        \ query : Variant                                                 |
+--------------------------------------------------------------------------+

A query in one of the allowed forms: 'value', ['value'] or
[{'sub-field': 'value'}]. The default is equivalent to '\*'.

| 

+--------------------------------------------------------------------------+
|        \ results : list<Variant>                                         |
+--------------------------------------------------------------------------+

The results of the query as a list.

| 
