.. _sdk_ubuntu_test_testextras:
Ubuntu.Test TestExtras
======================

Singleton type providing additional test functions.

+---------------------+------------------------+
| Import Statement:   | import Ubuntu.Test .   |
+---------------------+------------------------+

Methods
-------

-  **:ref:`cpuArchitecture <sdk_ubuntu_test_testextras#cpuArchitecture-method>`**\ ()
-  void
   **:ref:`mouseDrag <sdk_ubuntu_test_testextras#mouseDrag-method>`**\ (touchId,
   item, from, delta, button, stateKey, steps, delay)
-  **:ref:`openGLflavor <sdk_ubuntu_test_testextras#openGLflavor-method>`**\ ()
-  **:ref:`registerTouchDevice <sdk_ubuntu_test_testextras#registerTouchDevice-method>`**\ ()
-  **:ref:`touchClick <sdk_ubuntu_test_testextras#touchClick-method>`**\ (touchId,
   item, point)
-  **:ref:`touchDevicePresent <sdk_ubuntu_test_testextras#touchDevicePresent-method>`**\ ()
-  **:ref:`touchDoubleClick <sdk_ubuntu_test_testextras#touchDoubleClick-method>`**\ (touchId,
   item, point)
-  **:ref:`touchDrag <sdk_ubuntu_test_testextras#touchDrag-method>`**\ (touchId,
   item, from, delta, steps)
-  **:ref:`touchLongPress <sdk_ubuntu_test_testextras#touchLongPress-method>`**\ (touchId,
   item, point)
-  **:ref:`touchMove <sdk_ubuntu_test_testextras#touchMove-method>`**\ (touchId,
   item, point)
-  **:ref:`touchPress <sdk_ubuntu_test_testextras#touchPress-method>`**\ (touchId,
   item, point)
-  **:ref:`touchRelease <sdk_ubuntu_test_testextras#touchRelease-method>`**\ (touchId,
   item, point)

Detailed Description
--------------------

The component provides additional test functions like touch handling,
registering touch device on non-touch screen enabled environment.

Method Documentation
--------------------

.. _sdk_ubuntu_test_testextras_cpuArchitecture-method:

+--------------------------------------------------------------------------+
|        \ cpuArchitecture()                                               |
+--------------------------------------------------------------------------+

Returns the build architecure, including but not limited to "arm",
"arm64", "i386" and "x86\_64".

| 

.. _sdk_ubuntu_test_testextras_void mouseDrag-method:

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

.. _sdk_ubuntu_test_testextras_openGLflavor-method:

+--------------------------------------------------------------------------+
|        \ openGLflavor()                                                  |
+--------------------------------------------------------------------------+

Returns "opengl" or "opengles2".

| 

.. _sdk_ubuntu_test_testextras_registerTouchDevice-method:

+--------------------------------------------------------------------------+
|        \ registerTouchDevice()                                           |
+--------------------------------------------------------------------------+

Registers a touch device if there's none registered. Calling the
function in touch enabled environment has no effect. The function must
be called in initTestCase() in order to perform touch related tests.

| 

.. _sdk_ubuntu_test_testextras_touchClick-method:

+--------------------------------------------------------------------------+
|        \ touchClick(touchId, item,                                       |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function performs a pair of
:ref:`touchPress <sdk_ubuntu_test_testextras#touchPress-method>` and
:ref:`touchRelease <sdk_ubuntu_test_testextras#touchRelease-method>` calls
on the same point resulting in a click like event.

| 

.. _sdk_ubuntu_test_testextras_touchDevicePresent-method:

+--------------------------------------------------------------------------+
|        \ touchDevicePresent()                                            |
+--------------------------------------------------------------------------+

Returns true if the system has a touch device registered.

| 

.. _sdk_ubuntu_test_testextras_touchDoubleClick-method:

+--------------------------------------------------------------------------+
|        \ touchDoubleClick(touchId, item,                                 |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function performs two consecutive
:ref:`touchClick <sdk_ubuntu_test_testextras#touchClick-method>` events
with a slight delay in between each click event.

| 

.. _sdk_ubuntu_test_testextras_touchDrag-method:

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

.. _sdk_ubuntu_test_testextras_touchLongPress-method:

+--------------------------------------------------------------------------+
|        \ touchLongPress(touchId, item,                                   |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function produces a
:ref:`touchPress <sdk_ubuntu_test_testextras#touchPress-method>` event with
a timeout equivalent to the mouse ``pressAndHold`` timeout, after which
the function returns.

| 

.. _sdk_ubuntu_test_testextras_touchMove-method:

+--------------------------------------------------------------------------+
|        \ touchMove(touchId, item,                                        |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function moves the touch point identified by the *touchId* to the
destination *point*. The point is in *item* coordinates. The touch point
identified by the *touchId* must be pressed before calling this function
in order to produce the desired functionality. The event can be captured
in a ``MultiPointTouchArea`` through ``updated()`` signal.

| 

.. _sdk_ubuntu_test_testextras_touchPress-method:

+--------------------------------------------------------------------------+
|        \ touchPress(touchId, item,                                       |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function triggers a touch press event for a given *touchId* on a
specific *item*. The *point* contains the (x,y) coordinates of the event
in *item* coordinates.

| 

.. _sdk_ubuntu_test_testextras_touchRelease-method:

+--------------------------------------------------------------------------+
|        \ touchRelease(touchId, item,                                     |
| `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                        |
+--------------------------------------------------------------------------+

The function produces a touch release event on a given *touchId*
performed on *item* at a *point*.

| 
