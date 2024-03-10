Debian packaging guide
======================

.. note::
    This guide is still a work in progress. Please help us complete this document.

Native vs. non-native packages
------------------------------

Native packages
^^^^^^^^^^^^^^^

Native packages (e.g. https://gitlab.com/ubports/core/lomiri-system-settings) are repositories that contain a ``debian/`` folder **with** the source used to create the Debian source package.

The name of the Debian source package generated from the repository and the name of the Git-repository should be the same.

Non-native packages
^^^^^^^^^^^^^^^^^^^

Non-native package repositories (e.g. https://gitlab.com/ubports/core/packaging/sensorfw) contain a ``debian`` folder, usually without the source used to create the Debian source package.
The URL of the upstream source tarball and filename of the ``.orig.tar.gz`` archive must be specified on a separate line each in a file called ``ubports.source_location`` inside the ``debian`` directory.  The CI system uses this information to download and rename the upstream sources and to create a Debian source package.

.. note::
    Some non-native package repositories may contain source code. However, if they contain `debian/ubports.source_location`, they are still packaging repos. Any customization has to still be done using patches in `debian/patches`. Do NOT modify files outside of `debian/`, or CI will fail to build the package.
