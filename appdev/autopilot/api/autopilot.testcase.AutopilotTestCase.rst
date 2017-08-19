autopilot.testcase.AutopilotTestCase
====================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase">

class autopilot.testcase.AutopilotTestCase(\*args, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Wrapper around testtools.TestCase that adds significant functionality.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class should be the base class for all autopilot test case classes.
Not using this class as the base class disables several important
convenience methods, and also prevents the use of the failed-test
recording tools.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase.launch_test_application">

launch\_test\_application(application, \*arguments, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Launch application and return a proxy object for the application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Use this method to launch an application and start testing it. The
positional arguments are used as arguments to the application to lanch.
Keyword arguments are used to control the manner in which the
application is launched.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is designed to be flexible enough to launch all supported
types of applications. Autopilot can automatically determine how to
enable introspection support for dynamically linked binary applications.
For example, to launch a binary Gtk application, a test might start
with:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Applications can be given command line arguments by supplying positional
arguments to this method. For example, if we want to launch gedit with a
certain document loaded, we might do this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="s">&#39;/tmp/test-document.txt&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

... a Qt5 Qml application is launched in a similar fashion:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="s">&#39;my_scene.qml&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

If you wish to launch an application that is not a dynamically linked
binary, you must specify the application type. For example, a Qt4 python
application might be launched like this:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
   <span class="s">&#39;my_qt_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

Similarly, a python/Gtk application is launched like so:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
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

   <li>

emulator\_base – If set, specifies the base class to be used for all
emulators for this loaded application.

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

   <dl class="method">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase.launch_click_package">

launch\_click\_package(package\_id, app\_name=None, app\_uris=[],
\*\*kwargs)

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

Usage is similar to the AutopilotTestCase.launch\_test\_application:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span>
   <span class="s">&quot;com.ubuntu.dropping-letters&quot;</span>
   <span class="p">)</span>
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

   <li>

emulator\_base – If set, specifies the base class to be used for all
emulators for this loaded application.

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

   <dl class="method">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase.launch_upstart_application">

launch\_upstart\_application(application\_name, uris=[],
launcher\_class=<class
'autopilot.application.\_launcher.UpstartApplicationLauncher'>,
\*\*kwargs)

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

This method launched an application via the ubuntu-app-launch library,
on platforms that support it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Usage is similar to the AutopilotTestCase.launch\_test\_application:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_upstart_application</span><span class="p">(</span><span class="s">&quot;gallery-app&quot;</span><span class="p">)</span>
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

   <ul class="first last simple">

.. raw:: html

   <li>

application\_name – The name of the application to launch.

.. raw:: html

   </li>

.. raw:: html

   <li>

launcher\_class – The application launcher class to use. Useful if

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

   <dl class="docutils">

.. raw:: html

   <dt>

you need to overwrite the default to do something custom (i.e. using

.. raw:: html

   </dt>

.. raw:: html

   <dd>

AlreadyLaunchedUpstartLauncher)

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

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

emulator\_base – If set, specifies the base class to be used for all
emulators for this loaded application.

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

If the specified application cannot be launched.

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

   <dt id="autopilot.testcase.AutopilotTestCase.take_screenshot">

take\_screenshot(attachment\_name)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Take a screenshot of the current screen and adds it to the test as a
detail named attachment\_name.

.. raw:: html

   </p>

.. raw:: html

   <p>

If attachment\_name already exists as a detail the name will be modified
to remove the naming conflict (i.e. using TestCase.addDetailUniqueName).

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns True if the screenshot was taken and attached successfully,
False otherwise.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase.patch_environment">

patch\_environment(key, value)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Patch environment using fixture.

.. raw:: html

   </p>

.. raw:: html

   <p>

This function is deprecated and planned for removal in autopilot 1.6.
New implementations should use EnvironmenVariable from the fixtures
module:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">fixtures</span> <span class="kn">import</span> <span class="n">EnvironmentVariable</span>
   <span class="k">def</span> <span class="nf">my_test</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
   <span class="n">my_patch</span> <span class="o">=</span> <span class="n">EnvironmentVariable</span><span class="p">(</span><span class="s">&#39;key&#39;</span><span class="p">,</span> <span class="s">&#39;value&#39;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">my_patch</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

‘key’ will be set to ‘value’. During tearDown, it will be reset to a
previous value, if one is found, or unset if not.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack">

assertVisibleWindowStack(stack\_start)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Check that the visible window stack starts with the windows passed in.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Minimised windows are skipped.

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

stack\_start – An iterable of Window instances.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises AssertionError:

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

if the top of the window stack does not match the contents of the
stack\_start parameter.

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

   <dt id="autopilot.testcase.AutopilotTestCase.assertProperty">

assertProperty(obj, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Assert that obj has properties equal to the key/value pairs in kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is intended to be used on objects whose attributes do not
have the wait\_for method (i.e.- objects that do not come from the
autopilot DBus interface).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, from within a test, to assert certain properties on a
~autopilot.process.Window instance:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">my_window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

assertProperties is a synonym for this method.

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

obj – The object to test.

.. raw:: html

   </li>

.. raw:: html

   <li>

kwargs – One or more keyword arguments to match against the attributes
of the obj parameter.

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

ValueError – if no keyword arguments were given.

.. raw:: html

   </li>

.. raw:: html

   <li>

ValueError – if a named attribute is a callable object.

.. raw:: html

   </li>

.. raw:: html

   <li>

AssertionError – if any of the attribute/value pairs in kwargs do not
match the attributes on the object passed in.

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

   <dt id="autopilot.testcase.AutopilotTestCase.assertProperties">

assertProperties(obj, \*\*kwargs)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Assert that obj has properties equal to the key/value pairs in kwargs.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is intended to be used on objects whose attributes do not
have the wait\_for method (i.e.- objects that do not come from the
autopilot DBus interface).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, from within a test, to assert certain properties on a
~autopilot.process.Window instance:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">my_window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

assertProperties is a synonym for this method.

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

obj – The object to test.

.. raw:: html

   </li>

.. raw:: html

   <li>

kwargs – One or more keyword arguments to match against the attributes
of the obj parameter.

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

ValueError – if no keyword arguments were given.

.. raw:: html

   </li>

.. raw:: html

   <li>

ValueError – if a named attribute is a callable object.

.. raw:: html

   </li>

.. raw:: html

   <li>

AssertionError – if any of the attribute/value pairs in kwargs do not
match the attributes on the object passed in.

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
