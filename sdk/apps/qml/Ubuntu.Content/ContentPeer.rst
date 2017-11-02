.. _sdk_ubuntu_content_contentpeer:
Ubuntu.Content ContentPeer
==========================

An application that can export or import a ContentType

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`appId <sdk_ubuntu_content_contentpeer_appId-prop>` :
   string
-  :ref:`contentType <sdk_ubuntu_content_contentpeer_contentType-prop>`
   : ContentType
-  :ref:`handler <sdk_ubuntu_content_contentpeer_handler-prop>` :
   ContentHandler
-  :ref:`name <sdk_ubuntu_content_contentpeer_name-prop>` : string
-  :ref:`selectionType <sdk_ubuntu_content_contentpeer_selectionType-prop>`
   : ContentTransfer.SelectionType

Methods
-------

-  :ref:`request <sdk_ubuntu_content_contentpeer_request-method-2>`\ (ContentStore)
-  :ref:`request <sdk_ubuntu_content_contentpeer_request-method>`\ ()

Detailed Description
--------------------

A :ref:`ContentPeer <sdk_ubuntu_content_contentpeer>` is an application
that is registered in the :ref:`ContentHub <sdk_ubuntu_content_contenthub>`
as a source or destination of a
:ref:`ContentType <sdk_ubuntu_content_contenttype>`

See documentation for :ref:`ContentHub <sdk_ubuntu_content_contenthub>`

Property Documentation
----------------------

.. _sdk_ubuntu_content_contentpeer_appId-prop:

+--------------------------------------------------------------------------+
|        \ appId : string                                                  |
+--------------------------------------------------------------------------+

When set, this property allows for a specific application to be used as
a peer.

| 

.. _sdk_ubuntu_content_contentpeer_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ contentType : `ContentType <sdk_ubuntu_content_contenttype>`  |
+--------------------------------------------------------------------------+

Specifies the :ref:`ContentType <sdk_ubuntu_content_contenttype>` this peer
should support.

| 

.. _sdk_ubuntu_content_contentpeer_handler-prop:

+--------------------------------------------------------------------------+
|        \ handler :                                                       |
| :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`                   |
+--------------------------------------------------------------------------+

Specifies which :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`
this peer should support (e.g. Source, Destination, Share).

| 

.. _sdk_ubuntu_content_contentpeer_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Returns user friendly name of the peer.

| 

.. _sdk_ubuntu_content_contentpeer_selectionType-prop:

+--------------------------------------------------------------------------+
|        \ selectionType :                                                 |
| :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`.SelectionType   |
+--------------------------------------------------------------------------+

Specifies whether this peer is allowed to return multiple items.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_content_contentpeer_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ request(`ContentStore <sdk_ubuntu_content_contentstore>`)     |
+--------------------------------------------------------------------------+

Request to an active transfer from this
:ref:`ContentPeer <sdk_ubuntu_content_contentpeer>` and use a
:ref:`ContentStore <sdk_ubuntu_content_contentstore>` for permanent
storage.

| 

.. _sdk_ubuntu_content_contentpeer_request-method:

+--------------------------------------------------------------------------+
|        \ request()                                                       |
+--------------------------------------------------------------------------+

Request an active transfer from this
:ref:`ContentPeer <sdk_ubuntu_content_contentpeer>`.

| 
