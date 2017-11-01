Synchronizer handles synchronizing between two databases.

+---------------------+-----------------+
| Import Statement:   | import U1db .   |
+---------------------+-----------------+
| Instantiates:       | Synchronizer    |
+---------------------+-----------------+

Properties
----------

-  ****`resolve\_to\_source </sdk/apps/qml/U1db/Synchronizer#resolve_to_source-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/U1db/Synchronizer#source-prop>`__**** :
   Database
-  ****`sync\_output </sdk/apps/qml/U1db/Synchronizer#sync_output-prop>`__****
   : list<Variant>
-  ****`synchronize </sdk/apps/qml/U1db/Synchronizer#synchronize-prop>`__****
   : bool
-  ****`targets </sdk/apps/qml/U1db/Synchronizer#targets-prop>`__**** :
   Variant\ `` (preliminary)``

Detailed Description
--------------------

.. code:: qml

    Synchronizer {
        id: mySync
        synchronize: false
        source: myDatabase
        targets: [ {
            remote: true,
            ip: "127.0.0.1",
            port: 7777,
            name: "example1.u1db",
            resolve_to_source: true
        } ]
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ resolve\_to\_source : bool                                      |
+--------------------------------------------------------------------------+

If true, conflicts during sync will be resolved in favor of the content
from the source database.

| 

+--------------------------------------------------------------------------+
|        \ source : `Database </sdk/apps/qml/U1db/Database/>`__            |
+--------------------------------------------------------------------------+

Returns the source `Database </sdk/apps/qml/U1db/Database/>`__.

| 

+--------------------------------------------------------------------------+
|        \ sync\_output : list<Variant>                                    |
+--------------------------------------------------------------------------+

Returns the output from a sync session. The list should contain numerous
QVariantMaps, each of which will have various meta-data with informative
information about what happened in the background of the session.

In some cases the information will be about errors or warnings, and in
other cases simple log messages. Also included would noramlly be
associated properties, elements and other data.

The information can be used in any number of ways, such as on screen
within an app, testing, console output, logs and more. This is designed
to be flexible enough that the app developer can decide themselves how
to best use the data.

| 

+--------------------------------------------------------------------------+
|        \ synchronize : bool                                              |
+--------------------------------------------------------------------------+

FIXME

| 

+--------------------------------------------------------------------------+
|        \ targets : Variant                                               |
+--------------------------------------------------------------------------+

**This QML property is under development and is subject to change.**

Sets meta-data for databases to be used during a synchronization
session.

The QVariant is a list that can contain definitions for more than one
database to be used as a target. For example:

.. code:: cpp

    targets: [{remote:true},
     {remote:true,
     ip:"127.0.0.1",
     port: 7777,
     name:"example1.u1db",
     resolve_to_source:true},
     {remote:"OK"}]

The above example defines three databases. Two of the three definitions
in the example are invalid, the first ({remote:true}) and the third
({remote:"OK"}), because they are incomplete.

The second definition is a fully defined and valid definition for a
local to remote synchronization of two databases:

.. code:: cpp

    {remote:true,
     ip:"127.0.0.1",
     port: 7777,
     name:"example1.u1db",
     resolve_to_source:true}

'remote' determines whether the database is on disk or located on a
server. 'ip' and 'port' for a server are used only when 'remote' is set
to true 'name' is the name of the local (on disk) or remote database.
Note: If 'remote' is false this is the relative/absolute file location.
'`resolve\_to\_source </sdk/apps/qml/U1db/Synchronizer#resolve_to_source-prop>`__'
determines whether to resolve conflicts automatically in favor of the
source (aka local) database's values or the target's.

| 
