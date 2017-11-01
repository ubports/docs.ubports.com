An area which detects axis-aligned single-finger drag gestures.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/Ubuntu.Components/SwipeArea#direction-prop>`__****
   : enum
-  ****`distance </sdk/apps/qml/Ubuntu.Components/SwipeArea#distance-prop>`__****
   : real
-  ****`dragging </sdk/apps/qml/Ubuntu.Components/SwipeArea#dragging-prop>`__****
   : bool
-  ****`grabGesture </sdk/apps/qml/Ubuntu.Components/SwipeArea#grabGesture-prop>`__****
   : bool
-  ****`immediateRecognition </sdk/apps/qml/Ubuntu.Components/SwipeArea#immediateRecognition-prop>`__****
   : bool
-  ****`pressed </sdk/apps/qml/Ubuntu.Components/SwipeArea#pressed-prop>`__****
   : bool
-  ****`touchPosition </sdk/apps/qml/Ubuntu.Components/SwipeArea#touchPosition-prop>`__****
   : point

Detailed Description
--------------------

The component can be used to detect gestures of a certain direction, and
can grab gestures started on a component placed behind of the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__. The gesture
is detected on the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__, therefore
the size must be chosen carefully so it can properly detect the gesture.

The gesture direction is specified by the
`direction </sdk/apps/qml/Ubuntu.Components/SwipeArea#direction-prop>`__
property. The recognized and captured gesture is reported through the
`dragging </sdk/apps/qml/Ubuntu.Components/SwipeArea#dragging-prop>`__
property, which becomes ``true`` when the gesture is detected. If there
was a component under the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__, the gesture
will be cancelled on that component.

The drag recognition is performed within the component area in the
specified direction. If the drag deviates too much from this,
recognition will fail, as well as if the drag or the flick is too short.
Once the drag is intercepted, the gesture will be followed even after it
leaves the detection area.

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

**Note:** When used with a Flickable (or
`ListView </sdk/apps/qml/QtQuick/ListView/>`__,
`GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example#gridview>`__)
always put the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__ next to the
Flickable as sibling.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ direction : enum                                                |
+--------------------------------------------------------------------------+

The direction in which the gesture should move in order to be
recognized.

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

| 

+--------------------------------------------------------------------------+
|        \ [read-only] distance : real                                     |
+--------------------------------------------------------------------------+

The property holds the distance of the swipe from the beginning of the
gesture recognition to the current touch position.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] dragging : bool                                     |
+--------------------------------------------------------------------------+

Reports whether a drag gesture is taking place.

| 

+--------------------------------------------------------------------------+
|        \ grabGesture : bool                                              |
+--------------------------------------------------------------------------+

If true, any gestures will be grabbed and owned by the
`SwipeArea </sdk/apps/qml/Ubuntu.Components/SwipeArea/>`__ as usual. If
false, gestures will still be reported, but events may be grabbed by
another Qml object.

Defaults to true. In most cases this should not be unset.

| 

+--------------------------------------------------------------------------+
|        \ immediateRecognition : bool                                     |
+--------------------------------------------------------------------------+

Drives whether the gesture should be recognized as soon as the touch
lands on the area. With this property set it will work the same way as a
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__,

Defaults to false. In most cases this should not be set.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] pressed : bool                                      |
+--------------------------------------------------------------------------+

Reports whether the drag area is pressed.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] touchPosition :                                     |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__                         |
+--------------------------------------------------------------------------+

Position of the touch point performing the drag relative to this item.

| 
