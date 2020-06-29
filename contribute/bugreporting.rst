Bug reporting
=============

This page contains information to help you help us by reporting an actionable bug for Ubuntu Touch. It does NOT contain information on reporting bugs in apps, most of the time their entry in the OpenStore will specify where and how to do that.

Get the latest Ubuntu Touch
---------------------------

This might seem obvious, but it's easy to miss. Go to (Settings - Updates) and make sure that your device doesn't have any Ubuntu updates available. If not, continue through this guide. If so, update your device and try to reproduce the bug. If it still occurs, continue through this guide. If not, do a little dance! The bug has already been fixed and you can continue using Ubuntu Touch.

Check if the bug is already reported
------------------------------------

Open up the bug tracker for `ubuntu-touch <https://github.com/ubports/ubuntu-touch>`_.

.. Note::
    Pinephone users should check for and report bugs `_here <https://gitlab.com/ubports/community-ports/pinephone>`_

First, you'll need to make sure that the bug you're trying to report hasn't been reported before. Search through the bugs reported. When searching, use a few words that describe what you're seeing. For example, "Lock screen transparent" or "Lock screen shows activities".

If you find that a bug report already exists, select the "Add your Reaction" button (it looks like a smiley face) and select the +1 (thumbs up) reaction. This shows that you are also experiencing the bug.

If the report is missing any of the information specified later in this document, please add it yourself to help the developers fix the bug.

Reproduce the issue you've found
--------------------------------

Next, find out exactly how to recreate the bug that you've found. Document the exact steps that you took to find the problem in detail. Then, reboot your phone and perform those steps again. If the problem still occurs, continue on to the next step. `If not... <https://youtu.be/nn2FB1P_Mn8?t=10s>`_

Making the bug report
---------------------

Now it's time for what you've been waiting for, the bug report itself! Bug reports need to be filed in English.

First, pull up the `bug tracker <https://github.com/ubports/ubuntu-touch>`_ and click "New Issue". Log in to GitHub if you haven't yet.

Next, you'll need to name your bug. Pick a name that says what's happening, but don't be too wordy. Four to eight words should be enough.

Now, write your bug report. A good bug report includes the following:

* What happened: A synopsis of the erroneous behavior
* What I expected to happen: A synopsis of what should have happened, if there wasn't an error
* Steps to reproduce: You wrote these down earlier, right?
* Software Version: Go to (Settings - About) and list what appears on the "OS" line of this screen. Also include the release channel that you used when you installed Ubuntu on this phone.

Once you're finished with that, post the report. You can't add labels yourself, so please don't forget to state the device you're experiencing the issue on in the description so a moderator can easily add the correct tags later.

A developer or QA-team member will confirm and triage your bug, then work can begin on it. If you are missing any information, you will be asked for it, so make sure to check in often!

Getting Logs
------------

Here we'll discuss the general steps to get logs, files that contain important debugging messages, on Ubuntu Touch. You may be asked for logs after submitting your issue. This section will help you to retrieve these logs from the device.

.. warning::

    Log files may contain information you prefer to keep private. Please be sure to skim through them to ensure this is not the case before posting them. We can coordinate to get them through e-mail or a similarly less public medium.

To get ready, download the `Logviewer app <https://open-store.io/app/logviewer.neothethird>`_ from the OpenStore. This app will help us find, view, and send the logs we need.

Now, open the Logviewer app. You'll see a list of all of the log files available in your user log folder, ``/home/phablet/.cache/upstart/``. This folder contains many, but not all, of the logs for software running on your device. You can tap on any log to view it, then tap the "send" icon in the top right corner to share it using an online service.

If you don't see the log that you've been asked to send in Logviewer, it may be in a different folder or the application may not have created any logs yet. Tell this to the person who asked you for the logs. They should be able to get you the information you need to get back on track.
