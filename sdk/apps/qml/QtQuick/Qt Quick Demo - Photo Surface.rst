.. _sdk_qtquick_qt_quick_demo_-_photo_surface:

QtQuick Qt Quick Demo - Photo Surface
=====================================



*Photo Surface* demonstrates how to use a :ref:`Repeater <sdk_qtquick_repeater>` with a :ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` and a FileDialog to access images from a folder selected by a user and how to handle dragging, rotation and pinch zooming within the same item using a :ref:`PinchArea <sdk_qtquick_pincharea>` that contains a :ref:`MouseArea <sdk_qtquick_mousearea>`.

All the app code is contained in one QML file, photosurface.qml. Inline JavaScript code is used to place, rotate, and scale images on the photo surface.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

To create the main window for the Photo Surface app, we use the :ref:`Window <sdk_qtquick_window_window>` QML type as the root item. It automatically sets up the window for use with `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  graphical types:

.. code:: qml

    Window {
        id: root
        visible: true
        width: 1024; height: 600
        color: "black"
        property int highestZ: 0
        property real defaultSize: 200
        property var currentFrame: undefined

To use the :ref:`Window <sdk_qtquick_window_window>` type, we must import it:

.. code:: cpp

    import QtQuick.Window 2.1

We use a :ref:`Repeater <sdk_qtquick_repeater>` QML type together with the :ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` to display GIF, JPG, and PNG images located in a folder:

.. code:: qml

        Repeater {
            model: FolderListModel {
                id: folderModel
                objectName: "folderModel"
                showDirs: false
                nameFilters: ["*.png", "*.jpg", "*.gif"]
            }

To use the :ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` type, we must import it:

.. code:: cpp

    import Qt.labs.folderlistmodel 1.0

We use a FileDialog to enable users to select the folder that contains the images:

.. code:: qml

        FileDialog {
            id: fileDialog
            title: "Choose a folder with some images"
            selectFolder: true
            onAccepted: folderModel.folder = fileUrl + "/"
        }

To use the FileDialog type, we must import Qt Quick Dialogs:

.. code:: cpp

    import QtQuick.Dialogs 1.0

We use the ``fileDialog.open()`` function to open the file dialog when the app starts:

.. code:: cpp

    Component.onCompleted: fileDialog.open()

Users can also click the file dialog icon to open the file dialog. We use an `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  QML type to display the icon. Inside the `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  type, we use a :ref:`MouseArea <sdk_qtquick_mousearea>` with the ``onClicked`` signal handler to call the ``fileDialog.open()`` function:

.. code:: qml

        Image {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.margins: 10
            source: "resources/folder.png"
            MouseArea {
                anchors.fill: parent
                anchors.margins: -10
                onClicked: fileDialog.open()
            }
        }

We use a :ref:`Rectangle <sdk_qtquick_rectangle>` as a delegate for a :ref:`Repeater <sdk_qtquick_repeater>` to provide a frame for each image that the :ref:`FolderListModel <sdk_qt_labs_folderlistmodel_folderlistmodel>` finds in the selected folder. We use JavaScript ``Math()`` methods to place the frames randomly on the photo surface and to rotate them at random angles, as well as to scale the images:

.. code:: qml

            Rectangle {
                id: photoFrame
                width: image.width * image.scale + 20
                height: image.height * image.scale + 20
                border.color: "black"
                border.width: 2
                smooth: true
                antialiasing: true
                x: Math.random() * root.width - defaultSize
                y: Math.random() * root.height - defaultSize
                rotation: Math.random() * 13 - 6
                Image {
                    id: image
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: folderModel.folder + fileName
                    scale: defaultSize / Math.max(sourceSize.width, sourceSize.height)
                    antialiasing: true
                }

We use a :ref:`PinchArea <sdk_qtquick_pincharea>` that contains a :ref:`MouseArea <sdk_qtquick_mousearea>` in the photo frames to handle dragging, rotation and pinch zooming of the frame:

.. code:: qml

                PinchArea {
                    anchors.fill: parent
                    pinch.target: photoFrame
                    pinch.minimumRotation: -360
                    pinch.maximumRotation: 360
                    pinch.minimumScale: 0.1
                    pinch.maximumScale: 10
                    onPinchStarted: setFrameColor();

We use the ``pinch`` group property to control how the photo frames react to pinch gestures. The ``pinch.target`` sets ``photoFrame`` as the item to manipulate. The rotation properties specify that the frames can be rotated at all angles and the scale properties specify that they can be scaled between ``0.1`` and ``10``.

In the :ref:`MouseArea <sdk_qtquick_mousearea>`'s ``onPressed`` signal handler, we raise the selected photo frame to the top by increasing the value of its ``z`` property. The root item stores the z value of the top-most frame. The border color of the photo frame is controlled in the ``onEntered`` signal handler to highlight the selected image:

.. code:: qml

                    MouseArea {
                        id: dragArea
                        hoverEnabled: true
                        anchors.fill: parent
                        drag.target: photoFrame
                        onPressed: {
                            photoFrame.z = ++root.highestZ;
                            parent.setFrameColor();
                        }
                        onEntered: parent.setFrameColor();

To enable you to test the example on the desktop, we use the :ref:`MouseArea <sdk_qtquick_mousearea>`'s ``onWheel`` signal handler to simulate pinch gestures by using a mouse:

.. code:: qml

                        onWheel: {
                            if (wheel.modifiers & Qt.ControlModifier) {
                                photoFrame.rotation += wheel.angleDelta.y / 120 * 5;
                                if (Math.abs(photoFrame.rotation) < 4)
                                    photoFrame.rotation = 0;
                            } else {
                                photoFrame.rotation += wheel.angleDelta.x / 120;
                                if (Math.abs(photoFrame.rotation) < 0.6)
                                    photoFrame.rotation = 0;
                                var scaleBefore = image.scale;
                                image.scale += image.scale * wheel.angleDelta.y / 120 / 10;
                                photoFrame.x -= image.width * (image.scale - scaleBefore) / 2.0;
                                photoFrame.y -= image.height * (image.scale - scaleBefore) / 2.0;
                            }
                        }
                    }

The ``onWheel`` signal handler is called in response to mouse wheel gestures. Use the vertical wheel to zoom and Ctrl and the vertical wheel to rotate frames. If the mouse has a horizontal wheel, use it to rotate frames.

Files:

-  demos/photosurface/photosurface.qml
-  demos/photosurface/main.cpp
-  demos/photosurface/photosurface.pro
-  demos/photosurface/photosurface.qmlproject
-  demos/photosurface/photosurface.qrc

**See also** QML Applications.

