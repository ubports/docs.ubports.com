.. _sdk_u1db_database:
U1db Database
=============

The Database class implements on-disk storage for documents and indexes.

+--------------------------------------+--------------------------------------+
| Header:                              | #include <Database>                  |
+--------------------------------------+--------------------------------------+
| Instantiated By:                     | Database                             |
+--------------------------------------+--------------------------------------+
| Inherits:                            |                                      |
+--------------------------------------+--------------------------------------+

Public Functions
----------------

+--------------------------------------+--------------------------------------+
|                                      | **:ref:`Database <sdk_u1db_database#Datab |
|                                      | ase>`_ **\ (QObject                  |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`deleteDoc <sdk_u1db_database#dele |
|                                      | teDoc>`_ **\ (const                  |
|                                      | QString & *docId*)                   |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getDoc <sdk_u1db_database#getDoc> |
|                                      | `_ **\ (const                        |
|                                      | QString & *docId*)                   |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getDocUnchecked <sdk_u1db_databas |
|                                      | e#getDocUnchecked>`_ **\ (const      |
|                                      | QString & *docId*) const             |
+--------------------------------------+--------------------------------------+
| QStringList                          | **:ref:`getIndexExpressions <sdk_u1db_dat |
|                                      | abase#getIndexExpressions>`_ **\ (co |
|                                      | nst                                  |
|                                      | QString & *indexName*)               |
+--------------------------------------+--------------------------------------+
| QStringList                          | **:ref:`getIndexKeys <sdk_u1db_database#g |
|                                      | etIndexKeys>`_ **\ (const            |
|                                      | QString & *indexName*)               |
+--------------------------------------+--------------------------------------+
| QString                              | **:ref:`getPath <sdk_u1db_database#getPat |
|                                      | h>`_ **\ ()                          |
+--------------------------------------+--------------------------------------+
| QString                              | **:ref:`lastError <sdk_u1db_database#last |
|                                      | Error>`_ **\ ()                      |
+--------------------------------------+--------------------------------------+
| QList<QString>                       | **:ref:`listDocs <sdk_u1db_database#listD |
|                                      | ocs>`_ **\ ()                        |
+--------------------------------------+--------------------------------------+
| QString                              | **:ref:`putDoc <sdk_u1db_database#putDoc> |
|                                      | `_ **\ (QVariant                     |
|                                      | *contents*, const QString & *docId*  |
|                                      | = QString())                         |
+--------------------------------------+--------------------------------------+
| QString                              | **:ref:`putIndex <sdk_u1db_database#putIn |
|                                      | dex>`_ **\ (const                    |
|                                      | QString & *indexName*, QStringList   |
|                                      | *expressions*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`resetModel <sdk_u1db_database#res |
|                                      | etModel>`_ **\ ()                    |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setPath <sdk_u1db_database#setPat |
|                                      | h>`_ **\ (const                      |
|                                      | QString & *path*)                    |
+--------------------------------------+--------------------------------------+

.. rubric:: Detailed Description
   :name: details

The Database class implements on-disk storage for documents and indexes.

Database can be used as a QAbstractListModel, delegates will then have
access to *docId* and *contents* analogous to the properties of
Document.

.. rubric:: Member Function Documentation
   :name: member-function-documentation

.. rubric::        \ Database::Database(QObject \* *parent* = 0)
   :name: Database
   :class: fn

Instantiate a new Database with an optional *parent*, usually by
declaring it as a QML item.

.. rubric::        \ void Database::deleteDoc(const QString & *docId*)
   :name: deleteDoc
   :class: fn

Deletes the document identified by *docId*.

.. rubric::        \ QVariant Database::getDoc(const QString & *docId*)
   :name: getDoc
   :class: fn

Returns the contents of a document by *docId* in a form that QML
recognizes as a Variant object, it's identical to
Document::getContents() with the same *docId*.

.. rubric::        \ QVariant Database::getDocUnchecked(const QString &
   *docId*) const
   :name: getDocUnchecked
   :class: fn

Same functionality as Database::getDoc() except it won't set
Database::lastError() and it doesn't implicitly try to initialize the
underlying database. *docId* must be a valid unique ID string Use cases:
model implementations, Document::getContents()

.. rubric::        \ QStringList Database::getIndexExpressions(const
   QString & *indexName*)
   :name: getIndexExpressions
   :class: fn

Gets the expressions saved with
:ref:`putIndex <sdk_u1db_database#putIndex>`\ (). *indexName*: the unique
name of an existing index

.. rubric::        \ QStringList Database::getIndexKeys(const QString &
   *indexName*)
   :name: getIndexKeys
   :class: fn

Lists the index keys of an index created with
:ref:`putIndex <sdk_u1db_database#putIndex>`\ (). *indexName*: the unique
name of an existing index

.. rubric::        \ QString Database::getPath()
   :name: getPath
   :class: fn

Returns the path of the database.

.. rubric::        \ QString Database::lastError()
   :name: lastError
   :class: fn

The last error as a string if the last operation failed.

.. rubric::        \ QList<QString> Database::listDocs()
   :name: listDocs
   :class: fn

Returns a list of all stored documents by their docId.

.. rubric::        \ QString Database::putDoc(QVariant *contents*, const
   QString & *docId* = QString())
   :name: putDoc
   :class: fn

Updates the existing *contents* of the document identified by *docId* if
there's no error. If no *docId* is given or *docId* is an empty string
the *contents* will be stored under an autogenerated name. Returns the
new revision of the document, or -1 on failure.

.. rubric::        \ QString Database::putIndex(const QString &
   *indexName*, QStringList *expressions*)
   :name: putIndex
   :class: fn

Stores a new index under the given *indexName*, with *expressions*. An
existing index won't be replaced implicitly, an error will be set in
that case.

.. rubric::        \ void Database::resetModel()
   :name: resetModel
   :class: fn

Database::resetModel

Resets the Database model.

.. rubric::        \ void Database::setPath(const QString & *path*)
   :name: setPath
   :class: fn

A relative *path* can be given to store the database in an app-specific
writable folder. This is recommended as it ensures to work with
confinement. If more control is needed absolute paths or local file URIs
can be used. By default or if the path is empty everything is stored in
memory.

