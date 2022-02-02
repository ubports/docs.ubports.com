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

A Git repository following this convention usually has a ``main`` branch as well as branches corresponding to each release of Ubuntu Touch the package is part of.  Development takes place in the ``main`` branch whereas the release specific branches are only used for stable release updates of the actively supported releases.  The release specific branches are named after the codenames of the Ubuntu releases they are based on and are prefixed with ``ubports/`` (e.g. ``ubports/xenial``).

The CI system automatically builds packages for the aforementioned branches for different releases based on the following conventions:

- If a package is not part of a released version of Ubuntu Touch yet, only a ``main`` branch is needed.  Packages will be built for the current in-development version as well as all supported stable releases.  If the latter is not desired, branches containing only a README file should be created for those releases.
- If a package is part of a released version of Ubuntu Touch, the ``main`` branch will be built for the current in-development version as well as supported stable versions for which no release-specific branch exist.  Release-specific branches will only be built for that release.  If e.g. a branch ``ubports/xenial`` exists and a commit is added to it, packages will only be built for Ubuntu Touch 16.04 but not any other release.

Packages built from these branches are directly built into their respective images and also published in the package repositories on ``repo.ubports.com`` for the 16.04 release and ``repo2.ubports.com`` in case of the 20.04 release currently under development.

Branch Names and PPAs
^^^^^^^^^^^^^^^^^^^^^

Branch names following a certain naming scheme can be used to create :doc:`personal packaging archives (PPAs) <ppa>` and to instruct the CI system to resolve dependencies using other PPAs.
More specifically, such branch names start with a release-specific name followed by a chain of distribution names separated by ``_-_``.
For example ``ubports/focal_-_my-feature`` instructs the CI system to resolve build dependencies using the ``focal`` and, if it already exists, a ``my-feature`` distribution.  The resulting packages will be published on ``repo2.ubports.com`` in their own separate distribution ``my-feature``.  This feature can be used to test one or more packages in combination during development.

If multiple branch-based distributions are chained together in the form of ``ubports/focal_-_dependency-1_-_dependency-2_-_dependency-3``, the CI system will look for dependencies in the following distributions in the repository at ``repo2.ubports.com``:

.. code-block:: text

    focal
    focal_-_dependency-1
    focal_-_dependency-1_-_dependency-2
    focal_-_dependency-1_-_dependency-2_-_dependency-3

.. note::

    There is no prioritization, so the build system will always use the package with the highest version number, or the newest build if the version is equal.

Dependency-file
^^^^^^^^^^^^^^^

For complex or non-linear dependencies, a ``ubports.depends`` file can be created in the root of the repository to specify additional dependencies. The branch name will be ignored if this file exists.

.. code-block:: text

    focal
    focal_-_dependency-1_-_dependency-2_-_dependency-3
    focal_-_something-else

.. note::

    The ``ubports.depends`` file is an **exclusive list**, so the build system will not resolve dependencies linearly like it does in a branch name! Every dependency has to be listed. You will almost always want to include your base release (i.e. ``focal``).
