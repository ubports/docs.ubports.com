Draws a sprite animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`currentFrame </sdk/apps/qml/QtQuick/AnimatedSprite#currentFrame-prop>`__****
   : int
-  ****`frameCount </sdk/apps/qml/QtQuick/AnimatedSprite#frameCount-prop>`__****
   : int
-  ****`frameDuration </sdk/apps/qml/QtQuick/AnimatedSprite#frameDuration-prop>`__****
   : int
-  ****`frameHeight </sdk/apps/qml/QtQuick/AnimatedSprite#frameHeight-prop>`__****
   : int
-  ****`frameRate </sdk/apps/qml/QtQuick/AnimatedSprite#frameRate-prop>`__****
   : qreal
-  ****`frameSync </sdk/apps/qml/QtQuick/AnimatedSprite#frameSync-prop>`__****
   : bool
-  ****`frameWidth </sdk/apps/qml/QtQuick/AnimatedSprite#frameWidth-prop>`__****
   : int
-  ****`frameX </sdk/apps/qml/QtQuick/AnimatedSprite#frameX-prop>`__****
   : int
-  ****`frameY </sdk/apps/qml/QtQuick/AnimatedSprite#frameY-prop>`__****
   : int
-  ****`interpolate </sdk/apps/qml/QtQuick/AnimatedSprite#interpolate-prop>`__****
   : bool
-  ****`loops </sdk/apps/qml/QtQuick/AnimatedSprite#loops-prop>`__**** :
   int
-  ****`paused </sdk/apps/qml/QtQuick/AnimatedSprite#paused-prop>`__****
   : bool
-  ****`reverse </sdk/apps/qml/QtQuick/AnimatedSprite#reverse-prop>`__****
   : bool
-  ****`running </sdk/apps/qml/QtQuick/AnimatedSprite#running-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/QtQuick/AnimatedSprite#source-prop>`__****
   : url

Methods
-------

-  int
   ****`advance </sdk/apps/qml/QtQuick/AnimatedSprite#advance-method>`__****\ ()
-  int
   ****`pause </sdk/apps/qml/QtQuick/AnimatedSprite#pause-method>`__****\ ()
-  int
   ****`restart </sdk/apps/qml/QtQuick/AnimatedSprite#restart-method>`__****\ ()
-  int
   ****`resume </sdk/apps/qml/QtQuick/AnimatedSprite#resume-method>`__****\ ()

Detailed Description
--------------------

`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__
provides rendering and control over animations which are provided as
multiple frames in the same image file. You can play it at a fixed
speed, at the frame rate of your display, or manually advance and
control the progress.

For details of how a sprite animation is defined see the `Sprite
Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`__ overview.
Note that the
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__
type does not use Sprite types to define multiple animations, but
instead encapsulates a single animation itself.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ currentFrame : int                                              |
+--------------------------------------------------------------------------+

When paused, the current frame can be advanced manually by setting this
property or calling
`advance() </sdk/apps/qml/QtQuick/AnimatedSprite#advance-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ frameCount : int                                                |
+--------------------------------------------------------------------------+

Number of frames in this
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.

| 

+--------------------------------------------------------------------------+
|        \ frameDuration : int                                             |
+--------------------------------------------------------------------------+

Duration of each frame of the animation. Values equal to or below 0 are
invalid.

If `frameRate </sdk/apps/qml/QtQuick/AnimatedSprite#frameRate-prop>`__
is valid then it will be used to calculate the duration of the frames.
If not, and frameDuration is valid, then frameDuration will be used.

Changing this parameter will restart the animation.

| 

+--------------------------------------------------------------------------+
|        \ frameHeight : int                                               |
+--------------------------------------------------------------------------+

Height of a single frame in this
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.

May be omitted if it is the only sprite in the file.

| 

+--------------------------------------------------------------------------+
|        \ frameRate : qreal                                               |
+--------------------------------------------------------------------------+

Frames per second to show in the animation. Values equal to or below 0
are invalid.

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and
`frameDuration </sdk/apps/qml/QtQuick/AnimatedSprite#frameDuration-prop>`__
is valid , then
`frameDuration </sdk/apps/qml/QtQuick/AnimatedSprite#frameDuration-prop>`__
will be used.

Changing this parameter will restart the animation.

| 

+--------------------------------------------------------------------------+
|        \ frameSync : bool                                                |
+--------------------------------------------------------------------------+

If true, then the animation will have no duration. Instead, the
animation will advance one frame each time a frame is rendered to the
screen. This synchronizes it with the painting rate as opposed to
elapsed time.

If frameSync is set to true, it overrides both
`frameRate </sdk/apps/qml/QtQuick/AnimatedSprite#frameRate-prop>`__ and
`frameDuration </sdk/apps/qml/QtQuick/AnimatedSprite#frameDuration-prop>`__.

Default is false.

Changing this parameter will restart the animation.

| 

+--------------------------------------------------------------------------+
|        \ frameWidth : int                                                |
+--------------------------------------------------------------------------+

Width of a single frame in this
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.

May be omitted if it is the only sprite in the file.

| 

+--------------------------------------------------------------------------+
|        \ frameX : int                                                    |
+--------------------------------------------------------------------------+

The X coordinate in the image file of the first frame of the
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.

May be omitted if the first frame starts in the upper left corner of the
file.

| 

+--------------------------------------------------------------------------+
|        \ frameY : int                                                    |
+--------------------------------------------------------------------------+

The Y coordinate in the image file of the first frame of the
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.

May be omitted if the first frame starts in the upper left corner of the
file.

| 

+--------------------------------------------------------------------------+
|        \ interpolate : bool                                              |
+--------------------------------------------------------------------------+

If true, interpolation will occur between sprite frames to make the
animation appear smoother.

Default is true.

| 

+--------------------------------------------------------------------------+
|        \ loops : int                                                     |
+--------------------------------------------------------------------------+

After playing the animation this many times, the animation will
automatically stop. Negative values are invalid.

If this is set to
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.Infinite
the animation will not stop playing on its own.

Default is
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__.Infinite

| 

+--------------------------------------------------------------------------+
|        \ paused : bool                                                   |
+--------------------------------------------------------------------------+

When paused, the current frame can be advanced manually.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ reverse : bool                                                  |
+--------------------------------------------------------------------------+

If true, then the animation will be played in reverse.

Default is false.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

Whether the sprite is animating or not.

Default is true

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

The image source for the animation.

If
`frameHeight </sdk/apps/qml/QtQuick/AnimatedSprite#frameHeight-prop>`__
and
`frameWidth </sdk/apps/qml/QtQuick/AnimatedSprite#frameWidth-prop>`__
are not specified, it is assumed to be a single long row of square
frames. Otherwise, it can be multiple contiguous rows or rectangluar
frames, when one row runs out the next will be used.

If `frameX </sdk/apps/qml/QtQuick/AnimatedSprite#frameX-prop>`__ and
`frameY </sdk/apps/qml/QtQuick/AnimatedSprite#frameY-prop>`__ are
specified, the row of frames will be taken with that x/y coordinate as
the upper left corner.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ int advance()                                                   |
+--------------------------------------------------------------------------+

Advances the sprite animation by one frame.

| 

+--------------------------------------------------------------------------+
|        \ int pause()                                                     |
+--------------------------------------------------------------------------+

Pauses the sprite animation. This does nothing if
`paused </sdk/apps/qml/QtQuick/AnimatedSprite#paused-prop>`__ is true.

**See also**
`resume() </sdk/apps/qml/QtQuick/AnimatedSprite#resume-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ int restart()                                                   |
+--------------------------------------------------------------------------+

Stops, then starts the sprite animation.

| 

+--------------------------------------------------------------------------+
|        \ int resume()                                                    |
+--------------------------------------------------------------------------+

Resumes the sprite animation if
`paused </sdk/apps/qml/QtQuick/AnimatedSprite#paused-prop>`__ is true;
otherwise, this does nothing.

**See also**
`pause() </sdk/apps/qml/QtQuick/AnimatedSprite#pause-method>`__.

| 
