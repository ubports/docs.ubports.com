Branch-naming convention
========================

Our branch-naming convention ensures software can be built by our CI and tested easily by other developers.

Every Git repository's README file should state which branch-naming convention is used and any deviations from the norm.

Click-Packages
^^^^^^^^^^^^^^

Software exclusively distributed as a click-package (and not also as a DEB) only uses one ``master`` branch that is protected. Separate temporary development branches with arbitrary descriptive names can be created and merged into master when the time comes. Ideally Git tags or GitHub releases should be used to mark and archive milestones in the development history.

DEB Packages
^^^^^^^^^^^^

To help us deliver our code into Ubuntu Touch as effortlessly as possible, our CI automatically build our Git repositories into a number of APT archives hosted at http://repo.ubports.com/, according to the branch name.

We maintain the following branches across Git repositories:

+-------------------------------+-------------------------------------+---------------------------------------------+
|                               |                                     |         Corresponding APT archives          |
|         Git branches          |             Description             +------------------------+--------------------+
|                               |                                     | Name                   | Base distro        |
+===============================+=====================================+========================+====================+
| ``main``, ``ubports/latest``  | Represents the latest development   | ``devel-<Ubuntu LTS>`` | Latest or upcoming |
|                               | of Ubuntu Touch. All kinds of       | (e.g. ``devel-noble``) | Ubuntu LTS.        |
|                               | changes are allowed in this         +------------------------+--------------------+
|                               | branch.                             | ``devel-debian``       | Debian testing.    |
+-------------------------------+-------------------------------------+------------------------+--------------------+
| ``ubports/<major version>.x`` | Represents the code in a particular | ``<major version>.x``  | Ubuntu LTS at the  |
| (e.g. ``ubports/24.6.x``)     | major version. It branches off of   | (e.g. ``24.6.x``)      | time of branching. |
|                               | the ``main`` branch before the major|                        |                    |
|                               | release, and will become a part of  |                        |                    |
|                               | the releases of that major version. |                        |                    |
|                               | Only bugfixes and non-breaking      |                        |                    |
|                               | changes are allowed in this branch. |                        |                    |
+-------------------------------+-------------------------------------+------------------------+--------------------+
| ``ubports/focal``             | A special case of                   | ``focal``              | Ubuntu 20.04 LTS.  |
|                               | ``ubports/<major version>.x``,      |                        |                    |
|                               | which is branched after the release |                        |                    |
|                               | of Ubuntu Touch 20.04 OTA-4.        |                        |                    |
+-------------------------------+-------------------------------------+------------------------+--------------------+
| ``ubports/focal_-_<ext>``     | Branches which use the deprecated   | ``focal_-_<ext>``      | Ubuntu 20.04 LTS.  |
|                               | "branch extensions" system for      |                        |                    |
|                               | cross-components changes. No longer |                        |                    |
|                               | recommended for usage.              |                        |                    |
+-------------------------------+-------------------------------------+------------------------+--------------------+
| ``personal/<user>/<name>``,   | All other branches may be used for  | N/A, unless proposed as an MR against       |
| and any other branches.       | proposing merge requests or for     | aforementioned branches (see below).        |
|                               | other reasons. Theses branches are  |                                             |
|                               | not built by the CI unless proposed |                                             |
|                               | as a merge request.                 |                                             |
+-------------------------------+-------------------------------------+---------------------------------------------+

To ensure the ``main`` branch doesn't miss any changes, all changes must be made against ``main`` branch first before backporting to the major release branches. An exception is when a change is not applicable to the ``main`` branch anymore due to other changes in that branch.

.. note::
    If the next development version is not available for testing yet, and you need the change to be made available for install for testing, it's allowed to temporarily target the changeset to the major version branch to get packages built against that version. When the changeset is ready for merge, the changeset must be re-targeted to the ``main`` branch.

APT archives for Merge Requests
-------------------------------

In addition to archives mentioned above, we also create APT archives for MRs made against our Git repositories. This allows us to test the result of the build on real devices using ubports-qa_ before merging the code. For each MR, the CI will build the code against all the same targets as the MR's target branch, and then will append ``_-_PR_<repository name>_<MR number>`` to them [1]_. For example:

- An MR numbered 100 made against the ``main`` branch of Git repository ``lomiri`` (when the current Ubuntu LTS is ``noble``) will have APT archives named ``devel-noble_-_PR_lomiri_100`` *and* ``devel-debian_-_PR_lomiri_100``.
- An MR numbered 125 made against the ``ubports/24.6.x`` branch of Git repository ``morph-browser`` will have an APT archive named ``24.6.x_-_PR_morph-browser_125``.

.. [1] The word ``PR`` stuck around from the time we hosted our code on GitHub.
.. _ubports-qa: https://gitlab.com/ubports/development/core/ubports-qa-scripts
