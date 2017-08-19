autopilot.application.ClickApplicationLauncher
==============================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.application.ClickApplicationLauncher">

class
autopilot.application.ClickApplicationLauncher(case\_addDetail=None,
emulator\_base=None, dbus\_bus='session')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Fixture to manage launching a Click application.A class that knows how
to launch an application with a certain type of introspection enabled.

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

   <dt id="autopilot.application.ClickApplicationLauncher.launch">

launch(package\_id, app\_name=None, app\_uris=[])

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Launch a click package application with introspection enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method takes care of launching a click package with introspection
exabled. You probably want to use this method if your application is
packaged in a click application, or is started via upstart.

.. raw:: html

   </p>

.. raw:: html

   <p>

Usage is similar to NormalApplicationLauncher.launch:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">ClickApplicationLauncher</span>
   <span class="n">launcher</span> <span class="o">=</span> <span class="n">ClickApplicationLauncher</span><span class="p">()</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.dropping-letters&#39;</span><span class="p">)</span>
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

package\_id – The Click package name you want to launch. For example:
com.ubuntu.dropping-letters

.. raw:: html

   </li>

.. raw:: html

   <li>

app\_name – Currently, only one application can be packaged in a click
package, and this parameter can be left at None. If specified, it should
be the application name you wish to launch.

.. raw:: html

   </li>

.. raw:: html

   <li>

app\_uris – Parameters used to launch the click package. This parameter
will be left empty if not used.

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

   <ul class="first simple">

.. raw:: html

   <li>

RuntimeError – If the specified package\_id cannot be found in the click
package manifest.

.. raw:: html

   </li>

.. raw:: html

   <li>

RuntimeError – If the specified app\_name cannot be found within the
specified click package.

.. raw:: html

   </li>

.. raw:: html

   </ul>

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
