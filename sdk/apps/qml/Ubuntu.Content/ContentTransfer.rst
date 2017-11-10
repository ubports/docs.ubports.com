.. _sdk_ubuntu_content_contenttransfer:

Ubuntu.Content ContentTransfer
==============================

Represents a transfer of content between two ContentPeers

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`contentType <sdk_ubuntu_content_contenttransfer_contentType>` : ContentType
-  :ref:`destination <sdk_ubuntu_content_contenttransfer_destination>` : QString
-  :ref:`direction <sdk_ubuntu_content_contenttransfer_direction>` : ContentTransfer.Direction
-  :ref:`downloadId <sdk_ubuntu_content_contenttransfer_downloadId>` : string
-  :ref:`items <sdk_ubuntu_content_contenttransfer_items>` : list<ContentItem>
-  :ref:`selectionType <sdk_ubuntu_content_contenttransfer_selectionType>` : ContentTransfer.SelectionType
-  :ref:`source <sdk_ubuntu_content_contenttransfer_source>` : QString
-  :ref:`state <sdk_ubuntu_content_contenttransfer_state>` : ContentTransfer.State
-  :ref:`store <sdk_ubuntu_content_contenttransfer_store>` : string

Methods
-------

-  :ref:`finalize <sdk_ubuntu_content_contenttransfer_finalize>`\ ()
-  :ref:`start <sdk_ubuntu_content_contenttransfer_start>`\ ()

Detailed Description
--------------------

See documentation for :ref:`ContentHub <sdk_ubuntu_content_contenthub>`

Property Documentation
----------------------

.. _sdk_ubuntu_content_contenttransfer_contentType:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentType : :ref:`ContentType <sdk_ubuntu_content_contenttype>`                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the :ref:`ContentType <sdk_ubuntu_content_contenttype>` requested.

.. _sdk_ubuntu_content_contenttransfer_destination:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| destination : QString                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides the app id of the destination application for this transfer

.. _sdk_ubuntu_content_contenttransfer_direction:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Direction                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

ContentTransfer::direction indicates if this transferobject is used for import or export transaction

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Direction* is an enumeration:
Direction
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Import
Transfer is a request to import content.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Export
Transfer is a request to export content.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Share
Transfer is a request to share content.

.. _sdk_ubuntu_content_contenttransfer_downloadId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downloadId : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The Download Manager ID of a SingleDownload, which will then be transfered to the selected peer.

.. _sdk_ubuntu_content_contenttransfer_items:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| items : list<:ref:`ContentItem <sdk_ubuntu_content_contentitem>`>                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of items included in the :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`

.. _sdk_ubuntu_content_contenttransfer_selectionType:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectionType : :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.SelectionType                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

ContentTransfer::selectionType indicates if this transfer object allows single or multiple selection of items

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.SelectionType* is an enumeration:
Type
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Single
Transfer should contain a single item.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Multiple
Transfer can contain multiple items.

.. _sdk_ubuntu_content_contenttransfer_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : QString                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides the app id of the source application for this transfer

.. _sdk_ubuntu_content_contenttransfer_state:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.State                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

*:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.State* is an enumeration:
State
Description
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Created
Transfer created, waiting to be initiated.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Initiated
Transfer has been initiated.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.InProgress
Transfer is in progress.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Downloading
Transfer is downloading item specified by :ref:`downloadId <sdk_ubuntu_content_contenttransfer_downloadId>`.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Downloaded
Download specified by :ref:`downloadId <sdk_ubuntu_content_contenttransfer_downloadId>` has completed.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Charged
Transfer is charged with items and ready to be collected.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Collected
Items in the transfer have been collected.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Aborted
Transfer has been aborted.
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Finalized
Transfer has been finished and cleaned up.

.. _sdk_ubuntu_content_contenttransfer_store:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| store : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

:ref:`ContentStore <sdk_ubuntu_content_contentstore>` where the :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>` will add items

Method Documentation
--------------------

.. _sdk_ubuntu_content_contenttransfer_finalize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finalize()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets State to :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Finalized and cleans up temporary files

.. _sdk_ubuntu_content_contenttransfer_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Start the transfer, this sets the State to :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.Initiated

