.. _sdk_contenthub_contentstore:

ContentHub ContentStore
=======================


ContentStore is an object returned by the ContentHub.

It represents a location where the resources imported or exported from a peer during a transfer operation are to be either saved or found.

**ContentStore**\ ()

.. code:: html

      var api = external.getUnityObject('1.0');
          var hub = api.ContentHub;

          var pictureContentType = hub.ContentType.Pictures;

          hub.defaultStoreForType(pictureContentType, function(store) {
            [do something with the store]
            });

-  Methods

**destroy**\ ()
Destroys the remote object. This proxy object is not valid anymore.

ContentScope **scope**\ (``callback``)
Retrieves the current scope.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(ContentScope)>**

   (optional)

**Returns:** <ContentScope>
current scope

**setScope**\ (``scope, callback``)
Sets the current scope.

**Parameters:**

- ``scope`` **<ContentScope>**
- ``callback`` **<Function()>**

   called when the scope has been updated

String **uri**\ (``callback``)
Retrieves the uri of the associated store.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**

- ``callback`` **<Function(String)>**

   (optional)

**Returns:** <String>
current uri

