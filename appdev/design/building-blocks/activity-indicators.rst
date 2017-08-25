Activity indicators
===================

Use Activity Indicators to give the user an indication of how long a
running task might take and how much work has already been done.

.. figure:: https://assets.ubuntu.com/v1/1af1cdf3-750w_ActivityIndicators_MainImage-1.png

.. hint::
    The `Activity Indicator API <https://docs.ubuntu.com/phone/en/apps/api-qml-current/Ubuntu.Components.ActivityIndicator>`__ visually indicates that a task of unknown or known duration is in progress.

Types of indicators
-------------------

The toolkit provides progress bars or spinners that can either be:
determinate or indeterminate. Use either state depending on whether the
proportion being completed is known or not.

Usage
-----

Determine if you need to use either a progress bar or a spinner on how
important it is for the user to keep track of progress, and how much
space you have to show it.

For example, a download manager may use a progress bar so that you can
easily tell that a download is continuing. But a mail client may use
spinners for sending mail or updating mail folders, since that is
something that can happen in the background.

Determinate indicators
----------------------

Use a determinate progress bar or spinner for tasks where the activity
can be determined at any point in time, such as downloading or importing
an item. If you have space within the same screen then place the
progress bar below the action that initiated it.

Progress bar – downloading
--------------------------

.. figure:: https://assets.ubuntu.com/v1/b7cc2368-366w_ActivityIndicators_ProgressBar.png

Spinner – transferring
----------------------

.. figure:: https://assets.ubuntu.com/v1/79721f4b-366w_ActivityIndicators_DeterminateSpinner.png

.. hint::
    The toolkit progress bars and spinners automatically handle presence for individual tasks by waiting for two seconds. If the task takes less than that they won’t appear at all.

Indeterminate indicators
------------------------

Use a indeterminate progress bar or spinner if the proportion complete
is unknown. For instance, the loading of a screen or re-caching a
browser is something the user doesn’t need further information on and
can happen in the background.

Progress bar – updating
-----------------------

.. figure:: https://assets.ubuntu.com/v1/36038136-366w_ActivityIndicators_IndeterminateProgress.png

Spinner – loading
-----------------

.. figure:: https://assets.ubuntu.com/v1/31d111ac-750w_ActivityIndicators_Spinner.png

Best practices
--------------

Steps of completeness
---------------------

A determinate progress bar or spinner with a known period of completion
should always fill for a successful task, exactly once. For example when
a user is downloading a new music track, then an acknowledgement that
the download has been completed would be a filled progress bar.

Indeterminate steps
-------------------

.. figure:: https://assets.ubuntu.com/v1/69824bb1-366w_ActivityIndicators_DeterminateSteps.png

If the last step in a task is verifying its success, then allocate a
fraction of the indicator to it. This communicates to the user that the
software is preparing to be complete.

Determinate steps
-----------------

.. figure:: https://assets.ubuntu.com/v1/f6bca0f9-366w_ActivityIndicators_IndeterminateSteps-1.png

Never let an Activity Indicator go backwards. If the task size changes
part-way through, reallocate the remaining fraction of the indicator to
that.

Use only for task progression
-----------------------------

.. figure:: https://assets.ubuntu.com/v1/08e61720-366w_ActivityIndicators_DontSpinner.png

Don’t use an Activity Indicator for anything that isn’t progress of a
task, such as waiting for user input or as a gauge for anything else.

Avoid confusion
---------------

.. figure:: https://assets.ubuntu.com/v1/cb401570-366w_ActivityIndicators_AvoidConfusion.png

Don’t fill the indicator if the task has failed, because it could
confuse the user.

.. hint::
    See Communicating Progress (coming soon) for best practices on labelling Activity Indicators.
