autopilot.process.Application
=============================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.process.Application">

class autopilot.process.Application

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Application.desktop_file">

desktop\_file

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the application desktop file.

.. raw:: html

   </p>

.. raw:: html

   <p>

This returns just the filename, not the full path. If the application no
longer exists, this returns an empty string.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Application.name">

name

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the application name.

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
string to match applications against, use desktop\_file instead.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Application.icon">

icon

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the application icon.

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

The name of the icon.

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

   <dt id="autopilot.process.Application.is_active">

is\_active

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is the application active (i.e. has keyboard focus)?

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Application.is_urgent">

is\_urgent

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is the application currently signalling urgency?

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.Application.user_visible">

user\_visible

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Is this application visible to the user?

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Some applications (such as the panel) are hidden to the user but may
still be returned.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.Application.get_windows">

get\_windows()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of the application windows.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
