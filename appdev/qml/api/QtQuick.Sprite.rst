QtQuick.Sprite
==============

.. raw:: html

   <p>

Specifies sprite animations More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sprite -->

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

durationVariation : int

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

frameDurationVariation : int

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

frameRateVariation : qreal

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

randomStart : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reverse : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : QVariantMap

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Sprite-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

QQuickSprite renders sprites of one or more frames and animates them.
The sprites can be in the middle of an image file, or split along
multiple rows, as long as they form a contiguous line wrapping to the
next row of the file from the left edge of the file.

.. raw:: html

   </p>

.. raw:: html

   <p>

For full details, see the Sprite Animations overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sprite -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

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

Duration of the animation. Values below 0 are invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and frameDuration is valid, then frameDuration will
be used. Otherwise duration is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="durationVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

durationVariation : int

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

The duration of the animation can vary by up to this amount. Variation
will never decrease the length of the animation to less than 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

durationVariation will only take effect if duration is used to calculate
the duration of frames.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@durationVariation -->

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

Number of frames in this sprite.

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

Duration of each frame of the animation. Values below 0 are invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and frameDuration is valid, then frameDuration will
be used. Otherwise duration is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameDurationVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameDurationVariation : int

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

The duration of a frame in the animation can vary by up to this amount.
Variation will never decrease the length of the animation to less than
0.

.. raw:: html

   </p>

.. raw:: html

   <p>

frameDurationVariation will only take effect if frameDuration is used to
calculate the duration of frames.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameDurationVariation -->

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

Height of a single frame in this sprite.

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

Frames per second to show in the animation. Values below 0 are invalid.

.. raw:: html

   </p>

.. raw:: html

   <p>

If frameRate is valid then it will be used to calculate the duration of
the frames. If not, and frameDuration is valid , then frameDuration will
be used. Otherwise duration is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameRateVariation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameRateVariation : qreal

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

The frame rate between animations can vary by up to this amount.
Variation will never decrease the length of the animation to less than
0.

.. raw:: html

   </p>

.. raw:: html

   <p>

frameRateVariation will only take effect if frameRate is used to
calculate the duration of frames.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameRateVariation -->

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

If frameSync is set to true, it overrides all of duration, frameRate and
frameDuration.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

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

Width of a single frame in this sprite.

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

The X coordinate in the image file of the first frame of the sprite.

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

The Y coordinate in the image file of the first frame of the sprite.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

The name of this sprite, for use in the to property of other sprites.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="randomStart-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

randomStart : bool

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

If true, then the animation will start its first animation with a random
amount of its duration skipped. This allows them to not look like they
all just started when the animation begins.

.. raw:: html

   </p>

.. raw:: html

   <p>

This only affects the very first animation played. Transitioning to
another animation, or the same animation again, will not trigger this.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@randomStart -->

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

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : QVariantMap

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

A list of other sprites and weighted transitions to them, for example
{"a":1, "b":2, "c":0} would specify that one-third should transition to
sprite "a" when this sprite is done, and two-thirds should transition to
sprite "b" when this sprite is done. As the transitions are chosen
randomly, these proportions will not be exact. With "c":0 in the list,
no sprites will randomly transition to "c", but it wll be a valid path
if a sprite goal is set.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no list is specified, or the sum of weights in the list is zero, then
the sprite will repeat itself after completing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


