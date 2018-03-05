Branch-naming convention
========================

Every repo's readme should state which branch-naming-convention is used and possible deviations from the norm.

Click-Packages
--------------

Software that is exclusively distributed as a click-package (and not also as a deb) only uses one ``master`` branch that is protected. Separate temporary development branches with arbitrary descriptive names can be created and merged into master when the time comes. For marking and archiving milestones in development history, ideally Git tags or GitHub releases should be used.

Deb-Packages
------------

To make most efficient use of our CI system, a special naming convention for git-branches is used.

For pre-installed Ubuntu Touch components, deb-packages are used whereever possible. This includes coreapps, since they can still be independently updated using click-package downloads from the openstore. This policy allows us to make use of the powerful debian build system to resolve dependencies.

Every repository that uses this convention will have branches for the actively supported Ubuntu releases referenced by their codenames (``bionic``, ``xenial``, ``vivid``, etc.). These are the brances that are built directly into the corresponding images and published on :doc:`repo.ubports.com <ppa>`. If no separate versions for the different Ubuntu bases are needed, the repository will just have one ```master`` branch and the CI system will still build versions for all actively supported releases and resolve dependencies accordingly.

Branch-extensions
^^^^^^^^^^^^^^^^^

To build and publish packages based on a release, an extension in the form of  ``xenial_-_some-descriptive_extension`` can be used. The CI system will then resolve all dependencies using the ``xenial_-_some-descriptive_extension`` branch of other repositories or fall back on the normal ``xenial`` dependencies, if that doesn't exist. These special dependencies are not built into the image but still pushed to  on :doc:`repo.ubports.com <ppa>`.

Multiple branch extensions can be chained together in the form of ``xenial_-_dependency-1_-_dependency-2_-_dependency-3``. This means, that the CI system will look for dependencies in the following PPAs:

.. code-block:: text

    xenial
    xenial_-_dependency-1
    xenial_-_dependency-1_-_dependency-2
    xenial_-_dependency-1_-_dependency-2_-_dependency-3

.. note::

    There is no prioritization, so the build system will always use the package with the highest version number or the newest build if the number is equal.

Dependency-file
^^^^^^^^^^^^^^^

For complex or non-linear dependencies, a ``ubports.depends`` file can be created in the root of the repository to specify additional dependencies. The branch name will be ignored if this file exists!

.. code-block:: text

    xenial
    xenial_-_dependency-1_-_dependency-2_-_dependency-3
    xenial_-_something-else

.. note::

    The ``ubports.depends`` file is an **exclusive list**, so the build system will not resolve dependencies linearly like it does in a branch name! Every dependency has to be listed. You will almost always want to include your base release (i.e. ``xenial``).
