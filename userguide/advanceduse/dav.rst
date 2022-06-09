CalDAV and CardDAV syncing
==========================

CalDAV and CardDAV are protocols to sync calendars and contacts with a remote server.
Many e-mail hosters provide a CalDAV and CardDAV interface.

**Note:** CalDAV sync can also be set up by using the calendar app.
Open it, click on the little calendar icon in the top right corner and select "Add internet calendar > Generic CalDAV".
Enter your calendar URL as well as your username and password to complete the process.

At the moment, the Ubuntu Touch graphical user-interface lacks a CardDAV implementation, but you can do it by using SyncEvolution + cron. There is a script you can run in the terminal, or via a phablet SSH connection.
These instructions work for CalDAV as well.

1) Follow this `guide <https://docs.ubports.com/en/latest/userguide/advanceduse/adb.html>`_ to activate Developer Mode and a connection either through ADB or SSH.


2) OPTION A: 

    2.1    Download this `script <https://gist.github.com/bastos77/0c47a94dd0bf3e394f879c0ff42b7839>`_ (let's call it dav.sh) and edit the following variables: 

    * Server side: CAL_URL, **CONTACTS_URL**, USERNAME, PASSWORD (of your ownCloud/nextCloud/baikal/SOGO/… server)
    * CONTACT and CALENDAR _ NAME / VISUAL_NAME / CONFIG_NAME (it's more cosmetic)
    * CRON_FREQUENCY (for the frequency of synchronization)
    * Line 61: write ``sudo sh -c "echo '$COMMAND_LINE' > /sbin/sogosync"`` , instead of ``sudo echo "$COMMAND_LINE" > /sbin/sogosync``, to avoid a "Permission denied" error.

    2.2     Move the file to your Ubuntu Touch device, either by way of a file manager or through the use of ADB:: 

        adb push dav.sh /home/phablet

    2.3    Connect with the phablet shell (using ``adb shell``) or type the following directly into the Ubuntu Touch device terminal app::

        chmod +x dav.sh
        ./dav.sh


3) OPTION B: for advanced users (or if you have to delete/recreate sync configurations), or if you use Nextcloud as your Carddav/Calddav server 

    3.1    Read the  `instructions <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization>`_

    3.2    Download the `script and config files::

        git clone https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization.git
        cd UTouch_CalDAV_and_CardDAV_synchronization

    3.3    Edit the config file as explained in the `instructions <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization>`_::

        cp config-nextcloud-template.txt config-personal.txt
        vim config-personal.txt

    3.4     Move the files to your Ubuntu Touch device, either by way of a file manager or through the use of ADB:: 

        adb push ../UTouch_CalDAV_and_CardDAV_synchronization  /home/phablet/

    3.5    Connect with the phablet shell (using ``adb shell``) or type the following directly into the Ubuntu Touch device terminal app::

        cd UTouch_CalDAV_and_CardDAV_synchronization
        chmod +x setup-dav-sync.sh
        ./setup-dav-sync.sh --contacts config-personal.txt

Sources:
^^^^^^^^

* https://askubuntu.com/questions/616081/ubuntu-touch-add-contact-list-and-calendars/664834#664834
* https://gist.github.com/boTux/069b53d8e06bdb9b9c97
* https://gist.github.com/tcarrondo
* https://gist.github.com/bastos77
* https://askubuntu.com/questions/601910/ssh-ubuntu-touch
