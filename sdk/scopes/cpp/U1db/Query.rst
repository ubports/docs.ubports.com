.. _sdk_u1db_query:
U1db Query
==========

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
|                                      | **:ref:`Query <sdk_u1db_query#Query>`** |
|                                      | \ (QObject                           |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| QStringList                          | **:ref:`getDocuments <sdk_u1db_query#getD |
|                                      | ocuments>`_ **\ ()                   |
+--------------------------------------+--------------------------------------+
| Index \*                             | **:ref:`getIndex <sdk_u1db_query#getIndex |
|                                      | >`_ **\ ()                           |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getQuery <sdk_u1db_query#getQuery |
|                                      | >`_ **\ ()                           |
+--------------------------------------+--------------------------------------+
| QList<QVariant>                      | **:ref:`getResults <sdk_u1db_query#getRes |
|                                      | ults>`_ **\ ()                       |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`resetModel <sdk_u1db_query#resetM |
|                                      | odel>`_ **\ ()                       |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setIndex <sdk_u1db_query#setIndex |
|                                      | >`_ **\ (Index                       |
|                                      | \* *index*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setQuery <sdk_u1db_query#setQuery |
|                                      | >`_ **\ (QVariant                    |
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

**See also** :ref:`setQuery <sdk_u1db_query#setQuery>`\ ().

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

