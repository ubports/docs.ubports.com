.. _sdk_u1db_document:
U1db Document
=============

Document proxies a single document stored in the Database.

+---------------------+-----------------+
| Import Statement:   | import U1db .   |
+---------------------+-----------------+
| Instantiates:       | Document        |
+---------------------+-----------------+

Properties
----------

-  :ref:`content <sdk_u1db_document_content-prop>` : Variant
-  :ref:`contents <sdk_u1db_document_contents-prop>` : Variant
-  :ref:`create <sdk_u1db_document_create-prop>` : bool
-  :ref:`docId <sdk_u1db_document_docId-prop>` : string

Detailed Description
--------------------

This is the declarative API equivalent of
:ref:`Database::putDoc() <sdk_u1db_database#putDoc-method>` and
:ref:`Database::getDoc() <sdk_u1db_database#getDoc-method>`.

.. code:: qml

    Document {
        docId: 'myId'
        defaults: {
            color: 'blue'
        }
        create: true
    }

**See also** :ref:`Database <sdk_u1db_database>`.

Property Documentation
----------------------

.. _sdk_u1db_document_content-prop:

+--------------------------------------------------------------------------+
|        \ content : Variant                                               |
+--------------------------------------------------------------------------+

The default contents of the document, which are used only if create is
true, :ref:`docId <sdk_u1db_document#docId-prop>` is not empty and no
document with the same :ref:`docId <sdk_u1db_document#docId-prop>` exists
in the database yet. If the *defaults* change, it's up to the API user
to handle it.

| 

.. _sdk_u1db_document_contents-prop:

+--------------------------------------------------------------------------+
|        \ contents : Variant                                              |
+--------------------------------------------------------------------------+

Updates the *contents* of the document. A valid
:ref:`docId <sdk_u1db_document#docId-prop>` must be set.

| 

.. _sdk_u1db_document_create-prop:

+--------------------------------------------------------------------------+
|        \ create : bool                                                   |
+--------------------------------------------------------------------------+

If *create* is true, :ref:`docId <sdk_u1db_document#docId-prop>` is not
empty and no document with the same
:ref:`docId <sdk_u1db_document#docId-prop>` exists, defaults will be used
to store the document.

| 

.. _sdk_u1db_document_docId-prop:

+--------------------------------------------------------------------------+
|        \ docId : string                                                  |
+--------------------------------------------------------------------------+

The docId can be that of an existing document in the database and will
determine what getContents() returns. If no such documents exists,
setDefaults() can be used to supply a preset.

| 
