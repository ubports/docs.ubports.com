.. _sdk_qtquick_droparea:
QtQuick DropArea
================

For specifying drag and drop handling in an area

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`containsDrag <sdk_qtquick_droparea_containsDrag-prop>` :
   bool
-  :ref:`drag <sdk_qtquick_droparea_drag-prop>`

   -  :ref:`drag.x <sdk_qtquick_droparea_drag.x-prop>` : qreal
   -  :ref:`drag.y <sdk_qtquick_droparea_drag.y-prop>` : qreal

-  :ref:`drag.source <sdk_qtquick_droparea_drag.source-prop>` :
   Object
-  :ref:`keys <sdk_qtquick_droparea_keys-prop>` : stringlist

Signals
-------

-  :ref:`dropped <sdk_qtquick_droparea_dropped-signal>`\ (DragEvent
   *drop*)
-  :ref:`entered <sdk_qtquick_droparea_entered-signal>`\ (DragEvent
   *drag*)
-  :ref:`exited <sdk_qtquick_droparea_exited-signal>`\ ()
-  :ref:`positionChanged <sdk_qtquick_droparea_positionChanged-signal>`\ (DragEvent
   *drag*)

Detailed Description
--------------------

A :ref:`DropArea <sdk_qtquick_droparea>` is an invisible item which
receives events when other items are dragged over it.

The :ref:`Drag <sdk_qtquick_drag>` attached property can be used to notify
the :ref:`DropArea <sdk_qtquick_droparea>` when an Item is dragged over it.

The :ref:`keys <sdk_qtquick_droparea#keys-prop>` property can be used to
filter drag events which don't include a matching key.

The :ref:`drag.source <sdk_qtquick_droparea#drag.source-prop>` property is
communicated to the source of a drag event as the recipient of a drop on
the drag target.

Property Documentation
----------------------

.. _sdk_qtquick_droparea_containsDrag-prop:

+--------------------------------------------------------------------------+
|        \ containsDrag : bool                                             |
+--------------------------------------------------------------------------+

This property identifies whether the :ref:`DropArea <sdk_qtquick_droparea>`
currently contains any dragged items.

| 

.. _sdk_qtquick_droparea_**drag group**-prop:

+--------------------------------------------------------------------------+
|        \ **drag group**                                                  |
+==========================================================================+
.. _sdk_qtquick_droparea_drag.y-prop:
|        \ drag.x : qreal                                                  |
+--------------------------------------------------------------------------+
|        \ drag.y : qreal                                                  |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the last drag event.

| 

.. _sdk_qtquick_droparea_drag.source-prop:

+--------------------------------------------------------------------------+
|        \ drag.source : Object                                            |
+--------------------------------------------------------------------------+

This property holds the source of a drag.

| 

.. _sdk_qtquick_droparea_keys-prop:

+--------------------------------------------------------------------------+
|        \ keys : stringlist                                               |
+--------------------------------------------------------------------------+

This property holds a list of drag keys a
:ref:`DropArea <sdk_qtquick_droparea>` will accept.

If no keys are listed the :ref:`DropArea <sdk_qtquick_droparea>` will
accept events from any drag source, otherwise the drag source must have
at least one compatible key.

**See also**
:ref:`QtQuick::Drag::keys <sdk_qtquick_drag#keys-attached-prop>`.

| 

Signal Documentation
--------------------

.. _sdk_qtquick_droparea_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ dropped(`DragEvent <sdk_qtquick_dragevent>` *drop*)           |
+--------------------------------------------------------------------------+

This signal is emitted when a drop event occurs within the bounds of a
:ref:`DropArea <sdk_qtquick_droparea>`.

The corresponding handler is ``onDropped``.

| 

.. _sdk_qtquick_droparea_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ entered(`DragEvent <sdk_qtquick_dragevent>` *drag*)           |
+--------------------------------------------------------------------------+

This signal is emitted when a *drag* enters the bounds of a
:ref:`DropArea <sdk_qtquick_droparea>`.

The corresponding handler is ``onEntered``.

| 

.. _sdk_qtquick_droparea_exited()-prop:

+--------------------------------------------------------------------------+
|        \ exited()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when a drag exits the bounds of a
:ref:`DropArea <sdk_qtquick_droparea>`.

The corresponding handler is ``onExited``.

| 

.. _sdk_qtquick_droparea_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ positionChanged(`DragEvent <sdk_qtquick_dragevent>` *drag*)   |
+--------------------------------------------------------------------------+

This signal is emitted when the position of a drag has changed.

The corresponding handler is ``onPositionChanged``.

| 
