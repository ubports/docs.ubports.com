.. _sdk_ubuntu_test_testextras:

Ubuntu.Test TestExtras
======================

Singleton type providing additional test functions.

+---------------------+------------------------+
| Import Statement:   | import Ubuntu.Test .   |
+---------------------+------------------------+

Methods
-------

-  :ref:`cpuArchitecture <sdk_ubuntu_test_testextras_cpuArchitecture>`\ ()
-  void :ref:`mouseDrag <sdk_ubuntu_test_testextras_mouseDrag>`\ (touchId, item, from, delta, button, stateKey, steps, delay)
-  :ref:`openGLflavor <sdk_ubuntu_test_testextras_openGLflavor>`\ ()
-  :ref:`registerTouchDevice <sdk_ubuntu_test_testextras_registerTouchDevice>`\ ()
-  :ref:`touchClick <sdk_ubuntu_test_testextras_touchClick>`\ (touchId, item, point)
-  :ref:`touchDevicePresent <sdk_ubuntu_test_testextras_touchDevicePresent>`\ ()
-  :ref:`touchDoubleClick <sdk_ubuntu_test_testextras_touchDoubleClick>`\ (touchId, item, point)
-  :ref:`touchDrag <sdk_ubuntu_test_testextras_touchDrag>`\ (touchId, item, from, delta, steps)
-  :ref:`touchLongPress <sdk_ubuntu_test_testextras_touchLongPress>`\ (touchId, item, point)
-  :ref:`touchMove <sdk_ubuntu_test_testextras_touchMove>`\ (touchId, item, point)
-  :ref:`touchPress <sdk_ubuntu_test_testextras_touchPress>`\ (touchId, item, point)
-  :ref:`touchRelease <sdk_ubuntu_test_testextras_touchRelease>`\ (touchId, item, point)

Detailed Description
--------------------

The component provides additional test functions like touch handling, registering touch device on non-touch screen enabled environment.

Method Documentation
--------------------

.. _sdk_ubuntu_test_testextras_cpuArchitecture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cpuArchitecture()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the build architecure, including but not limited to "arm", "arm64", "i386" and "x86\_64".

.. _sdk_ubuntu_test_testextras_mouseDrag:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void mouseDrag(touchId, item, from, delta, button, stateKey, steps = 5, delay = 20)                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function performs a drag with a mouse over an *item* from the starting point *from* with a *delta*. The gesture is realized with a mouse press, *step* moves and a release event, with a *delay* in between each mouse event.

By default the function uses 5 steps to produce the drag. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

.. _sdk_ubuntu_test_testextras_openGLflavor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| openGLflavor()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns "opengl" or "opengles2".

.. _sdk_ubuntu_test_testextras_registerTouchDevice:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| registerTouchDevice()                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Registers a touch device if there's none registered. Calling the function in touch enabled environment has no effect. The function must be called in initTestCase() in order to perform touch related tests.

.. _sdk_ubuntu_test_testextras_touchClick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchClick(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function performs a pair of :ref:`touchPress <sdk_ubuntu_test_testextras_touchPress>` and :ref:`touchRelease <sdk_ubuntu_test_testextras_touchRelease>` calls on the same point resulting in a click like event.

.. _sdk_ubuntu_test_testextras_touchDevicePresent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchDevicePresent()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the system has a touch device registered.

.. _sdk_ubuntu_test_testextras_touchDoubleClick:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchDoubleClick(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function performs two consecutive :ref:`touchClick <sdk_ubuntu_test_testextras_touchClick>` events with a slight delay in between each click event.

.. _sdk_ubuntu_test_testextras_touchDrag:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchDrag(touchId, item, from, delta, steps = 5)                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function performs a drag gesture on a touch point identified by *touchId* over an *item* from the starting point *from* with a *delta*. The gesture is realized with a touch press, *step* moves and a release event.

By default the function uses 5 steps to produce the gesture. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

.. _sdk_ubuntu_test_testextras_touchLongPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchLongPress(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function produces a :ref:`touchPress <sdk_ubuntu_test_testextras_touchPress>` event with a timeout equivalent to the mouse ``pressAndHold`` timeout, after which the function returns.

.. _sdk_ubuntu_test_testextras_touchMove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchMove(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function moves the touch point identified by the *touchId* to the destination *point*. The point is in *item* coordinates. The touch point identified by the *touchId* must be pressed before calling this function in order to produce the desired functionality. The event can be captured in a ``MultiPointTouchArea`` through ``updated()`` signal.

.. _sdk_ubuntu_test_testextras_touchPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchPress(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function triggers a touch press event for a given *touchId* on a specific *item*. The *point* contains the (x,y) coordinates of the event in *item* coordinates.

.. _sdk_ubuntu_test_testextras_touchRelease:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| touchRelease(touchId, item, `point <http://doc.qt.io/qt-5/qml-point.html>`_ )                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function produces a touch release event on a given *touchId* performed on *item* at a *point*.

