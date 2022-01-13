Branch-naming convention
========================

Our branch-naming convention ensures software can be built by our CI and tested easily by other developers.

Every Git repository's README file should state which branch-naming convention is used and any deviations from the norm.

Click-Packages
--------------

Software exclusively distributed as a click-package (and not also as a DEB) only uses one ``master`` branch that is protected. Separate temporary development branches with arbitrary descriptive names can be created and merged into master when the time comes. Ideally Git tags or GitHub releases should be used to mark and archive milestones in the development history.

DEB Packages
------------

To make most efficient use of our CI system, a special naming convention for Git branches is used.

For pre-installed Ubuntu Touch components, DEB-packages are used wherever possible. This includes Core apps, since they can still be independently updated using click-package downloads from the OpenStore. This policy allows making use of the powerful Debian build-system to resolve dependencies.

Every repository using this convention will have branches for the actively supported Ubuntu releases referenced by their codenames and prefixed with ``ubports/`` (``ubports/focal``, ``ubports/xenial``, etc.). These are the branches built directly into the corresponding images and published on ``repo.ubports.com`` for the stable release and :doc:`repo2.ubports.com <ppa>` for the current development version.

Usually there will be branches corresponding to each release of Ubuntu Touch which will be used for stable release updates whereas development takes place in the ``main`` branch. If no separate versions for the different Ubuntu bases are needed, the repository will have one ``main`` branch.
In the presence of release-specific branches the CI system will only build packages for the specific release a branch is associated with by name or the development version in case of the ``main`` branch. If e.g. a branch ``ubports/xenial`` exists and a commit is added to it, packages will only be built for Ubuntu Touch 16.04 but not any other release.
If only a ``main`` branch exists, packages will be built for all actively supported releases.

Branch-extensions
^^^^^^^^^^^^^^^^^

To build and publish packages based on another repository, an extension in the form of  ``xenial_-_some-descriptive_extension`` can be used. The CI system will then resolve all dependencies using the ``xenial_-_some-descriptive_extension`` branch of other repositories or fall back to using the normal ``xenial`` dependencies, if it doesn't exist. These special dependencies are not built into the image, but still pushed to :doc:`repo.ubports.com <ppa>`.

Multiple branch extensions can be chained together in the form of ``xenial_-_dependency-1_-_dependency-2_-_dependency-3``. This means the CI system will look for dependencies in the following repositories:

.. code-block:: text

    xenial
    xenial_-_dependency-1
    xenial_-_dependency-1_-_dependency-2
    xenial_-_dependency-1_-_dependency-2_-_dependency-3

.. note::

    There is no prioritization, so the build system will always use the package with the highest version number, or the newest build if the version is equal.

Dependency-file
^^^^^^^^^^^^^^^

For complex or non-linear dependencies, a ``ubports.depends`` file can be created in the root of the repository to specify additional dependencies. The branch name will be ignored if this file exists.

.. code-block:: text

    xenial
    xenial_-_dependency-1_-_dependency-2_-_dependency-3
    xenial_-_something-else

.. note::

    The ``ubports.depends`` file is an **exclusive list**, so the build system will not resolve dependencies linearly like it does in a branch name! Every dependency has to be listed. You will almost always want to include your base release (i.e. ``xenial``).
