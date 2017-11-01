For specifying drag and drop handling in an area

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`containsDrag </sdk/apps/qml/QtQuick/DropArea#containsDrag-prop>`__****
   : bool
-  ****`drag </sdk/apps/qml/QtQuick/DropArea#drag-prop>`__****

   -  ****`drag.x </sdk/apps/qml/QtQuick/DropArea#drag.x-prop>`__**** :
      qreal
   -  ****`drag.y </sdk/apps/qml/QtQuick/DropArea#drag.y-prop>`__**** :
      qreal

-  ****`drag.source </sdk/apps/qml/QtQuick/DropArea#drag.source-prop>`__****
   : Object
-  ****`keys </sdk/apps/qml/QtQuick/DropArea#keys-prop>`__**** :
   stringlist

Signals
-------

-  ****`dropped </sdk/apps/qml/QtQuick/DropArea#dropped-signal>`__****\ (DragEvent
   *drop*)
-  ****`entered </sdk/apps/qml/QtQuick/DropArea#entered-signal>`__****\ (DragEvent
   *drag*)
-  ****`exited </sdk/apps/qml/QtQuick/DropArea#exited-signal>`__****\ ()
-  ****`positionChanged </sdk/apps/qml/QtQuick/DropArea#positionChanged-signal>`__****\ (DragEvent
   *drag*)

Detailed Description
--------------------

A `DropArea </sdk/apps/qml/QtQuick/DropArea/>`__ is an invisible item
which receives events when other items are dragged over it.

The `Drag </sdk/apps/qml/QtQuick/Drag/>`__ attached property can be used
to notify the `DropArea </sdk/apps/qml/QtQuick/DropArea/>`__ when an
Item is dragged over it.

The `keys </sdk/apps/qml/QtQuick/DropArea#keys-prop>`__ property can be
used to filter drag events which don't include a matching key.

The `drag.source </sdk/apps/qml/QtQuick/DropArea#drag.source-prop>`__
property is communicated to the source of a drag event as the recipient
of a drop on the drag target.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ containsDrag : bool                                             |
+--------------------------------------------------------------------------+

This property identifies whether the
`DropArea </sdk/apps/qml/QtQuick/DropArea/>`__ currently contains any
dragged items.

| 

+--------------------------------------------------------------------------+
|        \ **drag group**                                                  |
+==========================================================================+
|        \ drag.x : qreal                                                  |
+--------------------------------------------------------------------------+
|        \ drag.y : qreal                                                  |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the last drag event.

| 

+--------------------------------------------------------------------------+
|        \ drag.source : Object                                            |
+--------------------------------------------------------------------------+

This property holds the source of a drag.

| 

+--------------------------------------------------------------------------+
|        \ keys : stringlist                                               |
+--------------------------------------------------------------------------+

This property holds a list of drag keys a
`DropArea </sdk/apps/qml/QtQuick/DropArea/>`__ will accept.

If no keys are listed the `DropArea </sdk/apps/qml/QtQuick/DropArea/>`__
will accept events from any drag source, otherwise the drag source must
have at least one compatible key.

**See also**
`QtQuick::Drag::keys </sdk/apps/qml/QtQuick/Drag#keys-attached-prop>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ dropped(`DragEvent </sdk/apps/qml/QtQuick/DragEvent/>`__        |
| *drop*)                                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when a drop event occurs within the bounds of a
`DropArea </sdk/apps/qml/QtQuick/DropArea/>`__.

The corresponding handler is ``onDropped``.

| 

+--------------------------------------------------------------------------+
|        \ entered(`DragEvent </sdk/apps/qml/QtQuick/DragEvent/>`__        |
| *drag*)                                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when a *drag* enters the bounds of a
`DropArea </sdk/apps/qml/QtQuick/DropArea/>`__.

The corresponding handler is ``onEntered``.

| 

+--------------------------------------------------------------------------+
|        \ exited()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when a drag exits the bounds of a
`DropArea </sdk/apps/qml/QtQuick/DropArea/>`__.

The corresponding handler is ``onExited``.

| 

+--------------------------------------------------------------------------+
|        \ positionChanged(`DragEvent </sdk/apps/qml/QtQuick/DragEvent/>`_ |
| _                                                                        |
| *drag*)                                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when the position of a drag has changed.

The corresponding handler is ``onPositionChanged``.

| 
