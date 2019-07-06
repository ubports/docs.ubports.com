Working on the Calendar feature
===============================

The Calendar feature is provided by several components:

* The `Calendar App <https://gitlab.com/ubports/apps/calendar-app>`_, providing the user interface
* `Evolution Data Server <https://github.com/ubports/evolution-data-server-packaging>`_ (often shortened as "EDS"), which is the backend where your calendars are stored
* `sync-monitor <https://github.com/ubports/sync-monitor>`_, the service responsible for managing the synchronisation with remote calendars
* `SyncEvolution <https://github.com/ubports/syncevolution-packaging>`_, the service responsible for performing the synchronisation to a WebDAV/CalDAV remote calendar


Debugging
---------

Calendar synchronisation issues
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

On the device, it's possible to run ``syncevolution`` in debug mode. To do so, open a terminal (it's easier if done from a remote shell -- you can gain a shell on the device using :doc:`/userguide/advanceduse/adb` or :doc:`/userguide/advanceduse/ssh`) and kill any existing processes:

.. code-block:: bash

        pkill sync-evo

Then, start the ``syncevolution`` process with the proper environment variable:

.. code-block:: bash

        SYNCEVOLUTION_DEBUG=1 /usr/lib/arm-linux-gnueabihf/syncevolution/syncevo-dbus-server

At this point, open the Calendar App (if it was not open already) and manually trigger a synchronisation (note that the Synchronisation action is only available if your device is connected to the internet): all the logs will appear in the terminal.

In some cases, the output from ``syncevolution`` might not be enough: for example, the raw HTTP data is usually not printed. Should you need to see that as well, then you'll have to modify a configuration file as well. ``syncevolution``'s configuration files are located under ``~/.config/syncevolution/``,  in a subdirectory whose name takes the form ``<provider-name>-<account-id>``.  There might be stale directories as well, referring to old accounts which have been since deleted. To find out what accounts are still valid, you can invoke the ``account-console`` tool like this:

.. code-block:: bash

        account-console list

This will print the list of the current valid accounts. Once you've figured out what is the account you are interested in, open the file ``~/.config/syncevolution/<account>/peers/target-config/config.ini`` and set the ``loglevel`` variable to a higher value (``11`` seems enough to print all the HTTP traffic):

.. code-block:: ini

        # level of detail for log messages:
        # - 0 (or unset) = INFO messages without log file, DEBUG with log file
        # - 1 = only ERROR messages
        # - 2 = also INFO messages
        # - 3 = also DEBUG messages
        # > 3 = increasing amounts of debug messages for developers
        loglevel = 11

Note that in order for these changes to take effect, you'll need to restart the ``syncevolution`` process again, as explained above.
