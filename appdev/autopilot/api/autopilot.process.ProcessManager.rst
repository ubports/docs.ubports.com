autopilot.process.ProcessManager
================================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.process.ProcessManager">

class autopilot.process.ProcessManager

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A simple process manager class.

.. raw:: html

   </p>

.. raw:: html

   <p>

The process manager is used to handle processes, windows and
applications. This class should not be instantiated directly however. To
get an instance of the keyboard class, call create instead.

.. raw:: html

   </p>

.. raw:: html

   <dl class="attribute">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.KNOWN_APPS">

KNOWN\_APPS = {'System Settings': {'process-name':
'unity-control-center', 'desktop-file': 'unity-control-center.desktop'},
'Mahjongg': {'process-name': 'gnome-mahjongg', 'desktop-file':
'gnome-mahjongg.desktop'}, 'Text Editor': {'process-name': 'gedit',
'desktop-file': 'gedit.desktop'}, 'Terminal': {'process-name':
'gnome-terminal', 'desktop-file': 'gnome-terminal.desktop'}, 'Character
Map': {'process-name': 'gucharmap', 'desktop-file':
'gucharmap.desktop'}, 'Remmina': {'process-name': 'remmina',
'desktop-file': 'remmina.desktop'}, 'Calculator': {'process-name':
'gnome-calculator', 'desktop-file': 'gcalctool.desktop'}}

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="staticmethod">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.create">

static create(preferred\_backend='')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get an instance of the ProcessManager class.

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

   <ul>

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

BAMF - Get process information using the BAMF Application

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Matching Framework.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

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

   <dl class="classmethod">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.register_known_application">

classmethod register\_known\_application(name, desktop\_file,
process\_name)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Register an application with autopilot.

.. raw:: html

   </p>

.. raw:: html

   <p>

After calling this method, you may call start\_app or start\_app\_window
with the name parameter to start this application. You need only call
this once within a test run - the application will remain registerred
until the test run ends.

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

name – The name to be used when launching the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

desktop\_file – The filename (without path component) of the desktop
file used to launch the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

process\_name – The name of the executable process that gets run.

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

   <p class="first last">

KeyError if application has been registered already

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

   <dl class="classmethod">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.unregister_known_application">

classmethod unregister\_known\_application(name)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Unregister an application with the known\_apps dictionary.

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

name – The name to be used when launching the application.

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

KeyError if the application has not been registered.

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

   <dt id="autopilot.process.ProcessManager.start_app">

start\_app(app\_name, files=[], locale=None)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Start one of the known applications, and kill it on tear down.

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

This method will clear all instances of this application on tearDown,
not just the one opened by this method! We recommend that you use the
start\_app\_window method instead, as it is generally safer.

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

app\_name – The application name. This name must either already be
registered as one of the built-in applications that are supported by
autopilot, or must have been registered using
register\_known\_application beforehand.

.. raw:: html

   </li>

.. raw:: html

   <li>

files – (Optional) A list of paths to open with the given application.
Not all applications support opening files in this way.

.. raw:: html

   </li>

.. raw:: html

   <li>

locale – (Optional) The locale will to set when the application is
launched. If you want to launch an application without any localisation
being applied, set this parameter to ‘C’.

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

A Application instance.

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

   <dt id="autopilot.process.ProcessManager.start_app_window">

start\_app\_window(app\_name, files=[], locale=None)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open a single window for one of the known applications, and close it at
the end of the test.

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

app\_name – The application name. This name must either already be
registered as one of the built-in applications that are supported by
autopilot, or must have been registered with
register\_known\_application beforehand.

.. raw:: html

   </li>

.. raw:: html

   <li>

files – (Optional) Should be a list of paths to open with the given
application. Not all applications support opening files in this way.

.. raw:: html

   </li>

.. raw:: html

   <li>

locale – (Optional) The locale will to set when the application is
launched. If you want to launch an application without any localisation
being applied, set this parameter to ‘C’.

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

   <p class="first">

AssertionError if no window was opened, or more than one window was
opened.

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

A Window instance.

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

   <dt id="autopilot.process.ProcessManager.get_open_windows_by_application">

get\_open\_windows\_by\_application(app\_name)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of ~autopilot.process.Window\` instances for the given
application name.

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

app\_name – The name of one of the well-known applications.

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

A list of Window instances.

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

   <dt id="autopilot.process.ProcessManager.close_all_app">

close\_all\_app(app\_name)

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

   <dt id="autopilot.process.ProcessManager.get_app_instances">

get\_app\_instances(app\_name)

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

   <dt id="autopilot.process.ProcessManager.app_is_running">

app\_is\_running(app\_name)

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

   <dt id="autopilot.process.ProcessManager.get_running_applications">

get\_running\_applications(user\_visible\_only=True)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of the currently running applications.

.. raw:: html

   </p>

.. raw:: html

   <p>

If user\_visible\_only is True (the default), only applications visible
to the user in the switcher will be returned.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.get_running_applications_by_desktop_file">

get\_running\_applications\_by\_desktop\_file(desktop\_file)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return a list of applications with the desktop file desktop\_file.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method will return an empty list if no applications are found with
the specified desktop file.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.get_open_windows">

get\_open\_windows(user\_visible\_only=True)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get a list of currently open windows.

.. raw:: html

   </p>

.. raw:: html

   <p>

If user\_visible\_only is True (the default), only applications visible
to the user in the switcher will be returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The result is sorted to be in stacking order.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.process.ProcessManager.wait_until_application_is_running">

wait\_until\_application\_is\_running(desktop\_file, timeout)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Wait until a given application is running.

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

desktop\_file (string) – The name of the application desktop file.

.. raw:: html

   </li>

.. raw:: html

   <li>

timeout (integer) – The maximum time to wait, in seconds. If set to
something less than 0, this method will wait forever.

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

true once the application is found, or false if the application was not
found until the timeout was reached.

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

   <dt id="autopilot.process.ProcessManager.launch_application">

launch\_application(desktop\_file, files=[], wait=True)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Launch an application by specifying a desktop file.

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

files (List of strings) – List of files to pass to the application. Not
all apps support this.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

If wait is True, this method will wait up to 10 seconds for the
application to appear.

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

TypeError on invalid files parameter.

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

The Gobject process object.

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
