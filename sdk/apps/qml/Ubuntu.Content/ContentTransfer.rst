Represents a transfer of content between two ContentPeers

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`contentType </sdk/apps/qml/Ubuntu.Content/ContentTransfer#contentType-prop>`__****
   : ContentType
-  ****`destination </sdk/apps/qml/Ubuntu.Content/ContentTransfer#destination-prop>`__****
   : QString
-  ****`direction </sdk/apps/qml/Ubuntu.Content/ContentTransfer#direction-prop>`__****
   : ContentTransfer.Direction
-  ****`downloadId </sdk/apps/qml/Ubuntu.Content/ContentTransfer#downloadId-prop>`__****
   : string
-  ****`items </sdk/apps/qml/Ubuntu.Content/ContentTransfer#items-prop>`__****
   : list<ContentItem>
-  ****`selectionType </sdk/apps/qml/Ubuntu.Content/ContentTransfer#selectionType-prop>`__****
   : ContentTransfer.SelectionType
-  ****`source </sdk/apps/qml/Ubuntu.Content/ContentTransfer#source-prop>`__****
   : QString
-  ****`state </sdk/apps/qml/Ubuntu.Content/ContentTransfer#state-prop>`__****
   : ContentTransfer.State
-  ****`store </sdk/apps/qml/Ubuntu.Content/ContentTransfer#store-prop>`__****
   : string

Methods
-------

-  ****`finalize </sdk/apps/qml/Ubuntu.Content/ContentTransfer#finalize-method>`__****\ ()
-  ****`start </sdk/apps/qml/Ubuntu.Content/ContentTransfer#start-method>`__****\ ()

Detailed Description
--------------------

See documentation for
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentType :                                                   |
| `ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__              |
+--------------------------------------------------------------------------+

Specifies the
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__ requested.

| 

+--------------------------------------------------------------------------+
|        \ destination : QString                                           |
+--------------------------------------------------------------------------+

Provides the app id of the destination application for this transfer

| 

+--------------------------------------------------------------------------+
|        \ direction :                                                     |
| `ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Dire |
| ction                                                                    |
+--------------------------------------------------------------------------+

ContentTransfer::direction indicates if this transferobject is used for
import or export transaction

*`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Direction*
is an enumeration:
Direction
Description
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Import
Transfer is a request to import content.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Export
Transfer is a request to export content.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Share
Transfer is a request to share content.

| 

+--------------------------------------------------------------------------+
|        \ downloadId : string                                             |
+--------------------------------------------------------------------------+

The Download Manager ID of a SingleDownload, which will then be
transfered to the selected peer.

| 

+--------------------------------------------------------------------------+
|        \ items :                                                         |
| list<`ContentItem </sdk/apps/qml/Ubuntu.Content/ContentItem/>`__>        |
+--------------------------------------------------------------------------+

List of items included in the
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__

| 

+--------------------------------------------------------------------------+
|        \ selectionType :                                                 |
| `ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Sele |
| ctionType                                                                |
+--------------------------------------------------------------------------+

ContentTransfer::selectionType indicates if this transfer object allows
single or multiple selection of items

*`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.SelectionType*
is an enumeration:
Type
Description
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Single
Transfer should contain a single item.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Multiple
Transfer can contain multiple items.

| 

+--------------------------------------------------------------------------+
|        \ source : QString                                                |
+--------------------------------------------------------------------------+

Provides the app id of the source application for this transfer

| 

+--------------------------------------------------------------------------+
|        \ state :                                                         |
| `ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Stat |
| e                                                                        |
+--------------------------------------------------------------------------+

*`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.State*
is an enumeration:
State
Description
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Created
Transfer created, waiting to be initiated.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Initiated
Transfer has been initiated.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.InProgress
Transfer is in progress.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Downloading
Transfer is downloading item specified by
`downloadId </sdk/apps/qml/Ubuntu.Content/ContentTransfer#downloadId-prop>`__.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Downloaded
Download specified by
`downloadId </sdk/apps/qml/Ubuntu.Content/ContentTransfer#downloadId-prop>`__
has completed.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Charged
Transfer is charged with items and ready to be collected.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Collected
Items in the transfer have been collected.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Aborted
Transfer has been aborted.
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Finalized
Transfer has been finished and cleaned up.

| 

+--------------------------------------------------------------------------+
|        \ store : string                                                  |
+--------------------------------------------------------------------------+

`ContentStore </sdk/apps/qml/Ubuntu.Content/ContentStore/>`__ where the
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__ will
add items

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ finalize()                                                      |
+--------------------------------------------------------------------------+

Sets State to
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Finalized
and cleans up temporary files

| 

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Start the transfer, this sets the State to
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Initiated

| 
