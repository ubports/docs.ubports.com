Plays animations stored as a series of images

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Image </sdk/apps/qml/QtQuick/Image/ |
|                                      | >`__                                 |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`currentFrame </sdk/apps/qml/QtQuick/AnimatedImage#currentFrame-prop>`__****
   : int
-  ****`frameCount </sdk/apps/qml/QtQuick/AnimatedImage#frameCount-prop>`__****
   : int
-  ****`paused </sdk/apps/qml/QtQuick/AnimatedImage#paused-prop>`__****
   : bool
-  ****`playing </sdk/apps/qml/QtQuick/AnimatedImage#playing-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/QtQuick/AnimatedImage#source-prop>`__****
   : url

Detailed Description
--------------------

The `AnimatedImage </sdk/apps/qml/QtQuick/AnimatedImage/>`__ type
extends the features of the
`Image </sdk/apps/qml/QtQuick/imageelements#image>`__ type, providing a
way to play animations stored as images containing a series of frames,
such as those stored in GIF files.

Information about the current frame and total length of the animation
can be obtained using the
`currentFrame </sdk/apps/qml/QtQuick/AnimatedImage#currentFrame-prop>`__
and `frameCount </sdk/apps/qml/QtQuick/AnimatedImage#frameCount-prop>`__
properties. You can start, pause and stop the animation by changing the
values of the
`playing </sdk/apps/qml/QtQuick/AnimatedImage#playing-prop>`__ and
`paused </sdk/apps/qml/QtQuick/AnimatedImage#paused-prop>`__ properties.

The full list of supported formats can be determined with
QMovie::supportedFormats().

Example Usage
-------------

|image0|

The following QML shows how to display an animated image and obtain
information about its state, such as the current frame and total number
of frames. The result is an animated image with a simple progress
indicator underneath it.

**Note**: Unlike images, animated images are not cached or shared
internally.

| 

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: animation.width; height: animation.height + 8
        AnimatedImage { id: animation; source: "animation.gif" }
        Rectangle {
            property int frames: animation.frameCount
            width: 4; height: 8
            x: (animation.width - width) * animation.currentFrame / frames
            y: animation.height
            color: "red"
        }
    }

**See also**
`BorderImage </sdk/apps/qml/QtQuick/imageelements#borderimage>`__ and
`Image </sdk/apps/qml/QtQuick/imageelements#image>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ currentFrame : int                                              |
+--------------------------------------------------------------------------+

currentFrame is the frame that is currently visible. By monitoring this
property for changes, you can animate other items at the same time as
the image.

`frameCount </sdk/apps/qml/QtQuick/AnimatedImage#frameCount-prop>`__ is
the number of frames in the animation. For some animation formats,
`frameCount </sdk/apps/qml/QtQuick/AnimatedImage#frameCount-prop>`__ is
unknown and has a value of zero.

| 

+--------------------------------------------------------------------------+
|        \ frameCount : int                                                |
+--------------------------------------------------------------------------+

`currentFrame </sdk/apps/qml/QtQuick/AnimatedImage#currentFrame-prop>`__
is the frame that is currently visible. By monitoring this property for
changes, you can animate other items at the same time as the image.

frameCount is the number of frames in the animation. For some animation
formats, frameCount is unknown and has a value of zero.

| 

+--------------------------------------------------------------------------+
|        \ paused : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the animated image is paused.

By default, this property is false. Set it to true when you want to
pause the animation.

| 

+--------------------------------------------------------------------------+
|        \ playing : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the animated image is playing.

By default, this property is true, meaning that the animation will start
playing immediately.

**Note**: this property is affected by changes to the actual playing
state of `AnimatedImage </sdk/apps/qml/QtQuick/AnimatedImage/>`__. If
non-animated images are used, *playing* will need to be manually set to
*true* in order to animate following images.

.. code:: qml

    AnimatedImage {
        onStatusChanged: playing = (status == AnimatedImage.Ready)
    }

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

This property holds the URL that refers to the source image.

`AnimatedImage </sdk/apps/qml/QtQuick/AnimatedImage/>`__ can handle any
image format supported by Qt, loaded from any URL scheme supported by
Qt.

**See also** QQuickImageProvider.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/AnimatedImage/images/animatedimageitem.gif

