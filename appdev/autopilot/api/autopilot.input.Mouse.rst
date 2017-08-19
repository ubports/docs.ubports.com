autopilot.input.Mouse
=====================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.input.Mouse">

class autopilot.input.Mouse

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A simple mouse device class.

.. raw:: html

   </p>

.. raw:: html

   <p>

The mouse class is used to generate mouse events while in an autopilot
test. This class should not be instantiated directly however. To get an
instance of the mouse class, call create instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, to create a mouse object and click at (100,50):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">mouse</span> <span class="o">=</span> <span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
   <span class="n">mouse</span><span class="o">.</span><span class="n">move</span><span class="p">(</span><span class="mi">100</span><span class="p">,</span> <span class="mi">50</span><span class="p">)</span>
   <span class="n">mouse</span><span class="o">.</span><span class="n">click</span><span class="p">()</span>
   </pre>

.. raw:: html

   <dl class="staticmethod">

.. raw:: html

   <dt id="autopilot.input.Mouse.create">

static create(preferred\_backend='')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get an instance of the Mouse class.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more infomration on picking specific backends, see Advanced Backend
Picking

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

preferred\_backend –

.. raw:: html

   <p>

A string containing a hint as to which backend you would like. Possible
backends are:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

X11 - Generate mouse events using the X11 client libraries.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

RuntimeError if autopilot cannot instantate any of the possible
backends.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

RuntimeError if the preferred\_backend is specified and is not one of
the possible backends for this device class.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

BackendException if the preferred\_backend is set, but that backend
could not be instantiated.

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

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.input.Mouse.x">

x

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Mouse position X coordinate.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.input.Mouse.y">

y

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Mouse position Y coordinate.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.press">

press(button=1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Press mouse button at current mouse location.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.release">

release(button=1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Releases mouse button at current mouse location.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.click">

click(button=1, press\_duration=0.1, time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click mouse at current location.

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
between subsequent clicks. Default value 0.1 represents tenth of a
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

   <dt id="autopilot.input.Mouse.click_object">

click\_object(object\_proxy, button=1, press\_duration=0.1,
time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click the center point of a given object.

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

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

time\_between\_events – takes floating point to represent the delay time
between subsequent clicks. Default value 0.1 represents tenth of a
second.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

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

   <dt id="autopilot.input.Mouse.move">

move(x, y, animate=True, rate=10, time\_between\_events=0.01)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Moves mouse to location (x,y).

.. raw:: html

   </p>

.. raw:: html

   <p>

Callers should avoid specifying the rate or time\_between\_events
parameters unless they need a specific rate of movement.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.move_to_object">

move\_to\_object(object\_proxy)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Attempts to move the mouse to ‘object\_proxy’s centre point.

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

   <dt id="autopilot.input.Mouse.position">

position()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns the current position of the mouse pointer.

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

   <dt id="autopilot.input.Mouse.drag">

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

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.on_test_end">

on\_test\_end(\*args)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Mouse.on_test_start">

on\_test\_start(\*args)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
