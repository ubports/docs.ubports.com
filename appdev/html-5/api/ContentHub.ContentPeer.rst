ContentHub.ContentPeer
======================

.. raw:: html

   <p>

ContentPeer is an object returned by the ContentHub. It represents a
remote peer that can be used in a request to import, export or share
content.

.. raw:: html

   </p>

ContentPeer( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
   var hub = api.ContentHub;
   var pictureContentType = hub.ContentType.Pictures;
   hub.defaultSourceForType(
   pictureContentType
   , function(peer) {
   [do something with the peer]
   });</code></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Methods

.. raw:: html

   </li>

.. raw:: html

   </ul>

String appId( callback )

.. raw:: html

   <p>

Retrieves the app Id of the associated peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <String>

.. raw:: html

   <p>

Application Id for this peer

.. raw:: html

   </p>

String contentType( callback )

.. raw:: html

   <p>

Retrieves the specific ContentType for this peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <String>

.. raw:: html

   <p>

ContentType for this peer

.. raw:: html

   </p>

destroy( )

.. raw:: html

   <p>

Destroys the remote object. This proxy object is not valid anymore.

.. raw:: html

   </p>

String handler( callback )

.. raw:: html

   <p>

Retrieves the specific ContentHandler for this peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <String>

.. raw:: html

   <p>

ContentHandler for this peer

.. raw:: html

   </p>

isDefaultPeer( callback )

.. raw:: html

   <p>

Returns true if the peer is a default one, false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(Bool)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

name( callback )

.. raw:: html

   <p>

Retrieves the name of the associated peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

request( callback )

.. raw:: html

   <p>

Request to exchange content with this ContentPeer.

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

Called with the resulting content transfer

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

requestForStore( store, callback )

.. raw:: html

   <p>

Request to import content from this ContentPeer and use a ContentStore
for permanent storage.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

store <ContentStore>

.. raw:: html

   <p>

Store used as a permanent storage

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function(ContentTransfer)>

.. raw:: html

   <p>

Called with the resulting content transfer

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

String selectionType( callback )

.. raw:: html

   <p>

Retrieves the specific SelectionType for this peer.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the callback parameter is not set, the current "local" value is
retrieved.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(String)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <String>

.. raw:: html

   <p>

ContentTransfer.SelectionType for this peer

.. raw:: html

   </p>

setAppId( appId, callback )

.. raw:: html

   <p>

Sets the app Id of the associated peer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

appId <String>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the appId has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setContentType( contentType, callback )

.. raw:: html

   <p>

Sets specific ContentType for this peer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

contentType <ContentType>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the content type has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setHandler( handler, callback )

.. raw:: html

   <p>

Sets specific ContentHandler for this peer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

handler <ContentHandler>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the appId has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setSelectionType( selectionType, callback )

.. raw:: html

   <p>

Sets specific SelectionType for this peer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

selectionType <ContentTransfer.SelectionType>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the content type has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>
