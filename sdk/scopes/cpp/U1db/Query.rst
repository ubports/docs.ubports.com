The Query class generates a filtered list of documents based on a query
using the given Index.

+--------------------------------------+--------------------------------------+
| Header:                              | #include <Query>                     |
+--------------------------------------+--------------------------------------+
| Instantiated By:                     | Query                                |
+--------------------------------------+--------------------------------------+
| Inherits:                            |                                      |
+--------------------------------------+--------------------------------------+

Public Functions
----------------

+--------------------------------------+--------------------------------------+
|                                      | **`Query </sdk/scopes/cpp/U1db/Query |
|                                      | #Query>`__**\ (QObject               |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| QStringList                          | **`getDocuments </sdk/scopes/cpp/U1d |
|                                      | b/Query#getDocuments>`__**\ ()       |
+--------------------------------------+--------------------------------------+
| Index \*                             | **`getIndex </sdk/scopes/cpp/U1db/Qu |
|                                      | ery#getIndex>`__**\ ()               |
+--------------------------------------+--------------------------------------+
| QVariant                             | **`getQuery </sdk/scopes/cpp/U1db/Qu |
|                                      | ery#getQuery>`__**\ ()               |
+--------------------------------------+--------------------------------------+
| QList<QVariant>                      | **`getResults </sdk/scopes/cpp/U1db/ |
|                                      | Query#getResults>`__**\ ()           |
+--------------------------------------+--------------------------------------+
| void                                 | **`resetModel </sdk/scopes/cpp/U1db/ |
|                                      | Query#resetModel>`__**\ ()           |
+--------------------------------------+--------------------------------------+
| void                                 | **`setIndex </sdk/scopes/cpp/U1db/Qu |
|                                      | ery#setIndex>`__**\ (Index           |
|                                      | \* *index*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **`setQuery </sdk/scopes/cpp/U1db/Qu |
|                                      | ery#setQuery>`__**\ (QVariant        |
|                                      | *query*)                             |
+--------------------------------------+--------------------------------------+

.. rubric:: Detailed Description
   :name: details

The Query class generates a filtered list of documents based on a query
using the given Index.

Query can be used as a QAbstractListModel, delegates will then have
access to *docId* and *contents* analogous to the properties of
Document.

.. rubric:: Member Function Documentation
   :name: member-function-documentation

.. rubric::        \ Query::Query(QObject \* *parent* = 0)
   :name: Query
   :class: fn

Instantiate a new Query with an optional *parent*, usually by declaring
it as a QML item.

**See also** `setQuery </sdk/scopes/cpp/U1db/Query#setQuery>`__\ ().

.. rubric::        \ QStringList Query::getDocuments()
   :name: getDocuments
   :class: fn

FIXME

.. rubric::        \ Index \* Query::getIndex()
   :name: getIndex
   :class: fn

FIXME

.. rubric::        \ QVariant Query::getQuery()
   :name: getQuery
   :class: fn

FIXME

.. rubric::        \ QList<QVariant> Query::getResults()
   :name: getResults
   :class: fn

FIXME

.. rubric::        \ void Query::resetModel()
   :name: resetModel
   :class: fn

Query::resetModel

Resets the model of the Query

.. rubric::        \ void Query::setIndex(Index \* *index*)
   :name: setIndex
   :class: fn

FIXME *index*

.. rubric::        \ void Query::setQuery(QVariant *query*)
   :name: setQuery
   :class: fn

FIXME *query*

