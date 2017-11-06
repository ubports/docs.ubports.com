.. _sdk_contenthub_contentpeer:

ContentHub ContentPeer
======================


ContentPeer is an object returned by the ContentHub. It represents a remote peer that can be used in a request to import, export or share content.

**ContentPeer**\ ()

.. code:: html

      var api = external.getUnityObject('1.0');
          var hub = api.ContentHub;

          var pictureContentType = hub.ContentType.Pictures;

          hub.defaultSourceForType(
             pictureContentType
             , function(peer) {
                [do something with the peer]
              });

-  Methods

String **appId**\ (``callback``)
Retrieves the app Id of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**Returns:** <String>
Application Id for this peer

String **contentType**\ (``callback``)
Retrieves the specific ContentType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**Returns:** <String>
ContentType for this peer

**destroy**\ ()
Destroys the remote object. This proxy object is not valid anymore.

String **handler**\ (``callback``)
Retrieves the specific ContentHandler for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**Returns:** <String>
ContentHandler for this peer

**isDefaultPeer**\ (``callback``)
Returns true if the peer is a default one, false otherwise.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(Bool)>**

   (optional)

**name**\ (``callback``)
Retrieves the name of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**request**\ (``callback``)
Request to exchange content with this ContentPeer.

**Parameters:**

- ``callback`` **<Function(ContentTransfer)>**

   Called with the resulting content transfer

**requestForStore**\ (``store, callback``)
Request to import content from this ContentPeer and use a ContentStore for permanent storage.

**Parameters:**

- ``store`` **<:ref:`ContentStore <sdk_contenthub_contentstore>`>**

   Store used as a permanent storage

- ``callback`` **<Function(ContentTransfer)>**

   Called with the resulting content transfer

String **selectionType**\ (``callback``)
Retrieves the specific SelectionType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**Returns:** <String>
ContentTransfer.SelectionType for this peer

**setAppId**\ (``appId, callback``)
Sets the app Id of the associated peer.

**Parameters:**

- ``appId`` **<String>**
- ``callback`` **<Function()>**

   called when the appId has been updated

**setContentType**\ (``contentType, callback``)
Sets specific ContentType for this peer.

**Parameters:**

- ``contentType`` **<ContentType>**
- ``callback`` **<Function()>**

   called when the content type has been updated

**setHandler**\ (``handler, callback``)
Sets specific ContentHandler for this peer.

**Parameters:**

- ``handler`` **<ContentHandler>**
- ``callback`` **<Function()>**

   called when the appId has been updated

**setSelectionType**\ (``selectionType, callback``)
Sets specific SelectionType for this peer.

**Parameters:**

- ``selectionType`` **<ContentTransfer.SelectionType>**
- ``callback`` **<Function()>**

   called when the content type has been updated

