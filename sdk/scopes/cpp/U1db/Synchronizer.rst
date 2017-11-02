.. _sdk_u1db_synchronizer:
U1db Synchronizer
=================

The Synchronizer class handles synchronizing between two databases.

+--------------------------------------+--------------------------------------+
| Header:                              | #include <Synchronizer>              |
+--------------------------------------+--------------------------------------+
| Instantiated By:                     | Synchronizer                         |
+--------------------------------------+--------------------------------------+
| Inherits:                            |                                      |
+--------------------------------------+--------------------------------------+

Public Functions
----------------

+--------------------------------------+--------------------------------------+
|                                      | **:ref:`Synchronizer <sdk_u1db_synchroniz |
|                                      | er#Synchronizer>`_ **\ (QObject      |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| bool                                 | **:ref:`getResolveToSource <sdk_u1db_sync |
|                                      | hronizer#getResolveToSource>`_ **\ ( |
|                                      | )                                    |
+--------------------------------------+--------------------------------------+
| Database \*                          | **:ref:`getSource <sdk_u1db_synchronizer# |
|                                      | getSource>`_ **\ ()                  |
+--------------------------------------+--------------------------------------+
| bool                                 | **:ref:`getSync <sdk_u1db_synchronizer#ge |
|                                      | tSync>`_ **\ ()                      |
+--------------------------------------+--------------------------------------+
| QList<QVariant>                      | **:ref:`getSyncOutput <sdk_u1db_synchroni |
|                                      | zer#getSyncOutput>`_ **\ ()          |
+--------------------------------------+--------------------------------------+
| QVariant                             | **:ref:`getTargets <sdk_u1db_synchronizer |
|                                      | #getTargets>`_ **\ ()                |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setResolveToSource <sdk_u1db_sync |
|                                      | hronizer#setResolveToSource>`_ **\ ( |
|                                      | bool                                 |
|                                      | *resolve\_to\_source*)               |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setSource <sdk_u1db_synchronizer# |
|                                      | setSource>`_ **\ (Database           |
|                                      | \* *source*)                         |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setSync <sdk_u1db_synchronizer#se |
|                                      | tSync>`_ **\ (bool                   |
|                                      | *synchronize*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setSyncOutput <sdk_u1db_synchroni |
|                                      | zer#setSyncOutput>`_ **\ (QList<QVar |
|                                      | iant>                                |
|                                      | *sync\_output*)                      |
+--------------------------------------+--------------------------------------+
| void                                 | **:ref:`setTargets <sdk_u1db_synchronizer |
|                                      | #setTargets>`_ **\ (QVariant         |
|                                      | *targets*)                           |
+--------------------------------------+--------------------------------------+

.. rubric:: Detailed Description
   :name: details

The Synchronizer class handles synchronizing between two databases.

.. rubric:: Member Function Documentation
   :name: member-function-documentation

.. rubric::        \ Synchronizer::Synchronizer(QObject \* *parent* = 0)
   :name: Synchronizer
   :class: fn

Create a new Synchronizer element, with an optional *parent*, usually by
declaring it as a QML item.

Synchronizer elements sync two databases together, a 'source' database
and a remote or local 'target' database.

Short description of properties:

id: The element's identification.

bool synchronize: Is the element actively synching or not. Should be set
to false.

U1DB::Database source: The id of a local database that will be used for
synchronization.

QVariant targets: One or more target databases that will be synched with
the local database.

bool targets.remote: Is the target database a remote or local database.

QString targets.ip: The ip address of a remote database (if applicable).

int targets.port: Port number of the remote server.

QString targets.name: The name of the database.

bool targets.resolve\_to\_source: In case of conflict should the sync
resolve to the source's data (if true).

Example use with u1db-serve:

1. In a terminal cd into a directory where the u1db Python reference
implemented has been downloaded from lp:u1db. 2. Using Python create a
database called 'example1.u1db' using u1db, and a document 'helloworld':

# python

>>> import u1db >>> db = u1db.open("example1.u1db",create=True) >>>
content = {"hello": { "world": { "message":"Hello World Updated" } } }
>>> db.create\_doc(content, doc\_id="helloworld")

ctrl+d

3. From the u1db directory above type './u1db-serve --port=7777' and hit
enter. 4. Open another terminal tab. 5. Change into a directory
containing u1db-qt (assuming this class is included in that directory
and the installed version on the host computer). 6. Change into the
directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene
u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled
'Sync'. 9. Check the terminal windows for output from either the client
or server.

.. rubric::        \ bool Synchronizer::getResolveToSource()
   :name: getResolveToSource
   :class: fn

Returns **true** if conflicts during sync will be resolved in favor of
the content from the source database.

.. rubric::        \ Database \* Synchronizer::getSource()
   :name: getSource
   :class: fn

Returns the source Database.

.. rubric::        \ bool Synchronizer::getSync()
   :name: getSync
   :class: fn

Returns the current value of synchronize. If true then the synchronize
session is initiated.

This should probaby always be set to false on application start up. The
application developer should use some trigger to switch it to true when
needed (e.g. button click).

.. rubric::        \ QList<QVariant> Synchronizer::getSyncOutput()
   :name: getSyncOutput
   :class: fn

FIXME

.. rubric::        \ QVariant Synchronizer::getTargets()
   :name: getTargets
   :class: fn

Returns meta-data for all target databases.

.. rubric::        \ void Synchronizer::setResolveToSource(bool
   *resolve\_to\_source*)
   :name: setResolveToSource
   :class: fn

If *resolve\_to\_source* is true, conflicts during sync will be resolved
in favor of the content from the source database.

.. rubric::        \ void Synchronizer::setSource(Database \* *source*)
   :name: setSource
   :class: fn

Sets the *source* database.

.. rubric::        \ void Synchronizer::setSync(bool *synchronize*)
   :name: setSync
   :class: fn

FIXME *synchronize*

.. rubric::        \ void Synchronizer::setSyncOutput(QList<QVariant>
   *sync\_output*)
   :name: setSyncOutput
   :class: fn

Sets the current value for the active session's *sync\_output*.

.. rubric::        \ void Synchronizer::setTargets(QVariant *targets*)
   :name: setTargets
   :class: fn

FIXME *targets*

