CalDAV and CardDAV synchronization
==================================

CalDAV and CardDAV are protocols to synchronize calendars and contacts with a remote server. Many email-hosters provide a CalDAV and CardDAV interface.

**Note:** CalDAV Sync can also be set up in using the calendar app. Open the app, click on the little calendar icon in the top right corner and select "Add internet calendar > Generic CalDAV". Enter your calendar URL as well as your username and password to complete the process.

At the moment, there is no carddav implementation directly accessible from the Ubuntu Touch graphical user-interface, so the only way to sync carddav is by using syncevolution + cron. However, there is a simple way to do that with a script that you can run in the terminal or via phablet SSH connection. These instructions work for caldav as well.

1) Follow this `guide <https://docs.ubports.com/en/latest/userguide/advanceduse/adb.html>`_ to activate Developer Mode and ADB (or SSH) connection.


2) Download this `project <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization>`_ onto the device.
    ``git clone https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization.git``
    
    ``git checkout v0.1.0``
    
    ``# or``
    
    ``wget --quiet --show-progress https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization/archive/v0.1.0.zip``
    
    ``unzip v0.1.0.zip``

3) Modify or create a configuration file.
    ``cp config-nextcloud-template.txt config-personal.txt``
    
    ``vim config-personal.txt``
 
4) Edit or create the following configuration variables.
    These three variable will be used for all calendars and contacts in configuration file
  
        * ``USERNAME`` # Credential presented to the server  
        * ``PASSWORD`` # Credential presented to the server
        * ``CRON_FREQUENCY`` # See `this <http://www.nncron.ru/help/EN/working/cron-format.htm>`_ tutorial
    
    For CardDav (contacts) the following variables are needed

        * ``CARD_URL``  # The base url shared between all contact groups belonging to ``USERNAME``, If there is only one contact group for the user this can be the full URL
        * ``CARD_NAMES`` # An array of contact group names (``CARD_URL`` and ``CARD_NAMES[n]`` will be concatinated), This can empty or unset if ``CARD_URL`` is the full URL (as is the case for Nextcloud users)

          The following three variables are used by *syncevolution* and they are restricted to 31 characters and can NOT include the '@' symbol. They must be unique across all of *syncevolution* else *syncevolution* will fail with strange errors.
    
        * ``CONTACTS_SERVER_CONFIG_NAMES`` # An array used to identify the configurations for each remote server URL
        * ``CONTACTS_NAMES`` # An array used to identify the configurations for each local database kept in sync with each remote server URL  
        * ``CONTACTS_VISUAL_NAMES`` # An array holding the display names that will be visible to applications using contact databases, meant for humans to read
    
    For CalDav (calendars) the following variables are needed
  
        * ``CAL_URL`` # The base url shared between all calendars belonging to ``USERNAME`` on a server
        * ``CAL_NAMES`` # An array of calendar names (``CAL_URL`` and ``CAL_NAMES[n]`` will be concatinated) Currently by default Nextcloud has two calendars 'personal' and 'contact_birthdays'

          The following three variables are used by *syncevolution* and they are restricted to 31 characters and can NOT include the '@' symbol. They must be unique across all of *syncevolution* else *syncevolution* will fail with strange errors.
 
        * ``CALENDAR_SERVER_CONFIG_NAMES`` # An array used to identify the configurations for each remote server URL
        * ``CALENDAR_NAMES`` # An array used to identify the configurations for each local database kept in sync with each remote server URL
        * ``CALENDAR_VISUAL_NAMES`` # An array holding the display names that will be visible to applications using calendar databases, meant for humans to read

5) Process all configurations
    ``./setup-dav-sync.sh --contacts --calendar config-personal.txt config-2.txt config-3.txt``
    
    ``# or``
    
    ``./setup-dav-sync.sh --contacts config-personal.txt config-2.txt config-3.txt``
    
    ``./setup-dav-sync.sh --calendar config-personal.txt config-2.txt config-3.txt``

    This will perform the initial synchronization, setup a cron job for future synchronization, and create a manual synchronization script in ``~/bin/``

6) Remove a configuration
    ``./setup-dav-sync.sh --delete-contacts --delete-calendar config-personal.txt``
    
    ``# or``
    
    ``./setup-dav-sync.sh --delete-contacts config-personal.txt``
    
    ``./setup-dav-sync.sh --delete-calendar config-personal.txt``

7) Review list of known bugs `here <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization/tree/v0.1.0#known-bugs>`_


Sources:
^^^^^^^^

* https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization/tree/v0.1.0
* https://askubuntu.com/questions/616081/ubuntu-touch-add-contact-list-and-calendars/664834#664834
* https://gist.github.com/boTux/069b53d8e06bdb9b9c97
* https://gist.github.com/tcarrondo
* https://gist.github.com/bastos77
* https://askubuntu.com/questions/601910/ssh-ubuntu-touch
