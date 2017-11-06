.. _sdk_qtquick_qt_quick_demo_-_photo_viewer:

QtQuick Qt Quick Demo - Photo Viewer
====================================



*Photo Viewer* demonstrates the following `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  features:

-  Using custom types to create screens and screen controls.
-  Using Qt Quick Controls to create an application window.
-  Using the Package type with a DelegateModel to provide delegates with a shared context to multiple views.
-  Using XML list models to download Flickr feeds.
-  Using the :ref:`Flipable <sdk_qtquick_flipable>` type to create labels with different text on the front and back.
-  Using the :ref:`PathView <sdk_qtquick_pathview>`, :ref:`Path <sdk_qtquick_path>`, :ref:`PathAttribute <sdk_qtquick_pathattribute>`, and :ref:`PathLine <sdk_qtquick_pathline>` types to lay out photos on a path.
-  Providing feedback to users while data is loading.
-  Localizing applications.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

In the Photo Viewer app, we use the following custom types that are each defined in a separate .qml file:

-  ``AlbumDelegate.qml``
-  ``BusyIndicator.qml``
-  ``Button.qml``
-  ``EditableButton.qml``
-  ``PhotoDelegate.qml``
-  ``ProgressBar.qml``
-  ``RssModel.qml``
-  ``Tag.qml``

To use the custom types, we add an import statement to the main QML file, main.qml, that imports the folder called ``PhotoViewerCore`` where the types are located:

.. code:: qml

    import "PhotoViewerCore"

In main.qml, we use the ApplicationWindow Qt Quick Control to create the app main window:

.. code:: qml

    ApplicationWindow {
        id: mainWindow
        visible: true

We use a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  type with ListElement types to display photo albums:

.. code:: qml

        ListModel {
            id: photosModel
            ListElement { tag: "Flowers" }
            ListElement { tag: "Wildlife" }
            ListElement { tag: "Prague" }
        }

List elements are defined like other QML types except that they contain a collection of *role* definitions instead of properties. Roles both define how the data is accessed and include the data itself. For each list element, we use the ``tag`` role to specify the photos to download.

A DelegateModel type is used together with the Package type to provide delegates to multiple views. The ``model`` property holds the model providing data for the delegate model and the ``delegate`` property specifies the template defining each item instantiated by a view:

.. code:: qml

        DelegateModel { id: albumVisualModel; model: photosModel; delegate: AlbumDelegate {} }

We use a `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  type to lay out the albums as a grid:

.. code:: qml

        GridView {
            id: albumView; width: parent.width; height: parent.height; cellWidth: 210; cellHeight: 220
            model: albumVisualModel.parts.album; visible: albumsShade.opacity != 1.0
        }

The ``model`` property references the package name ``album`` that we specify in AlbumDelegate.qml. We use the Package type to allow the photos to move between different views. The Package contains the named items ``browser``, ``fullscreen``, and ``album``:

.. code:: qml

        Package {
            Item {
                Package.name: 'browser'
                GridView {
                    id: photosGridView; model: visualModel.parts.grid; width: mainWindow.width; height: mainWindow.height - 21
                    x: 0; y: 21; cellWidth: 160; cellHeight: 153; interactive: false
                    onCurrentIndexChanged: photosListView.positionViewAtIndex(currentIndex, ListView.Contain)
                }
            }
            Item {
                Package.name: 'fullscreen'
                ListView {
                    id: photosListView; model: visualModel.parts.list; orientation: Qt.Horizontal
                    width: mainWindow.width; height: mainWindow.height; interactive: false
                    onCurrentIndexChanged: photosGridView.positionViewAtIndex(currentIndex, GridView.Contain)
                    highlightRangeMode: ListView.StrictlyEnforceRange; snapMode: ListView.SnapOneItem
                }
            }
            Item {
                Package.name: 'album'
                id: albumWrapper; width: 210; height: 220

The named items are used as the delegates by the views that reference the special DelegateModel::parts property to select the model that provides the chosen delegate.

We use a :ref:`ListView <sdk_qtquick_listview>` type to lay out albums in other views:

.. code:: qml

        ListView { anchors.fill: parent; model: albumVisualModel.parts.browser; interactive: false }
        ListView { anchors.fill: parent; model: albumVisualModel.parts.fullscreen; interactive: false }

We use the PhotoDelegate custom type that is specified in PhotoDelegate.qml to display photos. We use a Package type to lay out the photos either in a stack, list, or a grid:

.. code:: qml

    Package {
        Item { id: stackItem; Package.name: 'stack'; width: 160; height: 153; z: stackItem.PathView.z }
        Item { id: listItem; Package.name: 'list'; width: mainWindow.width + 40; height: 153 }
        Item { id: gridItem; Package.name: 'grid'; width: 160; height: 153 }

The photos are rotated at random angles by using the ``Math.random()`` JavaScript method:

.. code:: qml

        Item {
            width: 160; height: 153
            Item {
                id: photoWrapper
                property double randomAngle: Math.random() * (2 * 6 + 1) - 6
                property double randomAngle2: Math.random() * (2 * 6 + 1) - 6
                x: 0; y: 0; width: 140; height: 133
                z: stackItem.PathView.z; rotation: photoWrapper.randomAngle

We use a `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  type to create borders for the images:

.. code:: qml

                BorderImage {
                    anchors {
                        fill: originalImage.status == Image.Ready ? border : placeHolder
                        leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8
                    }
                    source: 'images/box-shadow.png'
                    border.left: 10; border.top: 10; border.right: 10; border.bottom: 10
                }

In AlbumDelegate.qml, we use the DelegateModel to provide the PhotoDelegate delegate to the RssModel model:

.. code:: qml

                DelegateModel {
                    id: visualModel; delegate: PhotoDelegate { }
                    model: RssModel { id: rssModel; tags: tag }
                }

In RssModel.qml, we use an `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  type as a data source for Package objects to download photos from the selected feeds:

.. code:: qml

    import QtQuick.XmlListModel 2.0
    XmlListModel {
        property string tags : ""
        function encodeTags(x) { return encodeURIComponent(x.replace(' ',',')); }

We use the ``tags`` custom property to specify which photos to download. The ``encodeTags`` custom function uses the ``encodeURIComponent`` JavaScript method to ensure that the requests to the server are correctly formatted.

We use the ``source`` property to fetch photos that have the specified tags attached from public Flickr feeds:

.. code:: qml

        source: "http://sdk.flickr.com/services/feeds/photos_public.gne?"+(tags ? "tags="+encodeTags(tags)+"&" : "")
        query: "/feed/entry"
        namespaceDeclarations: "declare default element namespace 'http://www.w3.org/2005/Atom';"

The ``query`` property specifies that the `XmlListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#xmllistmodel>`_  generates a model item for each feed entry.

The ``namespaceDeclarations`` property specifies that the requested document uses the namespace ``http://www.w3.org/2005/Atom``, which is declared as the default namespace.

We use the `XmlRole </sdk/apps/qml/QtQuick/XmlListModel.XmlRole/>`_  type to specify the model item attributes. Each model item has the ``title``, ``content``, and ``hq`` attributes that match the values of the corresponding feed entry:

.. code:: qml

        XmlRole { name: "title"; query: "title/string()" }
        XmlRole { name: "content"; query: "content/string()" }
        XmlRole { name: "hq"; query: "link[@rel='enclosure']/@href/string()" }

When users select the **Edit** button, the album labels are flipped from their front side to their back side and the text on them changes from album name to **Remove**.

In AlbumDelegate.qml, we use the Tag custom type to specify the text to display on the front and back sides of album labels:

.. code:: qml

                Tag {
                    anchors { horizontalCenter: parent.horizontalCenter; bottom: parent.bottom; bottomMargin: 10 }
                    frontLabel: tag; backLabel: qsTr("Remove"); flipped: mainWindow.editMode
                    onTagChanged: rssModel.tags = tag
                    onBackClicked: if (mainWindow.editMode) photosModel.remove(index);
                }

The ``onTagChanged`` signal handler is used to change the tag based on which the model is populated. The ``onBackClicked`` signal handler is used to remove the album.

In Tag.qml, we use a :ref:`Flipable <sdk_qtquick_flipable>` type with custom properties and signals to create the labels:

.. code:: qml

    Flipable {
        id: flipable
        property alias frontLabel: frontButton.label
        property alias backLabel: backButton.label
        property int angle: 0
        property int randomAngle: Math.random() * (2 * 6 + 1) - 6
        property bool flipped: false
        signal frontClicked
        signal backClicked
        signal tagChanged(string tag)

The ``front`` property holds the EditableButton custom type that enables users to edit the label text:

.. code:: qml

        front: EditableButton {
            id: frontButton; rotation: flipable.randomAngle
            anchors { centerIn: parent; verticalCenterOffset: -20 }
            onClicked: flipable.frontClicked()
            onLabelChanged: flipable.tagChanged(label)
        }

The ``back`` property holds the ``Button`` custom type that is used to remove the album:

.. code:: qml

        back: Button {
            id: backButton; tint: "red"; rotation: flipable.randomAngle
            anchors { centerIn: parent; verticalCenterOffset: -20 }
            onClicked: flipable.backClicked()
        }

In AlbumDelegate.qml, we use a :ref:`PathView <sdk_qtquick_pathview>` type to lay out the photos provided by the ``visualModel.parts.stack`` model on a path that has the form of a stack:

.. code:: qml

                PathView {
                    id: photosPathView; model: visualModel.parts.stack; pathItemCount: 5
                    visible: !busyIndicator.visible
                    anchors.centerIn: parent; anchors.verticalCenterOffset: -30
                    path: Path {
                        PathAttribute { name: 'z'; value: 9999.0 }
                        PathLine { x: 1; y: 1 }
                        PathAttribute { name: 'z'; value: 0.0 }
                    }
                }

The ``path`` property holds the :ref:`Path <sdk_qtquick_path>` type that defines the path used by the :ref:`PathView <sdk_qtquick_pathview>`. The :ref:`PathAttribute <sdk_qtquick_pathattribute>` types are used to set a range of ``0`` to ``9999`` for the ``z`` attribute. This way, the path creates a stack of album photos. Because each PhotoDelegate is slightly rotated at a random angle, this results in a realistic-looking stack of photos.

We use a busy indicator and a progress bar to indicate activity while Flickr feeds and photos are being loaded.

In AlbumDelegate.qml, we use the ``BusyIndicator`` custom type and the ``on`` custom property to display a rotating image while the Flickr feed is being loaded:

.. code:: qml

                BusyIndicator {
                    id: busyIndicator
                    anchors { centerIn: parent; verticalCenterOffset: -20 }
                    on: rssModel.status != XmlListModel.Ready
                }

In PhotoDelegate.qml, we use them to indicate activity while a photo is being loaded:

.. code:: qml

                BusyIndicator { anchors.centerIn: parent; on: originalImage.status != Image.Ready }

We define the ``BusyIndicator`` type in ``BusyIndicator.qml``. We use an `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type to display an image and apply a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to its ``rotation`` property to rotate the image in an infinite loop:

.. code:: qml

    Image {
        id: container
        property bool on: false
        source: "images/busy.png"; visible: container.on
        NumberAnimation on rotation { running: container.on; from: 0; to: 360; loops: Animation.Infinite; duration: 1200 }
    }

In your apps, you can also use the BusyIndicator type from the Qt Quick Controls module.

In main.qml, we use the ``ProgressBar`` custom type to indicate progress while a high quality version of a photo is being opened on full screen:

.. code:: qml

        ProgressBar {
            progress: mainWindow.downloadProgress; width: parent.width; height: 4
            anchors.bottom: parent.bottom; opacity: mainWindow.imageLoading; visible: opacity != 0.0
        }

We define the ``ProgressBar`` type in ``ProgressBar.qml``. We use a :ref:`Rectangle <sdk_qtquick_rectangle>` type to create the progress bar and apply a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to its ``opacity`` property to change the color of the bar from black to white as data loading proceeds:

.. code:: qml

    Item {
        id: container
        property real progress: 0
        Behavior on opacity { NumberAnimation { duration: 600 } }
        Rectangle { anchors.fill: parent; color: "black"; opacity: 0.5 }
        Rectangle {
            id: fill; color: "white"; height: container.height
            width: container.width * container.progress
        }
    }

In your apps, you can also use the ProgressBar type from the Qt Quick Controls module.

The example application is translated into German and French. The translated strings are loaded at runtime according to the current locale.

We use a `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_  type in main.qml to position buttons for adding and editing albums and exiting the application:

.. code:: qml

        Column {
            spacing: 20; anchors { bottom: parent.bottom; right: parent.right; rightMargin: 20; bottomMargin: 20 }
            Button {
                id: newButton; label: qsTr("Add"); rotation: 3
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    mainWindow.editMode = false
                    photosModel.append( { tag: "" } )
                    albumView.positionViewAtIndex(albumView.count - 1, GridView.Contain)
                }
            }
            Button {
                id: deleteButton; label: qsTr("Edit"); rotation: -2;
                onClicked: mainWindow.editMode = !mainWindow.editMode
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                id: quitButton; label: qsTr("Quit"); rotation: -2;
                onClicked: Qt.quit()
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

We use the qsTr() command to mark the button labels translatable.

We use the lupdate tool to generate the translation source files and the lrelease tool to convert the translated strings to the QM files used by the application at runtime. These files are stored in the ``i18n`` directory.

To make the application aware of the translations, we add code to the ``main()`` function in the main.cpp file. The code creates a QTranslator object, loads a translation according to the current locale at runtime, and installs the translator object into the application:

.. code:: qml

    int main(int argc, char *argv[])
    {
        QApplication app(argc, argv);
        QTranslator qtTranslator;
        qtTranslator.load("qml_" + QLocale::system().name(), ":/i18n/");
        app.installTranslator(&qtTranslator);

Files:

-  demos/photoviewer/main.qml
-  demos/photoviewer/PhotoViewerCore/AlbumDelegate.qml
-  demos/photoviewer/PhotoViewerCore/BusyIndicator.qml
-  demos/photoviewer/PhotoViewerCore/Button.qml
-  demos/photoviewer/PhotoViewerCore/EditableButton.qml
-  demos/photoviewer/PhotoViewerCore/PhotoDelegate.qml
-  demos/photoviewer/PhotoViewerCore/ProgressBar.qml
-  demos/photoviewer/PhotoViewerCore/RssModel.qml
-  demos/photoviewer/PhotoViewerCore/Tag.qml
-  demos/photoviewer/PhotoViewerCore/script/script.js
-  demos/photoviewer/i18n/qml\_de.qm
-  demos/photoviewer/i18n/qml\_fr.qm
-  demos/photoviewer/main.cpp
-  demos/photoviewer/photoviewer.pro
-  demos/photoviewer/qml.qrc

**See also** QML Applications.

