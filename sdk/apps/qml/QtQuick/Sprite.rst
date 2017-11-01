Specifies sprite animations

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/Sprite#duration-prop>`__**** :
   int
-  ****`durationVariation </sdk/apps/qml/QtQuick/Sprite#durationVariation-prop>`__****
   : int
-  ****`frameCount </sdk/apps/qml/QtQuick/Sprite#frameCount-prop>`__****
   : int
-  ****`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__****
   : int
-  ****`frameDurationVariation </sdk/apps/qml/QtQuick/Sprite#frameDurationVariation-prop>`__****
   : int
-  ****`frameHeight </sdk/apps/qml/QtQuick/Sprite#frameHeight-prop>`__****
   : int
-  ****`frameRate </sdk/apps/qml/QtQuick/Sprite#frameRate-prop>`__**** :
   qreal
-  ****`frameRateVariation </sdk/apps/qml/QtQuick/Sprite#frameRateVariation-prop>`__****
   : qreal
-  ****`frameSync </sdk/apps/qml/QtQuick/Sprite#frameSync-prop>`__**** :
   bool
-  ****`frameWidth </sdk/apps/qml/QtQuick/Sprite#frameWidth-prop>`__****
   : int
-  ****`frameX </sdk/apps/qml/QtQuick/Sprite#frameX-prop>`__**** : int
-  ****`frameY </sdk/apps/qml/QtQuick/Sprite#frameY-prop>`__**** : int
-  ****`name </sdk/apps/qml/QtQuick/Sprite#name-prop>`__**** : string
-  ****`randomStart </sdk/apps/qml/QtQuick/Sprite#randomStart-prop>`__****
   : bool
-  ****`reverse </sdk/apps/qml/QtQuick/Sprite#reverse-prop>`__**** :
   bool
-  ****`source </sdk/apps/qml/QtQuick/Sprite#source-prop>`__**** : url
-  ****`to </sdk/apps/qml/QtQuick/Sprite#to-prop>`__**** : QVariantMap

Detailed Description
--------------------

QQuickSprite renders sprites of one or more frames and animates them.
The sprites can be in the middle of an image file, or split along
multiple rows, as long as they form a contiguous line wrapping to the
next row of the file from the left edge of the file.

For full details, see the `Sprite
Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`__ overview.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

Duration of the animation. Values below 0 are invalid.

If `frameRate </sdk/apps/qml/QtQuick/Sprite#frameRate-prop>`__ is valid
then it will be used to calculate the duration of the frames. If not,
and `frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__
is valid, then
`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__ will
be used. Otherwise duration is used.

| 

+--------------------------------------------------------------------------+
|        \ durationVariation : int                                         |
+--------------------------------------------------------------------------+

The duration of the animation can vary by up to this amount. Variation
will never decrease the length of the animation to less than 0.

durationVariation will only take effect if duration is used to calculate
the duration of frames.

Default is 0.

| 

+--------------------------------------------------------------------------+
|        \ frameCount : int                                                |
+--------------------------------------------------------------------------+

Number of frames in this sprite.

| 

+--------------------------------------------------------------------------+
|        \ frameDuration : int                                             |
+--------------------------------------------------------------------------+

Duration of each frame of the animation. Values below 0 are invalid.

If `frameRate </sdk/apps/qml/QtQuick/Sprite#frameRate-prop>`__ is valid
then it will be used to calculate the duration of the frames. If not,
and frameDuration is valid, then frameDuration will be used. Otherwise
duration is used.

| 

+--------------------------------------------------------------------------+
|        \ frameDurationVariation : int                                    |
+--------------------------------------------------------------------------+

The duration of a frame in the animation can vary by up to this amount.
Variation will never decrease the length of the animation to less than
0.

frameDurationVariation will only take effect if
`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__ is
used to calculate the duration of frames.

Default is 0.

| 

+--------------------------------------------------------------------------+
|        \ frameHeight : int                                               |
+--------------------------------------------------------------------------+

Height of a single frame in this sprite.

| 

+--------------------------------------------------------------------------+
|        \ frameRate : qreal                                               |
+--------------------------------------------------------------------------+

Frames per second to show in the animation. Values below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and
`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__ is
valid , then
`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__ will
be used. Otherwise duration is used.

| 

+--------------------------------------------------------------------------+
|        \ frameRateVariation : qreal                                      |
+--------------------------------------------------------------------------+

The frame rate between animations can vary by up to this amount.
Variation will never decrease the length of the animation to less than
0.

frameRateVariation will only take effect if
`frameRate </sdk/apps/qml/QtQuick/Sprite#frameRate-prop>`__ is used to
calculate the duration of frames.

Default is 0.

| 

+--------------------------------------------------------------------------+
|        \ frameSync : bool                                                |
+--------------------------------------------------------------------------+

If true, then the animation will have no duration. Instead, the
animation will advance one frame each time a frame is rendered to the
screen. This synchronizes it with the painting rate as opposed to
elapsed time.

If frameSync is set to true, it overrides all of duration,
`frameRate </sdk/apps/qml/QtQuick/Sprite#frameRate-prop>`__ and
`frameDuration </sdk/apps/qml/QtQuick/Sprite#frameDuration-prop>`__.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ frameWidth : int                                                |
+--------------------------------------------------------------------------+

Width of a single frame in this sprite.

| 

+--------------------------------------------------------------------------+
|        \ frameX : int                                                    |
+--------------------------------------------------------------------------+

The X coordinate in the image file of the first frame of the sprite.

| 

+--------------------------------------------------------------------------+
|        \ frameY : int                                                    |
+--------------------------------------------------------------------------+

The Y coordinate in the image file of the first frame of the sprite.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

The name of this sprite, for use in the to property of other sprites.

| 

+--------------------------------------------------------------------------+
|        \ randomStart : bool                                              |
+--------------------------------------------------------------------------+

If true, then the animation will start its first animation with a random
amount of its duration skipped. This allows them to not look like they
all just started when the animation begins.

This only affects the very first animation played. Transitioning to
another animation, or the same animation again, will not trigger this.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ reverse : bool                                                  |
+--------------------------------------------------------------------------+

If true, then the animation will be played in reverse.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

The image source for the animation.

If `frameHeight </sdk/apps/qml/QtQuick/Sprite#frameHeight-prop>`__ and
`frameWidth </sdk/apps/qml/QtQuick/Sprite#frameWidth-prop>`__ are not
specified, it is assumed to be a single long row of square frames.
Otherwise, it can be multiple contiguous rows or rectangluar frames,
when one row runs out the next will be used.

If `frameX </sdk/apps/qml/QtQuick/Sprite#frameX-prop>`__ and
`frameY </sdk/apps/qml/QtQuick/Sprite#frameY-prop>`__ are specified, the
row of frames will be taken with that x/y coordinate as the upper left
corner.

| 

+--------------------------------------------------------------------------+
|        \ to : QVariantMap                                                |
+--------------------------------------------------------------------------+

A list of other sprites and weighted transitions to them, for example
{"a":1, "b":2, "c":0} would specify that one-third should transition to
sprite "a" when this sprite is done, and two-thirds should transition to
sprite "b" when this sprite is done. As the transitions are chosen
randomly, these proportions will not be exact. With "c":0 in the list,
no sprites will randomly transition to "c", but it wll be a valid path
if a sprite goal is set.

If no list is specified, or the sum of weights in the list is zero, then
the sprite will repeat itself after completing.

| 
