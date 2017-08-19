ContentHub.ContentHub
=====================

.. raw:: html

   <p>

The ContentHub object.

.. raw:: html

   </p>

ContentHub( )

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   </ul>

api.importContent( type, peer, transferOptions, onError, onSuccess )

.. raw:: html

   <p>

Creates a ContentStore object for the given ContentPeer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

type <ContentType>

.. raw:: html

   <p>

type of the content to import

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

peer <ContentPeer>

.. raw:: html

   <p>

peer who's content should be imported

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

transferOptions <Object>

.. raw:: html

   <p>

a dictionary of transfer options. The options are the following:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

multipleFiles {Bool}: specified if a transfer should involve multiple
files or not

.. raw:: html

   </li>

.. raw:: html

   <li>

scope {ContentScope}: specifies the location where the transferred files
should be copied to

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

onError <Function(reason:)>

.. raw:: html

   <p>

called when the transfer has failed

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

onSuccess <Function(Array of ContentItem>

.. raw:: html

   <p>

)} called when the transfer has been a success and items are available

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

getPeers( filters, callback )

.. raw:: html

   <p>

Creates a ContentPeer object for the given source type.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

filters <Object>

.. raw:: html

   <p>

A dictionary of parameters to filter the result. The filtering keys are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

contentType: desired ContentType

.. raw:: html

   </li>

.. raw:: html

   <li>

handler: desired ContentHandler

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function(List of ContentPeer objects)>

.. raw:: html

   <p>

Callback that receives the result or null

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

getStore( scope, callback )

.. raw:: html

   <p>

Creates a ContentStore object for the given scope type.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

scope <ContentScope>

.. raw:: html

   <p>

The content scope for the store

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function(ContentStore)>

.. raw:: html

   <p>

Callback that receives the result or null

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

launchContentPeerPicker( filters, onPeerSelected, onCancelPressed )

.. raw:: html

   <p>

Launches the content peer picker ui that allows the user to select a
peer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

filters <Object>

.. raw:: html

   <p>

A dictionary of parameters to filter the result. The filtering keys are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

contentType: desired ContentType

.. raw:: html

   </li>

.. raw:: html

   <li>

handler: desired ContentHandler

.. raw:: html

   </li>

.. raw:: html

   <li>

showTitle: boolean value indicating if the title should be visible

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

onPeerSelected <Function(ContentPeer)>

.. raw:: html

   <p>

Called when the user has selected a peer

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

onCancelPressed <Function()>

.. raw:: html

   <p>

Called when the user has pressed cancel

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onExportRequested( callback )

.. raw:: html

   <p>

Sets a handler that is to be called when the current application is the
target of an export request.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer)>

.. raw:: html

   <p>

Function when one requests a resource to be exported. The corresponding
ContentTransfer is provided as a parameter.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
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
   </code></pre>

onImportRequested( callback )

.. raw:: html

   <p>

Sets a handler that is to be called when the current application is the
target of an import request.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer)>

.. raw:: html

   <p>

Function when one requests a resource to be imported. The corresponding
ContentTransfer is provided as a parameter.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
   var hub = api.ContentHub;
   var transferState = hub.ContentTransfer.State;
   function _importRequested(transfer) {
   };
   hub.onImportRequested(_importRequested);
   </code></pre>

onShareRequested( callback )

.. raw:: html

   <p>

Sets a handler that is to be called when the current application is the
target of an share request.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer)>

.. raw:: html

   <p>

Function when one requests a resource to be shared. The corresponding
ContentTransfer is provided as a parameter.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
   var hub = api.ContentHub;
   var transferState = hub.ContentTransfer.State;
   function _shareRequested(transfer) {
   };
   hub.onShareRequested(_shareRequested);
   </code></pre>

ContentHandler <String> (static)

.. raw:: html

   <p>

ContentHandler is an enumeration of well known content handlers.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <p>

Source

.. raw:: html

   </p>

.. raw:: html

   <p>

Destination

.. raw:: html

   </p>

.. raw:: html

   <p>

Share

.. raw:: html

   </p>

ContentScope <String> (static)

.. raw:: html

   <p>

ContentScope is an enumeration of well known scope types.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <p>

System

.. raw:: html

   </p>

.. raw:: html

   <p>

User

.. raw:: html

   </p>

.. raw:: html

   <p>

App

.. raw:: html

   </p>

ContentTransfer.Direction <String> (static)

.. raw:: html

   <p>

ContentTransfer.Direction is an enumeration of the directions of a given
ContentTransfer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <p>

Import

.. raw:: html

   </p>

.. raw:: html

   <p>

Export

.. raw:: html

   </p>

.. raw:: html

   <p>

Share

.. raw:: html

   </p>

ContentTransfer.SelectionType <String> (static)

.. raw:: html

   <p>

ContentTransfer.SelectionType is an enumeration of the directions of a
given ContentTransfer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <p>

Single: Transfer should contain a single item

.. raw:: html

   </p>

.. raw:: html

   <p>

Multiple: Transfer can contain multiple items

.. raw:: html

   </p>

ContentTransfer.State <String> (static)

.. raw:: html

   <p>

ContentTransfer.State is an enumeration of the state of a given ongoing
ContentTransfer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <p>

Created: Transfer created, waiting to be initiated.

.. raw:: html

   </p>

.. raw:: html

   <p>

Initiated: Transfer has been initiated.

.. raw:: html

   </p>

.. raw:: html

   <p>

InProgress: Transfer is in progress.

.. raw:: html

   </p>

.. raw:: html

   <p>

Charged: Transfer is charged with items and ready to be collected.

.. raw:: html

   </p>

.. raw:: html

   <p>

Collected: Items in the transfer have been collected.

.. raw:: html

   </p>

.. raw:: html

   <p>

Aborted: Transfer has been aborted.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finalized: Transfer has been finished and cleaned up.

.. raw:: html

   </p>

.. raw:: html

   <p>

Downloaded: Download specified by downloadId has completed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Downloading: Transfer is downloading item specified by downloadId.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <p>

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

.. raw:: html

   </p>

.. raw:: html

   <p>

var transferState = hub.ContentTransfer.State; var pictureContentType =
hub.ContentType.Pictures;

.. raw:: html

   </p>

.. raw:: html

   <p>

hub.importContentForPeer( pictureContentType, peer, function(transfer) {
hub.defaultStoreForType(pictureContentType, function(store) {
transfer.setStore(store, function() { transfer.start(function(state) {
if (transferState.Aborted === state) { [...] } [...] }); }); }); });

.. raw:: html

   </p>

ContentType <String> (static)

.. raw:: html

   <p>

ContentType is an enumeration of well known content types.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="code prettyprint"><code>Pictures
   Documents
   Music
   Contacts
   Videos
   Links</code></pre>

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <p>

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

.. raw:: html

   </p>

.. raw:: html

   <p>

var pictureContentType = hub.ContentType.Pictures;

.. raw:: html

   </p>
