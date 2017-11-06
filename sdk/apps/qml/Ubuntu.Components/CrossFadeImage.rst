.. _sdk_ubuntu_components_crossfadeimage:

Ubuntu.Components CrossFadeImage
================================

An Image like component which smoothly fades when its source is updated.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  :ref:`fadeDuration <sdk_ubuntu_components_crossfadeimage_fadeDuration>` : int
-  :ref:`fadeStyle <sdk_ubuntu_components_crossfadeimage_fadeStyle>` : string
-  :ref:`fillMode <sdk_ubuntu_components_crossfadeimage_fillMode>` : enumeration
-  :ref:`running <sdk_ubuntu_components_crossfadeimage_running>` : bool
-  :ref:`source <sdk_ubuntu_components_crossfadeimage_source>` : url
-  :ref:`sourceSize <sdk_ubuntu_components_crossfadeimage_sourceSize>` : size
-  :ref:`status <sdk_ubuntu_components_crossfadeimage_status>` : enumeration

Detailed Description
--------------------

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    CrossFadeImage {
        width: units.gu(100)
        height: units.gu(75)
        source: "http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png"
        fadeDuration: 1000
        MouseArea {
            anchors.fill: parent
            onClicked: parent.source = "http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png"
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_crossfadeimage_fadeDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fadeDuration : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The time over which to fade between images. Defaults to ``UbuntuAnimation.FastDuration``.

**See also** :ref:`UbuntuAnimation <sdk_ubuntu_components_ubuntuanimation>`.

.. _sdk_ubuntu_components_crossfadeimage_fadeStyle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fadeStyle : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Style of the fade effect

Defaults to ``overlay``

-  overlay - the new fading image overlays the current one
-  cross - the current one fades out while the new image fades in

This QML property was introduced in Ubuntu.Components 1.1.

.. _sdk_ubuntu_components_crossfadeimage_fillMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fillMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defaults to ``Image.PreserveAspectFit``

-  Image.Stretch - the image is scaled to fit
-  Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping
-  Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary
-  Image.Tile - the image is duplicated horizontally and vertically
-  Image.TileVertically - the image is stretched horizontally and tiled vertically
-  Image.TileHorizontally - the image is stretched vertically and tiled horizontally
-  Image.Pad - the image is not transformed

.. _sdk_ubuntu_components_crossfadeimage_running:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| running : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the animation is running

.. _sdk_ubuntu_components_crossfadeimage_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The image being displayed. Can be a URL to any image format supported by Qt.

.. _sdk_ubuntu_components_crossfadeimage_sourceSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceSize : size                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The actual width and height of the loaded image This property holds the actual width and height of the loaded image.

Unlike the width and height properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary.

Note: Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.

.. _sdk_ubuntu_components_crossfadeimage_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of image loading. It can be one of:

-  Image.Null - no image has been set
-  Image.Ready - the image has been loaded
-  Image.Loading - the image is currently being loaded
-  Image.Error - an error occurred while loading the image

