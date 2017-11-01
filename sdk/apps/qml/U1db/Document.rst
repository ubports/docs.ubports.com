Document proxies a single document stored in the Database.

+---------------------+-----------------+
| Import Statement:   | import U1db .   |
+---------------------+-----------------+
| Instantiates:       | Document        |
+---------------------+-----------------+

Properties
----------

-  ****`content </sdk/apps/qml/U1db/Document#content-prop>`__**** :
   Variant
-  ****`contents </sdk/apps/qml/U1db/Document#contents-prop>`__**** :
   Variant
-  ****`create </sdk/apps/qml/U1db/Document#create-prop>`__**** : bool
-  ****`docId </sdk/apps/qml/U1db/Document#docId-prop>`__**** : string

Detailed Description
--------------------

This is the declarative API equivalent of
`Database::putDoc() </sdk/apps/qml/U1db/Database#putDoc-method>`__ and
`Database::getDoc() </sdk/apps/qml/U1db/Database#getDoc-method>`__.

.. code:: qml

    Document {
        docId: 'myId'
        defaults: {
            color: 'blue'
        }
        create: true
    }

**See also** `Database </sdk/apps/qml/U1db/Database/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ content : Variant                                               |
+--------------------------------------------------------------------------+

The default contents of the document, which are used only if create is
true, `docId </sdk/apps/qml/U1db/Document#docId-prop>`__ is not empty
and no document with the same
`docId </sdk/apps/qml/U1db/Document#docId-prop>`__ exists in the
database yet. If the *defaults* change, it's up to the API user to
handle it.

| 

+--------------------------------------------------------------------------+
|        \ contents : Variant                                              |
+--------------------------------------------------------------------------+

Updates the *contents* of the document. A valid
`docId </sdk/apps/qml/U1db/Document#docId-prop>`__ must be set.

| 

+--------------------------------------------------------------------------+
|        \ create : bool                                                   |
+--------------------------------------------------------------------------+

If *create* is true, `docId </sdk/apps/qml/U1db/Document#docId-prop>`__
is not empty and no document with the same
`docId </sdk/apps/qml/U1db/Document#docId-prop>`__ exists, defaults will
be used to store the document.

| 

+--------------------------------------------------------------------------+
|        \ docId : string                                                  |
+--------------------------------------------------------------------------+

The docId can be that of an existing document in the database and will
determine what getContents() returns. If no such documents exists,
setDefaults() can be used to supply a preset.

| 
