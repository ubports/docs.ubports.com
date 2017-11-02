.. _sdk_qtquick_animatedimage:
QtQuick AnimatedImage
=====================

Plays animations stored as a series of images

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Image <sdk_qtquick_image>`     |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`currentFrame <sdk_qtquick_animatedimage_currentFrame-prop>`
   : int
-  :ref:`frameCount <sdk_qtquick_animatedimage_frameCount-prop>` :
   int
-  :ref:`paused <sdk_qtquick_animatedimage_paused-prop>` : bool
-  :ref:`playing <sdk_qtquick_animatedimage_playing-prop>` : bool
-  :ref:`source <sdk_qtquick_animatedimage_source-prop>` : url

Detailed Description
--------------------

The :ref:`AnimatedImage <sdk_qtquick_animatedimage>` type extends the
features of the `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ 
type, providing a way to play animations stored as images containing a
series of frames, such as those stored in GIF files.

Information about the current frame and total length of the animation
can be obtained using the
:ref:`currentFrame <sdk_qtquick_animatedimage#currentFrame-prop>` and
:ref:`frameCount <sdk_qtquick_animatedimage#frameCount-prop>` properties.
You can start, pause and stop the animation by changing the values of
the :ref:`playing <sdk_qtquick_animatedimage#playing-prop>` and
:ref:`paused <sdk_qtquick_animatedimage#paused-prop>` properties.

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
`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  and
`Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_animatedimage_currentFrame-prop:

+--------------------------------------------------------------------------+
|        \ currentFrame : int                                              |
+--------------------------------------------------------------------------+

currentFrame is the frame that is currently visible. By monitoring this
property for changes, you can animate other items at the same time as
the image.

:ref:`frameCount <sdk_qtquick_animatedimage#frameCount-prop>` is the number
of frames in the animation. For some animation formats,
:ref:`frameCount <sdk_qtquick_animatedimage#frameCount-prop>` is unknown
and has a value of zero.

| 

.. _sdk_qtquick_animatedimage_frameCount-prop:

+--------------------------------------------------------------------------+
|        \ frameCount : int                                                |
+--------------------------------------------------------------------------+

:ref:`currentFrame <sdk_qtquick_animatedimage#currentFrame-prop>` is the
frame that is currently visible. By monitoring this property for
changes, you can animate other items at the same time as the image.

frameCount is the number of frames in the animation. For some animation
formats, frameCount is unknown and has a value of zero.

| 

.. _sdk_qtquick_animatedimage_paused-prop:

+--------------------------------------------------------------------------+
|        \ paused : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the animated image is paused.

By default, this property is false. Set it to true when you want to
pause the animation.

| 

.. _sdk_qtquick_animatedimage_playing-prop:

+--------------------------------------------------------------------------+
|        \ playing : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the animated image is playing.

By default, this property is true, meaning that the animation will start
playing immediately.

**Note**: this property is affected by changes to the actual playing
state of :ref:`AnimatedImage <sdk_qtquick_animatedimage>`. If non-animated
images are used, *playing* will need to be manually set to *true* in
order to animate following images.

.. code:: qml

    AnimatedImage {
        onStatusChanged: playing = (status == AnimatedImage.Ready)
    }

| 

.. _sdk_qtquick_animatedimage_source-prop:

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

This property holds the URL that refers to the source image.

:ref:`AnimatedImage <sdk_qtquick_animatedimage>` can handle any image
format supported by Qt, loaded from any URL scheme supported by Qt.

**See also** QQuickImageProvider.

| 

.. |image0| image:: /mediasdk_qtquick_animatedimageimages/animatedimageitem.gif

