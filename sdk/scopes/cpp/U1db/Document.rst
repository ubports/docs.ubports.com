.. _sdk_u1db_document:
U1db Document
=============

The Document class proxies a single document stored in the Database.

+--------------------------------------+--------------------------------------+
| Header:                              | #include <Document>                  |
+--------------------------------------+--------------------------------------+
| Instantiated By:                     | Document                             |
+--------------------------------------+--------------------------------------+
| Inherits:                            |                                      |
+--------------------------------------+--------------------------------------+

Public Functions
----------------

+--------------------------------------+--------------------------------------+
|                                      | **:ref:`Document <sdk_u1db_document#Docum |
|                                      | ent>`_ **\ (QObject                  |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getContents <sdk_u1db_document#ge |
|                                      | tContents>`_ **\ ()                  |
+--------------------------------------+--------------------------------------+
| bool                                 | **:ref:`getCreate <sdk_u1db_document#getC |
|                                      | reate>`_ **\ ()                      |
+--------------------------------------+--------------------------------------+
| Database \*                          | **:ref:`getDatabase <sdk_u1db_document#ge |
|                                      | tDatabase>`_ **\ ()                  |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getDefaults <sdk_u1db_document#ge |
|                                      | tDefaults>`_ **\ ()                  |
+--------------------------------------+--------------------------------------+
| QString                              | **:ref:`getDocId <sdk_u1db_document#getDo |
|                                      | cId>`_ **\ ()                        |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setContents <sdk_u1db_document#se |
|                                      | tContents>`_ **\ (QVariant           |
|                                      | *contents*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setCreate <sdk_u1db_document#setC |
|                                      | reate>`_ **\ (bool                   |
|                                      | *create*)                            |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setDatabase <sdk_u1db_document#se |
|                                      | tDatabase>`_ **\ (Database           |
|                                      | \* *database*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setDefaults <sdk_u1db_document#se |
|                                      | tDefaults>`_ **\ (QVariant           |
|                                      | *defaults*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setDocId <sdk_u1db_document#setDo |
|                                      | cId>`_ **\ (const                    |
|                                      | QString & *docId*)                   |
+--------------------------------------+--------------------------------------+

.. rubric:: Detailed Description
   :name: details

The Document class proxies a single document stored in the Database.

.. rubric:: Member Function Documentation
   :name: member-function-documentation

.. rubric::        \ Document::Document(QObject \* *parent* = 0)
   :name: Document
   :class: fn

Instantiate a new Document with an optional *parent*, usually by
declaring it as a QML item.

.. rubric::        \ QVariant Document::getContents()
   :name: getContents
   :class: fn

Returns the current contents of the document.

.. rubric::        \ bool Document::getCreate()
   :name: getCreate
   :class: fn

Returns whether the document will be newly created if it doesn't exist.

.. rubric::        \ Database \* Document::getDatabase()
   :name: getDatabase
   :class: fn

Returns the Database.

.. rubric::        \ QVariant Document::getDefaults()
   :name: getDefaults
   :class: fn

Returns the defaults to be used when the document is newly created
because it doesn't exist, if create is true.

.. rubric::        \ QString Document::getDocId()
   :name: getDocId
   :class: fn

Returns the docId.

.. rubric::        \ void Document::setContents(QVariant *contents*)
   :name: setContents
   :class: fn

Updates the *contents* of the document. A valid docId must be set.

.. rubric::        \ void Document::setCreate(bool *create*)
   :name: setCreate
   :class: fn

If *create* is true, docId is not empty and no document with the same
docId exists, defaults will be used to store the document.

.. rubric::        \ void Document::setDatabase(Database \* *database*)
   :name: setDatabase
   :class: fn

The *database* is used to lookup the contents of the document,
reflecting changes done to it and conversely changes are saved to the
database.

.. rubric::        \ void Document::setDefaults(QVariant *defaults*)
   :name: setDefaults
   :class: fn

The default contents of the document, which are used only if create is
true, docId is not empty and no document with the same docId exists in
the database yet. If the *defaults* change, it's up to the API user to
handle it.

.. rubric::        \ void Document::setDocId(const QString & *docId*)
   :name: setDocId
   :class: fn

The *docId* can be that of an existing document in the database and will
determine what :ref:`getContents <sdk_u1db_document#getContents>`\ ()
returns. If no such documents exists,
:ref:`setDefaults <sdk_u1db_document#setDefaults>`\ () can be used to
supply a preset.

