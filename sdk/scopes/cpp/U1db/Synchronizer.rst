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
|                                      | **`Synchronizer </sdk/scopes/cpp/U1d |
|                                      | b/Synchronizer#Synchronizer>`__**\ ( |
|                                      | QObject                              |
|                                      | \* *parent* = 0)                     |
+--------------------------------------+--------------------------------------+
| bool                                 | **`getResolveToSource </sdk/scopes/c |
|                                      | pp/U1db/Synchronizer#getResolveToSou |
|                                      | rce>`__**\ ()                        |
+--------------------------------------+--------------------------------------+
| Database \*                          | **`getSource </sdk/scopes/cpp/U1db/S |
|                                      | ynchronizer#getSource>`__**\ ()      |
+--------------------------------------+--------------------------------------+
| bool                                 | **`getSync </sdk/scopes/cpp/U1db/Syn |
|                                      | chronizer#getSync>`__**\ ()          |
+--------------------------------------+--------------------------------------+
| QList<QVariant>                      | **`getSyncOutput </sdk/scopes/cpp/U1 |
|                                      | db/Synchronizer#getSyncOutput>`__**\ |
|                                      |  ()                                  |
+--------------------------------------+--------------------------------------+
| QVariant                             | **`getTargets </sdk/scopes/cpp/U1db/ |
|                                      | Synchronizer#getTargets>`__**\ ()    |
+--------------------------------------+--------------------------------------+
| void                                 | **`setResolveToSource </sdk/scopes/c |
|                                      | pp/U1db/Synchronizer#setResolveToSou |
|                                      | rce>`__**\ (bool                     |
|                                      | *resolve\_to\_source*)               |
+--------------------------------------+--------------------------------------+
| void                                 | **`setSource </sdk/scopes/cpp/U1db/S |
|                                      | ynchronizer#setSource>`__**\ (Databa |
|                                      | se                                   |
|                                      | \* *source*)                         |
+--------------------------------------+--------------------------------------+
| void                                 | **`setSync </sdk/scopes/cpp/U1db/Syn |
|                                      | chronizer#setSync>`__**\ (bool       |
|                                      | *synchronize*)                       |
+--------------------------------------+--------------------------------------+
| void                                 | **`setSyncOutput </sdk/scopes/cpp/U1 |
|                                      | db/Synchronizer#setSyncOutput>`__**\ |
|                                      |  (QList<QVariant>                    |
|                                      | *sync\_output*)                      |
+--------------------------------------+--------------------------------------+
| void                                 | **`setTargets </sdk/scopes/cpp/U1db/ |
|                                      | Synchronizer#setTargets>`__**\ (QVar |
|                                      | iant                                 |
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

