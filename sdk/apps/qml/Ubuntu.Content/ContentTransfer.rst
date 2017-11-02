.. _sdk_ubuntu_content_contenttransfer:
Ubuntu.Content ContentTransfer
==============================

Represents a transfer of content between two ContentPeers

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`contentType <sdk_ubuntu_content_contenttransfer_contentType-prop>`
   : ContentType
-  :ref:`destination <sdk_ubuntu_content_contenttransfer_destination-prop>`
   : QString
-  :ref:`direction <sdk_ubuntu_content_contenttransfer_direction-prop>`
   : ContentTransfer.Direction
-  :ref:`downloadId <sdk_ubuntu_content_contenttransfer_downloadId-prop>`
   : string
-  :ref:`items <sdk_ubuntu_content_contenttransfer_items-prop>` :
   list<ContentItem>
-  :ref:`selectionType <sdk_ubuntu_content_contenttransfer_selectionType-prop>`
   : ContentTransfer.SelectionType
-  :ref:`source <sdk_ubuntu_content_contenttransfer_source-prop>` :
   QString
-  :ref:`state <sdk_ubuntu_content_contenttransfer_state-prop>` :
   ContentTransfer.State
-  :ref:`store <sdk_ubuntu_content_contenttransfer_store-prop>` :
   string

Methods
-------

-  :ref:`finalize <sdk_ubuntu_content_contenttransfer_finalize-method>`\ ()
-  :ref:`start <sdk_ubuntu_content_contenttransfer_start-method>`\ ()

Detailed Description
--------------------

See documentation for :ref:`ContentHub <sdk_ubuntu_content_contenthub>`

Property Documentation
----------------------

.. _sdk_ubuntu_content_contenttransfer_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ contentType : `ContentType <sdk_ubuntu_content_contenttype>`  |
+--------------------------------------------------------------------------+

Specifies the :ref:`ContentType <sdk_ubuntu_content_contenttype>`
requested.

| 

.. _sdk_ubuntu_content_contenttransfer_destination-prop:

+--------------------------------------------------------------------------+
|        \ destination : QString                                           |
+--------------------------------------------------------------------------+

Provides the app id of the destination application for this transfer

| 

.. _sdk_ubuntu_content_contenttransfer_direction-prop:

+--------------------------------------------------------------------------+
|        \ direction :                                                     |
| :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Direction       |
+--------------------------------------------------------------------------+

ContentTransfer::direction indicates if this transferobject is used for
import or export transaction

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Direction* is
an enumeration:
Direction
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Import
Transfer is a request to import content.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Export
Transfer is a request to export content.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Share
Transfer is a request to share content.

| 

.. _sdk_ubuntu_content_contenttransfer_downloadId-prop:

+--------------------------------------------------------------------------+
|        \ downloadId : string                                             |
+--------------------------------------------------------------------------+

The Download Manager ID of a SingleDownload, which will then be
transfered to the selected peer.

| 

.. _sdk_ubuntu_content_contenttransfer_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ items : list<`ContentItem <sdk_ubuntu_content_contentitem>`>  |
+--------------------------------------------------------------------------+

List of items included in the
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`

| 

.. _sdk_ubuntu_content_contenttransfer_selectionType-prop:

+--------------------------------------------------------------------------+
|        \ selectionType :                                                 |
| :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.SelectionType   |
+--------------------------------------------------------------------------+

ContentTransfer::selectionType indicates if this transfer object allows
single or multiple selection of items

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.SelectionType*
is an enumeration:
Type
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Single
Transfer should contain a single item.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Multiple
Transfer can contain multiple items.

| 

.. _sdk_ubuntu_content_contenttransfer_source-prop:

+--------------------------------------------------------------------------+
|        \ source : QString                                                |
+--------------------------------------------------------------------------+

Provides the app id of the source application for this transfer

| 

.. _sdk_ubuntu_content_contenttransfer_state-prop:

+--------------------------------------------------------------------------+
|        \ state :                                                         |
| :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.State           |
+--------------------------------------------------------------------------+

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.State* is an
enumeration:
State
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Created
Transfer created, waiting to be initiated.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Initiated
Transfer has been initiated.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.InProgress
Transfer is in progress.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Downloading
Transfer is downloading item specified by
:ref:`downloadId <sdk_ubuntu_content_contenttransfer#downloadId-prop>`.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Downloaded
Download specified by
:ref:`downloadId <sdk_ubuntu_content_contenttransfer#downloadId-prop>` has
completed.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Charged
Transfer is charged with items and ready to be collected.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Collected
Items in the transfer have been collected.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Aborted
Transfer has been aborted.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Finalized
Transfer has been finished and cleaned up.

| 

.. _sdk_ubuntu_content_contenttransfer_store-prop:

+--------------------------------------------------------------------------+
|        \ store : string                                                  |
+--------------------------------------------------------------------------+

:ref:`ContentStore <sdk_ubuntu_content_contentstore>` where the
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>` will add items

| 

Method Documentation
--------------------

.. _sdk_ubuntu_content_contenttransfer_finalize-method:

+--------------------------------------------------------------------------+
|        \ finalize()                                                      |
+--------------------------------------------------------------------------+

Sets State to
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Finalized and
cleans up temporary files

| 

.. _sdk_ubuntu_content_contenttransfer_start-method:

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Start the transfer, this sets the State to
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Initiated

| 
