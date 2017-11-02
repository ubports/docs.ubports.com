.. _sdk_qtquick_spritesequence:
QtQuick SpriteSequence
======================

Draws a sprite animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`currentSprite <sdk_qtquick_spritesequence_currentSprite-prop>`
   : string
-  :ref:`goalSprite <sdk_qtquick_spritesequence_goalSprite-prop>` :
   string
-  :ref:`interpolate <sdk_qtquick_spritesequence_interpolate-prop>`
   : bool
-  :ref:`running <sdk_qtquick_spritesequence_running-prop>` : bool
-  :ref:`sprites <sdk_qtquick_spritesequence_sprites-prop>` :
   list<Sprite>

Methods
-------

-  :ref:`jumpTo <sdk_qtquick_spritesequence_jumpTo-method>`\ (string
   *sprite*)

Detailed Description
--------------------

`SpriteSequence </sdk/apps/qml/QtQuick/imageelements/#spritesequence>`_ 
renders and controls a list of animations defined by
:ref:`Sprite <sdk_qtquick_sprite>` types.

For full details, see the `Sprite
Animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`_  overview.

Property Documentation
----------------------

.. _sdk_qtquick_spritesequence_currentSprite-prop:

+--------------------------------------------------------------------------+
|        \ currentSprite : string                                          |
+--------------------------------------------------------------------------+

The name of the Sprite which is currently animating.

| 

.. _sdk_qtquick_spritesequence_goalSprite-prop:

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

.. _sdk_qtquick_spritesequence_interpolate-prop:

+--------------------------------------------------------------------------+
|        \ interpolate : bool                                              |
+--------------------------------------------------------------------------+

If true, interpolation will occur between sprite frames to make the
animation appear smoother.

Default is true.

| 

.. _sdk_qtquick_spritesequence_running-prop:

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

Whether the sprite is animating or not.

Default is true

| 

.. _sdk_qtquick_spritesequence_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ sprites : list<`Sprite <sdk_qtquick_sprite>`>                 |
+--------------------------------------------------------------------------+

The sprite or sprites to draw. Sprites will be scaled to the size of
this item.

| 

Method Documentation
--------------------

.. _sdk_qtquick_spritesequence_jumpTo-method:

+--------------------------------------------------------------------------+
|        \ jumpTo(string *sprite*)                                         |
+--------------------------------------------------------------------------+

This function causes the
`SpriteSequence </sdk/apps/qml/QtQuick/imageelements/#spritesequence>`_ 
to jump to the specified sprite immediately, intermediate sprites are
not played. The *sprite* argument is the name of the sprite you wish to
jump to.

| 
