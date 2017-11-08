.. _sdk_qtquick_multipointtoucharea:

QtQuick MultiPointTouchArea
===========================

Enables handling of multiple touch points

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`maximumTouchPoints <sdk_qtquick_multipointtoucharea_maximumTouchPoints>` : int
-  :ref:`minimumTouchPoints <sdk_qtquick_multipointtoucharea_minimumTouchPoints>` : int
-  :ref:`mouseEnabled <sdk_qtquick_multipointtoucharea_mouseEnabled>` : bool
-  :ref:`touchPoints <sdk_qtquick_multipointtoucharea_touchPoints>` : list<TouchPoint>

Signals
-------

-  :ref:`canceled <sdk_qtquick_multipointtoucharea_canceled>`\ (list<TouchPoint> *touchPoints*)
-  :ref:`gestureStarted <sdk_qtquick_multipointtoucharea_gestureStarted>`\ (GestureEvent *gesture*)
-  :ref:`pressed <sdk_qtquick_multipointtoucharea_pressed>`\ (list<TouchPoint> *touchPoints*)
-  :ref:`released <sdk_qtquick_multipointtoucharea_released>`\ (list<TouchPoint> *touchPoints*)
-  :ref:`touchUpdated <sdk_qtquick_multipointtoucharea_touchUpdated>`\ (list<TouchPoint> *touchPoints*)
-  :ref:`updated <sdk_qtquick_multipointtoucharea_updated>`\ (list<TouchPoint> *touchPoints*)

Detailed Description
--------------------

A :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` is an invisible item that is used to track multiple touch points.

The :ref:`Item::enabled <sdk_qtquick_item_enabled>` property is used to enable and disable touch handling. When disabled, the touch area becomes transparent to mouse and touch events.

By default, the mouse will be handled the same way as a single touch point, and items under the touch area will not receive mouse events because the touch area is handling them. But if the :ref:`mouseEnabled <sdk_qtquick_multipointtoucharea_mouseEnabled>` property is set to false, it becomes transparent to mouse events so that another mouse-sensitive Item (such as a :ref:`MouseArea <sdk_qtquick_mousearea>`) can be used to handle mouse interaction separately.

:ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` can be used in two ways:

-  setting ``touchPoints`` to provide touch point objects with properties that can be bound to
-  using the onTouchUpdated or onPressed, onUpdated and onReleased handlers

While a :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` *can* take exclusive ownership of certain touch points, it is also possible to have multiple MultiPointTouchAreas active at the same time, each operating on a different set of touch points.

**See also** :ref:`TouchPoint <sdk_qtquick_touchpoint>`.

Property Documentation
----------------------

.. _sdk_qtquick_multipointtoucharea_maximumTouchPoints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumTouchPoints : int                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the range of touch points to be handled by the touch area.

These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.

By default, all touch points within the touch area are handled.

If :ref:`mouseEnabled <sdk_qtquick_multipointtoucharea_mouseEnabled>` is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if maximumTouchPoints is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.

.. _sdk_qtquick_multipointtoucharea_minimumTouchPoints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumTouchPoints : int                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the range of touch points to be handled by the touch area.

These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.

By default, all touch points within the touch area are handled.

If :ref:`mouseEnabled <sdk_qtquick_multipointtoucharea_mouseEnabled>` is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if :ref:`maximumTouchPoints <sdk_qtquick_multipointtoucharea_maximumTouchPoints>` is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.

.. _sdk_qtquick_multipointtoucharea_mouseEnabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseEnabled : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property controls whether the :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` will handle mouse events too. If it is true (the default), the touch area will treat the mouse the same as a single touch point; if it is false, the touch area will ignore mouse events and allow them to "pass through" so that they can be handled by other items underneath.

.. _sdk_qtquick_multipointtoucharea_touchPoints:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchPoints : list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`>                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a set of user-defined touch point objects that can be bound to.

If :ref:`mouseEnabled <sdk_qtquick_multipointtoucharea_mouseEnabled>` is true (the default) and the left mouse button is pressed while the mouse is over the touch area, the current mouse position will be one of these touch points.

In the following example, we have two small rectangles that follow our touch points.

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

**See also** :ref:`TouchPoint <sdk_qtquick_touchpoint>`.

Signal Documentation
--------------------

.. _sdk_qtquick_multipointtoucharea_canceled:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canceled(list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`> *touchPoints*)                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when new touch events have been canceled because another item stole the touch event handling.

This signal is for advanced use: it is useful when there is more than one :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` that is handling input, or when there is a :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` inside a `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ . In the latter case, if you execute some logic in the ``onPressed`` signal handler and then start dragging, the `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_  may steal the touch handling from the :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>`. In these cases, to reset the logic when the :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` has lost the touch handling to the `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ , ``canceled`` should be handled in addition to :ref:`released <sdk_qtquick_multipointtoucharea_released>`.

*touchPoints* is the list of canceled points.

The corresponding handler is ``onCanceled``.

.. _sdk_qtquick_multipointtoucharea_gestureStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| gestureStarted(GestureEvent *gesture*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the global drag threshold has been reached.

This signal is typically used when a :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` has been nested in a Flickable or another :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>`. When the threshold has been reached and the signal is handled, you can determine whether or not the touch area should grab the current touch points. By default they will not be grabbed; to grab them call ``gesture.grab()``. If the gesture is not grabbed, the nesting Flickable, for example, would also have an opportunity to grab.

The gesture object also includes information on the current set of ``touchPoints`` and the ``dragThreshold``.

The corresponding handler is ``onGestureStarted``.

.. _sdk_qtquick_multipointtoucharea_pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressed(list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`> *touchPoints*)                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when new touch points are added. *touchPoints* is a list of these new points.

If :ref:`minimumTouchPoints <sdk_qtquick_multipointtoucharea_minimumTouchPoints>` is set to a value greater than one, this signal will not be emitted until the minimum number of required touch points has been reached.

The corresponding handler is ``onPressed``.

.. _sdk_qtquick_multipointtoucharea_released:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| released(list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`> *touchPoints*)                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when existing touch points are removed. *touchPoints* is a list of these removed points.

The corresponding handler is ``onReleased``.

.. _sdk_qtquick_multipointtoucharea_touchUpdated:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchUpdated(list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`> *touchPoints*)                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the touch points handled by the :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>` change. This includes adding new touch points, removing or canceling previous touch points, as well as updating current touch point data. *touchPoints* is the list of all current touch points.

The corresponding handler is ``onTouchUpdated``.

.. _sdk_qtquick_multipointtoucharea_updated:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| updated(list<:ref:`TouchPoint <sdk_qtquick_touchpoint>`> *touchPoints*)                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when existing touch points are updated. *touchPoints* is a list of these updated points.

The corresponding handler is ``onUpdated``.

