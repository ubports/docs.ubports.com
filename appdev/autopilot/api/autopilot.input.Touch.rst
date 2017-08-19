autopilot.input.Touch
=====================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.input.Touch">

class autopilot.input.Touch

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A simple touch driver class.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class can be used for any touch events that require a single active
touch at once. If you want to do complex gestures (including multi-touch
gestures), look at the autopilot.gestures module.

.. raw:: html

   </p>

.. raw:: html

   <dl class="staticmethod">

.. raw:: html

   <dt id="autopilot.input.Touch.create">

static create(preferred\_backend='')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get an instance of the Touch class.

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

A string containing a hint as to which backend you would like. If left
blank, autopilot will pick a suitable backend for you. Specifying a
backend will guarantee that either that backend is returned, or an
exception is raised.

.. raw:: html

   </p>

.. raw:: html

   <p>

possible backends are:

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

UInput - Use UInput kernel-level device driver.

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

   <dt id="autopilot.input.Touch.pressed">

pressed

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return True if this touch is currently in use (i.e.- pressed on the
‘screen’).

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Touch.tap">

tap(x, y, press\_duration=0.1, time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click (or ‘tap’) at given x,y coordinates.

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
between subsequent taps. Default value 0.1 represents tenth of a second.

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

   <dt id="autopilot.input.Touch.tap_object">

tap\_object(object, press\_duration=0.1, time\_between\_events=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Tap the center point of a given object.

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
between subsequent taps. Default value 0.1 represents tenth of a second.

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

   <dt id="autopilot.input.Touch.press">

press(x, y)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Press and hold at the given x,y coordinates.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Touch.move">

move(x, y)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Move the pointer coords to (x,y).

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The touch ‘finger’ must be pressed for a call to this method to be
successful. (see press for further details on touch presses.)

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

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

RuntimeError if called and the touch ‘finger’ isn’t pressed.

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

   <dt id="autopilot.input.Touch.release">

release()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Release a previously pressed finger

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Touch.drag">

drag(x1, y1, x2, y2, rate=10, time\_between\_events=0.01)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Perform a drag gesture.

.. raw:: html

   </p>

.. raw:: html

   <p>

The finger will be dragged from the starting point to the ending point
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

   <ul class="first simple">

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

rate – The number of pixels the finger will be moved per iteration.
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

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

RuntimeError – if the finger is already pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

RuntimeError – if no more finger slots are available.

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
