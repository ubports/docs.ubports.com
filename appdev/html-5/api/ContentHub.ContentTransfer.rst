ContentHub.ContentTransfer
==========================

.. raw:: html

   <p>

ContentTransfer is an object created by the ContentHub to and allows one
to properly setup and manage a data transfer between two peers.

.. raw:: html

   </p>

ContentTransfer( )

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
   hub.importContentForPeer(
   pictureContentType,
   peer,
   function(transfer) {
   [setup the transfer options and store]
   transfer.start(function(state) { [...] });
   });
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

destroy( )

.. raw:: html

   <p>

Destroys the remote object. This proxy object is not valid anymore.

.. raw:: html

   </p>

direction( callback )

.. raw:: html

   <p>

Retrieves the current transfer direction.

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

callback <Function(ContentTransfer.Direction)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

finalize( )

.. raw:: html

   <p>

Sets State to ContentTransfer.Finalized and cleans up temporary files.

.. raw:: html

   </p>

items( callback )

.. raw:: html

   <p>

Retrieves the list of items associated with the ContentTransfer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function( Objectname: , url:>

.. raw:: html

   <p>

} )}

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

onStateChanged( callback )

.. raw:: html

   <p>

Notifies the listener when the state of the transfer changes.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer.State)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

selectionType( callback )

.. raw:: html

   <p>

Retrieves the current selection type.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer.SelectionType)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setDirection( direction, callback )

.. raw:: html

   <p>

Sets the transfer direction (import or export).

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

direction <ContentTransfer.Direction>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the state has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setItems( items, callback )

.. raw:: html

   <p>

Sets the list of items for the associated ContentTransfer (used when
exporting).

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

items <Array of Objectname: String, url: String>

.. raw:: html

   <p>

}

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the state has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setSelectionType( selectionType, callback )

.. raw:: html

   <p>

Sets the selection type (single or multiple).

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

called when the state has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setState( state, callback )

.. raw:: html

   <p>

Sets the state of the transfer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

state <ContentTransfer.State>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the state has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

setStore( store, callback )

.. raw:: html

   <p>

Sets the current store for the ContentTransfer.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

store <ContentStore>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

(optional) called when the store has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

start( callback )

.. raw:: html

   <p>

Starts a transfer

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

callback <Function(ContentTransfer.State)>

.. raw:: html

   </li>

.. raw:: html

   </ul>

state( callback )

.. raw:: html

   <p>

Retrieves the current state.

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

callback <Function(ContentTransfer.State)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

store( callback )

.. raw:: html

   <p>

Retrieves the current store.

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
