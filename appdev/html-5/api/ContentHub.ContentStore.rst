ContentHub.ContentStore
=======================

.. raw:: html

   <p>

ContentStore is an object returned by the ContentHub.

.. raw:: html

   </p>

.. raw:: html

   <p>

It represents a location where the resources imported or exported from a
peer during a transfer operation are to be either saved or found.

.. raw:: html

   </p>

ContentStore( )

.. raw:: html

   <h5>

Example

.. raw:: html

   </h5>

.. raw:: html

   <pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
   var hub = api.ContentHub;
   var pictureContentType = hub.ContentType.Pictures;
   hub.defaultStoreForType(pictureContentType, function(store) {
   [do something with the store]
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

ContentScope scope( callback )

.. raw:: html

   <p>

Retrieves the current scope.

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

callback <Function(ContentScope)>

.. raw:: html

   <p>

(optional)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

Returns: <ContentScope>

.. raw:: html

   <p>

current scope

.. raw:: html

   </p>

setScope( scope, callback )

.. raw:: html

   <p>

Sets the current scope.

.. raw:: html

   </p>

Parameters:

.. raw:: html

   <ul class="params">

.. raw:: html

   <li>

scope <ContentScope>

.. raw:: html

   </li>

.. raw:: html

   <li>

callback <Function()>

.. raw:: html

   <p>

called when the scope has been updated

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

String uri( callback )

.. raw:: html

   <p>

Retrieves the uri of the associated store.

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

current uri

.. raw:: html

   </p>
