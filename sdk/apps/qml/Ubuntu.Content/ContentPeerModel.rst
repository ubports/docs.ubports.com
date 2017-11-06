.. _sdk_ubuntu_content_contentpeermodel:

Ubuntu.Content ContentPeerModel
===============================

A list of applications that can export or import a ContentType

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`contentType <sdk_ubuntu_content_contentpeermodel_contentType>` : ContentType
-  :ref:`handler <sdk_ubuntu_content_contentpeermodel_handler>` : ContentHandler
-  :ref:`peers <sdk_ubuntu_content_contentpeermodel_peers>` : list<ContentPeer>

Detailed Description
--------------------

A :ref:`ContentPeerModel <sdk_ubuntu_content_contentpeermodel>` provides a list of all applications that are registered in the :ref:`ContentHub <sdk_ubuntu_content_contenthub>` as a source or destination of a :ref:`ContentType <sdk_ubuntu_content_contenttype>`

See documentation for :ref:`ContentPeer <sdk_ubuntu_content_contentpeer>`

Property Documentation
----------------------

.. _sdk_ubuntu_content_contentpeermodel_contentType:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentType : :ref:`ContentType <sdk_ubuntu_content_contenttype>`                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies which :ref:`ContentType <sdk_ubuntu_content_contenttype>` discovered peers should support.

.. _sdk_ubuntu_content_contentpeermodel_handler:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| handler : :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies which :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>` discovered peers should support.

.. _sdk_ubuntu_content_contentpeermodel_peers:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| peers : list<:ref:`ContentPeer <sdk_ubuntu_content_contentpeer>`>                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Provides a list of discovered peers matching the requested :ref:`ContentType <sdk_ubuntu_content_contenttype>` and :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`.

