.. _sdk_contenthub_contenttransfer:

ContentHub ContentTransfer
==========================


ContentTransfer is an object created by the ContentHub to and allows one to properly setup and manage a data transfer between two peers.

**ContentTransfer**\ ()

.. code:: html

      var api = external.getUnityObject('1.0');
          var hub = api.ContentHub;

          var pictureContentType = hub.ContentType.Pictures;

          hub.defaultSourceForType(
             pictureContentType
             , function(peer) {
               hub.importContentForPeer(
                 pictureContentType,
                 peer,
                 function(transfer) {
                   [setup the transfer options and store]
                   transfer.start(function(state) { [...] });
                 });
              });

-  Methods

**destroy**\ ()
Destroys the remote object. This proxy object is not valid anymore.

**direction**\ (``callback``)
Retrieves the current transfer direction.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(ContentTransfer.Direction)>**

   (optional)

**finalize**\ ()
Sets State to ContentTransfer.Finalized and cleans up temporary files.

**items**\ (``callback``)
Retrieves the list of items associated with the ContentTransfer.

**Parameters:**

- ``callback`` **<Function( Objectname: , url:>**

   } )}

**onStateChanged**\ (``callback``)
Notifies the listener when the state of the transfer changes.

**Parameters:**

- ``callback`` **<Function(ContentTransfer.State)>**

**selectionType**\ (``callback``)
Retrieves the current selection type.

**Parameters:**

- ``callback`` **<Function(ContentTransfer.SelectionType)>**

**setDirection**\ (``direction, callback``)
Sets the transfer direction (import or export).

**Parameters:**

- ``direction`` **<ContentTransfer.Direction>**
- ``callback`` **<Function()>**

   called when the state has been updated

**setItems**\ (``items, callback``)
Sets the list of items for the associated ContentTransfer (used when exporting).

**Parameters:**

- ``items`` **<Array of Objectname: String, url: String>**

   }

- ``callback`` **<Function()>**

   called when the state has been updated

**setSelectionType**\ (``selectionType, callback``)
Sets the selection type (single or multiple).

**Parameters:**

- ``selectionType`` **<ContentTransfer.SelectionType>**
- ``callback`` **<Function()>**

   called when the state has been updated

**setState**\ (``state, callback``)
Sets the state of the transfer.

**Parameters:**

- ``state`` **<ContentTransfer.State>**
- ``callback`` **<Function()>**

   called when the state has been updated

**setStore**\ (``store, callback``)
Sets the current store for the ContentTransfer.

**Parameters:**

- ``store`` **<:ref:`ContentStore <sdk_contenthub_contentstore>`>**
- ``callback`` **<Function()>**

   (optional) called when the store has been updated

**start**\ (``callback``)
Starts a transfer

**Parameters:**

- ``callback`` **<Function(ContentTransfer.State)>**

**state**\ (``callback``)
Retrieves the current state.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(ContentTransfer.State)>**

   (optional)

**store**\ (``callback``)
Retrieves the current store.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

