.. _contenthub:

The content hub - tips and tricks
=================================

.. figure:: /_static/images/appdev/guides/contenthubimages/01.png
        :align: center

        Content Hub Share Page

On Ubuntu Touch the apps are confined. The way of sharing files between them is through the Content Hub, a part of the system that takes care of file import, export and sharing.

Different ways of sharing the content
-------------------------------------

As we can see in the `Content Hub documentation <https://api-docs.ubports.com/sdk/apps/qml/Ubuntu.Content/ContentHandler.html#detailed-description>`_, there are several ways of handling the file to be shared:

- ``ContentHandler.Source`` (The selected app will provide a file to be imported)
- ``ContentHandler.Destination`` (The selected app will be the destination for the exported file)
- ``ContentHandler.Share`` (The selected app will be the destination for the exported file, which will then be shared externally)

.. rst-class:: invert-grayscale

.. figure:: /_static/images/appdev/guides/contenthubimages/12.svg
        :align: center

Importing
^^^^^^^^^

.. figure:: /_static/images/appdev/guides/contenthubimages/02.png
        :align: center

        Webapp Creator on the OpenStore

Looking into the code of Webapp Creator, we’ll find the code to import an image to be used as icon. Tapping on the place holder will open the Content Hub that will let us choose from where to import the image (`see the Webapp Creator source code <https://gitlab.com/cibersheep/webapp-creator/blob/master/webapp-creator/app/ImportPage.qml#L38>`_)

.. code:: qml

        ContentPeerPicker {
            anchors { fill: parent; topMargin: picker.header.height }
            visible: parent.visible
            showTitle: false
            contentType: picker.contentType //ContentType.Pictures
            handler: picker.handler //ContentHandler.Source

``ContentPeerPicker`` is the element that shows the apps.

.. code:: qml

        var importPage = mainPageStack.push(Qt.resolvedUrl("ImportPage.qml"),{"contentType": ContentType.Pictures, "handler": ContentHandler.Source})

``contentType`` is passed in `Main.qml <https://gitlab.com/cibersheep/webapp-creator/blob/master/webapp-creator/app/Main.qml#L118>`_ as ContentType.Pictures. So, we will only see apps from which we only can import images. ``handler`` is passed in the same line as ContentHandler.Source. As we want to import an image from the app selected in the Content Hub.

Exporting
^^^^^^^^^

.. figure:: /_static/images/appdev/guides/contenthubimages/04.png
        :align: center

        Gelek in the OpenStore

In Gelek, we are going to end with some saved games that we want to save in our device or share with ourselves (in Telegram and then save them to our computer).

.. image:: /_static/images/appdev/guides/contenthubimages/05.png

Tapping on the download icon we will get a Content Hub to *save* the game file (which is actually an export).

The game file is a file of type ``glksave``. We will tell Content Hub that we are sending a file of type ``All`` (`see the Install Page code <https://gitlab.com/cibersheep/gelek/blob/master/app/InstallPage.qml#L38>`_).

.. code:: qml

        ContentPeerPicker {
            anchors { fill: parent; topMargin: picker.header.height }
            visible: parent.visible
            showTitle: false
            contentType: ContentType.All
            handler: ContentHandler.Destination

            onPeerSelected: {

``contentType`` is ``ContentType.All``, so we will only see apps which are able to receive unmarked file types. ``handler`` is ``ContentHandler.Destination``, so the app selected should store the saved game.

Tapping on the File Manager we will save the saved game in the folder we choose.

Sharing
^^^^^^^

Similarly, tapping on the share icon will allow us to send the saved game through Telegram to ourselves (`see the Webapp Creator Import Page source code <https://gitlab.com/cibersheep/webapp-creator/blob/master/webapp-creator/app/ImportPage.qml#L38>`_). Sharing is similar to exporting, except the destination app may share the content externally (for example, over Telegram or text message).

.. code:: qml

        ContentPeerPicker {
            anchors { fill: parent; topMargin: picker.header.height }
            visible: parent.visible
            showTitle: false
            contentType: picker.contentType //ContentType.Pictures
            handler: picker.handler //ContentHandler.Source

            onPeerSelected: {

The only difference between this and the previous code is that ``handler`` is ``ContentHandler.Share``.

Wait a minute. Why the different apps?
--------------------------------------

.. figure:: /_static/images/appdev/guides/contenthubimages/08.png
        :align: center

        Content Hub: Export vs Share

Each developer can decide the rules each app would follow in relation to the Content Hub. Why the OpenStore is shown as the destination of an export?

Let’s check its manifest.json

.. code:: javascript

        "hooks": {
            "openstore": {
                "apparmor": "openstore/openstore.apparmor",
                "desktop": "openstore/openstore.desktop",
                "urls": "openstore/openstore.url-dispatcher",
                "content-hub": "openstore/openstore-contenthub.json"
            }
        },

The above code defines that the hooks for the app named ``"openstore"`` in relation to the ``"content-hub"`` should follow the rules defined in ``openstore-contenthub.json``

.. code:: javascript

        {
            "destination": [
                "all"
            ]
        }

This means, the OpenStore will be the destination for *all* ``ContentTypes``.

What about uMatriks? Let’s see its ``content-hub.json``

.. code:: javascript

        {
            "destination": [
                "pictures",
                "documents",
                "videos",
                "contacts",
                "music"
            ],
            "share": [
                "pictures",
                "documents",
                "videos",
                "contacts",
                "music"
            ],
            "source": [
                "pictures",
                "documents",
                "videos",
                "contacts",
                "music"
            ]
        }

So, with this example, uMatriks will be able to be the destination, source and share app for all kinds of ``ContentType``.
What about the other hooks in the ``manifest.json``? That is discussed in the next guide.

