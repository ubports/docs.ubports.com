
                General Topics

-  `Tutorial </sdk/scopes/cpp/U1db/tutorial/>`__ gives a quick start
   guide from storing a document to querying a database and displaying
   it in `Ubuntu
   Components </sdk/apps/qml/UbuntuUserInterfaceToolkit/overview-ubuntu-sdk/>`__.
-  `Design Concepts </sdk/scopes/cpp/U1db/concepts/>`__ provides an
   overview of the design and terminology.

        Document Storage
Available through:

.. code:: cpp

    import U1db 1.0 as U1db

+--------------------------------------+--------------------------------------+
| Database                             | Implements on-disk storage for       |
|                                      | documents and indexes                |
+--------------------------------------+--------------------------------------+
| Document                             | Proxies a single document stored in  |
|                                      | the Database                         |
+--------------------------------------+--------------------------------------+
| Index                                | An Index defines what fields can be  |
|                                      | filtered using Query                 |
+--------------------------------------+--------------------------------------+
| Query                                | Filters documents based on the query |
|                                      | and index                            |
+--------------------------------------+--------------------------------------+
| Synchronizer                         | Handles synchronizing between two    |
|                                      | databases                            |
+--------------------------------------+--------------------------------------+

