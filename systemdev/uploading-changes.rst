Uploading and testing with ``ubports-qa``
=========================================

The `UBports build service <https://ci.ubports.com>`_ is capable of building Ubuntu Touch packages and deploying them to the `UBports repository <https://repo.ubports.com>`_. This capability is offered to any developer who wishes to take advantage of it.

This guide assumes that you have a cursory understanding of using Git and making Pull Requests on GitHub.

To use the `UBports build service`_, make sure you understand our :doc:`branch naming convention </about/process/branch-naming>`. It is required that you follow the convention for deb-packages for CI to build your package correctly.

Fork the repository
-------------------

The first step to make a change to any repository you don't have write access to is to fork it. Open your desired repository on GitHub and click the "Fork" button in the upper right corner. If offered, select an appropriate account to fork the repository to. Then, clone your fork to your computer.

Now you're ready to make changes!

Make and commit changes
-----------------------

Now that you have the package source downloaded, you can make your desired changes.

Before changing anything, make sure you have checked out the branch you want to work from (probably ``xenial``, assuming you are making changes for the phone images). Then, create a new branch abiding by the :doc:`branch naming convention </about/process/branch-naming>`.

After making your changes, commit them with a descriptive commit message stating what is wrong and why your changes fix that problem.

You have successfully created and committed your changes. Before pushing your changes, we'll want to make sure your device will install them.

Update the ``debian/changelog`` file
------------------------------------

Generally, ``apt`` will not install a new package from any repository if it has a lower (or the same) version number as the package it replaces. Users may also want to see the changes that are included in a new version of a package. For that reason, we will need to update the package changelog to add a new version.

.. note::

    This is not an exhaustive reference of the ``debian/changelog`` format. See `deb-changelog(5) <https://manpages.debian.org/testing/dpkg-dev/deb-changelog.5.en.html>`_ for more information.

Determine a new version number
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To start, figure out what the current version numbering for the package is::

    head debian/changelog

This will return a few lines, but the first is the most important to us::

    morph-browser (0.24+ubports2) xenial; urgency=medium

The part inside the parentheses ``(0.24+ubports2)`` is our version number. It consists of several parts:

#. The ``0.24`` is the *upstream version number*, the version that the original project maintainers give to the release we are using. For most UBports projects, the repository you'll be working on is the original project code. This makes UBports the "upstream" of that project.

If you are making large changes to the repository and UBports is the upstream, you should increment the first part of the version number before the plus (+) and reset the distribution suffix. In our example above, you would make this new version number::

    0.25+ubports0

If you are making changes only to the package build (files in the ``debian/`` folder), it is best to only increment the version suffix::

    0.24+ubports3

.. note::

    If you find a package which does not seem to follow the above versioning format, please contact us to ask how to proceed.

Write the changelog entry
^^^^^^^^^^^^^^^^^^^^^^^^^

Now it is time to write your changelog entry! Start with the following template::

    PACKAGE-NAME (VERSION) DISTRIBUTION; urgency=medium

      * CHANGES

    -- NAME <EMAIL>  DATETIME

If you open the ``debian/changelog`` file, you'll find that every entry follows this format. This helps everyone (including computers) read and understand the contents. This is used, for example, to name the output package correctly for every package version.

Let's assume I, John Doe, am making a packaging change to the ``morph-browser`` package for Ubuntu Touch. I'll replace the different all-caps placeholders above in the following way:

* PACKAGE-NAME is replaced with ``morph-browser``
* VERSION is replaced with ``0.24+ubports3`` (which we determined above)
* DISTRIBUTION is replaced with ``xenial``
* CHANGES is replaced with the changes I made in this release. This will include summarized information from my commit messages along with the bugs fixed by those changes. If I've fixed multiple bugs, I'll create multiple bullet points.
* NAME is replaced with my name, ``John Doe``
* EMAIL is replaced with my e-mail, ``john.doe@example.com``.

    .. note::

        You should not use a "noreply" e-mail as your EMAIL for package changelog entries.

* DATETIME is replaced with the date and time I made this changelog entry in RFC2822/RFC5322 format. The easiest way to retrieve this is by running the command ``date -R`` in a terminal.

Note that no line in your changelog entry should exceed 80 characters in length.

With that, my new changelog entry follows::

    morph-browser (0.24+ubports3) xenial; urgency=medium

      * Add the new "Hello world" script to the package. Fixes
        https://github.com/ubports/morph-browser/issues/404.
      * Fix whitespace and formatting in the format.qml file

    -- John Doe <john.doe@example.com>  Mon, 29 Oct 2018 12:53:08 -0500

Add your new changelog entry to the top of the ``debian/changelog`` file and commit it with the message "Update changelog". Push your changes. Now you're ready to make your Pull Request!

Create your pull request
------------------------

A pull request asks UBports maintainers to review your code changes and add them to the official repository. We'll create one now.

Open your fork of the repository on GitHub. Navigate to the branch that you just pushed to using the "Branch" selector:

.. image:: /_static/images/systemdev/branch-selector.png
   :scale: 50%
   :alt: Using the branch selector on GitHub

Once you've opened your desired branch, click the "New pull request" button to start your pull request. You'll be taken to a page where you can review your changes and create a pull request.

Give your pull request a descriptive title and description (include links to reference bugs or other material). Ensure that the "base" branch is the one you want your changes to be applied to (likely ``xenial``), then click "Create pull request".

With your pull request created, we can move on to testing your changes using the UBports build service!

Test your changes
-----------------

Once your pull request is built (a green check mark appears next to your last commit), you are ready to test your changes on your device.

.. note::

    If a red "X" appears next to your last commit, your pull request has failed to build. Click the red "X" to view the build log. Until your build errors are resolved, your pull request cannot be installed or accepted.

We'll use ``ubports-qa`` to install your changes. Take note of your pull request's ID (noted as ``#number`` after the title of the pull request) and follow these steps to install your changes:

#. Ensure your device is running the newest version of Ubuntu Touch from the ``devel`` channel.
#. Get shell access to your device using :doc:`/userguide/advanceduse/adb` or :doc:`/userguide/advanceduse/ssh`.
#. Run ``sudo ubports-qa install REPOSITORY PR``, replacing ``REPOSITORY`` with the name of the repository you have submitted a PR to (``morph-browser`` for example) and PR with the number of your pull request (without the ``#``).

``ubports-qa`` will automatically add the repository containing your changed software and start the installation for you. All you will need to do is check the packages it asks you to install and say "yes" if they are correct.

If ``ubports-qa`` fails to install your packages, run it again with the ``-v`` flag (for example, ``ubports-qa -v install ...``). If it still fails, submit the entire log (starting from the ``$`` before the ``ubports-qa`` command) to `Ubuntu Pastebin <https://paste.ubuntu.com/>`_ and contact us for help.

Once ``ubports-qa`` is finished, test your changes to ensure they have fixed the original bug. Add the ``ubports-qa`` command to your pull request, then send the link to the pull request to other developers and testers so they may also test your changes.

When getting feedback from your testers, be sure to add the information to the pull request (or ask them to do it for you) so that everyone is updated on the status of your code.

Every time you make a change and push it to GitHub, it will trigger a new build. You can run ``sudo ubports-qa update`` to get the freshest changes every time this happens.

Celebrate!
----------

If you and your testers are satisfied with the results of your pull request, it will be merged. Following the merge, the UBports build service will build your code and deploy it to Ubuntu Touch users worldwide.

Thank you for your contribution to Ubuntu Touch!
