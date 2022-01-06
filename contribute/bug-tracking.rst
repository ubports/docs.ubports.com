.. _bug-tracking:

Bug tracking
============

This document describes the standard process of dealing with new issues in UBports projects.
(Not to be confused with the :doc:`guide on writing a good bugreport </contribute/bugreporting>`.)

Where are bugs tracked?
-----------------------

Since quality assurance depends heavily on community effort, issues are
tracked where users expect them, instead of separated by repository.
This means issues of almost all distributed components (as with the system-image)
are tracked in the `Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch>`__.
An exception to this are click-apps, which can be updated independently through
the OpenStore.

Most other repositories track issues locally. You will find out whether a
repository uses its own tracker or not in its README.md file.
Repositories that don't track issues locally have their bugtracker turned off.

This page is mainly about the Ubuntu Touch tracker, but most principles apply
to other projects as well.

.. note::
     Practical exceptions to purity are to be described in the project's README.md file.

GitHub projects
---------------

In the interest of transparency and communication, GitHub projects (Kanban-Boards)
are used wherever practical. In case of github.com/ubports/ubuntu-touch, a
single project is used for all issues. Projects support filtering by labels,
so that only issues belonging to a specific team or ones affecting a specific
device can be viewed.

These are the standard columns:

- **None (awaiting triage)**: Issue approved by a member of the QA team awaiting review from the responsible development team.
  If a bug, instructions to reproduce are included in the issue description.
  If a feature request, it has passed a primary sanity check by the QA team, but not yet been accepted by the responsible development-team.
- **Accepted**: Issue accepted by the responsible development-team.
  If a bugreport, the team has decided it should be fixable and accept responsibility.
  If a feature request, the team thinks it should be implemented as described.
- **In Development**: A patch in development.
  Usually means a developer is assigned to the issue.
- **Quality Assurance**: A completed patch passing initial testing. The QA team will review it and provide feedback.
  If problems are found, the issue is moved back to "Accepted".
- **Release Candidate**: A patch passing QA, ready for release.
  In case of DEB packages included in the system-image, the patch will be included in the next over-the-air update on the `rc` channel, and (provided  everything   goes well) in the next release of the `stable` channel.
- **None (removed from the project)**: Open issue labeled "help wanted". Community contributions are required to resolve it.
  If it's closed, either a patch has been released on the stable channel (a comment on the issue should link to the patch) or the issue is
  rejected (labeled "wontfix").

Labels
------

All issues — even closed ones — should be labeled to allow use of GitHub's
global filtering. For example, `these are all of the issues labeled 'enhancement' inside @ubports <https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+label%3A%22feature+request%22&type=>`_. Consult the `GitHub help pages <https://help.github.com/articles/about-searching-on-github/>`__ to learn more about searching and filtering.

List of labels normally used by all repositories:

- **needs confirmation**: The bug needs confirmation and / or further
  detailing by affected users.
- **bug**: This issue is a confirmed bug. If it's reproducible,
  reproduction steps are described.
- **opinion**: This issue needs further discussion.
- **enhancement**: This issue is a feature request.
- **question**: This issue is a support request or general question.
- **invalid**: This issue can not be confirmed or was reported in the wrong
  tracker.
- **duplicate**: This has already been reported elsewhere. Please
  provide a link and close.
- **help wanted**: This issue is ready to be picked up by a community
  developer.
- **good first issue**: The report contains instructions or hints required to fix it.
  It is an excellent place for someone new to learn about the project by fixing a real issue.
- **wontfix**: A bug it does not make sense to fix, since it will
  probably resolve itself, be too much work, isn't fixable, or an underlying
  component will soon change.

Additional special labels can be defined.
As an example, these are the labels used in the Ubuntu Touch tracker:

- **critical (devel)**: Critical issue only occuring on the
  `devel` channel is blocking the release of the next `rc` image.
- **critical (rc)**: Critical issue only occuring on the `devel` and `rc`
  channel is blocking the release of the next stable release. Usually, issues
  that can not simply be moved to a different release and have the power to
  postpone the release are labeled this way.
- **device: [DEVICE CODENAME]**: Issue affecting only the specified
  device(s).
- **team: [TEAM NAME]**: Issue falls under the responsibility of a specific team (HAL, middleware, UI).

.. note::
    If a repository tracking issues locally defines it's own labels, they
    should be documented in the README.md.

Milestones
----------

Milestones are used for stable OTA releases only. In general, milestones
for the work-in-progress OTA and the next OTA are created. The ETA is set
once the work on the release starts (that is 6 weeks from start date), but
can be adjusted afterwards.
Learn more in :ref:`Release Schedule <release_schedule>`.

Assignees
---------

To make it transparent who's working on an issue, the developer should
be assigned. This also allows the use of GitHub's global filtering as a
type of TODO list. For example, `this is everything assigned to mariogrip
in @ubports <https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+assignee%3Amariogrip&type=>`_.

Developers are encouraged to keep their list short and update the status of their issues.

Examples
--------

Bug Lifecycle
~~~~~~~~~~~~~

.. note::
    The same principle applies to feature requests, only they are labeled
    **enhancement** instead of **bug**. **needs confirmation** is not
    applicable for feature requests.

- A *user* files a new bug using the issue-template.
- The *QA-Team* labels it **needs confirmation** and tries to work with the user to confirm the bug and add potentially missing info to the report. If the issue had already been reported previously, it is linked, labeled **duplicate** and closed.
- Once the report is complete a **team-label** is added to the issue, the issue will be put on the **awaiting-triage-list** of the project and the label needs confirmation will be replaced with **bug**.
- The affected *Team* triages the issue and either rejects (label **wontfix**, closes and removes from the project) or accepts the issue.
- The team decides whether to fix the issue in-house (move to "Accepted" and assign a team member) or wait for a community developer to pick it up (by labeling it **help wanted**, removing it from the project board and providing hints on how to resolve the issue and further details on how the fix should be implemented if necessary). For non-critical issues trivial to fix, the label **good first issue** can be added as well.
- Once a *developer* is assigned and starts working on the issue, it is moved to "In Development".
- As soon as there is something to show for, the issue is closed and automatically moved to "Quality Assurance" for feedback from the QA team. If necessary, the developer provides hints on how to test the patch in a comment on the issue.
- The *QA-Team* tests the fix on all devices and provides feedback to the developer. If problems are found, the issue is re-opened and goes back to "Accepted", otherwise it is moved to "Release Candidate" for inclusion in the next release.
- If not done already, the issue is added to the next milestone, which once released removes the issue from the project board.
