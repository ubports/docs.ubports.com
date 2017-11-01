Component that allows users to select a source/destination for content
transfer

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`contentType </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#contentType-prop>`__****
   : ContentType
-  ****`customerPeerModelLoader </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#customerPeerModelLoader-prop>`__****
   : Loader
-  ****`handler </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#handler-prop>`__****
   : ContentHandler
-  ****`headerText </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#headerText-prop>`__****
   : string
-  ****`peer </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#peer-prop>`__****
   : ContentPeer
-  ****`showTitle </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#showTitle-prop>`__****
   : bool

Signals
-------

-  ****`cancelPressed </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#cancelPressed-signal>`__****\ ()
-  ****`peerSelected </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#peerSelected-signal>`__****\ ()

Detailed Description
--------------------

This component displays a list of applications, devices and services
which are appropriate for transferring a given content type with.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentType :                                                   |
| `ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__              |
+--------------------------------------------------------------------------+

The `ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__ to use
when finding peers.

| 

+--------------------------------------------------------------------------+
|        \ customerPeerModelLoader : Loader                                |
+--------------------------------------------------------------------------+

A Loader containing a
`ContentPeerModel </sdk/apps/qml/Ubuntu.Content/ContentPeerModel/>`__.

This can optionally be used to provide a pre-populated
`ContentPeerModel </sdk/apps/qml/Ubuntu.Content/ContentPeerModel/>`__ to
this
`ContentPeerPicker </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker/>`__.

| 

+--------------------------------------------------------------------------+
|        \ handler :                                                       |
| `ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__        |
+--------------------------------------------------------------------------+

The `ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__ to
use when finding peers.

| 

+--------------------------------------------------------------------------+
|        \ headerText : string                                             |
+--------------------------------------------------------------------------+

Text to display in the header.

| 

+--------------------------------------------------------------------------+
|        \ peer :                                                          |
| `ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__              |
+--------------------------------------------------------------------------+

The peer selected by the user.

Once the
`peerSelected </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker#peerSelected-signal>`__
signal has been sent, this provides the
`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__ which the
user has selected.

| 

+--------------------------------------------------------------------------+
|        \ showTitle : bool                                                |
+--------------------------------------------------------------------------+

Determines whether the header should be displayed.

This makes it possible to hide the header, which can be useful if
embedding the picker within another page or popup.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelPressed()                                                 |
+--------------------------------------------------------------------------+

Emitted when the user clicks the cancel button.

The
`ContentPeerPicker </sdk/apps/qml/Ubuntu.Content/ContentPeerPicker/>`__
will be hidden automatically when the user cancels the operations and
the active
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__ will
be set to Aborted. ``onCancelPressed``

| 

+--------------------------------------------------------------------------+
|        \ peerSelected()                                                  |
+--------------------------------------------------------------------------+

Emitted when a user selects a peer.

Once this signal has been emitted the selected peer can be accessed via
the peer property. ``onPeerSelected``

| 
