autopilot.input.Pointer
=======================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.input.Pointer">

class autopilot.input.Pointer(device)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A wrapper class that represents a pointing device which can either be a
mouse or a touch, and provides a unified API.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class is useful if you want to run tests with either a mouse or a
touch device, and want to write your tests to use a single API. Create
this wrapper by passing it either a mouse or a touch device, like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">pointer_device</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
   </pre>

.. raw:: html

   <p>

or, like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">pointer_device</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Some operations only make sense for certain devices. This class attempts
to minimise the differences between the Mouse and Touch APIs, but there
are still some operations that will cause exceptions to be raised. These
are documented in the specific methods below.

.. raw:: html

   </p>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.input.Pointer.x">

x

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Pointer X coordinate.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a Touch device, this will return the last known
X coordinate, which may not be a sensible value.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.input.Pointer.y">

y

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Pointer Y coordinate.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a Touch device, this will return the last known
Y coordinate, which may not be a sensible value.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.press">

press(button=1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Press the pointer at it’s current location.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a mouse, you may pass a button specification.
If it is a touch device, passing anything other than 1 will raise a
ValueError exception.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.release">

release(button=1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Releases the pointer at it’s current location.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a mouse, you may pass a button specification.
If it is a touch device, passing anything other than 1 will raise a
ValueError exception.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.click">

click(button=1, press\_duration=0.1, time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Press and release at the current pointer location.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a mouse, the button specification is used. If
it is a touch device, passing anything other than 1 will raise a
ValueError exception.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

time\_between\_events – takes floating point to represent the delay time
between subsequent clicks/taps. Default value 0.1 represents tenth of a
second.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.move">

move(x, y)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Moves the pointer to the specified coordinates.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the wrapped device is a mouse, the mouse will animate to the
specified coordinates. If the wrapped device is a touch device, this
method will determine where the next release or click will occur.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.click_object">

click\_object(object\_proxy, button=1, press\_duration=0.1,
time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Attempts to move the pointer to ‘object\_proxy’s centre point. and click
a button

.. raw:: html

   </p>

.. raw:: html

   <p>

It does this by looking for several attributes, in order. The first
attribute found will be used. The attributes used are (in order):

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

globalRect (x,y,w,h)

.. raw:: html

   </li>

.. raw:: html

   <li>

center\_x, center\_y

.. raw:: html

   </li>

.. raw:: html

   <li>

x, y, w, h

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

If the wrapped device is a mouse, the button specification is used. If
it is a touch device, passing anything other than 1 will raise a
ValueError exception.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

time\_between\_events – takes floating point to represent the delay time
between subsequent clicks/taps. Default value 0.1 represents tenth of a
second.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.move_to_object">

move\_to\_object(object\_proxy)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Attempts to move the pointer to ‘object\_proxy’s centre point.

.. raw:: html

   </p>

.. raw:: html

   <p>

It does this by looking for several attributes, in order. The first
attribute found will be used. The attributes used are (in order):

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

globalRect (x,y,w,h)

.. raw:: html

   </li>

.. raw:: html

   <li>

center\_x, center\_y

.. raw:: html

   </li>

.. raw:: html

   <li>

x, y, w, h

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

ValueError if none of these attributes are found, or if an attribute is
of an incorrect type.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.position">

position()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns the current position of the pointer.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

(x,y) tuple

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Pointer.drag">

drag(x1, y1, x2, y2, rate=10, time\_between\_events=0.01)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Perform a press, move and release.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is to keep a common API between Mouse and Finger as long as
possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

The pointer will be dragged from the starting point to the ending point
with multiple moves. The number of moves, and thus the time that it will
take to complete the drag can be altered with the rate parameter.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

x1 – The point on the x axis where the drag will start from.

.. raw:: html

   </li>

.. raw:: html

   <li>

y1 – The point on the y axis where the drag will starts from.

.. raw:: html

   </li>

.. raw:: html

   <li>

x2 – The point on the x axis where the drag will end at.

.. raw:: html

   </li>

.. raw:: html

   <li>

y2 – The point on the y axis where the drag will end at.

.. raw:: html

   </li>

.. raw:: html

   <li>

rate – The number of pixels the mouse will be moved per iteration.
Default is 10 pixels. A higher rate will make the drag faster, and lower
rate will make it slower.

.. raw:: html

   </li>

.. raw:: html

   <li>

time\_between\_events – The number of seconds that the drag will wait
between iterations.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
