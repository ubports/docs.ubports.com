repo.ubports.com
================

This is the package archive system for UBports projects. It hosts various PPAs containing all deb-components of Ubuntu Touch. New PPAs can be created dynamically by the CI server using a special :doc:`git-branch naming convention <branch-naming>`.

Non-standard PPAs (i.e. not ``xenial``, ``vivid`` or ``bionic``) are kept for three months. In case they need to be kept for a longer time, a file with the name ``ubports.keep`` can be created in the root of the repository, containing the date until which the PPA shall be kept open in the form of **YYYY-MM-dd**. If this file is empty, the PPA will be kept for two years after the last build.
