.. _sdk_ubuntu_content_contentpeerpicker:

Ubuntu.Content ContentPeerPicker
================================

Component that allows users to select a source/destination for content transfer

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`contentType <sdk_ubuntu_content_contentpeerpicker_contentType>` : ContentType
-  :ref:`customerPeerModelLoader <sdk_ubuntu_content_contentpeerpicker_customerPeerModelLoader>` : Loader
-  :ref:`handler <sdk_ubuntu_content_contentpeerpicker_handler>` : ContentHandler
-  :ref:`headerText <sdk_ubuntu_content_contentpeerpicker_headerText>` : string
-  :ref:`peer <sdk_ubuntu_content_contentpeerpicker_peer>` : ContentPeer
-  :ref:`showTitle <sdk_ubuntu_content_contentpeerpicker_showTitle>` : bool

Signals
-------

-  :ref:`cancelPressed <sdk_ubuntu_content_contentpeerpicker_cancelPressed>`\ ()
-  :ref:`peerSelected <sdk_ubuntu_content_contentpeerpicker_peerSelected>`\ ()

Detailed Description
--------------------

This component displays a list of applications, devices and services which are appropriate for transferring a given content type with.

Property Documentation
----------------------

.. _sdk_ubuntu_content_contentpeerpicker_contentType:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentType : :ref:`ContentType <sdk_ubuntu_content_contenttype>`                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ContentType <sdk_ubuntu_content_contenttype>` to use when finding peers.

.. _sdk_ubuntu_content_contentpeerpicker_customerPeerModelLoader:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| customerPeerModelLoader : Loader                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A Loader containing a :ref:`ContentPeerModel <sdk_ubuntu_content_contentpeermodel>`.

This can optionally be used to provide a pre-populated :ref:`ContentPeerModel <sdk_ubuntu_content_contentpeermodel>` to this :ref:`ContentPeerPicker <sdk_ubuntu_content_contentpeerpicker>`.

.. _sdk_ubuntu_content_contentpeerpicker_handler:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| handler : :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>` to use when finding peers.

.. _sdk_ubuntu_content_contentpeerpicker_headerText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| headerText : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Text to display in the header.

.. _sdk_ubuntu_content_contentpeerpicker_peer:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| peer : :ref:`ContentPeer <sdk_ubuntu_content_contentpeer>`                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The peer selected by the user.

Once the :ref:`peerSelected <sdk_ubuntu_content_contentpeerpicker_peerSelected>` signal has been sent, this provides the :ref:`ContentPeer <sdk_ubuntu_content_contentpeer>` which the user has selected.

.. _sdk_ubuntu_content_contentpeerpicker_showTitle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showTitle : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Determines whether the header should be displayed.

This makes it possible to hide the header, which can be useful if embedding the picker within another page or popup.

Signal Documentation
--------------------

.. _sdk_ubuntu_content_contentpeerpicker_cancelPressed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelPressed()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Emitted when the user clicks the cancel button.

The :ref:`ContentPeerPicker <sdk_ubuntu_content_contentpeerpicker>` will be hidden automatically when the user cancels the operations and the active :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>` will be set to Aborted. ``onCancelPressed``

.. _sdk_ubuntu_content_contentpeerpicker_peerSelected:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| peerSelected()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Emitted when a user selects a peer.

Once this signal has been emitted the selected peer can be accessed via the peer property. ``onPeerSelected``

