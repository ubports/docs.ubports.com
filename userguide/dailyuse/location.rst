Using location services
=======================

Location services in Ubuntu Touch allow apps to access your current location. Using this data, apps can `offer turn-by-turn navigation <https://open-store.io/app/navigator.costales>`__, `track your exercise paths <https://open-store.io/app/activitytracker.cwayne18>`__, `locate public transport near you <https://open-store.io/app/transport.zubozrout>`__, and more.

The location services built in to Ubuntu Touch are designed to protect your privacy -- you choose to permit or deny apps access to this data. Apps may only access your location data when the device screen is on and the app is in use.

Checking if location services are enabled
-----------------------------------------

The Location Indicator is displayed whenever location services are enabled. Normally, this indicator will appear to be dark.

.. figure:: /_static/images/userguide/location/location-indicator-inactive-circled.png

    The Location Indicator, showing location enabled but not in use

If an app is accessing location data, the Location Indicator brightens.

.. figure:: /_static/images/userguide/location/location-indicator-active-circled.png

    The Location Indicator, showing location enabled and in use

.. _open_location_settings:

Accessing location services settings
------------------------------------

There are several ways to access settings related to location services in Ubuntu Touch.

Open location quick settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Location Indicator contains quick settings related to location services, including a switch to turn services on or off.

.. figure:: /_static/images/userguide/location/location-quick-settings.jpg

To access these settings, press on the Location Indicator and pull down toward the bottom of the screen.

If location services are disabled, you can access the location quick settings by pressing on any other indicator and pulling down. Then, scroll through the icons at the top of the screen to find Location. Select Location to open the quick settings.

Open location settings in the settings app
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The system settings app can be used to control location services. There are more controls in the system settings app than in the Location Indicator.

.. figure:: /_static/images/userguide/location/location-settings.jpg

There are two ways to access location services controls in the system settings app.

Quick settings
""""""""""""""

`Open location quick settings`_, then select ``Location settings...``.

System settings app
"""""""""""""""""""

Launch the ``System Settings`` app. Select ``Security & Privacy``, then select ``Location``.


Enabling or disabling location services
---------------------------------------

If location services are on, apps which you have allowed access to your location data may request your current location. Location services are enabled by default on Ubuntu Touch.

If location services are off, apps will not be able to access your current location.

There are several ways to enable or disable location services in Ubuntu Touch.

Quick settings
^^^^^^^^^^^^^^

`Open location quick settings`_. Select the ``Location detection`` switch to enable or disable location services.

System settings app
^^^^^^^^^^^^^^^^^^^

`Open location settings in the settings app`_. Under ``Let the device detect your location:``, select the appropriate option:

* ``Using GPS`` turns on location services.
* ``Not at all`` turns off location services.

Allowing apps access to location data
-------------------------------------

Ubuntu Touch allows you to allow or deny apps access to your location data. This decision is presented the first time the app tries to access your current location. You can change your decision later.

An app will show the location permission request the first time it tries to access your current location.

.. figure:: /_static/images/userguide/location/location-prompt.png
    :align: center

Select ``Allow`` to give the app access to your current location. Select ``Don't Allow`` to deny the app access to your current location. Some app features may not work correctly if you select ``Don't Allow``.

Changing your permissions
^^^^^^^^^^^^^^^^^^^^^^^^^

You can change your decision to allow an app access to your location data. This is useful when you gave an app access to your location but you'd like to deny access, or if you denied access but would like to give access.

There are several ways to find these controls.

Location settings
"""""""""""""""""

`Open location settings in the settings app`_. All of the apps which have requested access to your location are listed under ``Let apps access this location:``. Toggle the switch next to an app "on" to allow it to access your location data. Toggle the switch "off" to deny access.

App permission settings
"""""""""""""""""""""""

Launch the ``System Settings`` app. Select ``Security & Privacy``, then select ``App permissions``, followed by ``Location``. All of the apps which have requested access to your location are listed. Toggle the switch next to an app "on" to allow it to access your location data. Toggle the switch "off" to deny access.

Using apps with location services
---------------------------------

Apps will be able to access your current location after they are granted access to location data. However, there are some things to note while using apps with location services.

Time to first fix
^^^^^^^^^^^^^^^^^

A "fix" is a data point generated by GPS hardware that contains its current location and the expected accuracy of that location. GPS hardware is rated by how long it takes to return one of these data points after the device is activated. This rating is called "`Time To First Fix <https://en.wikipedia.org/wiki/Time_to_first_fix>`_," or TTFF.

A device with a mobile data connection should take one to four minutes to receive its first fix. If location services have not been used for a long time *and* the device does not have a mobile data connection, the first fix can take up to an hour. To prevent this from causing problems for you, follow these instructions:

.. warning::

    Do not leave your device in direct sunlight. The heat can damage the device.

#. Disable ``Lock when idle`` in the Battery settings
#. Download an app which uses location services and cause it to start accessing your location data.
#. Leave your device near a window but out of direct sunlight. To reduce energy consumption, turn the screen brightness down.

After 20 minutes to an hour, your device should display your current location. You can now close the app and enable ``Lock when idle``. Future attempts to aquire your location should now take one to four minutes.

App suspension
^^^^^^^^^^^^^^

Apps are suspended whenever they are not in the foreground or the device is locked. When an app is suspended, it cannot receive location data. For this reason, apps will not be able to track your location whenever they are not in use or the device is locked.
