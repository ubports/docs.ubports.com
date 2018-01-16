CalDAV and CardDAV synchronization
==================================

CalDAV and CardDAV are protocols to syncronize calendars and contacts with a remote server. Many email-hosters provide a CalDAV and CardDAV interface.

**Note:** CalDAV Sync can also be set up in using the calendar app. Open the app, click on the little calendar icon in the top right corner and select "Add internet calendar > Generic CalDAV". Enter your calendar URL as well as your username and password to complete the process.

At the moment, there is no carddav implemention directly accessible from the Ubuntu Touch graphical user-interface, so the only way to sync carddav is by using syncevolution + cron. However, there is a simple way to do that with a script that you can run in the terminal or via phablet SSH connection. These instructions work for caldav as well.

1) Follow this `guide <https://docs.ubports.com/en/latest/userguide/advanceduse/adb.html>`_ to activate Developer Mode and ADB (or SSH) connection.


2) Download this `script <https://gist.github.com/bastos77/0c47a94dd0bf3e394f879c0ff42b7839>`_ (let's call it dav.sh) and edit the following variables: 

* server side : CAL_URL, **CONTACTS_URL**, USERNAME, PASSWORD (of your ownCloud/nextCloud/baikal/SOGO/... server)
* CONTACT and CALENDAR _ NAME / VISUAL_NAME / CONFIG_NAME (it's more cosmetic)
* CRON_FREQUENCY (for the frequency of synchronisation)
* Line 61: write ``sudo sh -c "echo '$COMMAND_LINE' > /sbin/sogosync"`` , instead of ``sudo echo "$COMMAND_LINE" > /sbin/sogosync``, to avoid permission denied error

3) Move the file to your UbuntuTouch device, either by file manager or with adb:: 

    adb push dav.sh /home/phablet

4) Connect with the phablet shell (``adb shell``) or directly on the phone Terminal app and type the following::

    chmod +x dav.sh
    ./dav.sh


Sources:

* https://askubuntu.com/questions/616081/ubuntu-touch-add-contact-list-and-calendars/664834#664834
* https://gist.github.com/boTux/069b53d8e06bdb9b9c97
* https://gist.github.com/tcarrondo
* https://gist.github.com/bastos77
* https://askubuntu.com/questions/601910/ssh-ubuntu-touch
