This document contains hints as to what is required to port a test suite
from any version of autopilot to any newer version.

Contents

-  `Porting Autopilot
   Tests </sdk/autopilot/python/porting-porting#porting-autopilot-tests>`__

   -  `A note on
      Versions </sdk/autopilot/python/porting-porting#a-note-on-versions>`__
   -  `Porting to Autopilot
      v1.4.x </sdk/autopilot/python/porting-porting#porting-to-autopilot-v1-4-x>`__

      -  `Gtk Tests and Boolean
         Parameters </sdk/autopilot/python/porting-porting#gtk-tests-and-boolean-parameters>`__
      -  ```select_single``
         Changes </sdk/autopilot/python/porting-porting#select-single-changes>`__
      -  `DBus backends and ``DBusIntrospectionObject``
         changes </sdk/autopilot/python/porting-porting#dbus-backends-and-dbusintrospectionobject-changes>`__
      -  `Python 3 </sdk/autopilot/python/porting-porting#python-3>`__

   -  `Porting to Autopilot
      v1.3.x </sdk/autopilot/python/porting-porting#porting-to-autopilot-v1-3-x>`__

      -  ```QtIntrospectionTestMixin`` and ``GtkIntrospectionTestMixin``
         no longer
         exist </sdk/autopilot/python/porting-porting#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist>`__
      -  ```autopilot.emulators`` namespace has been
         deprecated </sdk/autopilot/python/porting-porting#autopilot-emulators-namespace-has-been-deprecated>`__

.. rubric:: `A note on
   Versions </sdk/autopilot/python/porting-porting#id2>`__\ ` <#a-note-on-versions>`__
   :name: a-note-on-versions

Autopilot releases are reasonably tightly coupled with Ubuntu releases.
However, the autopilot authors maintain separate version numbers, with
the aim of separating the autopilot release cadence from the Ubuntu
platform release cadence.

Autopilot versions earlier than 1.2 were not publicly announced, and
were only used within Canonical. For that reason, this document assumes
that version 1.2 is the lowest version of autopilot present “in the
wild”.

.. rubric:: `Porting to Autopilot
   v1.4.x </sdk/autopilot/python/porting-porting#id3>`__\ ` <#porting-to-autopilot-v1-4-x>`__
   :name: porting-to-autopilot-v1.4.x

The 1.4 release contains several changes that required a break in the
DBus wire protocol between autopilot and the applications under test.
Most of these changes require no change to test code.

.. rubric:: `Gtk Tests and Boolean
   Parameters </sdk/autopilot/python/porting-porting#id4>`__\ ` <#gtk-tests-and-boolean-parameters>`__
   :name: gtk-tests-and-boolean-parameters

Version 1.3 of the autopilot-gtk backend contained `a
bug <https://bugs.launchpad.net/autopilot-gtk/+bug/1214249>`__ that
caused all Boolean properties to be exported as integers instead of
boolean values. This in turn meant that test code would fail to return
the correct objects when using selection criteria such as:

::

    visible_buttons = app.select_many("GtkPushButton", visible=True)

and instead had to write something like this:

::

    visible_buttons = app.select_many("GtkPushButton", visible=1)

This bug has now been fixed, and using the integer selection will fail.

.. rubric:: ```select_single``
   Changes </sdk/autopilot/python/porting-porting#id5>`__\ ` <#select-single-changes>`__
   :name: select_single-changes

The ``select_single`` method used to return ``None`` in the case where
no object was found that matched the search criteria. This led to rather
awkward code in places where the object you are searching for is being
created dynamically:

::

    for i in range(10):
            my_obj = self.app.select_single("MyObject")
            if my_obj is not None:
                    break
            time.sleep(1)
    else:
            self.fail("Object 'MyObject' was not found within 10 seconds.")

This makes the authors intent harder to discern. To improve this
situation, two changes have been made:

#. ``select_single`` raises a ``StateNotFoundError`` exception if the
   search terms returned no values, rather than returning ``None``.

#. If the object being searched for is likely to not exist, there is a
   new method: ``wait_select_single`` will try to retrieve an object for
   10 seconds. If the object does not exist after that timeout, a
   ``StateNotFoundError`` exception is raised. This means that the above
   code example should now be written as:

   .. raw:: html

      <div class="highlight-python">

   .. raw:: html

      <div class="highlight">

   ::

       my_obj = self.app.wait_select_single("MyObject")

   .. raw:: html

      </div>

   .. raw:: html

      </div>

   class="section">

.. rubric:: `DBus backends and ``DBusIntrospectionObject``
   changes </sdk/autopilot/python/porting-porting#id6>`__\ ` <#dbus-backends-and-dbusintrospectionobject-changes>`__
   :name: dbus-backends-and-dbusintrospectionobject-changes

Due to a change in how ``DBusIntrospectionObject`` objects store their
DBus backend a couple of classmethods have now become instance methods.

These affected methods are:

    .. raw:: html

       <div>

    -  ``get_all_instances``
    -  ``get_root_instance``
    -  ``get_state_by_path``

    .. raw:: html

       </div>

For example, if your old code is something along the lines of:

::

    all_keys = KeyCustomProxy.get_all_instances()

You will instead need to have something like this instead:

::

    all_keys = app_proxy.select_many(KeyCustomProxy)

.. rubric:: `Python
   3 </sdk/autopilot/python/porting-porting#id7>`__\ ` <#python-3>`__
   :name: python-3

Starting from version 1.4, autopilot supports python 3 as well as python
2. Test authors can choose to target either version of python.

.. rubric:: `Porting to Autopilot
   v1.3.x </sdk/autopilot/python/porting-porting#id8>`__\ ` <#porting-to-autopilot-v1-3-x>`__
   :name: porting-to-autopilot-v1.3.x

The 1.3 release included many API breaking changes. Earlier versions of
autopilot made several assumptions about where tests would be run, that
turned out not to be correct. Autopilot 1.3 brought several much-needed
features, including:

-  A system for building pluggable implementations for several core
   components. This system is used in several areas:

    .. raw:: html

       <div>

    -  The input stack can now generate events using either the X11
       client libraries, or the UInput kernel driver. This is necessary
       for devices that do not use X11.
    -  The display stack can now report display information for systems
       that use both X11 and the mir display server.
    -  The process stack can now report details regarding running
       processes & their windows on both Desktop, tablet, and phone
       platforms.

    .. raw:: html

       </div>

-  A large code cleanup and reorganisation. In particular, lots of code
   that came from the Unity 3D codebase has been removed if it was
   deemed to not be useful to the majority of test authors. This code
   cleanup includes a flattening of the autopilot namespace. Previously,
   many useful classes lived under the ``autopilot.emulators``
   namespace. These have now been moved into the ``autopilot``
   namespace.

Note

There is an API breakage in autopilot 1.3. The changes outlined under
the heading “\ `*DBus backends and DBusIntrospectionObject
changes* </sdk/autopilot/python/porting-porting#dbus-backends>`__\ ”
apply to version 1.3.1+13.10.20131003.1-0ubuntu1 and onwards .

   id="qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist"
   class="section">

.. rubric:: ```QtIntrospectionTestMixin`` and
   ``GtkIntrospectionTestMixin`` no longer
   exist </sdk/autopilot/python/porting-porting#id9>`__\ ` <#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist>`__
   :name: qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist

In autopilot 1.2, tests enabled application introspection services by
inheriting from one of two mixin classes: ``QtIntrospectionTestMixin``
to enable testing Qt4, Qt5, and Qml applications, and
``GtkIntrospectionTestMixin`` to enable testing Gtk 2 and Gtk3
applications. For example, a test case class in autopilot 1.2 might look
like this:

::

    from autopilot.introspection.qt import QtIntrospectionTestMixin
    from autopilot.testcase import AutopilotTestCase

    class MyAppTestCase(AutopilotTestCase, QtIntrospectionTestMixin):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app")

In Autopilot 1.3, the
```AutopilotTestCase`` </sdk/autopilot/python/autopilot.testcase/AutopilotTestCase#autopilot.testcase.AutopilotTestCase>`__
class contains this functionality directly, so the
``QtIntrospectionTestMixin`` and ``GtkIntrospectionTestMixin`` classes
no longer exist. The above example becomes simpler:

::

    from autopilot.testcase import AutopilotTestCase

    class MyAppTestCase(AutopilotTestCase):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app")

Autopilot will try and determine the introspection type automatically.
If this process fails, you can specify the application type manually:

::

    from autopilot.testcase import AutopilotTestCase

    class MyAppTestCase(AutopilotTestCase):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app", app_type='qt')

See also

Method
```autopilot.testcase.AutopilotTestCase.launch_test_application`` </sdk/autopilot/python/autopilot.testcase/AutopilotTestCase#autopilot.testcase.AutopilotTestCase.launch_test_application>`__
    Launch test applications.

   class="section">

.. rubric:: ```autopilot.emulators`` namespace has been
   deprecated </sdk/autopilot/python/porting-porting#id10>`__\ ` <#autopilot-emulators-namespace-has-been-deprecated>`__
   :name: autopilot.emulators-namespace-has-been-deprecated

In autopilot 1.2 and earlier, the ``autopilot.emulators`` package held
several modules and classes that were used frequently in tests. This
package has been removed, and it’s contents merged into the autopilot
package. Below is a table showing the basic translations that need to be
made:

+----------------------------------+-----------------------------------------+
| Old module                       | New Module                              |
+==================================+=========================================+
| ``autopilot.emulators.input``    | ``autopilot.input``                     |
+----------------------------------+-----------------------------------------+
| ``autopilot.emulators.X11``      | Deprecated - use ``autopilot.input``    |
|                                  | for input and ``autopilot.display`` for |
|                                  | getting display information.            |
+----------------------------------+-----------------------------------------+
| ``autopilot.emulators.bamf``     | Deprecated - use ``autopilot.process``  |
|                                  | instead.                                |
+----------------------------------+-----------------------------------------+

