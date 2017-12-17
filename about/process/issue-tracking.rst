Issue-Tracking Guidelines
=========================

This document describes the standard process of dealing with new issues in UBports projects. Not to be confused with the :doc:`guide on writing a good bugreport </contribute/bugreporting>`.

Where are bugs tracked?
-----------------------

Since our quality assurance depends heavily on the community, we try to
track issues where the user would expect them, instead of seperated by
repository. This means, that issues of almost all components that are
distributed as with the system-image are tracked in the
`Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch>`__. An
exception of this are click-apps that can be updated independently through
the OpenStore.

Most other repositories track isues locally. If you're unsure whether a
repository uses its own tracker or not, consult the README.md file.
Repositories that don't track issues locally have their bugtracker disabled.

This page is mainly about the Ubuntu Touch tracker, but most principles apply
to other projects as well.

.. note::
     Practicality beats purity! Exceptions might apply and should be described in the projects README.md file.

GitHub projects
---------------

To increase transparency and communication, GitHub projects (Kanban-Boards)
are used whereever practical. In case of github.com/ubports/ubuntu-touch, a
single project is used for all issues. Projects support filtering by labels,
so that only issues that belong to a specific team or affect a specific device
can be viewed.

These are the standard columns:

* **None (awaiting triage)**: The issue has been approved by a member of the qa team and is awaiting review from the responsible development team. if the issue is a bug, instructions to reproduce are included in the issue description. if the issue is a feature request, it has passed a primary sanity check by the qa-team but has not yet been accepted by the responsible development-team.
* **Accepted**: The issue has been accepted by the responsible development-team. If the issue is a bugreport, the team has decided that it should be fixable and accepts the responsibility. If the issue is a featrue request, the team thinks it should be implemented as described.
* **In Development**: A patch is in development. Usually means that a developer is assigned to the issue.
* **Quality Assurance**: The patch is completed and has passed initial testing. The QA team will now review it on all devices and provide feedback. If problems are found, the issue is moved back to “In Development”.
* **Release Candidate**: The patch has passed QA and is ready for release. In case of deb-packages that are included in the system-image, the patch will be included in the next over-the-air update on the rc channel, and, if everything goes well, in the next release of the stable channel.
* **None (removed from the project)**: A patch has been released (issue closed with a message linking to the patch) or the issue has been rejected (issue closed and labeled “wontfix”).

Labels
------

All issues - even closed ones - should be labeled to allow the use of GitHub's
global filtering. For example, `these are all of the issues labeled 'enhancement' inside @ubports <https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+label%3A%22feature+request%22&type=>`_. Consult the `GitHub help pages <https://help.github.com/articles/about-searching-on-github/>`__ for more information on search and filtering.

Here's a list of labels that are normally used by all repositories.

- **needs confirmation**: The bug needs confirmation and / or further
  information from affected users
- **bug**: This issue is a confirmed bug. If it's reproducable,
  reproduction steps are described.
- **opinion**: This issue needs further discussion.
- **enhancement**: This issue is a feature request.
- **question**: This issue is a support request or general question.
- **invalid**: This issue can not be confirmed or was reported in the wrong
  tracker.
- **duplicate**: This has already been reported somewhere else. Please
  provide a link and close.
- **help wanted**: This issue is ready to be picked up by a community
  developer.
- **good first issue**: This issue is not critical and trivial to fix. It
  is reserved for new contributors as a place to start.
- **wontfix**: It does not make sense to fix this bug, since it will
  probably resolve itself, it will be too much work to fix it, it's not
  fixable, or an underlying component will soon change.

Additional special labels can be defined. As an example, here's the
labels used in the Ubuntu Touch tracker:

- **critical (devel)**: This critical issue that only occurs on the
  devel channel is blocking the release of the next rc image.
- **critical (rc)**: This critical issue that only occurs on the devel and rc
  channel is blocking the release of the next stable release. Usually, issues
  that can not simply be moved to a different release and have the power to
  postpone the release are labeled this.
- **device: [DEVICE CODENAME]**: This issue affects only the specified
  device(s).
- **team: [TEAM NAME]**: This issue is falls under the responsibility of a specific team (hal, middleware, UI).

.. note::
    If a repository that tracks issues locally defines it's own labels, they
    should be documented in the README.md.

Milestones
----------

Milestones are used for stable OTA releases only. In general, milestones
for the work-in-progress OTA and the next OTA are created. The ETA is set,
once the work on the release starts (that is 6 weeks from start date), but
can be adjusted afterwards. See the :doc:`release-schedule <release-schedule>`
for more info.

Assignees
---------

To make it transparent who's working on an issue, the developer should
be assigned. This also allows the use of GitHub's global filtering as a
type of TODO list. For example, `this is everything assigned to mariogrip in @ubports <https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+assignee%3Amariogrip&type=>`_.

Developers are asked to keep their list short and to keep the status of their issues up-to-date.

Examples
--------

Bug Lifecycle
~~~~~~~~~~~~~

.. note::
    The same principle applies to feature requests. The only difference is,
    that instead of the label **bug**, the label **enhancement** is used.
    The **needs confirmation** label is not applicable for feature requests.

- A *User* files a new bug using the issue-template.
- The *QA-Team* adds the label **needs confirmation** and tries to work with the user to confirm the bug and add potentially missing information to the report. Once the report is complete a **team-label** will be added to the issue, the issue will be put on the **awaiting-triage-list** of the project and the label needs confirmation will be replaced with **bug**.
- The affected *Team* will triage the issue and either reject (label **wontfix**, close and remove from the project) or accept (move to “Accepted”) the issue. If no team member can be assigned and the issue can be handled by the community, it is labeled **help wanted**. If possible, the team will provide hints on how to resolve the issue and further details on the how the fix should be implemented. For non-critical issues that are trivial to fix, the label **good first issue** can be added as well.
- Once a *developer* is assigned and starts working on the issue, it is moved to “In Development”. As soon as he has something to show for, the issue is moved to “Quality Assurance” for feedback. If neccessary, the developer should provide hints on how to test his patch in a comment on the issue.
- The *QA-Team* tests the fix on all devices and provides feedback to the developer. If problems are found, the issue goes back to “In Development”, else it’s closed and moved to “Release Candidate” to be included in the next release.
- Once the fix is included in the rc image, the issue is closed and (if not done already) added to a milestone. Once the milestone is released, the issue is removed from the project.
