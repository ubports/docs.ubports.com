.. _sdk_contenthub_contenthub:

ContentHub ContentHub
=====================


The ContentHub object.

**ContentHub**\ ()

-  Methods
-  Properties

**api.importContent**\ (``type, peer, transferOptions, onError, onSuccess``)
Creates a ContentStore object for the given ContentPeer.

**Parameters:**

- ``type`` **<ContentType>**

   type of the content to import

- ``peer`` **<:ref:`ContentPeer <sdk_contenthub_contentpeer>`>**

   peer who's content should be imported

- ``transferOptions`` **<Object>**

   a dictionary of transfer options. The options are the following:

   -  multipleFiles {Bool}: specified if a transfer should involve multiple files or not
   -  scope {ContentScope}: specifies the location where the transferred files should be copied to

- ``onError`` **<Function(reason:)>**

   called when the transfer has failed

- ``onSuccess`` **<Function(Array of ContentItem>**

   )} called when the transfer has been a success and items are available

**getPeers**\ (``filters, callback``)
Creates a ContentPeer object for the given source type.

**Parameters:**

- ``filters`` **<Object>**

   A dictionary of parameters to filter the result. The filtering keys are:

   -  contentType: desired ContentType
   -  handler: desired ContentHandler

- ``callback`` **<Function(List of ContentPeer objects)>**

   Callback that receives the result or null

**getStore**\ (``scope, callback``)
Creates a ContentStore object for the given scope type.

**Parameters:**

- ``scope`` **<ContentScope>**

   The content scope for the store

- ``callback`` **<Function(ContentStore)>**

   Callback that receives the result or null

**launchContentPeerPicker**\ (``filters, onPeerSelected, onCancelPressed``)
Launches the content peer picker ui that allows the user to select a peer.

**Parameters:**

- ``filters`` **<Object>**

   A dictionary of parameters to filter the result. The filtering keys are:

   -  contentType: desired ContentType
   -  handler: desired ContentHandler
   -  showTitle: boolean value indicating if the title should be visible

- ``onPeerSelected`` **<Function(ContentPeer)>**

   Called when the user has selected a peer

- ``onCancelPressed`` **<Function()>**

   Called when the user has pressed cancel

**onExportRequested**\ (``callback``)
Sets a handler that is to be called when the current application is the target of an export request.

**Parameters:**

- ``callback`` **<Function(ContentTransfer)>**

   Function when one requests a resource to be exported. The corresponding ContentTransfer is provided as a parameter.

.. code:: html

           var api = external.getUnityObject(1.0);
                           var hub = api.ContentHub;

                           var transferState = hub.ContentTransfer.State;

                           function _exportRequested(transfer) {
                             var url = window.location.href;
                             url = url.substr(0, url.lastIndexOf('/')+1) + 'img/ubuntuone-music.png';

                             transfer.setItems([{name: 'Ubuntu One', url: url}],
                               function() {
                                 transfer.setState(hub.ContentTransfer.State.Charged);
                               });
                             };

                           hub.onExportRequested(_exportRequested);

**onImportRequested**\ (``callback``)
Sets a handler that is to be called when the current application is the target of an import request.

**Parameters:**

- ``callback`` **<Function(ContentTransfer)>**

   Function when one requests a resource to be imported. The corresponding ContentTransfer is provided as a parameter.

.. code:: html

           var api = external.getUnityObject(1.0);
                           var hub = api.ContentHub;

                           var transferState = hub.ContentTransfer.State;

                           function _importRequested(transfer) {
                           };

                           hub.onImportRequested(_importRequested);

**onShareRequested**\ (``callback``)
Sets a handler that is to be called when the current application is the target of an share request.

**Parameters:**

- ``callback`` **<Function(ContentTransfer)>**

   Function when one requests a resource to be shared. The corresponding ContentTransfer is provided as a parameter.

.. code:: html

           var api = external.getUnityObject(1.0);
                           var hub = api.ContentHub;

                           var transferState = hub.ContentTransfer.State;

                           function _shareRequested(transfer) {
                           };

                           hub.onShareRequested(_shareRequested);

``ContentHandler`` <**String**> *(static)*
ContentHandler is an enumeration of well known content handlers.

Values:

Source

Destination

Share

``ContentScope`` <**String**> *(static)*
ContentScope is an enumeration of well known scope types.

Values:

System

User

App

``ContentTransfer.Direction`` <**String**> *(static)*
ContentTransfer.Direction is an enumeration of the directions of a given ContentTransfer.

Values:

Import

Export

Share

``ContentTransfer.SelectionType`` <**String**> *(static)*
ContentTransfer.SelectionType is an enumeration of the directions of a given ContentTransfer.

Values:

Single: Transfer should contain a single item

Multiple: Transfer can contain multiple items

``ContentTransfer.State`` <**String**> *(static)*
ContentTransfer.State is an enumeration of the state of a given ongoing ContentTransfer.

Values:

Created: Transfer created, waiting to be initiated.

Initiated: Transfer has been initiated.

InProgress: Transfer is in progress.

Charged: Transfer is charged with items and ready to be collected.

Collected: Items in the transfer have been collected.

Aborted: Transfer has been aborted.

Finalized: Transfer has been finished and cleaned up.

Downloaded: Download specified by downloadId has completed.

Downloading: Transfer is downloading item specified by downloadId.

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var transferState = hub.ContentTransfer.State; var pictureContentType = hub.ContentType.Pictures;

hub.importContentForPeer( pictureContentType, peer, function(transfer) { hub.defaultStoreForType(pictureContentType, function(store) { transfer.setStore(store, function() { transfer.start(function(state) { if (transferState.Aborted === state) { [...] } [...] }); }); }); });

``ContentType`` <**String**> *(static)*
ContentType is an enumeration of well known content types.

Values:

.. code:: html

    Pictures

                    Documents

                    Music

                    Contacts

                    Videos

                    Links

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var pictureContentType = hub.ContentType.Pictures;

