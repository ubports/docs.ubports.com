repo.ubports.com
================

This is the package archive system for UBports projects. It hosts various PPAs containing all the DEB-components of Ubuntu Touch.

Repository naming convention
----------------------------

Native packages
^^^^^^^^^^^^^^^

Native packages are repositories which contain a ``DEBIAN/`` folder **with** the source used to create the DEB source package (``.dsc``).

The name of the Debian source package generated from the repository and the name of the Git-repository should be the same.

Packaging repositories
^^^^^^^^^^^^^^^^^^^^^^

Packaging repositories contain a ``DEBIAN`` folder **without** the source used to create the Debian source package (``.dsc``).
They also contain instructions to tell ``debhelper`` how to get the sources used to create the source package.

The repository should have the name of the source package it generates with ``-packaging`` appended to the end.
For example, a packaging repository that generates a source package called ``sandwich`` would be called ``sandwich-packaging``.

Creating new PPAs
-----------------

New PPAs can be created dynamically by the CI server using a special :doc:`git-branch naming convention <branch-naming>`. The name of the branch translates literally to the name of the PPA: ``http://repo.ubports.com/dists/[branch name]``

Non-standard PPAs (i.e. not ``vivid``, ``xenial``, or ``bionic``) are kept for three months.
If they need to be kept for longer, a file with the name ``ubports.keep`` containing a date in the form of in the form of ``YYYY-MM-dd`` can be used to decide how long to keep the PPA in the repository for.
If this file is empty, the PPA will be kept for two years after the last build.
