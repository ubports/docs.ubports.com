QtQuick.AnimatedSprite
======================

.. raw:: html

   <p>

Draws a sprite animation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimatedSprite -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

currentFrame : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameHeight : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameRate : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameSync : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameWidth : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameX : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameY : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

interpolate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loops : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paused : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reverse : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

int advance()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int pause()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int restart()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int resume()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AnimatedSprite-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

AnimatedSprite provides rendering and control over animations which are
provided as multiple frames in the same image file. You can play it at a
fixed speed, at the frame rate of your display, or manually advance and
control the progress.

.. raw:: html

   </p>

.. raw:: html

   <p>

For details of how a sprite animation is defined see the Sprite
Animations overview. Note that the AnimatedSprite type does not use
Sprite types to define multiple animations, but instead encapsulates a
single animation itself.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimatedSprite -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentFrame-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentFrame : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When paused, the current frame can be advanced manually by setting this
property or calling advance().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameCount : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Number of frames in this AnimatedSprite.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameDuration : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Duration of each frame of the animation. Values equal to or below 0 are
invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and frameDuration is valid, then frameDuration will
be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing this parameter will restart the animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameHeight : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Height of a single frame in this AnimatedSprite.

.. raw:: html

   </p>

.. raw:: html

   <p>

May be omitted if it is the only sprite in the file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameRate : qreal

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Frames per second to show in the animation. Values equal to or below 0
are invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and frameDuration is valid , then frameDuration will
be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing this parameter will restart the animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameSync-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameSync : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, then the animation will have no duration. Instead, the
animation will advance one frame each time a frame is rendered to the
screen. This synchronizes it with the painting rate as opposed to
elapsed time.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameSync is set to true, it overrides both frameRate and
frameDuration.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing this parameter will restart the animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameSync -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameWidth : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Width of a single frame in this AnimatedSprite.

.. raw:: html

   </p>

.. raw:: html

   <p>

May be omitted if it is the only sprite in the file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameX : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The X coordinate in the image file of the first frame of the
AnimatedSprite.

.. raw:: html

   </p>

.. raw:: html

   <p>

May be omitted if the first frame starts in the upper left corner of the
file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameY : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The Y coordinate in the image file of the first frame of the
AnimatedSprite.

.. raw:: html

   </p>

.. raw:: html

   <p>

May be omitted if the first frame starts in the upper left corner of the
file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="interpolate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

interpolate : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, interpolation will occur between sprite frames to make the
animation appear smoother.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@interpolate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loops-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loops : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

After playing the animation this many times, the animation will
automatically stop. Negative values are invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this is set to AnimatedSprite.Infinite the animation will not stop
playing on its own.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is AnimatedSprite.Infinite

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loops -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paused-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

paused : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

When paused, the current frame can be advanced manually.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reverse-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reverse : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If true, then the animation will be played in reverse.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reverse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="running-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

running : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the sprite is animating or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is true

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The image source for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameHeight and frameWidth are not specified, it is assumed to be a
single long row of square frames. Otherwise, it can be multiple
contiguous rows or rectangluar frames, when one row runs out the next
will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameX and frameY are specified, the row of frames will be taken with
that x/y coordinate as the upper left corner.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$advance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="advance-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int advance()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Advances the sprite animation by one frame.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@advance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pause-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int pause()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Pauses the sprite animation. This does nothing if paused is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also resume().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pause -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="restart-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int restart()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stops, then starts the sprite animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@restart -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resume-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int resume()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Resumes the sprite animation if paused is true; otherwise, this does
nothing.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also pause().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resume -->


