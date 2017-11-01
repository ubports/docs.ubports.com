
Contents

-  `Contribute </sdk/autopilot/python/faq-contribute#contribute>`__

   -  `Autopilot:
      Contributing </sdk/autopilot/python/faq-contribute#autopilot-contributing>`__

      -  `Q. How can I contribute to
         autopilot? </sdk/autopilot/python/faq-contribute#q-how-can-i-contribute-to-autopilot>`__
      -  `Q. Where can I get help /
         support? </sdk/autopilot/python/faq-contribute#q-where-can-i-get-help-support>`__
      -  `Q. How do I download the
         code? </sdk/autopilot/python/faq-contribute#q-how-do-i-download-the-code>`__
      -  `Q. How do I submit the code for a merge
         proposal? </sdk/autopilot/python/faq-contribute#q-how-do-i-submit-the-code-for-a-merge-proposal>`__
      -  `Q. How do I list or run the tests for the autopilot source
         code? </sdk/autopilot/python/faq-contribute#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code>`__
      -  `Q. Which version of Python can Autopilot
         use? </sdk/autopilot/python/faq-contribute#q-which-version-of-python-can-autopilot-use>`__

.. rubric:: `Autopilot:
   Contributing </sdk/autopilot/python/faq-contribute#id2>`__\ ` <#autopilot-contributing>`__
   :name: autopilot-contributing

.. rubric:: `Q. How can I contribute to
   autopilot? </sdk/autopilot/python/faq-contribute#id3>`__\ ` <#q-how-can-i-contribute-to-autopilot>`__
   :name: q.-how-can-i-contribute-to-autopilot

-  

   Documentation: We can always use more documentation.
       -  if you don’t know how to submit a merge proposal on launchpad,
          you can write a
          `bug <https://bugs.launchpad.net/autopilot/+filebug>`__ with
          new documentation and someone will submit a merge proposal for
          you. They will give you credit for your documentation in the
          merge proposal.

-  New Features: Check out our existing
   `Blueprints <https://blueprints.launchpad.net/autopilot>`__ or create
   some yourself... Then code!

-  Test and Fix: No project is perfect, log some
   `bugs <https://bugs.launchpad.net/autopilot/+filebug>`__ or `fix some
   bugs <https://bugs.launchpad.net/autopilot>`__.

.. rubric:: `Q. Where can I get help /
   support? </sdk/autopilot/python/faq-contribute#id4>`__\ ` <#q-where-can-i-get-help-support>`__
   :name: q.-where-can-i-get-help-support

The developers hang out in the #ubuntu-autopilot IRC channel on
irc.freenode.net.

.. rubric:: `Q. How do I download the
   code? </sdk/autopilot/python/faq-contribute#id5>`__\ ` <#q-how-do-i-download-the-code>`__
   :name: q.-how-do-i-download-the-code

Autopilot is using Launchpad and Bazaar for source code hosting. If
you’re new to Bazaar, or distributed version control in general, take a
look at the `Bazaar mini-tutorial
first. <http://doc.bazaar.canonical.com/bzr.dev/en/mini-tutorial/index.html>`__

Install bzr open a terminal and type:

::

    $ sudo apt-get install bzr

Download the code:

::

    $ bzr branch lp:autopilot

This will create an autopilot directory and place the latest code there.
You can also view the autopilot code `on the
web <https://launchpad.net/autopilot>`__.

   class="section">

.. rubric:: `Q. How do I submit the code for a merge
   proposal? </sdk/autopilot/python/faq-contribute#id6>`__\ ` <#q-how-do-i-submit-the-code-for-a-merge-proposal>`__
   :name: q.-how-do-i-submit-the-code-for-a-merge-proposal

After making the desired changes to the code or documentation and making
sure the tests still run type:

::

    $ bzr commit

Write a quick one line description of the bug that was fixed or the
documentation that was written.

Signup for a `launchpad
account <https://help.launchpad.net/YourAccount/NewAccount>`__, if you
don’t have one. Then using your launchpad id type:

::

    $ bzr push lp:~<launchpad-id>/autopilot/<text about merge here>

Example:

::

    $ bzr push lp:~chris.gagnon/autopilot/bug-fix-lp234567

All new features should have unit and/or functional test to make sure
someone doesn’t remove or break your new code with a future commit.

   id="q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code"
   class="section">

.. rubric:: `Q. How do I list or run the tests for the autopilot source
   code? </sdk/autopilot/python/faq-contribute#id7>`__\ ` <#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code>`__
   :name: q.-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code

Running autopilot from the source code root directory (the directory
containing the autopilot/ bin/ docs/ debian/ etc. directories) will use
the local copy and not the system installed version.

An example from branching to running:

::

    $ bzr branch lp:autopilot ~/src/autopilot/trunk
    $ cd ~/src/autopilot/trunk
    $ python3 -m autopilot.run list autopilot.tests

    Loading tests from: /home/example/src/autopilot/trunk

    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_for_non_running_app_fails
    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_proxy_for_running_app_not_on_dbus_fails

    # .. snip ..

    autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

    255 total tests.

Note

The ‘Loading tests from:’ or ‘Running tests from:’ line will inform you
where autopilot is loading the tests from.

To run a specific suite or a single test in a suite, be more specific
with the tests path.

For example, running all unit tests:

::

    $ python3 -m autopilot.run run autopilot.tests.unit

For example, running just the ‘InputStackKeyboardTypingTests’ suite:

::

    $ python3 -m autopilot.run run autopilot.tests.functional.test_input_stack.InputStackKeyboardTypingTests

Or running a single test in the ‘test\_version\_utility\_fns’ suite:

::

    $ python3 -m autopilot.run run autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

   class="section">

.. rubric:: `Q. Which version of Python can Autopilot
   use? </sdk/autopilot/python/faq-contribute#id8>`__\ ` <#q-which-version-of-python-can-autopilot-use>`__
   :name: q.-which-version-of-python-can-autopilot-use

Autopilot supports Python 3.4.

