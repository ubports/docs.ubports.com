.. _contribute-issues-index:
Issue Tracking Guidelines
=========================

This document describes the standard process of dealing with new issues
in UBports projects. For the guide on writing a good bugreport, visit :ref:`click here <contribute-bugreporting-index>`.

.. note::
    Practicality beats purity! Exceptions might apply and should be described in
    the projects README.md file.

Where are bugs tracked?
-----------------------

Since our quality assurance depends heavily on the community, we try to
track issues where the user would expect them, instead of seperated by
repository. This means, that issues of almost all components that are
distributed as with the system-image are tracked in the
ubports/ubuntu-touch bugtracker. An exception of this are click-apps
that can be updated independently through the OpenStore.

Most other repositories track isues locally. If you're unsure whether a
repository uses its own tracker or not, consult the README.md file.

Repositories that don't track issues locally have their bugtracker
disabled.

GitHub projects
---------------

To increase transparency and communication, GitHub projects
(Kanban-Boards) are used whereever practical. In case of
ubports/ubuntu-touch, a seperate project is used for every team (HAL,
Middleware, User Interface)

+----------------+---------------------------------------------------------------------------+
| Column         | Description                                                               |
+================+===========================================================================+
|----------------|---------------------------------------------------------------------------|
| *None          | The issue has been approved by the issue manager and is awaiting review   |
| ("awaiting     | from the responsible team. If the issue is a bug, instructions to re-     |
| triage")*      | produce are included in the issue description. If the issue is a feature- |
|                | request, it has passed a primary sanity check by the issue manager, but   |
|                | has not yet been accepted by the team.                                    |
|----------------|---------------------------------------------------------------------------|
| Accepted       | The issue has been accepted by the responsible team. If the issue is a    |
|                | bugreport, the team has decided that it should be fixable and accepts the |
|                | responsibility. If the issue is a featrue request, the team thinks it     |
|                | should be implemented as described.                                       |
|----------------|---------------------------------------------------------------------------|
| In Development | A patch is in development. Usually, a developer is assigned to the issue. |
|----------------|---------------------------------------------------------------------------|
| Quality        | The patch is completed and has passed initial testing. The QA team will   |
| Assurance      | now review it on all devices and provide feedback. If problems are found, |
|                | the issue is moved back to "In Development".                              |
|----------------|---------------------------------------------------------------------------|
| Release        | The patch has passed QA and is ready for release. In case of deb-packages |
| Candidate      | that are included in the system-image, the patch will be included in the  |
|                | next over-the-air update on the rc channel, and, if everything goes well, |
|                | in the next release of the stable channel.                                |
|----------------|---------------------------------------------------------------------------|
| *Removed from  | A patch has been released (issue closed with a message linking to the     |
| the project*   | patch), the issue has been rejected (issue closed labeled "rejected"), or |
|                | the issue was moved to a different responsible team.                      |
+----------------+---------------------------------------------------------------------------+

Labels
------

Issues (even closed ones) should be labeled to allow the use of GitHub's
global filtering. Example:
https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+label%3A%22feature+request%22&type=

Here's a list of general trackers that are used by all repositories.

-  needs confirmation: The bug needs confirmation and / or further
   information from affected users
-  bug: This issue is a confirmed bug. If it's reproducable,
   reproduction steps are described.
-  opinion: This issue needs further discussion.
-  feature request: This issue is a feature request.
-  question: This issue is a support request or general question.
-  invalid: This issue can not be confirmed or was reported in the wrong
   tracker.
-  duplicate: This has already been reported somewhere else. Please
   provide a link and close.
-  help wanted: This issue is ready to be picked up by a community
   developer.
-  rejected: It does not make sense to fix this bug, since it will
   probably resolve itself, it will be too much work to fix it, it's not
   fixable or an underlying component will soon change.

Additional special labels can be defined. As an example, here's the
labels on ubports/ubuntu-touch

-  rc-blocker: This is a critical issue blocking the release of the next
   rc image that is limited to the devel-channel.
-  stable-blocker: This is a critical issue blocking the release of the
   next stable OTA release. Usually, issues that can not simply be moved
   to a different release and therefore must be fixed asap are labeled
   this.
-  device: [DEVICE CODENAME]: This issue affects only the specified
   device(s).

Milestones
----------

On ubports/ubuntu-touch, milestones are used for stable OTA releases
only. In general, milestones for the work-in-progress OTA and the next
OTA are created. The ETA is set, once the work on the release starts,
that is 6 weeks from start date. Since the update can not be released
before all issues are closed, the ETA might have to be moved by making
an educated guess for when all the issues can be handled. If there are
too many issues added to a milestone, they are either removed or added
to the next milestone.

Assignees
---------

To make it transparent who's working on an issue, the developer should
be assigned. This also allows the use of GitHub's global filtering as a
type of TODO list:
https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+org%3Aubports+assignee%3Amariogrip&type=

It's the developers duty to keep his list short and update the status of
his issues.

Releases
--------

OTA updates usually follow this rhythm:

-  devel: daily builds
-  rc: weekly if no rc-blocker issue exists
-  stable: every six through eight weeks, if no stable-blocker issue
   exists.

This is not a definitive cycle. Stable releases are ready when they're
ready and should not introduce new bugs or ship very incomplete
features.

Examples
--------

Bug Lifecycle
~~~~~~~~~~~~~

+--------------+-------------------------------------------------------------+
| Actor        | Action                                                      |
+==============+=============================================================+
| User         | Files a new bug using the issue template for bugreports.    |
+--------------+-------------------------------------------------------------+
| Issue        | Label "needs confirmation", work with the QA team and the   |
| Manager      | bug-reporter                                                |
|              | to confirm the bug, add potentially missing information to  |
|              | the report.                                                 |
|              | Once the report is complete, add it to the "awaiting        |
|              | triage"-list of the                                         |
|              | kanban-board (aka. GitHub-Project) of the affected team and |
|              | replace                                                     |
|              | "needs confimation" with "bug" to mark it as a confirmed    |
|              | bug.                                                        |
+--------------+-------------------------------------------------------------+
| Team(s)      | The team will *triage* the issue and either reject (label   |
|              | "rejected",                                                 |
|              | close and remove from the project) or accept (move to       |
|              | "Accepted") the                                             |
|              | issue. If no team member can be assigned and the issue can  |
|              | be handled by                                               |
|              | the community, the issue is labeled "help wanted". If       |
|              | possible, the team                                          |
|              | will provide hints on how to resolve the issue and further  |
|              | details on the                                              |
|              | how the fix should be implemented.                          |
+--------------+-------------------------------------------------------------+
| Developer    | Once a community- or team-developer is assigned and starts  |
|              | working on the                                              |
|              | issue, it is moved to "In Development". As soon as he has   |
|              | something to                                                |
|              | show for, the issue is moved to "Quality Assurance" for     |
|              | feedback.                                                   |
+--------------+-------------------------------------------------------------+
| QA-Team      | Once the quality assurance team tests the fix on all        |
|              | devices and provides                                        |
|              | feedback to the developer. If problems are found, the issue |
|              | goes back to                                                |
|              | "In Development", else it's moved to "Release Candidate",   |
|              | to be included                                              |
|              | in the next release.                                        |
+--------------+-------------------------------------------------------------+
| Team         | Once the fix is committed (and in case of                   |
|              | system-image-parts included in                              |
|              | the rc image, the issue is closed and (if appliccable and   |
|              | not done                                                    |
|              | already) added to a milestone. Once the milestone is        |
|              | released, the issue                                         |
|              | should be removed from the project.                         |
+--------------+-------------------------------------------------------------+

Feature-Request Lifecycle
~~~~~~~~~~~~~~~~~~~~~~~~~

+--------------+-------------------------------------------------------------+
| Actor        | Action                                                      |
+==============+=============================================================+
| User         | Suggests a new feature using the issue template for         |
|              | feature-requests.                                           |
+--------------+-------------------------------------------------------------+
| Issue        | Label "opinion" and work with the reporter to complete a    |
| Manager      | clear and con-                                              |
|              | cise description of the feature. If the issue manager deems |
|              | the feature                                                 |
|              | a) possible to implement and b) actually useful, he will    |
|              | add it to the                                               |
|              | "awaiting triage"-list of the kanban-board of the affected  |
|              | team.                                                       |
+--------------+-------------------------------------------------------------+
| Team(s)      | The team will *triage* the issue and either reject (label   |
|              | "rejected",                                                 |
|              | close and remove from the project) or accept (move to       |
|              | "Accepted") the                                             |
|              | issue. If no team member can be assigned and the issue can  |
|              | be handled by                                               |
|              | the community, the issue is labeled "help wanted". If       |
|              | possible, the team                                          |
|              | will provide hints on how to implement the feature.         |
+--------------+-------------------------------------------------------------+
| Developer    | Once a community- or team-developer is assigned and starts  |
|              | working on the                                              |
|              | issue, it is moved to "In Development". As soon as he has   |
|              | something to                                                |
|              | show for, the issue is moved to "Quality Assurance" for     |
|              | feedback.                                                   |
+--------------+-------------------------------------------------------------+
| QA-Team      | Once the quality assurance team tests the changes on all    |
|              | devices and                                                 |
|              | provides feedback to the developer. If problems are found,  |
|              | the issue goes                                              |
|              | back to "In Development", else it's moved to "Release       |
|              | Candidate", to be                                           |
|              | included in the next release.                               |
+--------------+-------------------------------------------------------------+
| Team         | Once the fix is committed (and in case of                   |
|              | system-image-parts included in                              |
|              | the rc image, the issue is closed and (if appliccable and   |
|              | not done                                                    |
|              | already) added to a milestone. Once the milestone is        |
|              | released, the issue                                         |
|              | should be removed from the project.                         |
+--------------+-------------------------------------------------------------+
