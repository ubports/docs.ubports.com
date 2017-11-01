Access radio functionality from a QML application.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`antennaConnected </sdk/apps/qml/QtMultimedia/Radio#antennaConnected-prop>`__****
   : int
-  ****`availability </sdk/apps/qml/QtMultimedia/Radio#availability-prop>`__****
   : enumeration
-  ****`band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__**** :
   enumeration
-  ****`frequency </sdk/apps/qml/QtMultimedia/Radio#frequency-prop>`__****
   : int
-  ****`frequencyStep </sdk/apps/qml/QtMultimedia/Radio#frequencyStep-prop>`__****
   : int
-  ****`maximumFrequency </sdk/apps/qml/QtMultimedia/Radio#maximumFrequency-prop>`__****
   : int
-  ****`minimumFrequency </sdk/apps/qml/QtMultimedia/Radio#minimumFrequency-prop>`__****
   : int
-  ****`muted </sdk/apps/qml/QtMultimedia/Radio#muted-prop>`__**** :
   bool
-  ****`searching </sdk/apps/qml/QtMultimedia/Radio#searching-prop>`__****
   : bool
-  ****`signalStrength </sdk/apps/qml/QtMultimedia/Radio#signalStrength-prop>`__****
   : int
-  ****`state </sdk/apps/qml/QtMultimedia/Radio#state-prop>`__**** :
   enumeration
-  ****`stereo </sdk/apps/qml/QtMultimedia/Radio#stereo-prop>`__**** :
   bool
-  ****`stereoMode </sdk/apps/qml/QtMultimedia/Radio#stereoMode-prop>`__****
   : enumeration
-  ****`volume </sdk/apps/qml/QtMultimedia/Radio#volume-prop>`__**** :
   int

Signals
-------

-  ****`stationFound </sdk/apps/qml/QtMultimedia/Radio#stationFound-signal>`__****\ (int
   *frequency*, string *stationId*)

Methods
-------

-  ****`cancelScan </sdk/apps/qml/QtMultimedia/Radio#cancelScan-method>`__****\ ()
-  ****`scanDown </sdk/apps/qml/QtMultimedia/Radio#scanDown-method>`__****\ ()
-  ****`scanUp </sdk/apps/qml/QtMultimedia/Radio#scanUp-method>`__****\ ()
-  ****`searchAllStations </sdk/apps/qml/QtMultimedia/Radio#searchAllStations-method>`__****\ (enumeration
   *searchMode*)
-  ****`start </sdk/apps/qml/QtMultimedia/Radio#start-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtMultimedia/Radio#stop-method>`__****\ ()
-  ****`tuneDown </sdk/apps/qml/QtMultimedia/Radio#tuneDown-method>`__****\ ()
-  ****`tuneUp </sdk/apps/qml/QtMultimedia/Radio#tuneUp-method>`__****\ ()

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

The corresponding `RadioData </sdk/apps/qml/QtMultimedia/RadioData/>`__
gives RDS information about the current radio station. The best way to
access the `RadioData </sdk/apps/qml/QtMultimedia/RadioData/>`__ for the
current Radio is to use the ``radioData`` property.

**See also** `Radio
Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ antennaConnected : int                                          |
+--------------------------------------------------------------------------+

This property is true if there is an antenna connected. Otherwise it
will be false.

| 

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

Returns the availability state of the radio.

This is one of:

+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                                                                                                                                                                                       |
+===================+===================================================================================================================================================================================================================================================================================+
| Available         | The radio is available to use                                                                                                                                                                                                                                                     |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Busy              | The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.                                                                                                                                            |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Unavailable       | The radio is not available to use (there may be no radio hardware)                                                                                                                                                                                                                |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the `antennaConnected </sdk/apps/qml/QtMultimedia/Radio#antennaConnected-prop>`__ property as well.   |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ band : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the frequency band used for the radio, which can be
specified as any one of the values in the table below.

+---------+--------------------------------------------------------------------------+
| Value   | Description                                                              |
+=========+==========================================================================+
| AM      | 520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz   |
+---------+--------------------------------------------------------------------------+
| FM      | 87.5 to 108.0 MHz, except Japan 76-90 MHz                                |
+---------+--------------------------------------------------------------------------+
| SW      | 1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing           |
+---------+--------------------------------------------------------------------------+
| LW      | 148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)          |
+---------+--------------------------------------------------------------------------+
| FM2     | range not defined, used when area supports more than one FM range        |
+---------+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ frequency : int                                                 |
+--------------------------------------------------------------------------+

Sets the frequency in Hertz that the radio is tuned to. The frequency
must be within the frequency range for the current band, otherwise it
will be changed to be within the frequency range.

**See also**
`maximumFrequency </sdk/apps/qml/QtMultimedia/Radio#maximumFrequency-prop>`__
and
`minimumFrequency </sdk/apps/qml/QtMultimedia/Radio#minimumFrequency-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ frequencyStep : int                                             |
+--------------------------------------------------------------------------+

The number of Hertz for each step when tuning the radio manually. The
value is for the current
`band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ maximumFrequency : int                                          |
+--------------------------------------------------------------------------+

The maximum frequency for the current
`band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ minimumFrequency : int                                          |
+--------------------------------------------------------------------------+

The minimum frequency for the current
`band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property reflects whether the radio is muted or not.

| 

+--------------------------------------------------------------------------+
|        \ searching : bool                                                |
+--------------------------------------------------------------------------+

This property is true if the radio is currently searching for radio
stations, for instance using the
`scanUp </sdk/apps/qml/QtMultimedia/Radio#scanUp-method>`__,
`scanDown </sdk/apps/qml/QtMultimedia/Radio#scanDown-method>`__, and
`searchAllStations </sdk/apps/qml/QtMultimedia/Radio#searchAllStations-method>`__
methods. Once the search completes, or if it is cancelled using
`cancelScan </sdk/apps/qml/QtMultimedia/Radio#cancelScan-method>`__,
this property will be false.

| 

+--------------------------------------------------------------------------+
|        \ signalStrength : int                                            |
+--------------------------------------------------------------------------+

The strength of the current radio signal as a percentage where 0% equals
no signal, and 100% is a very good signal.

| 

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the current state of the Radio.

+----------------+-----------------------------------+
| Value          | Description                       |
+================+===================================+
| ActiveState    | The radio is started and active   |
+----------------+-----------------------------------+
| StoppedState   | The radio is stopped              |
+----------------+-----------------------------------+

**See also** `start </sdk/apps/qml/QtMultimedia/Radio#start-method>`__
and `stop </sdk/apps/qml/QtMultimedia/Radio#stop-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ stereo : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the radio is receiving a stereo signal or
not. If
`stereoMode </sdk/apps/qml/QtMultimedia/Radio#stereoMode-prop>`__ is set
to ForceMono the value will always be false. Likewise, it will always be
true if
`stereoMode </sdk/apps/qml/QtMultimedia/Radio#stereoMode-prop>`__ is set
to ForceStereo.

**See also**
`stereoMode </sdk/apps/qml/QtMultimedia/Radio#stereoMode-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ stereoMode : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the stereo mode of the radio, which can be set to
any one of the values in the table below.

+---------------+--------------------------------------------------------------------------------------------+
| Value         | Description                                                                                |
+===============+============================================================================================+
| Auto          | Uses stereo mode matching the station                                                      |
+---------------+--------------------------------------------------------------------------------------------+
| ForceStereo   | Forces the radio to play the station in stereo, converting the sound signal if necessary   |
+---------------+--------------------------------------------------------------------------------------------+
| ForceMono     | Forces the radio to play the station in mono, converting the sound signal if necessary     |
+---------------+--------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ volume : int                                                    |
+--------------------------------------------------------------------------+

Set this property to control the volume of the radio. The valid range of
the volume is from 0 to 100.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ stationFound(int *frequency*, string *stationId*)               |
+--------------------------------------------------------------------------+

This signal is emitted when a new radio station is found. This signal is
only emitted if
`searchAllStations </sdk/apps/qml/QtMultimedia/Radio#searchAllStations-method>`__
is called with ``SearchGetStationId``.

The *frequency* is returned in Hertz, and the *stationId* corresponds to
the station Id in the
`RadioData </sdk/apps/qml/QtMultimedia/RadioData/>`__ for this radio
station.

The corresponding handler is ``onStationFound``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelScan()                                                    |
+--------------------------------------------------------------------------+

Cancel the current scan. Will also cancel a search started with
`searchAllStations </sdk/apps/qml/QtMultimedia/Radio#searchAllStations-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ scanDown()                                                      |
+--------------------------------------------------------------------------+

Searches backward in the frequency range for the current band.

| 

+--------------------------------------------------------------------------+
|        \ scanUp()                                                        |
+--------------------------------------------------------------------------+

Searches forward in the frequency range for the current band.

| 

+--------------------------------------------------------------------------+
|        \ searchAllStations(enumeration *searchMode*)                     |
+--------------------------------------------------------------------------+

Start searching the complete frequency range for the current band, and
save all the radio stations found. The search mode can be either of the
values described in the table below.

+----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value                | Description                                                                                                                                           |
+======================+=======================================================================================================================================================+
| SearchFast           | Stores each radio station for later retrival and tuning                                                                                               |
+----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchGetStationId   | Does the same as SearchFast, but also emits the station Id with the `stationFound </sdk/apps/qml/QtMultimedia/Radio#stationFound-signal>`__ signal.   |
+----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

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

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the radio. If the radio is available, as determined by the
`availability </sdk/apps/qml/QtMultimedia/Radio#availability-prop>`__
property, this will result in the
`state </sdk/apps/qml/QtMultimedia/Radio#state-prop>`__ becoming
``ActiveState``.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the radio. After calling this method the
`state </sdk/apps/qml/QtMultimedia/Radio#state-prop>`__ will be
``StoppedState``.

| 

+--------------------------------------------------------------------------+
|        \ tuneDown()                                                      |
+--------------------------------------------------------------------------+

Decrements the frequency by the frequency step for the current band. If
the frequency is already set to the minimum frequency, calling this
function has no effect.

**See also** `band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__,
`frequencyStep </sdk/apps/qml/QtMultimedia/Radio#frequencyStep-prop>`__,
and
`minimumFrequency </sdk/apps/qml/QtMultimedia/Radio#minimumFrequency-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ tuneUp()                                                        |
+--------------------------------------------------------------------------+

Increments the frequency by the frequency step for the current band. If
the frequency is already set to the maximum frequency, calling this
function has no effect.

**See also** `band </sdk/apps/qml/QtMultimedia/Radio#band-prop>`__,
`frequencyStep </sdk/apps/qml/QtMultimedia/Radio#frequencyStep-prop>`__,
and
`maximumFrequency </sdk/apps/qml/QtMultimedia/Radio#maximumFrequency-prop>`__.

| 
