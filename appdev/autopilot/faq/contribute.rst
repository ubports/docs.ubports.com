faq-contribute
==============

.. raw:: html

   <p class="topic-title first">

Contents

.. raw:: html

   </p>

.. raw:: html

   <ul class="simple">

.. raw:: html

   <li>

Contribute

.. raw:: html

   <ul>

.. raw:: html

   <li>

Autopilot: Contributing

.. raw:: html

   <ul>

.. raw:: html

   <li>

Q. How can I contribute to autopilot?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. Where can I get help / support?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I download the code?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I submit the code for a merge proposal?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. How do I list or run the tests for the autopilot source code?

.. raw:: html

   </li>

.. raw:: html

   <li>

Q. Which version of Python can Autopilot use?

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2>

Autopilot: Contributing

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Q. How can I contribute to autopilot?

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

Documentation: We can always use more documentation.

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

if you don’t know how to submit a merge proposal on launchpad, you can
write a bug with new documentation and someone will submit a merge
proposal for you. They will give you credit for your documentation in
the merge proposal.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

New Features: Check out our existing Blueprints or create some
yourself... Then code!

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

.. raw:: html

   <p class="first">

Test and Fix: No project is perfect, log some bugs or fix some bugs.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Q. Where can I get help / support?

.. raw:: html

   </h3>

.. raw:: html

   <p>

The developers hang out in the #ubuntu-autopilot IRC channel on
irc.freenode.net.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. How do I download the code?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Autopilot is using Launchpad and Bazaar for source code hosting. If
you’re new to Bazaar, or distributed version control in general, take a
look at the Bazaar mini-tutorial first.

.. raw:: html

   </p>

.. raw:: html

   <p>

Install bzr open a terminal and type:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ sudo apt-get install bzr
   </pre>

.. raw:: html

   <p>

Download the code:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ bzr branch lp:autopilot
   </pre>

.. raw:: html

   <p>

This will create an autopilot directory and place the latest code there.
You can also view the autopilot code on the web.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. How do I submit the code for a merge proposal?

.. raw:: html

   </h3>

.. raw:: html

   <p>

After making the desired changes to the code or documentation and making
sure the tests still run type:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ bzr commit
   </pre>

.. raw:: html

   <p>

Write a quick one line description of the bug that was fixed or the
documentation that was written.

.. raw:: html

   </p>

.. raw:: html

   <p>

Signup for a launchpad account, if you don’t have one. Then using your
launchpad id type:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ bzr push lp:~&lt;launchpad-id&gt;/autopilot/&lt;text about merge here&gt;
   </pre>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ bzr push lp:~chris.gagnon/autopilot/bug-fix-lp234567
   </pre>

.. raw:: html

   <p>

All new features should have unit and/or functional test to make sure
someone doesn’t remove or break your new code with a future commit.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Q. How do I list or run the tests for the autopilot source code?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Running autopilot from the source code root directory (the directory
containing the autopilot/ bin/ docs/ debian/ etc. directories) will use
the local copy and not the system installed version.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example from branching to running:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ bzr branch lp:autopilot ~/src/autopilot/trunk
   $ cd ~/src/autopilot/trunk
   $ python3 -m autopilot.run list autopilot.tests
   Loading tests from: /home/example/src/autopilot/trunk
   autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_for_non_running_app_fails
   autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_proxy_for_running_app_not_on_dbus_fails
   # .. snip ..
   autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source
   255 total tests.
   </pre>

.. raw:: html

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The ‘Loading tests from:’ or ‘Running tests from:’ line will inform you
where autopilot is loading the tests from.

.. raw:: html

   </p>

.. raw:: html

   <p>

To run a specific suite or a single test in a suite, be more specific
with the tests path.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, running all unit tests:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ python3 -m autopilot.run run autopilot.tests.unit
   </pre>

.. raw:: html

   <p>

For example, running just the ‘InputStackKeyboardTypingTests’ suite:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ python3 -m autopilot.run run autopilot.tests.functional.test_input_stack.InputStackKeyboardTypingTests
   </pre>

.. raw:: html

   <p>

Or running a single test in the ‘test\_version\_utility\_fns’ suite:

.. raw:: html

   </p>

.. raw:: html

   <pre>$ python3 -m autopilot.run run autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source
   </pre>

.. raw:: html

   <h3>

Q. Which version of Python can Autopilot use?

.. raw:: html

   </h3>

.. raw:: html

   <p>

Autopilot supports Python 3.4.

.. raw:: html

   </p>
