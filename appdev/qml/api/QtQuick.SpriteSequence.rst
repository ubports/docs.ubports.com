QtQuick.SpriteSequence
======================

.. raw:: html

   <p>

Draws a sprite animation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpriteSequence -->

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

currentSprite : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

goalSprite : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

interpolate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sprites : list<Sprite>

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

jumpTo(string sprite)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SpriteSequence-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SpriteSequence renders and controls a list of animations defined by
Sprite types.

.. raw:: html

   </p>

.. raw:: html

   <p>

For full details, see the Sprite Animations overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpriteSequence -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentSprite -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentSprite-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentSprite : string

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

The name of the Sprite which is currently animating.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentSprite -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="goalSprite-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

goalSprite : string

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

The name of the Sprite which the animation should move to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sprite states have defined durations and transitions between them,
setting goalState will cause it to disregard any path weightings
(including 0) and head down the path which will reach the goalState
quickest (fewest animations). It will pass through intermediate states
on that path, and animate them for their duration.

.. raw:: html

   </p>

.. raw:: html

   <p>

If it is possible to return to the goalState from the starting point of
the goalState it will continue to do so until goalState is set to "" or
an unreachable state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@goalSprite -->

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

   <tr valign="top" id="sprites-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sprites : list<Sprite>

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

The sprite or sprites to draw. Sprites will be scaled to the size of
this item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sprites -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$jumpTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="jumpTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

jumpTo(string sprite)

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

This function causes the SpriteSequence to jump to the specified sprite
immediately, intermediate sprites are not played. The sprite argument is
the name of the sprite you wish to jump to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@jumpTo -->


