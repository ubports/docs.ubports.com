.. _sdk_ubuntu_content_contentpeerpicker:
Ubuntu.Content ContentPeerPicker
================================

Component that allows users to select a source/destination for content
transfer

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`contentType <sdk_ubuntu_content_contentpeerpicker_contentType-prop>`
   : ContentType
-  :ref:`customerPeerModelLoader <sdk_ubuntu_content_contentpeerpicker_customerPeerModelLoader-prop>`
   : Loader
-  :ref:`handler <sdk_ubuntu_content_contentpeerpicker_handler-prop>`
   : ContentHandler
-  :ref:`headerText <sdk_ubuntu_content_contentpeerpicker_headerText-prop>`
   : string
-  :ref:`peer <sdk_ubuntu_content_contentpeerpicker_peer-prop>` :
   ContentPeer
-  :ref:`showTitle <sdk_ubuntu_content_contentpeerpicker_showTitle-prop>`
   : bool

Signals
-------

-  :ref:`cancelPressed <sdk_ubuntu_content_contentpeerpicker_cancelPressed-signal>`\ ()
-  :ref:`peerSelected <sdk_ubuntu_content_contentpeerpicker_peerSelected-signal>`\ ()

Detailed Description
--------------------

This component displays a list of applications, devices and services
which are appropriate for transferring a given content type with.

Property Documentation
----------------------

.. _sdk_ubuntu_content_contentpeerpicker_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ contentType : `ContentType <sdk_ubuntu_content_contenttype>`  |
+--------------------------------------------------------------------------+

The :ref:`ContentType <sdk_ubuntu_content_contenttype>` to use when finding
peers.

| 

.. _sdk_ubuntu_content_contentpeerpicker_customerPeerModelLoader-prop:

+--------------------------------------------------------------------------+
|        \ customerPeerModelLoader : Loader                                |
+--------------------------------------------------------------------------+

A Loader containing a
:ref:`ContentPeerModel <sdk_ubuntu_content_contentpeermodel>`.

This can optionally be used to provide a pre-populated
:ref:`ContentPeerModel <sdk_ubuntu_content_contentpeermodel>` to this
:ref:`ContentPeerPicker <sdk_ubuntu_content_contentpeerpicker>`.

| 

.. _sdk_ubuntu_content_contentpeerpicker_handler-prop:

+--------------------------------------------------------------------------+
|        \ handler :                                                       |
| :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>`                   |
+--------------------------------------------------------------------------+

The :ref:`ContentHandler <sdk_ubuntu_content_contenthandler>` to use when
finding peers.

| 

.. _sdk_ubuntu_content_contentpeerpicker_headerText-prop:

+--------------------------------------------------------------------------+
|        \ headerText : string                                             |
+--------------------------------------------------------------------------+

Text to display in the header.

| 

.. _sdk_ubuntu_content_contentpeerpicker_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ peer : `ContentPeer <sdk_ubuntu_content_contentpeer>`      |
+--------------------------------------------------------------------------+

The peer selected by the user.

Once the
:ref:`peerSelected <sdk_ubuntu_content_contentpeerpicker#peerSelected-signal>`
signal has been sent, this provides the
:ref:`ContentPeer <sdk_ubuntu_content_contentpeer>` which the user has
selected.

| 

.. _sdk_ubuntu_content_contentpeerpicker_showTitle-prop:

+--------------------------------------------------------------------------+
|        \ showTitle : bool                                                |
+--------------------------------------------------------------------------+

Determines whether the header should be displayed.

This makes it possible to hide the header, which can be useful if
embedding the picker within another page or popup.

| 

Signal Documentation
--------------------

.. _sdk_ubuntu_content_contentpeerpicker_cancelPressed()-prop:

+--------------------------------------------------------------------------+
|        \ cancelPressed()                                                 |
+--------------------------------------------------------------------------+

Emitted when the user clicks the cancel button.

The :ref:`ContentPeerPicker <sdk_ubuntu_content_contentpeerpicker>` will be
hidden automatically when the user cancels the operations and the active
:ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>` will be set to
Aborted. ``onCancelPressed``

| 

.. _sdk_ubuntu_content_contentpeerpicker_peerSelected()-prop:

+--------------------------------------------------------------------------+
|        \ peerSelected()                                                  |
+--------------------------------------------------------------------------+

Emitted when a user selects a peer.

Once this signal has been emitted the selected peer can be accessed via
the peer property. ``onPeerSelected``

| 
