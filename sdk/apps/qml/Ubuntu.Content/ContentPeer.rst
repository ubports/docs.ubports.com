An application that can export or import a ContentType

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`appId </sdk/apps/qml/Ubuntu.Content/ContentPeer#appId-prop>`__****
   : string
-  ****`contentType </sdk/apps/qml/Ubuntu.Content/ContentPeer#contentType-prop>`__****
   : ContentType
-  ****`handler </sdk/apps/qml/Ubuntu.Content/ContentPeer#handler-prop>`__****
   : ContentHandler
-  ****`name </sdk/apps/qml/Ubuntu.Content/ContentPeer#name-prop>`__****
   : string
-  ****`selectionType </sdk/apps/qml/Ubuntu.Content/ContentPeer#selectionType-prop>`__****
   : ContentTransfer.SelectionType

Methods
-------

-  ****`request </sdk/apps/qml/Ubuntu.Content/ContentPeer#request-method-2>`__****\ (ContentStore)
-  ****`request </sdk/apps/qml/Ubuntu.Content/ContentPeer#request-method>`__****\ ()

Detailed Description
--------------------

A `ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__ is an
application that is registered in the
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__ as a source or
destination of a
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__

See documentation for
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ appId : string                                                  |
+--------------------------------------------------------------------------+

When set, this property allows for a specific application to be used as
a peer.

| 

+--------------------------------------------------------------------------+
|        \ contentType :                                                   |
| `ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__              |
+--------------------------------------------------------------------------+

Specifies the
`ContentType </sdk/apps/qml/Ubuntu.Content/ContentType/>`__ this peer
should support.

| 

+--------------------------------------------------------------------------+
|        \ handler :                                                       |
| `ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__        |
+--------------------------------------------------------------------------+

Specifies which
`ContentHandler </sdk/apps/qml/Ubuntu.Content/ContentHandler/>`__ this
peer should support (e.g. Source, Destination, Share).

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

Returns user friendly name of the peer.

| 

+--------------------------------------------------------------------------+
|        \ selectionType :                                                 |
| `ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__.Sele |
| ctionType                                                                |
+--------------------------------------------------------------------------+

Specifies whether this peer is allowed to return multiple items.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ request(`ContentStore </sdk/apps/qml/Ubuntu.Content/ContentStor |
| e/>`__)                                                                  |
+--------------------------------------------------------------------------+

Request to an active transfer from this
`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__ and use a
`ContentStore </sdk/apps/qml/Ubuntu.Content/ContentStore/>`__ for
permanent storage.

| 

+--------------------------------------------------------------------------+
|        \ request()                                                       |
+--------------------------------------------------------------------------+

Request an active transfer from this
`ContentPeer </sdk/apps/qml/Ubuntu.Content/ContentPeer/>`__.

| 
