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
|                                      | **`Document </sdk/scopes/cpp/U1db/Do |
|                                      | cument#Document>`__**\ (QObject      |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| QVariant                             | **`getContents </sdk/scopes/cpp/U1db |
|                                      | /Document#getContents>`__**\ ()      |
+--------------------------------------+--------------------------------------+
| bool                                 | **`getCreate </sdk/scopes/cpp/U1db/D |
|                                      | ocument#getCreate>`__**\ ()          |
+--------------------------------------+--------------------------------------+
| Database \*                          | **`getDatabase </sdk/scopes/cpp/U1db |
|                                      | /Document#getDatabase>`__**\ ()      |
+--------------------------------------+--------------------------------------+
| QVariant                             | **`getDefaults </sdk/scopes/cpp/U1db |
|                                      | /Document#getDefaults>`__**\ ()      |
+--------------------------------------+--------------------------------------+
| QString                              | **`getDocId </sdk/scopes/cpp/U1db/Do |
|                                      | cument#getDocId>`__**\ ()            |
+--------------------------------------+--------------------------------------+
| void                                 | **`setContents </sdk/scopes/cpp/U1db |
|                                      | /Document#setContents>`__**\ (QVaria |
|                                      | nt                                   |
|                                      | *contents*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **`setCreate </sdk/scopes/cpp/U1db/D |
|                                      | ocument#setCreate>`__**\ (bool       |
|                                      | *create*)                            |
+--------------------------------------+--------------------------------------+
| void                                 | **`setDatabase </sdk/scopes/cpp/U1db |
|                                      | /Document#setDatabase>`__**\ (Databa |
|                                      | se                                   |
|                                      | \* *database*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **`setDefaults </sdk/scopes/cpp/U1db |
|                                      | /Document#setDefaults>`__**\ (QVaria |
|                                      | nt                                   |
|                                      | *defaults*)                          |
+--------------------------------------+--------------------------------------+
| void                                 | **`setDocId </sdk/scopes/cpp/U1db/Do |
|                                      | cument#setDocId>`__**\ (const        |
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
determine what
`getContents </sdk/scopes/cpp/U1db/Document#getContents>`__\ () returns.
If no such documents exists,
`setDefaults </sdk/scopes/cpp/U1db/Document#setDefaults>`__\ () can be
used to supply a preset.

