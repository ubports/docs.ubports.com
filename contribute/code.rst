Code changes
============

This page helps you get your changes to Ubuntu Touch merged. We describe the things we look for in code, commits, and changesets. We also take a look at what to expect in the code review process.

Assumptions
-----------

This page does not include information about how to develop applications or changes to Ubuntu Touch. To learn how to develop Ubuntu Touch components, see the :doc:`/systemdev/index` section. To learn how to develop applications, see the :doc:`/appdev/index` or :ref:`preinstalledapps` sections.

This page assumes you know how to write your changes, use Git to commit them, push them to GitHub or Gitlab as needed, fork a repository, and make a Pull Request (PR) on GitHub or Merge Request (MR) on GitLab.

Definitions
-----------

Since we use GitHub and GitLab for our code hosting depending on the component, we use some terms interchangeably in this document.

changeset
    A GitHub Pull Request (PR) or GitLab Merge Request (MR).
issue report
    A GitHub or GitLab Issue.

Reasoning
---------

Many users use Ubuntu Touch on many different devices. Breaking functionality that these users rely on can be catastrophic. Our review process helps us avoid broken functionality by ensuring a few properties of the changeset.

In particular, we want to make sure the change:

* meets its own goals, such as adding a feature or fixing a bug
* does not cause any unexpected behavior
* makes it easy for someone to make further changes to the software in the future


The rules on this page explain how you should write and document your changes to Ubuntu Touch. Following these rules makes the review process easier for you and us.

These are not absolute; we won't automatically reject your change based on whether you follow the rules. If you break a rule, make sure you can explain why.

Code change checklist
---------------------

Keep this checklist in mind while writing your code and as you prepare to commit your changes.

Do not commit commented code
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As developers, we often comment out code that is only there to help us verify assumptions (like console logging messages). Make sure this **never** makes it into your commits. If you must disobey this rule, make sure you add a comment explaining why the commented code still exists in the source. If you feel like you must make a ``// TODO:`` or ``// FIXME:`` comment, consider whether filing an issue report referencing the broken code or TODO item would be better.

Write tests for your changes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If a component has a test suite, use it. Make sure that you know how to run the tests for the component and understand the output of those tests. The component's README file should contain this information. If not and you don't know how to find it, ask us. We're happy to help when someone is trying to learn about a component for the first time. However, be prepared to get a pile of links to documentation for a build system or test framework rather than a hand-crafted list of commands for you to run. That may be all we have time to provide. If you're still confused after checking out the materials you've received, feel free to ask again with your new, specific concerns. We would **really** appreciate it if you added your newfound knowledge to the component's README. The best time to write documentation is after doing something for the first time.

Once you know how to run the test suite, you can add your tests. Make sure you test as many aspects of your new functionality as you feel are reasonable. Lean on the side of more tests: we rarely ask you to remove tests, but we may ask you to add more.

If you notice that a component doesn't have a test suite, it's an excellent time to file a bug on that component! We would appreciate your help adding a test suite, but we do not require that of you.

Follow any existing style guides
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If a repository has a style guide, use it. If there is no style guide, try to follow the existing style in the file you're changing as closely as possible.

Commit checklist
----------------

Long after writing code, we often need to understand how and why it introduces a bug. Commit messages are our first step in understanding these complex questions. This checklist helps future viewers of your code understand why it is the way it is.

For an example of a series of commits that follows these guidelines very well, see the three commits at the top of the `git log leading to 840777f in Lomiri <https://github.com/ubports/unity8/commits/840777f92fb663a525dbe765155dbcf2a6f7541e>`_. Not every change requires such an in-depth description as these examples. Lean on the side of more detail; someday, *you* are the one looking back at your commits and wondering why you made them.

Answer crucial questions in commit messages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We ask questions like, "what?" "why?" and "how?" to gain context of a situation quickly.

Strive to answer these questions in your commit metadata or content. Doing so helps reviewers and future readers understand the context of a change. In order of importance, answer:

What?
    Answer this question with the first few lines of your commit message. "What does your commit do?" "`Optimize wallpapers for load times and memory use <https://github.com/ubports/unity8/commit/a81421ac1fe5135b9cff710c3cd819aa1804c6e6>`_".
Why?
    Always state the reasoning behind a change: the bugs it fixes, the features it builds up to, and especially the limitations that cause it to look more complicated than a viewer expects. Provide permanent links to issue reports or documentation if they give context.
Who?
    Git embeds your name and email address as the committer of your changes. If someone else has helped you write your changes, you should add them with a ``Co-Authored-By: Their Name <their-email@example.com>`` line in your commit message.

It is possible to provide some of this context in code comments rather than in commit messages. Comments can assist people who are only reading the code without using tools like ``git blame``. Bear in mind that comments can quickly become out-of-date compared to the code that they are near. A commit message is linked only to the code you wrote.

In closing, make sure you anticipate any questions you expect yourself or others to have about your code in the future and answer them.

Make commits as small as possible, but no smaller
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some changes require multiple logical steps to complete. If this is the case, split these steps into separate commits. Each commit should follow the entire commit checklist. It should not require any of the commits that come after it to build or pass tests.

Let's say you are implementing a new way to search for phone numbers in the Dialer app. Your change requires three distinct steps:

1. Fix a bug in the current phone number search
2. Add a new API to support your new number search
3. Add the UI elements to use your new search

If you do all of these changes in a single commit and there is a problem in step three, we reject the entire changeset. If you split the changes into separate commits instead, the bug fix and new API could be added to the mainline software while you work on redesigning your UI.

Rebase your changes during the review, if possible
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

It's common for a commit log on GitHub to go something like this:

* Fix bug in phone number search
* Add new API call for new phone number search
* Add UI for new phone number search
* Fix UI
* Fix bug fix
* Review changes
* Fix API after comments from reviewers

If you have to come back to this commit log in the future, you'll be confused in no time at all. What did the reviewers say, what was wrong with the UI and the bug fix?

Don't add a new commit when you receive a correction that affects the first commit in your series. Instead, edit the first commit. If doing this changes the information in your commit message, update that too.

Editing commits requires learning new tools in Git. Edit a series of commits with ``git-rebase``. Push the resulting changes with a force push, or create a new branch and open a new changeset.

Luckily, there are graphical tools that make this job more manageable. Unluckily, if you don't understand what they are doing on the Git command line, you might mess up and have to start over from your old series. Even seasoned Git pros mess up this process sometimes, don't worry. There is almost always a way back to your old series.

Each commit must continue to build, run, and pass tests after your changes.

Format your commit message correctly
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Keep the first line of your commit message (the summary) to 50 characters or less. Every other line in the commit message should be 72 characters or less. It's OK if you have to break the rules — some changes can't be summarized in 50 characters, and some links are longer than 72.

Changeset description checklist
-------------------------------

Ensure that your changeset answers the following questions in its description.

If you've followed the guidelines for commit messages, you can probably copy the relevant information from the commit messages into your changeset description. GitHub and GitLab do this for you in single-commit changesets. A description that says, "this is complicated to explain; please read the commit messages," is also acceptable. We trust you to strike a balance.

What issue does your changeset resolve?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Link changesets to the issue report that they resolve, whether you add a feature or fix a problem. Specify the devices the issue occurs on or if it applies to all devices. Provide enough information so that someone can look at it and know how to reproduce the problem or test the feature. Add this information to the issue report as well if it is missing.

For example:

    Fixes https://github.com/ubports/ubuntu-touch/issues/1

How did you test that the change was successful?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All changes require testing to ensure they resolve the issue report they're referencing. List the environment you tested your changes in, including the operating system under test, its version, and the devices you tested on. Explain your testing process. If you are not sure how to test a feature related to your changes, mention it.

For example:

    I've tested this dialer change on the Nexus 5. It should work on all devices since it's not modifying anything device-specific, but more testing would be appreciated. To fix a bug, I had to touch a bit of code in the phone number search area (#53). I'm not entirely sure how to test that for regressions.

Do any changes need to be merged before or after this changeset?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some changes depend on one or more changes before they work correctly. If this is the case, you should document the dependencies in your changeset descriptions. Document all sets that must be merged *before* and *after* the current one in a series, if needed.

For example, say you've filed three Merge Requests on GitLab, ``ubports/core/docs!1``, ``ubports/core/code!2``, and ``ubports/core/infrastructure!3``. They must be merged in that order. In that case, your MR descriptions would have something similar to this included:

* In ``ubports/core/docs!1``:

    ubports/core/code!2 and ubports/core/infrastructure!3 depend on this MR.
* In ``ubports/core/code!2``:

    ubports/docs!1 must be merged before this MR. ubports/core/infrastructure!3 depends on this MR.
* In ``ubports/core/infrastructure!3``:

    ubports/docs!1 and ubports/core/infrastructure!3 must be merged before this MR.

What does the interface look like before and after the change?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your changes also change the look of the user interface, include screenshots to illustrate these changes.

Submission and review
---------------------

Now that you've checked your changeset, it's time to submit it for the review! Thank you in advance for contributing to Ubuntu Touch. Here is what you can expect from us as we review your changes.

We respect you
^^^^^^^^^^^^^^

You chose to use your time to contribute to Ubuntu Touch. That decision is never made lightly. A reviewer must treat you with respect and work with you toward your changeset becoming a part of Ubuntu Touch.

Respect is a two-way street. Ubuntu Touch is a large project; there are never enough hands to do all the work needed. It may take a while for your changeset to see any attention, and after a long wait, you might come back to find a stern request for changes. Read a stern-looking message as someone trying to work as quickly as possible, not as an attempt to be rude to you. We extend the same grace to you.

We ask many questions
^^^^^^^^^^^^^^^^^^^^^

Reviewers better understand the code you're changing after asking you questions about how it works. They may know what your code does already, but they'll still ask. If you can explain how your code works, it's more likely that you have done the proper testing to ensure it works.

If you are not able to articulate why something works, it is a red flag. The change is likely working around a different bug that can come back to haunt us in the future. Fixing the real bug instead of making workarounds is a better use of time.

We ask for changes
^^^^^^^^^^^^^^^^^^

Another person looking at your code may see problems with it that you have missed. Whether those problems are inefficiencies, style issues, or new bugs, they are more likely to be found by your reviewers than by you. Don't worry if you get a book of requested changes back from your reviewer. Nobody is perfect. Finding and fixing these potential issues leads to a faster and more stable Ubuntu Touch. It is not an insult to your skills as a developer.

We may ask for massive changes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes reviewers look at a change and realize that a much deeper issue exists in the component. Sometimes you start out developing a feature with the wrong assumptions in mind and end up with an unwieldy mess of spaghetti code. Either way: this is not the correct path to the destination. Whatever the reason, your reviewer points out the potential problems with your change and constructively suggests a new direction for you to take.

You can tell us that we are wrong
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You might be sure that an underlying bug is not easily fixable or that the path you've taken is the best. You might not have enough time to do a fix correctly as asked. If you think that our rejection of your changeset is wrong for any reason, let us know. Reviewers try to work with you to reach a solution that's best for our users.

Merge and maintenance
---------------------

After ensuring your changeset meets all of our requirements, it becomes a part of Ubuntu Touch. Thank you! You are a member of a small group of people contributing to a beautiful community. However, this is not the end of the work.

Sometimes your changes break a piece of Ubuntu Touch functionality despite our best efforts. You might be called upon to help investigate the source of the issue and prepare a fix if this happens. Your change could be reverted if we find that your change was the direct cause of a bug and we cannot contact you.

New contributors might notice that you have recently worked on a component they want to work with. We would be grateful if you helped teach them what you learned during this process.

If nothing else, stick around for the people thanking you for the change you've made. The Ubuntu Touch community is incredibly supportive and thankful. It would be a shame for you to miss your share of the good vibes.

Naming conventions
------------------

Lastly, please note our naming conventions:

.. toctree::
    :maxdepth: 1
    :name: toc-contribute

    ppa
    branch-naming

