.. _sdk_qtmultimedia_radio:
QtMultimedia Radio
==================

Access radio functionality from a QML application.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`antennaConnected <sdk_qtmultimedia_radio_antennaConnected-prop>`
   : int
-  :ref:`availability <sdk_qtmultimedia_radio_availability-prop>` :
   enumeration
-  :ref:`band <sdk_qtmultimedia_radio_band-prop>` : enumeration
-  :ref:`frequency <sdk_qtmultimedia_radio_frequency-prop>` : int
-  :ref:`frequencyStep <sdk_qtmultimedia_radio_frequencyStep-prop>`
   : int
-  :ref:`maximumFrequency <sdk_qtmultimedia_radio_maximumFrequency-prop>`
   : int
-  :ref:`minimumFrequency <sdk_qtmultimedia_radio_minimumFrequency-prop>`
   : int
-  :ref:`muted <sdk_qtmultimedia_radio_muted-prop>` : bool
-  :ref:`searching <sdk_qtmultimedia_radio_searching-prop>` : bool
-  :ref:`signalStrength <sdk_qtmultimedia_radio_signalStrength-prop>`
   : int
-  :ref:`state <sdk_qtmultimedia_radio_state-prop>` : enumeration
-  :ref:`stereo <sdk_qtmultimedia_radio_stereo-prop>` : bool
-  :ref:`stereoMode <sdk_qtmultimedia_radio_stereoMode-prop>` :
   enumeration
-  :ref:`volume <sdk_qtmultimedia_radio_volume-prop>` : int

Signals
-------

-  :ref:`stationFound <sdk_qtmultimedia_radio_stationFound-signal>`\ (int
   *frequency*, string *stationId*)

Methods
-------

-  :ref:`cancelScan <sdk_qtmultimedia_radio_cancelScan-method>`\ ()
-  :ref:`scanDown <sdk_qtmultimedia_radio_scanDown-method>`\ ()
-  :ref:`scanUp <sdk_qtmultimedia_radio_scanUp-method>`\ ()
-  :ref:`searchAllStations <sdk_qtmultimedia_radio_searchAllStations-method>`\ (enumeration
   *searchMode*)
-  :ref:`start <sdk_qtmultimedia_radio_start-method>`\ ()
-  :ref:`stop <sdk_qtmultimedia_radio_stop-method>`\ ()
-  :ref:`tuneDown <sdk_qtmultimedia_radio_tuneDown-method>`\ ()
-  :ref:`tuneUp <sdk_qtmultimedia_radio_tuneUp-method>`\ ()

Detailed Description
--------------------

Radio is part of the **QtMultimedia 5.0** module.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Rectangle {
        width: 320
        height: 480
        Radio {
            id: radio
            band: Radio.FM
        }
        MouseArea {
            x: 0; y: 0
            height: parent.height
            width: parent.width / 2
            onClicked: radio.scanDown()
        }
        MouseArea {
            x: parent.width / 2; y: 0
            height: parent.height
            width: parent.width / 2
            onClicked: radio.scanUp()
        }
    }

You can use ``Radio`` to tune the radio and get information about the
signal. You can also use the Radio to get information about tuning, for
instance the frequency steps supported for tuning.

The corresponding :ref:`RadioData <sdk_qtmultimedia_radiodata>` gives RDS
information about the current radio station. The best way to access the
:ref:`RadioData <sdk_qtmultimedia_radiodata>` for the current Radio is to
use the ``radioData`` property.

**See also** `Radio
Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_radio_antennaConnected-prop:

+--------------------------------------------------------------------------+
|        \ antennaConnected : int                                          |
+--------------------------------------------------------------------------+

This property is true if there is an antenna connected. Otherwise it
will be false.

| 

.. _sdk_qtmultimedia_radio_availability-prop:

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

Returns the availability state of the radio.

This is one of:

.. _sdk_qtmultimedia_radio_Value              Description-prop:

+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                                                                                                                                                                             |
+===================+=========================================================================================================================================================================================================================================================================+
.. _sdk_qtmultimedia_radio_Busy               The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.-prop:
| Available         | The radio is available to use                                                                                                                                                                                                                                           |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_Unavailable        The radio is not available to use (there may be no radio hardware)-prop:
| Busy              | The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.                                                                                                                                  |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_ResourceMissing    There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the-prop:
| Unavailable       | The radio is not available to use (there may be no radio hardware)                                                                                                                                                                                                      |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the :ref:`antennaConnected <sdk_qtmultimedia_radio#antennaConnected-prop>` property as well.   |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_radio_band-prop:

+--------------------------------------------------------------------------+
|        \ band : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the frequency band used for the radio, which can be
specified as any one of the values in the table below.

.. _sdk_qtmultimedia_radio_Value    Description-prop:

+---------+--------------------------------------------------------------------------+
| Value   | Description                                                              |
+=========+==========================================================================+
.. _sdk_qtmultimedia_radio_FM       87.5 to 108.0 MHz, except Japan 76-90 MHz-prop:
| AM      | 520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz   |
+---------+--------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_SW       1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing-prop:
| FM      | 87.5 to 108.0 MHz, except Japan 76-90 MHz                                |
+---------+--------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_LW       148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)-prop:
| SW      | 1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing           |
+---------+--------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_FM2      range not defined, used when area supports more than one FM range-prop:
| LW      | 148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)          |
+---------+--------------------------------------------------------------------------+
| FM2     | range not defined, used when area supports more than one FM range        |
+---------+--------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_radio_frequency-prop:

+--------------------------------------------------------------------------+
|        \ frequency : int                                                 |
+--------------------------------------------------------------------------+

Sets the frequency in Hertz that the radio is tuned to. The frequency
must be within the frequency range for the current band, otherwise it
will be changed to be within the frequency range.

**See also**
:ref:`maximumFrequency <sdk_qtmultimedia_radio#maximumFrequency-prop>` and
:ref:`minimumFrequency <sdk_qtmultimedia_radio#minimumFrequency-prop>`.

| 

.. _sdk_qtmultimedia_radio_frequencyStep-prop:

+--------------------------------------------------------------------------+
|        \ frequencyStep : int                                             |
+--------------------------------------------------------------------------+

The number of Hertz for each step when tuning the radio manually. The
value is for the current :ref:`band <sdk_qtmultimedia_radio#band-prop>`.

| 

.. _sdk_qtmultimedia_radio_maximumFrequency-prop:

+--------------------------------------------------------------------------+
|        \ maximumFrequency : int                                          |
+--------------------------------------------------------------------------+

The maximum frequency for the current
:ref:`band <sdk_qtmultimedia_radio#band-prop>`.

| 

.. _sdk_qtmultimedia_radio_minimumFrequency-prop:

+--------------------------------------------------------------------------+
|        \ minimumFrequency : int                                          |
+--------------------------------------------------------------------------+

The minimum frequency for the current
:ref:`band <sdk_qtmultimedia_radio#band-prop>`.

| 

.. _sdk_qtmultimedia_radio_muted-prop:

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property reflects whether the radio is muted or not.

| 

.. _sdk_qtmultimedia_radio_searching-prop:

+--------------------------------------------------------------------------+
|        \ searching : bool                                                |
+--------------------------------------------------------------------------+

This property is true if the radio is currently searching for radio
stations, for instance using the
:ref:`scanUp <sdk_qtmultimedia_radio#scanUp-method>`,
:ref:`scanDown <sdk_qtmultimedia_radio#scanDown-method>`, and
:ref:`searchAllStations <sdk_qtmultimedia_radio#searchAllStations-method>`
methods. Once the search completes, or if it is cancelled using
:ref:`cancelScan <sdk_qtmultimedia_radio#cancelScan-method>`, this property
will be false.

| 

.. _sdk_qtmultimedia_radio_signalStrength-prop:

+--------------------------------------------------------------------------+
|        \ signalStrength : int                                            |
+--------------------------------------------------------------------------+

The strength of the current radio signal as a percentage where 0% equals
no signal, and 100% is a very good signal.

| 

.. _sdk_qtmultimedia_radio_state-prop:

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the current state of the Radio.

.. _sdk_qtmultimedia_radio_Value           Description-prop:

+----------------+-----------------------------------+
| Value          | Description                       |
+================+===================================+
.. _sdk_qtmultimedia_radio_StoppedState    The radio is stopped-prop:
| ActiveState    | The radio is started and active   |
+----------------+-----------------------------------+
| StoppedState   | The radio is stopped              |
+----------------+-----------------------------------+

**See also** :ref:`start <sdk_qtmultimedia_radio#start-method>` and
:ref:`stop <sdk_qtmultimedia_radio#stop-method>`.

| 

.. _sdk_qtmultimedia_radio_stereo-prop:

+--------------------------------------------------------------------------+
|        \ stereo : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the radio is receiving a stereo signal or
not. If :ref:`stereoMode <sdk_qtmultimedia_radio#stereoMode-prop>` is set
to ForceMono the value will always be false. Likewise, it will always be
true if :ref:`stereoMode <sdk_qtmultimedia_radio#stereoMode-prop>` is set
to ForceStereo.

**See also** :ref:`stereoMode <sdk_qtmultimedia_radio#stereoMode-prop>`.

| 

.. _sdk_qtmultimedia_radio_stereoMode-prop:

+--------------------------------------------------------------------------+
|        \ stereoMode : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the stereo mode of the radio, which can be set to
any one of the values in the table below.

.. _sdk_qtmultimedia_radio_Value          Description-prop:

+---------------+--------------------------------------------------------------------------------------------+
| Value         | Description                                                                                |
+===============+============================================================================================+
.. _sdk_qtmultimedia_radio_ForceStereo    Forces the radio to play the station in stereo, converting the sound signal if necessary-prop:
| Auto          | Uses stereo mode matching the station                                                      |
+---------------+--------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radio_ForceMono      Forces the radio to play the station in mono, converting the sound signal if necessary-prop:
| ForceStereo   | Forces the radio to play the station in stereo, converting the sound signal if necessary   |
+---------------+--------------------------------------------------------------------------------------------+
| ForceMono     | Forces the radio to play the station in mono, converting the sound signal if necessary     |
+---------------+--------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_radio_volume-prop:

+--------------------------------------------------------------------------+
|        \ volume : int                                                    |
+--------------------------------------------------------------------------+

Set this property to control the volume of the radio. The valid range of
the volume is from 0 to 100.

| 

Signal Documentation
--------------------

.. _sdk_qtmultimedia_radio_stationFound-method:

+--------------------------------------------------------------------------+
|        \ stationFound(int *frequency*, string *stationId*)               |
+--------------------------------------------------------------------------+

This signal is emitted when a new radio station is found. This signal is
only emitted if
:ref:`searchAllStations <sdk_qtmultimedia_radio#searchAllStations-method>`
is called with ``SearchGetStationId``.

The *frequency* is returned in Hertz, and the *stationId* corresponds to
the station Id in the :ref:`RadioData <sdk_qtmultimedia_radiodata>` for
this radio station.

The corresponding handler is ``onStationFound``.

| 

Method Documentation
--------------------

.. _sdk_qtmultimedia_radio_cancelScan-method:

+--------------------------------------------------------------------------+
|        \ cancelScan()                                                    |
+--------------------------------------------------------------------------+

Cancel the current scan. Will also cancel a search started with
:ref:`searchAllStations <sdk_qtmultimedia_radio#searchAllStations-method>`.

| 

.. _sdk_qtmultimedia_radio_scanDown-method:

+--------------------------------------------------------------------------+
|        \ scanDown()                                                      |
+--------------------------------------------------------------------------+

Searches backward in the frequency range for the current band.

| 

.. _sdk_qtmultimedia_radio_scanUp-method:

+--------------------------------------------------------------------------+
|        \ scanUp()                                                        |
+--------------------------------------------------------------------------+

Searches forward in the frequency range for the current band.

| 

.. _sdk_qtmultimedia_radio_searchAllStations-method:

+--------------------------------------------------------------------------+
|        \ searchAllStations(enumeration *searchMode*)                     |
+--------------------------------------------------------------------------+

Start searching the complete frequency range for the current band, and
save all the radio stations found. The search mode can be either of the
values described in the table below.

.. _sdk_qtmultimedia_radio_Value                 Description-method:

+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Value                | Description                                                                                                                                 |
+======================+=============================================================================================================================================+
.. _sdk_qtmultimedia_radio_SearchGetStationId    Does the same as SearchFast, but also emits the station Id with the-method:
| SearchFast           | Stores each radio station for later retrival and tuning                                                                                     |
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| SearchGetStationId   | Does the same as SearchFast, but also emits the station Id with the :ref:`stationFound <sdk_qtmultimedia_radio#stationFound-signal>` signal.   |
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

The snippet below uses ``searchAllStations`` with ``SearchGetStationId``
to receive all the radio stations in the current band, and store them in
a ListView. The station Id is shown to the user and if the user presses
a station, the radio is tuned to this station.

.. code:: qml

    Item {
        width: 640
        height: 360
        Radio {
            id: radio
            onStationFound: radioStations.append({"frequency": frequency, "stationId": stationId})
        }
        ListModel {
            id: radioStations
        }
        ListView {
            model: radioStations
            delegate: Rectangle {
                    MouseArea {
                        anchors.fill: parent
                        onClicked: radio.frequency = frequency
                    }
                    Text {
                        anchors.fill: parent
                        text: stationId
                    }
                }
        }
        Rectangle {
            MouseArea {
                anchors.fill: parent
                onClicked: radio.searchAllStations(Radio.SearchGetStationId)
            }
        }
    }

| 

.. _sdk_qtmultimedia_radio_start-method:

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the radio. If the radio is available, as determined by the
:ref:`availability <sdk_qtmultimedia_radio#availability-prop>` property,
this will result in the :ref:`state <sdk_qtmultimedia_radio#state-prop>`
becoming ``ActiveState``.

| 

.. _sdk_qtmultimedia_radio_stop-method:

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the radio. After calling this method the
:ref:`state <sdk_qtmultimedia_radio#state-prop>` will be ``StoppedState``.

| 

.. _sdk_qtmultimedia_radio_tuneDown-method:

+--------------------------------------------------------------------------+
|        \ tuneDown()                                                      |
+--------------------------------------------------------------------------+

Decrements the frequency by the frequency step for the current band. If
the frequency is already set to the minimum frequency, calling this
function has no effect.

**See also** :ref:`band <sdk_qtmultimedia_radio#band-prop>`,
:ref:`frequencyStep <sdk_qtmultimedia_radio#frequencyStep-prop>`, and
:ref:`minimumFrequency <sdk_qtmultimedia_radio#minimumFrequency-prop>`.

| 

.. _sdk_qtmultimedia_radio_tuneUp-method:

+--------------------------------------------------------------------------+
|        \ tuneUp()                                                        |
+--------------------------------------------------------------------------+

Increments the frequency by the frequency step for the current band. If
the frequency is already set to the maximum frequency, calling this
function has no effect.

**See also** :ref:`band <sdk_qtmultimedia_radio#band-prop>`,
:ref:`frequencyStep <sdk_qtmultimedia_radio#frequencyStep-prop>`, and
:ref:`maximumFrequency <sdk_qtmultimedia_radio#maximumFrequency-prop>`.

| 
