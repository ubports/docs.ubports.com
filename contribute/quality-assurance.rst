Quality Assurance
=================

This page explains how to help the UBports QA team, both as an official member or a new contributor. Please also read the :doc:`issue tracking </about/process/issue-tracking>` and :doc:`bugreporting <bugreporting>` guides to better understand the workflow. For real-time communication, you can join our `telegram group <http://t.me/ubports_qa_team>`_.

Smoke testing
-------------

To test the core functionality of the operating system, we have compiled `a set of standardized tests <https://nc.ubports.com/s/3RnAI7tYzB2PMXs>`_. Run these tests on your device to :doc:`find and report bugs and regressions <bugreporting>`. It's usually run on all devices before a new release to make sure no new issues were introduced.

Confirming bug reports
----------------------

Unconfirmed bugreports are labeld **needs confirmation** to enable `global filtering <https://github.com/ubports/ubuntu-touch/issues?q=is%3Aissue+is%3Aopen+label%3A%22needs+confirmation%22>`__. Browse through the list, read the bugreports and try to reproduce the issues that are described. If necessary, add :doc:`missing information or logs, or improve the quality of the report by other means <bugreporting>`. Leave a comment stating your device, channel, build number and whether or not you were able to reproduce the issue.

If you have write-access to the repository, you can replace the **needs confirmation** label with **bug** (to mark it confirmed) or **invalid** (if the issue is definitely not reproducible). In that case it should be closed.

If you find two issues describing the same problem, leave a comment and try to find their differences. If they are in fact identical, close the newer one and label it **duplicate**.

Testing patches
---------------

Once a developer finished working on an issue, it's moved to the quality assurance column of the `GitHub project <https://github.com/ubports/ubuntu-touch/projects/3>`__. Check if the issue is still present in the latest update on the devel channel and try to find any problems it is causing. Check if the developer mentioned specific things to look out for when testing and leave a comment detailing your experience. If you have write-access to the repository, you can move the issue back to **In Development** or forward to **Release Candidate** as specified by the :doc:`issue tracking guidelines </about/process/issue-tracking>`.

Initial triaging of issues
--------------------------

Initial triaging of new issues is done by QA-team members with write-access to the repository. If a new issue is filed, read the report and add the correct labels as specified by the :doc:`issue tracking guidelines </about/process/issue-tracking>`. You can also immediately start confirming the bugreport.

If the new issue has already been reported elsewhere, label it **duplicate** and close it.
