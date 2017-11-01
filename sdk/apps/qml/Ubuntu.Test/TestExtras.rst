Singleton type providing additional test functions.

+---------------------+------------------------+
| Import Statement:   | import Ubuntu.Test .   |
+---------------------+------------------------+

Methods
-------

-  ****`cpuArchitecture </sdk/apps/qml/Ubuntu.Test/TestExtras#cpuArchitecture-method>`__****\ ()
-  void
   ****`mouseDrag </sdk/apps/qml/Ubuntu.Test/TestExtras#mouseDrag-method>`__****\ (touchId,
   item, from, delta, button, stateKey, steps, delay)
-  ****`openGLflavor </sdk/apps/qml/Ubuntu.Test/TestExtras#openGLflavor-method>`__****\ ()
-  ****`registerTouchDevice </sdk/apps/qml/Ubuntu.Test/TestExtras#registerTouchDevice-method>`__****\ ()
-  ****`touchClick </sdk/apps/qml/Ubuntu.Test/TestExtras#touchClick-method>`__****\ (touchId,
   item, point)
-  ****`touchDevicePresent </sdk/apps/qml/Ubuntu.Test/TestExtras#touchDevicePresent-method>`__****\ ()
-  ****`touchDoubleClick </sdk/apps/qml/Ubuntu.Test/TestExtras#touchDoubleClick-method>`__****\ (touchId,
   item, point)
-  ****`touchDrag </sdk/apps/qml/Ubuntu.Test/TestExtras#touchDrag-method>`__****\ (touchId,
   item, from, delta, steps)
-  ****`touchLongPress </sdk/apps/qml/Ubuntu.Test/TestExtras#touchLongPress-method>`__****\ (touchId,
   item, point)
-  ****`touchMove </sdk/apps/qml/Ubuntu.Test/TestExtras#touchMove-method>`__****\ (touchId,
   item, point)
-  ****`touchPress </sdk/apps/qml/Ubuntu.Test/TestExtras#touchPress-method>`__****\ (touchId,
   item, point)
-  ****`touchRelease </sdk/apps/qml/Ubuntu.Test/TestExtras#touchRelease-method>`__****\ (touchId,
   item, point)

Detailed Description
--------------------

The component provides additional test functions like touch handling,
registering touch device on non-touch screen enabled environment.

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cpuArchitecture()                                               |
+--------------------------------------------------------------------------+

Returns the build architecure, including but not limited to "arm",
"arm64", "i386" and "x86\_64".

| 

+--------------------------------------------------------------------------+
|        \ void mouseDrag(touchId, item, from, delta, button, stateKey,    |
| steps = 5, delay = 20)                                                   |
+--------------------------------------------------------------------------+

The function performs a drag with a mouse over an *item* from the
starting point *from* with a *delta*. The gesture is realized with a
mouse press, *step* moves and a release event, with a *delay* in between
each mouse event.

By default the function uses 5 steps to produce the drag. This value can
be any positive number, driving the gesture appliance to be faster (less
than 5 moves) or slower (more than 5 moves). If a negative or 0 value is
given, the function will use the default 5 steps to produce the gesture.

| 

+--------------------------------------------------------------------------+
|        \ openGLflavor()                                                  |
+--------------------------------------------------------------------------+

Returns "opengl" or "opengles2".

| 

+--------------------------------------------------------------------------+
|        \ registerTouchDevice()                                           |
+--------------------------------------------------------------------------+

Registers a touch device if there's none registered. Calling the
function in touch enabled environment has no effect. The function must
be called in initTestCase() in order to perform touch related tests.

| 

+--------------------------------------------------------------------------+
|        \ touchClick(touchId, item,                                       |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function performs a pair of
`touchPress </sdk/apps/qml/Ubuntu.Test/TestExtras#touchPress-method>`__
and
`touchRelease </sdk/apps/qml/Ubuntu.Test/TestExtras#touchRelease-method>`__
calls on the same point resulting in a click like event.

| 

+--------------------------------------------------------------------------+
|        \ touchDevicePresent()                                            |
+--------------------------------------------------------------------------+

Returns true if the system has a touch device registered.

| 

+--------------------------------------------------------------------------+
|        \ touchDoubleClick(touchId, item,                                 |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function performs two consecutive
`touchClick </sdk/apps/qml/Ubuntu.Test/TestExtras#touchClick-method>`__
events with a slight delay in between each click event.

| 

+--------------------------------------------------------------------------+
|        \ touchDrag(touchId, item, from, delta, steps = 5)                |
+--------------------------------------------------------------------------+

The function performs a drag gesture on a touch point identified by
*touchId* over an *item* from the starting point *from* with a *delta*.
The gesture is realized with a touch press, *step* moves and a release
event.

By default the function uses 5 steps to produce the gesture. This value
can be any positive number, driving the gesture appliance to be faster
(less than 5 moves) or slower (more than 5 moves). If a negative or 0
value is given, the function will use the default 5 steps to produce the
gesture.

| 

+--------------------------------------------------------------------------+
|        \ touchLongPress(touchId, item,                                   |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function produces a
`touchPress </sdk/apps/qml/Ubuntu.Test/TestExtras#touchPress-method>`__
event with a timeout equivalent to the mouse ``pressAndHold`` timeout,
after which the function returns.

| 

+--------------------------------------------------------------------------+
|        \ touchMove(touchId, item,                                        |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function moves the touch point identified by the *touchId* to the
destination *point*. The point is in *item* coordinates. The touch point
identified by the *touchId* must be pressed before calling this function
in order to produce the desired functionality. The event can be captured
in a ``MultiPointTouchArea`` through ``updated()`` signal.

| 

+--------------------------------------------------------------------------+
|        \ touchPress(touchId, item,                                       |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function triggers a touch press event for a given *touchId* on a
specific *item*. The *point* contains the (x,y) coordinates of the event
in *item* coordinates.

| 

+--------------------------------------------------------------------------+
|        \ touchRelease(touchId, item,                                     |
| `point <http://doc.qt.io/qt-5/qml-point.html>`__)                        |
+--------------------------------------------------------------------------+

The function produces a touch release event on a given *touchId*
performed on *item* at a *point*.

| 
