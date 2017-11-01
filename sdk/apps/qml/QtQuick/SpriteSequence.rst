Draws a sprite animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`currentSprite </sdk/apps/qml/QtQuick/SpriteSequence#currentSprite-prop>`__****
   : string
-  ****`goalSprite </sdk/apps/qml/QtQuick/SpriteSequence#goalSprite-prop>`__****
   : string
-  ****`interpolate </sdk/apps/qml/QtQuick/SpriteSequence#interpolate-prop>`__****
   : bool
-  ****`running </sdk/apps/qml/QtQuick/SpriteSequence#running-prop>`__****
   : bool
-  ****`sprites </sdk/apps/qml/QtQuick/SpriteSequence#sprites-prop>`__****
   : list<Sprite>

Methods
-------

-  ****`jumpTo </sdk/apps/qml/QtQuick/SpriteSequence#jumpTo-method>`__****\ (string
   *sprite*)

Detailed Description
--------------------

`SpriteSequence </sdk/apps/qml/QtQuick/imageelements#spritesequence>`__
renders and controls a list of animations defined by
`Sprite </sdk/apps/qml/QtQuick/Sprite/>`__ types.

For full details, see the `Sprite
Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`__ overview.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ currentSprite : string                                          |
+--------------------------------------------------------------------------+

The name of the Sprite which is currently animating.

| 

+--------------------------------------------------------------------------+
|        \ goalSprite : string                                             |
+--------------------------------------------------------------------------+

The name of the Sprite which the animation should move to.

Sprite states have defined durations and transitions between them,
setting goalState will cause it to disregard any path weightings
(including 0) and head down the path which will reach the goalState
quickest (fewest animations). It will pass through intermediate states
on that path, and animate them for their duration.

If it is possible to return to the goalState from the starting point of
the goalState it will continue to do so until goalState is set to "" or
an unreachable state.

| 

+--------------------------------------------------------------------------+
|        \ interpolate : bool                                              |
+--------------------------------------------------------------------------+

If true, interpolation will occur between sprite frames to make the
animation appear smoother.

Default is true.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

Whether the sprite is animating or not.

Default is true

| 

+--------------------------------------------------------------------------+
|        \ sprites : list<`Sprite </sdk/apps/qml/QtQuick/Sprite/>`__>      |
+--------------------------------------------------------------------------+

The sprite or sprites to draw. Sprites will be scaled to the size of
this item.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ jumpTo(string *sprite*)                                         |
+--------------------------------------------------------------------------+

This function causes the
`SpriteSequence </sdk/apps/qml/QtQuick/imageelements#spritesequence>`__
to jump to the specified sprite immediately, intermediate sprites are
not played. The *sprite* argument is the name of the sprite you wish to
jump to.

| 
