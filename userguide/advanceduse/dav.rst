CalDAV and CardDAV syncing
==========================

CalDAV and CardDAV are protocols to sync calendars and contacts with a remote server.
Many e-mail hosters provide a CalDAV and CardDAV interface.

CalDAV sync can be set up by using the calendar app.
Open it, click on the little calendar icon in the top right corner and select "Add internet calendar > Generic CalDAV".
Enter your calendar URL as well as your username and password to complete the process.

CardDAV sync can be set up by using two different ways detailed in the following instructions.
These instructions work for CalDAV as well.

First, follow this `guide <https://docs.ubports.com/en/latest/userguide/advanceduse/adb.html>`_ to activate Developer Mode and a connection either through ADB or SSH.

Then choose between the two following guides

* The one proposed by Bastos77 and Vanyasem is quite simple, if you have few CalDav or CardDAV to configure. 
* The one proposed by UT-itilities is much featured, with many commands to create or delete configurations. Use it if you manage many configurations, on one or multiple servers

------------------------------------------------------------------------------------------------------------------------------------------------
1. A simple guide proposed by `Bastos77 <https://gist.github.com/bastos77>`_ and `Vanyasem <https://gist.github.com/vanyasem>`_
------------------------------------------------------------------------------------------------------------------------------------------------
#. Download this `script <https://gist.github.com/vanyasem/379095d25ac350676fc70c42efe17c8c>`_ (let's call it dav.sh) and edit the following variables: 
   
   *  ``CAL_URL``
   * ``CONTACTS_URL``
   * ``USERNAME``
   * ``PASSWORD`` 
   * ``CONTACT_NAME``
   * ``CALENDAR_NAME``
   * ``VISUAL_NAME``
   * ``CONFIG_NAME``
   * ``CRON_FREQUENCY`` 

#. Move the file to your Ubuntu Touch device, either by way of a file manager or through the use of ADB:: 

        adb push dav.sh /home/phablet

#. Connect with the phablet shell (using ``adb shell``) or type the following directly into the Ubuntu Touch device terminal app::

        chmod +x dav.sh
        ./dav.sh

------------------------------------------------------------------------------
2. Or a full featured guide proposed by `UT-ilities <https://github.com/UT-ilities>`_
------------------------------------------------------------------------------

if you have many configurations on one or multiple Caldav/CardDav servers

#. Read the  `instructions <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization>`_

#. Download the script and config files::

        git clone https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization.git
        cd UTouch_CalDAV_and_CardDAV_synchronization

#. Edit the config file as explained in the `instructions <https://github.com/UT-ilities/UTouch_CalDAV_and_CardDAV_synchronization>`_::

        cp config-nextcloud-template.txt config-personal.txt
        vim config-personal.txt

#. Move the files to your Ubuntu Touch device, either by way of a file manager or through the use of ADB:: 

        adb push ../UTouch_CalDAV_and_CardDAV_synchronization  /home/phablet/

#. Connect with the phablet shell (using ``adb shell``) or type the following directly into the Ubuntu Touch device terminal app::

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
