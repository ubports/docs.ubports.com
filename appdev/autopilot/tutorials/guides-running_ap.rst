guides-running\_ap
==================

.. raw:: html

   <p>

Autopilot test suites can be run with any python test runner (for
example, the built-in testtools runner). However, several autopilot
features are only available if you use the autopilot runner.

.. raw:: html

   </p>

.. raw:: html

   <h2>

List Tests

.. raw:: html

   </h2>

.. raw:: html

   <p>

Autopilot can list all tests found within a particular module:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 list &lt;modulename&gt;
   </pre>

.. raw:: html

   <p>

where <modulename> is the base name of the module you want to look at.
The module must either be in the current working directory, or be
importable by python. For example, to list the tests inside autopilot
itself, you can run:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 list autopilot
   autopilot.tests.test_ap_apps.GtkTests.test_can_launch_qt_app
   autopilot.tests.test_ap_apps.QtTests.test_can_launch_qt_app
   autopilot.tests.test_application_mixin.ApplicationSupportTests.test_can_create
   autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs
   autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs_with_known
   autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_with_bad_types_raises_typeerror
   autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_register_new_application
   autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_unregister_application
   autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_registering_app_twice_raises_KeyError
   autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_unregistering_unknown_application_raises_KeyError
   ...
   81 total tests.
   </pre>

.. raw:: html

   <p>

Some results have been omitted for clarity.

.. raw:: html

   </p>

.. raw:: html

   <p>

The list command takes only one option:

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils option-list" frame="void" rules="none">

.. raw:: html

   <col class="option" />

.. raw:: html

   <col class="description" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group" colspan="2">

-ro, --run-order

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td>

Display tests in the order in which they will be run, rather than
alphabetical order (which is the default).

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <h2>

Run Tests

.. raw:: html

   </h2>

.. raw:: html

   <p>

Running autopilot tests is very similar to listing tests:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run &lt;modulename&gt;
   </pre>

.. raw:: html

   <p>

However, the run command has many more options to customize the run
behavior:

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils option-list" frame="void" rules="none">

.. raw:: html

   <col class="option" />

.. raw:: html

   <col class="description" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group">

-h, --help

.. raw:: html

   </td>

.. raw:: html

   <td>

show this help message and exit

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group" colspan="2">

-o OUTPUT, --output OUTPUT

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td>

Write test result report to file. Defaults to stdout. If given a
directory instead of a file will write to a file in that directory
named: <hostname>\_<dd.mm.yyy\_HHMMSS>.log

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group" colspan="2">

-f FORMAT, --format FORMAT

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td>

Specify desired output format. Default is “text”. Other option is ‘xml’
to produce junit xml format.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group">

-r, --record

.. raw:: html

   </td>

.. raw:: html

   <td>

Record failing tests. Required ‘recordmydesktop’ app to be installed.
Videos are stored in /tmp/autopilot.

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

-rd PATH, –record-directory PATH

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Directory to put recorded tests (only if -r) specified.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <table class="docutils option-list" frame="void" rules="none">

.. raw:: html

   <col class="option" />

.. raw:: html

   <col class="description" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr>

.. raw:: html

   <td class="option-group">

-v, --verbose

.. raw:: html

   </td>

.. raw:: html

   <td>

If set, autopilot will output test log data to stderr during a test run.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Common use cases

.. raw:: html

   </h3>

.. raw:: html

   <ol class="arabic">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Run autopilot and save the test log:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run -o . &lt;modulename&gt;
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

.. raw:: html

   </blockquote>

.. raw:: html

   <ol class="arabic" start="2">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Run autopilot and record failing tests:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run -r --rd . &lt;modulename&gt;
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

ogg-vorbis files, with an .ogv extension. They will be named with the
test id that failed. All videos will be placed in the directory
specified by the -rd option - in this case the currect directory. If
this option is omitted, videos will be placed in /tmp/autopilot/.

.. raw:: html

   </blockquote>

.. raw:: html

   <ol class="arabic" start="3">

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Save the test log as jUnitXml format:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 run -o results.xml -f xml &lt;modulename&gt;
   </pre>

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <blockquote>

.. raw:: html

   </blockquote>

.. raw:: html

   <h2>

Launching an Application to Introspect

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order to be able to introspect an application, it must first be
launched with introspection enabled. Autopilot provides the launch
command to enable this:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 launch &lt;application&gt; &lt;app_parameters&gt;
   </pre>

.. raw:: html

   <p>

The <application> parameter could be the full path to the application,
or the name of an application located somewhere on
\ :math:`PATH</span></tt>. <em>&lt;app_parameter&gt;</em> is passed on to the application being launched.</p> <p>A simple Gtk example to launch gedit:</p> <pre>`
autopilot3 launch gedit

.. raw:: html

   </pre>

.. raw:: html

   <p>

A Qt example which passes on parameters to the application being
launched:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 launch qmlscene my_app.qml
   </pre>

.. raw:: html

   <p>

Autopilot launch attempts to detect if you are launching either a Gtk or
Qt application so that it can enable the correct libraries. If it is
unable to determine this you will need to specify the type of
application it is by using the -i argument. This allows “Gtk” or “Qt”
frameworks to be specified when launching the application. The default
value (“Auto”) will try to detect which interface to load automatically.

.. raw:: html

   </p>

.. raw:: html

   <p>

A typical error in this situation will be “Error: Could not determine
introspection type to use for application”. In which case the -i option
should be specified with the correct application framework type to fix
the problem:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 launch -i Qt address-book-app
   </pre>

.. raw:: html

   <p>

Once an application has launched with introspection enabled, it will be
possible to launch autopilot vis and view the introspection tree, see:
Visualise Introspection Tree.

.. raw:: html

   </p>

.. raw:: html

   <h2>

Visualise Introspection Tree

.. raw:: html

   </h2>

.. raw:: html

   <p>

A very common thing to want to do while writing autopilot tests is see
the structure of the application being tested. To support this,
autopilot includes a simple application to help visualize the
introspection tree. To start it, make sure the application you wish to
test is running (see: Launching an Application to Introspect), and then
run:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ autopilot3 vis</pre>

.. raw:: html

   <p>

The result should be a window similar to below:

.. raw:: html

   </p>

.. raw:: html

   <p>

Selecting a connection from the drop-down box allows you to inspect
different autopilot-supporting applications. If Unity is running, the
Unity connection should always be present. If other applications have
been started with the autopilot support enabled, they should appear in
this list as well. Once a connection is selected, the introspection tree
is rendered in the left-hand pane, and the details of each object appear
in the right-hand pane.

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot vis also has the ability to search the object tree for nodes
that match a given name (such as “LauncherController”, for example), and
draw a transparent overlay over a widget if it contains position
information. These tools, when combined can make finding certain parts
of an application introspection tree much easier.

.. raw:: html

   </p>
