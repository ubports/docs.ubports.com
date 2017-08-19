autopilot.display.Display
=========================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.display.Display">

class autopilot.display.Display

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

The base class/inteface for the display devices.

.. raw:: html

   </p>

.. raw:: html

   <dl class="staticmethod">

.. raw:: html

   <dt id="autopilot.display.Display.create">

static create(preferred\_backend='')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get an instance of the Display class.

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

A string containing a hint as to which backend you would like.

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

X11 - Get display information from X11.

.. raw:: html

   </li>

.. raw:: html

   <li>

UPA - Get display information from the ubuntu platform API.

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

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

Instance of Display with appropriate backend.

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

   <dl class="exception">

.. raw:: html

   <dt id="autopilot.display.Display.BlacklistedDriverError">

exception BlacklistedDriverError

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Cannot set primary monitor when running drivers listed in the driver
blacklist.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.display.Display.get_num_screens">

Display.get\_num\_screens()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the number of screens attached to the PC.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.display.Display.get_primary_screen">

Display.get\_primary\_screen()

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

   <dt id="autopilot.display.Display.get_screen_width">

Display.get\_screen\_width(screen\_number=0)

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

   <dt id="autopilot.display.Display.get_screen_height">

Display.get\_screen\_height(screen\_number=0)

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

   <dt id="autopilot.display.Display.get_screen_geometry">

Display.get\_screen\_geometry(monitor\_number)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the geometry for a particular monitor.

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

Tuple containing (x, y, width, height).

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

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.display.get_screenshot_data">

autopilot.display.get\_screenshot\_data(display\_type)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return a BytesIO object of the png data for the screenshot image.

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

display\_type is the display server type. supported values are:

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

“X11”

.. raw:: html

   </li>

.. raw:: html

   <li>

“MIR”

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

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

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

RuntimeError – If attempting to capture an image on an unsupported
display server.

.. raw:: html

   </li>

.. raw:: html

   <li>

RuntimeError – If saving image data to file-object fails.

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
