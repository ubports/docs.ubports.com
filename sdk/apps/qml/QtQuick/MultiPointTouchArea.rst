Enables handling of multiple touch points

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`maximumTouchPoints </sdk/apps/qml/QtQuick/MultiPointTouchArea#maximumTouchPoints-prop>`__****
   : int
-  ****`minimumTouchPoints </sdk/apps/qml/QtQuick/MultiPointTouchArea#minimumTouchPoints-prop>`__****
   : int
-  ****`mouseEnabled </sdk/apps/qml/QtQuick/MultiPointTouchArea#mouseEnabled-prop>`__****
   : bool
-  ****`touchPoints </sdk/apps/qml/QtQuick/MultiPointTouchArea#touchPoints-prop>`__****
   : list<TouchPoint>

Signals
-------

-  ****`canceled </sdk/apps/qml/QtQuick/MultiPointTouchArea#canceled-signal>`__****\ (list<TouchPoint>
   *touchPoints*)
-  ****`gestureStarted </sdk/apps/qml/QtQuick/MultiPointTouchArea#gestureStarted-signal>`__****\ (GestureEvent
   *gesture*)
-  ****`pressed </sdk/apps/qml/QtQuick/MultiPointTouchArea#pressed-signal>`__****\ (list<TouchPoint>
   *touchPoints*)
-  ****`released </sdk/apps/qml/QtQuick/MultiPointTouchArea#released-signal>`__****\ (list<TouchPoint>
   *touchPoints*)
-  ****`touchUpdated </sdk/apps/qml/QtQuick/MultiPointTouchArea#touchUpdated-signal>`__****\ (list<TouchPoint>
   *touchPoints*)
-  ****`updated </sdk/apps/qml/QtQuick/MultiPointTouchArea#updated-signal>`__****\ (list<TouchPoint>
   *touchPoints*)

Detailed Description
--------------------

A `MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
is an invisible item that is used to track multiple touch points.

The `Item::enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__ property
is used to enable and disable touch handling. When disabled, the touch
area becomes transparent to mouse and touch events.

By default, the mouse will be handled the same way as a single touch
point, and items under the touch area will not receive mouse events
because the touch area is handling them. But if the
`mouseEnabled </sdk/apps/qml/QtQuick/MultiPointTouchArea#mouseEnabled-prop>`__
property is set to false, it becomes transparent to mouse events so that
another mouse-sensitive Item (such as a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__) can be used to handle
mouse interaction separately.

`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__ can
be used in two ways:

-  setting ``touchPoints`` to provide touch point objects with
   properties that can be bound to
-  using the onTouchUpdated or onPressed, onUpdated and onReleased
   handlers

While a
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
*can* take exclusive ownership of certain touch points, it is also
possible to have multiple MultiPointTouchAreas active at the same time,
each operating on a different set of touch points.

**See also** `TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ maximumTouchPoints : int                                        |
+--------------------------------------------------------------------------+

These properties hold the range of touch points to be handled by the
touch area.

These are convenience that allow you to, for example, have nested
MultiPointTouchAreas, one handling two finger touches, and another
handling three finger touches.

By default, all touch points within the touch area are handled.

If
`mouseEnabled </sdk/apps/qml/QtQuick/MultiPointTouchArea#mouseEnabled-prop>`__
is true, the mouse acts as a touch point, so it is also subject to these
constraints: for example if maximumTouchPoints is two, you can use the
mouse as one touch point and a finger as another touch point for a total
of two.

| 

+--------------------------------------------------------------------------+
|        \ minimumTouchPoints : int                                        |
+--------------------------------------------------------------------------+

These properties hold the range of touch points to be handled by the
touch area.

These are convenience that allow you to, for example, have nested
MultiPointTouchAreas, one handling two finger touches, and another
handling three finger touches.

By default, all touch points within the touch area are handled.

If
`mouseEnabled </sdk/apps/qml/QtQuick/MultiPointTouchArea#mouseEnabled-prop>`__
is true, the mouse acts as a touch point, so it is also subject to these
constraints: for example if
`maximumTouchPoints </sdk/apps/qml/QtQuick/MultiPointTouchArea#maximumTouchPoints-prop>`__
is two, you can use the mouse as one touch point and a finger as another
touch point for a total of two.

| 

+--------------------------------------------------------------------------+
|        \ mouseEnabled : bool                                             |
+--------------------------------------------------------------------------+

This property controls whether the
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
will handle mouse events too. If it is true (the default), the touch
area will treat the mouse the same as a single touch point; if it is
false, the touch area will ignore mouse events and allow them to "pass
through" so that they can be handled by other items underneath.

| 

+--------------------------------------------------------------------------+
|        \ touchPoints :                                                   |
| list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__>                 |
+--------------------------------------------------------------------------+

This property holds a set of user-defined touch point objects that can
be bound to.

If
`mouseEnabled </sdk/apps/qml/QtQuick/MultiPointTouchArea#mouseEnabled-prop>`__
is true (the default) and the left mouse button is pressed while the
mouse is over the touch area, the current mouse position will be one of
these touch points.

In the following example, we have two small rectangles that follow our
touch points.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400; height: 400
        MultiPointTouchArea {
            anchors.fill: parent
            touchPoints: [
                TouchPoint { id: point1 },
                TouchPoint { id: point2 }
            ]
        }
        Rectangle {
            width: 30; height: 30
            color: "green"
            x: point1.x
            y: point1.y
        }
        Rectangle {
            width: 30; height: 30
            color: "yellow"
            x: point2.x
            y: point2.y
        }
    }

By default this property holds an empty list.

**See also** `TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ canceled(list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`_ |
| _>                                                                       |
| *touchPoints*)                                                           |
+--------------------------------------------------------------------------+

This signal is emitted when new touch events have been canceled because
another item stole the touch event handling.

This signal is for advanced use: it is useful when there is more than
one `MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
that is handling input, or when there is a
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
inside a
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__. In the
latter case, if you execute some logic in the ``onPressed`` signal
handler and then start dragging, the
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__ may
steal the touch handling from the
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__. In
these cases, to reset the logic when the
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__ has
lost the touch handling to the
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__,
``canceled`` should be handled in addition to
`released </sdk/apps/qml/QtQuick/MultiPointTouchArea#released-signal>`__.

*touchPoints* is the list of canceled points.

The corresponding handler is ``onCanceled``.

| 

+--------------------------------------------------------------------------+
|        \ gestureStarted(GestureEvent *gesture*)                          |
+--------------------------------------------------------------------------+

This signal is emitted when the global drag threshold has been reached.

This signal is typically used when a
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__ has
been nested in a Flickable or another
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__.
When the threshold has been reached and the signal is handled, you can
determine whether or not the touch area should grab the current touch
points. By default they will not be grabbed; to grab them call
``gesture.grab()``. If the gesture is not grabbed, the nesting
Flickable, for example, would also have an opportunity to grab.

The gesture object also includes information on the current set of
``touchPoints`` and the ``dragThreshold``.

The corresponding handler is ``onGestureStarted``.

| 

+--------------------------------------------------------------------------+
|        \ pressed(list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__ |
| >                                                                        |
| *touchPoints*)                                                           |
+--------------------------------------------------------------------------+

This signal is emitted when new touch points are added. *touchPoints* is
a list of these new points.

If
`minimumTouchPoints </sdk/apps/qml/QtQuick/MultiPointTouchArea#minimumTouchPoints-prop>`__
is set to a value greater than one, this signal will not be emitted
until the minimum number of required touch points has been reached.

The corresponding handler is ``onPressed``.

| 

+--------------------------------------------------------------------------+
|        \ released(list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`_ |
| _>                                                                       |
| *touchPoints*)                                                           |
+--------------------------------------------------------------------------+

This signal is emitted when existing touch points are removed.
*touchPoints* is a list of these removed points.

The corresponding handler is ``onReleased``.

| 

+--------------------------------------------------------------------------+
|        \ touchUpdated(list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint |
| />`__>                                                                   |
| *touchPoints*)                                                           |
+--------------------------------------------------------------------------+

This signal is emitted when the touch points handled by the
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__
change. This includes adding new touch points, removing or canceling
previous touch points, as well as updating current touch point data.
*touchPoints* is the list of all current touch points.

The corresponding handler is ``onTouchUpdated``.

| 

+--------------------------------------------------------------------------+
|        \ updated(list<`TouchPoint </sdk/apps/qml/QtQuick/TouchPoint/>`__ |
| >                                                                        |
| *touchPoints*)                                                           |
+--------------------------------------------------------------------------+

This signal is emitted when existing touch points are updated.
*touchPoints* is a list of these updated points.

The corresponding handler is ``onUpdated``.

| 
