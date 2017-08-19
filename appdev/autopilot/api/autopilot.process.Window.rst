autopilot.process.Window
========================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.process.Window">

class autopilot.process.Window

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.x_id">

x\_id

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the X11 Window Id.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.x_win">

x\_win

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the X11 window object of the underlying window.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.get_wm_state">

get\_wm\_state

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the state of the underlying window.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.name">

name

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the window name.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

This may change according to the current locale. If you want a unique
string to match windows against, use the x\_id instead.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.title">

title

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the window title.

.. raw:: html

   </p>

.. raw:: html

   <p>

This may be different from the application name.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

This may change depending on the current locale.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.geometry">

geometry

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the geometry for this window.

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

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.is_maximized">

is\_maximized

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is the window maximized?

.. raw:: html

   </p>

.. raw:: html

   <p>

Maximized in this case means both maximized vertically and horizontally.
If a window is only maximized in one direction it is not considered
maximized.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.application">

application

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the application that owns this window.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method may return None if the window does not have an associated
application. The ‘desktop’ window is one such example.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.user_visible">

user\_visible

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is this window visible to the user in the switcher?

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.is_hidden">

is\_hidden

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is this window hidden?

.. raw:: html

   </p>

.. raw:: html

   <p>

Windows are hidden when the ‘Show Desktop’ mode is activated.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.is_focused">

is\_focused

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is this window focused?

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.is_valid">

is\_valid

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is this window object valid?

.. raw:: html

   </p>

.. raw:: html

   <p>

Invalid windows are caused by windows closing during the construction of
this object instance.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.monitor">

monitor

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns the monitor to which the windows belongs to

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Window.closed">

closed

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns True if the window has been closed

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.Window.close">

close()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Close the window.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.Window.set_focus">

set\_focus()

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
