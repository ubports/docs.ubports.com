Security vulnerabilities
========================

We take security vulnerabilities seriously. If you've found one, the best way to report it is to create a confidential issue on our `bug tracker <https://gitlab.com/ubports/ubuntu-touch>`_. Make sure you select "This issue is confidential and should only be visible to team members with at least Reporter access" when creating the issue. After that, we'll get to work with the reported issue. We might contact you via the issue if there is additional information needed. And we'll determine the disclosure.

How to handle a security fix
----------------------------

For UBports development members, these are recommended steps to handle fixing the issue without disclosing to public before the fix is ready:

1. Given a main repo, ensure that the ``<project>.secfix`` repo exists. If not, fork from the main project to the same namespace, but set the visibility to private.

.. note:: The ``.secfix`` suffix will prevent CI from touching this repo, preventing the repo from leaking.

2. If there isn't an issue for it already, create a confidential issue on the main project.
3. On the issue, use "Create confidential merge request". Set the branch name and the source branch appropriately. Then, push to this branch from your local Git tree.

.. note:: This MR will target the ``.secfix`` repo, NOT the main repo [1]_. This allows reviewing the patch to happen in private.

4. Another developer then reviews and merges the merge request. If backport is needed, it must also happen in the ``.secfix`` fork.

.. note:: Since we don't have confidential CI yet, it is both the developer and reviewer's responsibility to ensure that the code will compile, pass tests, and is tested locally.

5. At ~1 day before the release date of a release candidate, a developer (usually the release manager) merges all branches of ``.secfix`` repo to the main repo. After that, the confidential issue is marked unconfidential. This makes the issue public for the first time.

.. note:: At this point, it is this developer's responsibility to ensure that the merge result actually passes CI and that at least the basic functionality of this component is not broken.

6. The release manager will ensure that the fix actually lands in the daily image before choosing such image as an RC.
7. Before the release date, the fixing developer will prepare the security advisory, containing (the list is inspired by Curl's advisories [2]_):

  * Name
  * Vulnerability (how a user is vulnerable)
  * Info (how the vulnerable exists)
  * Affected versions
  * Solution
  * Recommendations
  * Timeline
  * Credit

8. At the release date, the security advisory will be published on the forum, in the "OS > Security advisories" section.

.. [1] https://docs.gitlab.com/ee/user/project/merge_requests/confidential.html#create-a-confidential-merge-request
.. [2] https://curl.se/docs/security.html
