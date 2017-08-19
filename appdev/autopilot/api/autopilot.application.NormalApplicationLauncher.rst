autopilot.application.NormalApplicationLauncher
===============================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.application.NormalApplicationLauncher">

class
autopilot.application.NormalApplicationLauncher(case\_addDetail=None,
emulator\_base=None, dbus\_bus='session')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Fixture to manage launching an application.A class that knows how to
launch an application with a certain type of introspection enabled.

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

   <dt id="autopilot.application.NormalApplicationLauncher.launch">

launch(application, arguments=[], app\_type=None, launch\_dir=None,
capture\_output=True)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Launch an application and return a proxy object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Use this method to launch an application and start testing it. The
arguments passed in arguments are used as arguments to the application
to launch. Additional keyword arguments are used to control the manner
in which the application is launched.

.. raw:: html

   </p>

.. raw:: html

   <p>

This fixture is designed to be flexible enough to launch all supported
types of applications. Autopilot can automatically determine how to
enable introspection support for dynamically linked binary applications.
For example, to launch a binary Gtk application, a test might start
with:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">NormalApplicationLauncher</span>
   <span class="n">launcher</span> <span class="o">=</span> <span class="n">NormalApplicationLauncher</span><span class="p">()</span>
   <span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
   <span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

For use within a testcase, use useFixture:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

from autopilot.application import NormalApplicationLauncher launcher =
self.useFixture(NormalApplicationLauncher()) app\_proxy =
launcher.launch(‘gedit’)

.. raw:: html

   </blockquote>

.. raw:: html

   <p>

Applications can be given command line arguments by supplying an
arguments argument to this method. For example, if we want to launch
gedit with a certain document loaded, we might do this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
   <span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="n">arguments</span><span class="o">=</span><span class="p">[</span><span class="s">&#39;/tmp/test-document.txt&#39;</span><span class="p">])</span>
   </pre>

.. raw:: html

   <p>

... a Qt5 Qml application is launched in a similar fashion:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
   <span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="n">arguments</span><span class="o">=</span><span class="p">[</span><span class="s">&#39;my_scene.qml&#39;</span><span class="p">])</span>
   </pre>

.. raw:: html

   <p>

If you wish to launch an application that is not a dynamically linked
binary, you must specify the application type. For example, a Qt4 python
application might be launched like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
   <span class="s">&#39;my_qt_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Similarly, a python/Gtk application is launched like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
   <span class="s">&#39;my_gtk_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;gtk&#39;</span><span class="p">)</span>
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

application –

.. raw:: html

   <p>

The application to launch. The application can be specified as:

.. raw:: html

   </p>

.. raw:: html

   <blockquote>

.. raw:: html

   <li>

A full, absolute path to an executable file. (/usr/bin/gedit)

.. raw:: html

   </li>

.. raw:: html

   <li>

A relative path to an executable file. (./build/my\_app)

.. raw:: html

   </li>

.. raw:: html

   <li>

An app name, which will be searched for in $PATH (my\_app)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </blockquote>

.. raw:: html

   </li>

.. raw:: html

   <li>

arguments – If set, the list of arguments is passed to the launched app.

.. raw:: html

   </li>

.. raw:: html

   <li>

app\_type – If set, provides a hint to autopilot as to which kind of
introspection to enable. This is needed when the application you wish to
launch is not a dynamically linked binary. Valid values are ‘gtk’ or
‘qt’. These strings are case insensitive.

.. raw:: html

   </li>

.. raw:: html

   <li>

launch\_dir – If set to a directory that exists the process will be
launched from that directory.

.. raw:: html

   </li>

.. raw:: html

   <li>

capture\_output – If set to True (the default), the process output will
be captured and attached to the test as test detail.

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

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

A proxy object that represents the application. Introspection data is
retrievable via this object.

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
