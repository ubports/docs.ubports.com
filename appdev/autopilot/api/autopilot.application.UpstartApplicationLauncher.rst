autopilot.application.UpstartApplicationLauncher
================================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.application.UpstartApplicationLauncher">

class
autopilot.application.UpstartApplicationLauncher(case\_addDetail=None,
emulator\_base=None, dbus\_bus='session')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A launcher class that launches applications with UpstartAppLaunch.A
class that knows how to launch an application with a certain type of
introspection enabled.

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

case\_addDetail – addDetail method to use.

.. raw:: html

   </li>

.. raw:: html

   <li>

proxy\_base – custom proxy base class to use, defaults to None

.. raw:: html

   </li>

.. raw:: html

   <li>

dbus\_bus – dbus bus to use, if set to something other than the default
(‘session’) the environment will be patched

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

   <dl class="method">

.. raw:: html

   <dt id="autopilot.application.UpstartApplicationLauncher.launch">

launch(app\_id, app\_uris=[])

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Launch an application with upstart.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method launches an application via the upstart-app-launch library,
on platforms that support it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Usage is similar to NormalApplicationLauncher:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">UpstartApplicationLauncher</span>
   <span class="n">launcher</span> <span class="o">=</span> <span class="n">UpstartApplicationLauncher</span><span class="p">()</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gallery-app&#39;</span><span class="p">)</span>
   </pre>

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

app\_id – name of the application to launch

.. raw:: html

   </li>

.. raw:: html

   <li>

app\_uris – list of separate application uris to launch

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

   <th class="field-name" colspan="2">

Raises RuntimeError:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first">

If the specified application cannot be launched.

.. raw:: html

   </p>

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

.. raw:: html

   <p class="first last">

proxy object for the launched package application

.. raw:: html

   </p>

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

   <dt id="autopilot.application.get_application_launcher_wrapper">

autopilot.application.get\_application\_launcher\_wrapper(app\_path)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return an instance of ApplicationLauncher that knows how to launch the
application at ‘app\_path’.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>
