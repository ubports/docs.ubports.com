autopilot.testcase
==================

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <h2>

Quick Start

.. raw:: html

   </h2>

.. raw:: html

   <p>

The AutopilotTestCase is the main class test authors will be interacting
with. Every autopilot test case should derive from this class.
AutopilotTestCase derives from testtools.TestCase, so test authors can
use all the methods defined in that class as well.

.. raw:: html

   </p>

.. raw:: html

   <p>

Writing tests

.. raw:: html

   </p>

.. raw:: html

   <p>

Tests must be named: test\_<testname>, where <testname> is the name of
the test. Test runners (including autopilot itself) look for methods
with this naming convention. It is recommended that you make your test
names descriptive of what each test is testing. For example, possible
test names include:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">test_ctrl_p_opens_print_dialog</span>
   <span class="n">test_dash_remembers_maximized_state</span>
   </pre>

.. raw:: html

   <p>

Launching the Application Under Test

.. raw:: html

   </p>

.. raw:: html

   <p>

If you are writing a test for an application, you need to use the
launch\_test\_application method. This will launch the application,
enable introspection, and return a proxy object representing the root of
the application introspection tree.

.. raw:: html

   </p>

.. raw:: html

   <!-- End Namespace Content -->

.. raw:: html

   <h3>

Elements

.. raw:: html

   </h3>

.. raw:: html

   <dl>

.. raw:: html

   <dt>

AutopilotTestCase

.. raw:: html

   </dt>

.. raw:: html

   <dd>

Wrapper around testtools.TestCase that adds significant functionality.

.. raw:: html

   </dd>

.. raw:: html

   </dl>
