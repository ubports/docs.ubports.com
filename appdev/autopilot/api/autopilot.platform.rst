autopilot.platform
==================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.platform.model">

autopilot.platform.model()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the model name of the current platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

For desktop / laptop installations, this will return “Desktop”.
Otherwise, the current hardware model will be returned. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">platform</span><span class="o">.</span><span class="n">model</span><span class="p">()</span>
   <span class="o">...</span> <span class="s">&quot;Galaxy Nexus&quot;</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.platform.image_codename">

autopilot.platform.image\_codename()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get the image codename.

.. raw:: html

   </p>

.. raw:: html

   <p>

For desktop / laptop installations this will return “Desktop”.
Otherwise, the codename of the image that was installed will be
returned. For example:

.. raw:: html

   </p>

.. raw:: html

   <p>

platform.image\_codename()

.. raw:: html

   </p>

.. raw:: html

   <p>

... “maguro”

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="autopilot.platform.is_tablet">

autopilot.platform.is\_tablet()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Indicate whether system is a tablet.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ‘ro.build.characteristics’ property is checked for ‘tablet’. For
example:

.. raw:: html

   </p>

.. raw:: html

   <p>

platform.tablet()

.. raw:: html

   </p>

.. raw:: html

   <p>

... True

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

boolean indicating whether this is a tablet

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

   <dl class="function">

.. raw:: html

   <dt id="autopilot.platform.get_display_server">

autopilot.platform.get\_display\_server()

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Returns display server type.

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

string indicating display server type. Either “X11”, “MIR” or “UNKNOWN”

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

   <!-- End Namespace Content -->
