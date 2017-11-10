.. _sdk_ubuntu_components_swipearea:

Ubuntu.Components SwipeArea
===========================

An area which detects axis-aligned single-finger drag gestures.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`direction <sdk_ubuntu_components_swipearea_direction>` : enum
-  :ref:`distance <sdk_ubuntu_components_swipearea_distance>` : real
-  :ref:`dragging <sdk_ubuntu_components_swipearea_dragging>` : bool
-  :ref:`grabGesture <sdk_ubuntu_components_swipearea_grabGesture>` : bool
-  :ref:`immediateRecognition <sdk_ubuntu_components_swipearea_immediateRecognition>` : bool
-  :ref:`pressed <sdk_ubuntu_components_swipearea_pressed>` : bool
-  :ref:`touchPosition <sdk_ubuntu_components_swipearea_touchPosition>` : point

Detailed Description
--------------------

The component can be used to detect gestures of a certain direction, and can grab gestures started on a component placed behind of the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>`. The gesture is detected on the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>`, therefore the size must be chosen carefully so it can properly detect the gesture.

The gesture direction is specified by the :ref:`direction <sdk_ubuntu_components_swipearea_direction>` property. The recognized and captured gesture is reported through the :ref:`dragging <sdk_ubuntu_components_swipearea_dragging>` property, which becomes ``true`` when the gesture is detected. If there was a component under the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>`, the gesture will be cancelled on that component.

The drag recognition is performed within the component area in the specified direction. If the drag deviates too much from this, recognition will fail, as well as if the drag or the flick is too short. Once the drag is intercepted, the gesture will be followed even after it leaves the detection area.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(70)
        Page {
            title: "SwipeArea sample"
            SwipeArea {
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                height: units.gu(5)
                direction: SwipeArea.Upwards
                Label {
                    text: "Drag upwards"
                    anchors {
                        centerIn: parent
                        verticalOffset: parent.dragging ? parent.distance : 0
                    }
                }
            }
        }
    }

**Note:** When used with a Flickable (or :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_ ) always put the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>` next to the Flickable as sibling.

Property Documentation
----------------------

.. _sdk_ubuntu_components_swipearea_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enum                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The direction in which the gesture should move in order to be recognized.

+--------------+----------------------------------------------+
| Direction    | Description                                  |
+==============+==============================================+
| Rightwards   | Along the positive direction of the X axis   |
+--------------+----------------------------------------------+
| Leftwards    | Along the negative direction of the X axis   |
+--------------+----------------------------------------------+
| Downwards    | Along the positive direction of the Y axis   |
+--------------+----------------------------------------------+
| Upwards      | Along the negative direction of the Y axis   |
+--------------+----------------------------------------------+
| Horizontal   | Along the X axis, in any direction           |
+--------------+----------------------------------------------+
| Vertical     | Along the Y axis, in any direction           |
+--------------+----------------------------------------------+

.. _sdk_ubuntu_components_swipearea_distance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] distance : real                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the distance of the swipe from the beginning of the gesture recognition to the current touch position.

.. _sdk_ubuntu_components_swipearea_dragging:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] dragging : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Reports whether a drag gesture is taking place.

.. _sdk_ubuntu_components_swipearea_grabGesture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| grabGesture : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If true, any gestures will be grabbed and owned by the :ref:`SwipeArea <sdk_ubuntu_components_swipearea>` as usual. If false, gestures will still be reported, but events may be grabbed by another Qml object.

Defaults to true. In most cases this should not be unset.

.. _sdk_ubuntu_components_swipearea_immediateRecognition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| immediateRecognition : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Drives whether the gesture should be recognized as soon as the touch lands on the area. With this property set it will work the same way as a :ref:`MultiPointTouchArea <sdk_qtquick_multipointtoucharea>`,

Defaults to false. In most cases this should not be set.

.. _sdk_ubuntu_components_swipearea_pressed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] pressed : bool                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Reports whether the drag area is pressed.

.. _sdk_ubuntu_components_swipearea_touchPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] touchPosition : `point <http://doc.qt.io/qt-5/qml-point.html>`_                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Position of the touch point performing the drag relative to this item.

