.. _sdk_qtquick_sprite:

QtQuick Sprite
==============

Specifies sprite animations

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`duration <sdk_qtquick_sprite_duration>` : int
-  :ref:`durationVariation <sdk_qtquick_sprite_durationVariation>` : int
-  :ref:`frameCount <sdk_qtquick_sprite_frameCount>` : int
-  :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` : int
-  :ref:`frameDurationVariation <sdk_qtquick_sprite_frameDurationVariation>` : int
-  :ref:`frameHeight <sdk_qtquick_sprite_frameHeight>` : int
-  :ref:`frameRate <sdk_qtquick_sprite_frameRate>` : qreal
-  :ref:`frameRateVariation <sdk_qtquick_sprite_frameRateVariation>` : qreal
-  :ref:`frameSync <sdk_qtquick_sprite_frameSync>` : bool
-  :ref:`frameWidth <sdk_qtquick_sprite_frameWidth>` : int
-  :ref:`frameX <sdk_qtquick_sprite_frameX>` : int
-  :ref:`frameY <sdk_qtquick_sprite_frameY>` : int
-  :ref:`name <sdk_qtquick_sprite_name>` : string
-  :ref:`randomStart <sdk_qtquick_sprite_randomStart>` : bool
-  :ref:`reverse <sdk_qtquick_sprite_reverse>` : bool
-  :ref:`source <sdk_qtquick_sprite_source>` : url
-  :ref:`to <sdk_qtquick_sprite_to>` : QVariantMap

Detailed Description
--------------------

QQuickSprite renders sprites of one or more frames and animates them. The sprites can be in the middle of an image file, or split along multiple rows, as long as they form a contiguous line wrapping to the next row of the file from the left edge of the file.

For full details, see the `Sprite Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`_  overview.

Property Documentation
----------------------

.. _sdk_qtquick_sprite_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Duration of the animation. Values below 0 are invalid.

If :ref:`frameRate <sdk_qtquick_sprite_frameRate>` is valid then it will be used to calculate the duration of the frames. If not, and :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` is valid, then :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` will be used. Otherwise duration is used.

.. _sdk_qtquick_sprite_durationVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| durationVariation : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The duration of the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

durationVariation will only take effect if duration is used to calculate the duration of frames.

Default is 0.

.. _sdk_qtquick_sprite_frameCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameCount : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Number of frames in this sprite.

.. _sdk_qtquick_sprite_frameDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameDuration : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Duration of each frame of the animation. Values below 0 are invalid.

If :ref:`frameRate <sdk_qtquick_sprite_frameRate>` is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used. Otherwise duration is used.

.. _sdk_qtquick_sprite_frameDurationVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameDurationVariation : int                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The duration of a frame in the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameDurationVariation will only take effect if :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` is used to calculate the duration of frames.

Default is 0.

.. _sdk_qtquick_sprite_frameHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameHeight : int                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Height of a single frame in this sprite.

.. _sdk_qtquick_sprite_frameRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameRate : qreal                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Frames per second to show in the animation. Values below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of the frames. If not, and :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` is valid , then :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>` will be used. Otherwise duration is used.

.. _sdk_qtquick_sprite_frameRateVariation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameRateVariation : qreal                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The frame rate between animations can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameRateVariation will only take effect if :ref:`frameRate <sdk_qtquick_sprite_frameRate>` is used to calculate the duration of frames.

Default is 0.

.. _sdk_qtquick_sprite_frameSync:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameSync : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, then the animation will have no duration. Instead, the animation will advance one frame each time a frame is rendered to the screen. This synchronizes it with the painting rate as opposed to elapsed time.

If frameSync is set to true, it overrides all of duration, :ref:`frameRate <sdk_qtquick_sprite_frameRate>` and :ref:`frameDuration <sdk_qtquick_sprite_frameDuration>`.

Default is false.

.. _sdk_qtquick_sprite_frameWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameWidth : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Width of a single frame in this sprite.

.. _sdk_qtquick_sprite_frameX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameX : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The X coordinate in the image file of the first frame of the sprite.

.. _sdk_qtquick_sprite_frameY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frameY : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The Y coordinate in the image file of the first frame of the sprite.

.. _sdk_qtquick_sprite_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The name of this sprite, for use in the to property of other sprites.

.. _sdk_qtquick_sprite_randomStart:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| randomStart : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, then the animation will start its first animation with a random amount of its duration skipped. This allows them to not look like they all just started when the animation begins.

This only affects the very first animation played. Transitioning to another animation, or the same animation again, will not trigger this.

Default is false.

.. _sdk_qtquick_sprite_reverse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reverse : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, then the animation will be played in reverse.

Default is false.

.. _sdk_qtquick_sprite_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The image source for the animation.

If :ref:`frameHeight <sdk_qtquick_sprite_frameHeight>` and :ref:`frameWidth <sdk_qtquick_sprite_frameWidth>` are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.

If :ref:`frameX <sdk_qtquick_sprite_frameX>` and :ref:`frameY <sdk_qtquick_sprite_frameY>` are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.

.. _sdk_qtquick_sprite_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : QVariantMap                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A list of other sprites and weighted transitions to them, for example {"a":1, "b":2, "c":0} would specify that one-third should transition to sprite "a" when this sprite is done, and two-thirds should transition to sprite "b" when this sprite is done. As the transitions are chosen randomly, these proportions will not be exact. With "c":0 in the list, no sprites will randomly transition to "c", but it wll be a valid path if a sprite goal is set.

If no list is specified, or the sum of weights in the list is zero, then the sprite will repeat itself after completing.

