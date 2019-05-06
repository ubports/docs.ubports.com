repo.ubports.com
================

This is the package archive system for UBports projects. It hosts various PPAs containing all deb-components of Ubuntu Touch.

Repository naming convention
----------------------------

Native packages
^^^^^^^^^^^^^^^

Native packages are repositories which contain a ``debian/`` directory **with** the source used to create the Debian source package (``.dsc``).

The name of the Debian source package generated from the repository and the name of the git-repository should be the same.

Packaging repositories
^^^^^^^^^^^^^^^^^^^^^^

Packaging repositories contain a ``debian/`` directory **without** the source used to create the Debian source package (``.dsc``). They also contain instructions to tell ``debhelper`` how to get the source used to create the source package.

The repository should have the name of the source package it generates with ``-packaging`` appended to the end. For example, a packaging repository that generates a source package called ``sandwich`` would be called ``sandwich-packaging``.

Creating new PPAs
-----------------

New PPAs can be created dynamically by the CI server using a special :doc:`git-branch naming convention <branch-naming>`. The name of the branch translates literally to the name of the PPA: ``http://repo.ubports.com/dists/[branch name]``

Non-standard PPAs (i.e. not ``xenial``, ``vivid`` or ``bionic``) are kept for three months. In case they need to be kept for a longer time, a file with the name ``ubports.keep`` can be created in the root of the repository, containing the date until which the PPA shall be kept open in the form of ``YYYY-MM-dd``. If this file is empty, the PPA will be kept for two years after the last build.
