Ubuntu.Test.TestExtras
======================

.. raw:: html

   <p>

Singleton type providing additional test functions. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TestExtras -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Test .

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cpuArchitecture()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void mouseDrag(touchId, item, from, delta, button, stateKey, steps,
delay)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

openGLflavor()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

registerTouchDevice()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchClick(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchDevicePresent()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchDoubleClick(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchDrag(touchId, item, from, delta, steps)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchLongPress(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchMove(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchPress(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

touchRelease(touchId, item, point)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TestExtras-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides additional test functions like touch handling,
registering touch device on non-touch screen enabled environment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TestExtras -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cpuArchitecture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cpuArchitecture-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cpuArchitecture()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the build architecure, including but not limited to "arm",
"arm64", "i386" and "x86\_64".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cpuArchitecture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mouseDrag-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void mouseDrag(touchId, item, from, delta, button, stateKey, steps = 5,
delay = 20)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function performs a drag with a mouse over an item from the starting
point from with a delta. The gesture is realized with a mouse press,
step moves and a release event, with a delay in between each mouse
event.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the function uses 5 steps to produce the drag. This value can
be any positive number, driving the gesture appliance to be faster (less
than 5 moves) or slower (more than 5 moves). If a negative or 0 value is
given, the function will use the default 5 steps to produce the gesture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mouseDrag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="openGLflavor-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

openGLflavor()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns "opengl" or "opengles2".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@openGLflavor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="registerTouchDevice-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

registerTouchDevice()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Registers a touch device if there's none registered. Calling the
function in touch enabled environment has no effect. The function must
be called in initTestCase() in order to perform touch related tests.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@registerTouchDevice -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchClick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchClick(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function performs a pair of touchPress and touchRelease calls on the
same point resulting in a click like event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchDevicePresent-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchDevicePresent()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if the system has a touch device registered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchDevicePresent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchDoubleClick-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchDoubleClick(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function performs two consecutive touchClick events with a slight
delay in between each click event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchDoubleClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchDrag-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchDrag(touchId, item, from, delta, steps = 5)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function performs a drag gesture on a touch point identified by
touchId over an item from the starting point from with a delta. The
gesture is realized with a touch press, step moves and a release event.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the function uses 5 steps to produce the gesture. This value
can be any positive number, driving the gesture appliance to be faster
(less than 5 moves) or slower (more than 5 moves). If a negative or 0
value is given, the function will use the default 5 steps to produce the
gesture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchDrag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchLongPress-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchLongPress(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function produces a touchPress event with a timeout equivalent to
the mouse pressAndHold timeout, after which the function returns.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchLongPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchMove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchMove(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function moves the touch point identified by the touchId to the
destination point. The point is in item coordinates. The touch point
identified by the touchId must be pressed before calling this function
in order to produce the desired functionality. The event can be captured
in a MultiPointTouchArea through updated() signal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchMove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchPress-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchPress(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function triggers a touch press event for a given touchId on a
specific item. The point contains the (x,y) coordinates of the event in
item coordinates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchPress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="touchRelease-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

touchRelease(touchId, item, point)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The function produces a touch release event on a given touchId performed
on item at a point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@touchRelease -->


