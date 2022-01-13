UBports Debian repository
=========================

repo.ubports.com
----------------

This is the legacy package repository for UBports projects.  It hosts the Debian packages of the current stable release.

repo2.ubports.com
-----------------

This is the current package repository for UBports projects.  It contains Debian packages of the development version of Ubuntu Touch and various PPAs.

Repository naming convention
----------------------------

Native packages
^^^^^^^^^^^^^^^

Native packages (e.g. https://gitlab.com/ubports/core/lomiri-system-settings) are repositories that contain a ``debian/`` folder **with** the source used to create the Debian source package.

The name of the Debian source package generated from the repository and the name of the Git-repository should be the same.

Non-native packages
^^^^^^^^^^^^^^^^^^^

Non-native package repositories (e.g. https://gitlab.com/ubports/core/packaging/sensorfw) contain a ``debian`` folder **without** the source used to create the Debian source package.
The URL of the upstream source tarball and filename of the ``.orig.tar.gz`` archive must be specified on a separate line each in a file called ``ubports.source_location`` inside the ``debian`` directory.  The CI system uses this information to download and rename the upstream sources and to create a Debian source package.

Creating new PPAs
-----------------

New PPAs can be created dynamically by the CI server using a special :doc:`git-branch naming convention <branch-naming>`. The name of the branch translates literally to the name of the PPA which is a distribution in the package repository at: ``https://repo2.ubports.com/dists/[branch name]``
