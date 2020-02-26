AppArmor Policy Groups
======================

This document contains a full list of Ubuntu Touch's available policy groups and a description of what they give your app permission to access.

Each entry follows this format

.. code-block since Sphinx tries to highlight this with an incorrect lexer

.. code-block:: text

    Title
    -----

    Description: Description from apparmor file

    Usage: How common it is to use this policy (from apparmor file)

    Optional longer description

Policy usage affects whether your app will be accepted by the OpenStore. Apps containing policies with common usage are generally accepted immediately, while reserved usage policies will need to be manually reviewed.

.. note:: Coding tip: Everytime you add a new Policy group you need to update your app's version for this to be taken into account.

accounts
--------

Description: Can use Online Accounts.

Usage: common

The accounts policy gives your app the permissions it needs to access the `Online Accounts API`_.


audio
-----

Description: Can play audio (allows playing remote content via media-hub)

Usage: common

The audio policy is needed for your app to play audio via pulseaudio or media-hub. The permission also gives it the ability to send album art to the thumbnailer service, which is then shown on the sound indicator.


bluetooth
---------

Description: Use bluetooth (bluez5) as an administrator.

Usage: reserved

This policy grants unrestricted access to Bluetooth devices. It is provided for administration of bluetooth and as a stepping stone towards developing a safe bluetooth API all apps can access.


calendar
--------

Description: Can access the calendar.

Usage: reserved

Calendar grants access to the Evolution dataserver's calendar and alarms APIs. It also grants access to sync-monitor.

This policy is reserved since it grants free access to all calendars on the device at any time. The legacy bug about this situation is `LP #1227824`_ .


camera
------

Description: Can access the camera(s)

Usage: common

The camera policy grants access to device cameras.


connectivity
------------

Description: Can access coarse network connectivity information

Usage: common

The connectivity policy allows apps to determine rough information about the device's connectivity. This includes whether the device is connected to the Internet and whether it is connected via a Wi-Fi or mobile data connection.


contacts
--------

Description: Can access contacts.

Usage: reserved

The contacts policy allows apps to access the device user's contacts list. It is marked as reserved because it allows access to sync-monitor and unfettered access to the address book.


content_exchange
----------------

Description: Can request/import data from other applications

Usage: common

Using the content_exchange policy allows your app to be a consumer of content on content-hub.


content_exchange_source
-----------------------

Description: Can provide/export data to other applications

Usage: common

The content_exchange_source policy allows your app to provide content on content-hub.


debug
-----

Description: Use special debugging tools. This should only be used in development and not for production packages. Note: use of this policy group provides significantly different confinement than normal and is not considered secure. You should never run untrusted programs using this policy group.

Usage: reserved


document_files
--------------

Description: Can read and write to document files. This policy group is reserved for certain applications, such as document viewers. Developers should typically use the content_exchange policy group and API to access document files instead.

Usage: reserved

This policy allows apps to read and write to the "Documents" folders in the user's home directory and external media.

document_files_read
-------------------

Description: Can read all document files. This policy group is reserved for certain applications, such as document viewers. Developers should typically use the content_exchange policy group and API to access document files instead.

Usage: reserved

This policy allows apps to read the "Documents" folders in the user's home directory and external media.


history
-------

Description: Can access the history-service. This policy group is reserved for vetted applications only in this version of the policy. A future version of the policy may move this out of reserved status.

Usage: reserved


keep-display-on
---------------

Description: Can request keeping the screen on

Usage: common


location
--------

Description: Can access Location

Usage: common

Allows an app to request access to the device's current location.


microphone
----------

Description: Can access the microphone

Usage: common


music_files
-----------

Description: Can read and write to music files. This policy group is reserved for certain applications, such as music players. Developers should typically use the content_exchange policy group and API to access music files instead.

Usage: reserved

The music_files policy group allows an app to read or write to the Music directories in the user's home folder or on external media.


music_files_read
----------------

Description: Can read all music files. This policy group is reserved for certain applications, such as music players. Developers should typically use the content_exchange policy group and API to access music files instead.

Usage: reserved

The music_files_read policy group allows an app to read the Music directories in the user's home folder or on external media.


networking
----------

Description: Can access the network

Usage: common

The networking policy group allows an app to contact network devices and use the `download manager`_.


picture_files
-------------

Description: Can read and write to picture files. This policy group is reserved for certain applications, such as gallery applications. Developers should typically use the content_exchange policy group and API to access picture files instead.

Usage: reserved

The picture_files policy group allows an app to read and write to the Pictures directories in the user's home folder or on external media.


picture_files_read
------------------

Description: Can read all picture files. This policy group is reserved for certain applications, such as gallery applications. Developers should typically use the content_exchange policy group and API to access picture files instead.

Usage: reserved

The picture_files_read policy group allows an app to read the Pictures directories in the user's home folder or on external media.


push-notification-client
------------------------

Description: Can use push notifications as a client

Usage: common


sensors
-------

Description: Can access the sensors

Usage: common

Allows apps to access `device sensors`_


usermetrics
-----------

Description: Can use UserMetrics to update the InfoGraphic

Usage: common

Allows an app to write metrics to the UserMetrics service so they can be displayed on the InfoGraphic.


video
-----

Description: Can play video (allows playing remote content via media-hub)

Usage: common


video_files
-----------

Description: Can read and write to video files. This policy group is reserved for certain applications, such as gallery applications. Developers should typically use the content_exchange policy group and API to access video files instead.

Usage: reserved

The video_files policy group allows an app to read and write to the Videos directories in the user's home folder or on external media.


video_files_read
----------------

Description: Can read all video files. This policy group is reserved for certain applications, such as gallery applications. Developers should typically use the content_exchange policy group and API to access video files instead.

Usage: reserved

The video_files_read policy group allows an app to read the Videos directories in the user's home folder or on external media.


webview
-------

Description: Can use the UbuntuWebview

Usage: common

The webview policy group allows apps to embed a `web browser view`_.

.. _online accounts api: https://api-docs.ubports.com/sdk/apps/qml/Ubuntu.OnlineAccounts/
.. _lp #1227824: https://bugs.launchpad.net/ubuntu/+source/evolution-data-server/+bug/1227824
.. _download manager: https://api-docs.ubports.com/sdk/apps/qml/Ubuntu.DownloadManager/Ubuntu%20Download%20Manager%20API.html
.. _device sensors: https://api-docs.ubports.com/sdk/apps/qml/QtSensors/index.html
.. _web browser view: https://api-docs.ubports.com/sdk/apps/qml/Ubuntu.Web/WebView.html?highlight=webview
