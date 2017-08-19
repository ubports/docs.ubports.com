QtMultimedia.Radio
==================

.. raw:: html

   <p>

Access radio functionality from a QML application. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Radio -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtMultimedia 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

antennaConnected : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availability : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

band : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frequency : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frequencyStep : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumFrequency : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumFrequency : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

muted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searching : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

signalStrength : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stereo : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stereoMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

volume : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

stationFound(int frequency, string stationId)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancelScan()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

scanDown()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

scanUp()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searchAllStations(enumeration searchMode)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

start()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tuneDown()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tuneUp()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Radio-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Radio is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="type"><a href="index.html">Radio</a></span> {
   <span class="name">id</span>: <span class="name">radio</span>
   <span class="name">band</span>: <span class="name">Radio</span>.<span class="name">FM</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">scanDown</span>()
   }
   <span class="type">MouseArea</span> {
   <span class="name">x</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>; <span class="name">y</span>: <span class="number">0</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">scanUp</span>()
   }
   }</pre>

.. raw:: html

   <p>

You can use Radio to tune the radio and get information about the
signal. You can also use the Radio to get information about tuning, for
instance the frequency steps supported for tuning.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding RadioData gives RDS information about the current
radio station. The best way to access the RadioData for the current
Radio is to use the radioData property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Radio Overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Radio -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$antennaConnected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="antennaConnected-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

antennaConnected : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property is true if there is an antenna connected. Otherwise it
will be false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@antennaConnected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availability-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availability : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the availability state of the radio.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Available

.. raw:: html

   </td>

.. raw:: html

   <td>

The radio is available to use

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Busy

.. raw:: html

   </td>

.. raw:: html

   <td>

The radio is usually available to use, but is currently busy. This can
happen when some other process needs to use the audio hardware.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Unavailable

.. raw:: html

   </td>

.. raw:: html

   <td>

The radio is not available to use (there may be no radio hardware)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ResourceMissing

.. raw:: html

   </td>

.. raw:: html

   <td>

There is one or more resources missing, so the radio cannot be used. It
may be possible to try again at a later time. This can occur if there is
no antenna connected - see the antennaConnected property as well.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@availability -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="band-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

band : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the frequency band used for the radio, which can be
specified as any one of the values in the table below.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AM

.. raw:: html

   </td>

.. raw:: html

   <td>

520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FM

.. raw:: html

   </td>

.. raw:: html

   <td>

87.5 to 108.0 MHz, except Japan 76-90 MHz

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SW

.. raw:: html

   </td>

.. raw:: html

   <td>

1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LW

.. raw:: html

   </td>

.. raw:: html

   <td>

148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FM2

.. raw:: html

   </td>

.. raw:: html

   <td>

range not defined, used when area supports more than one FM range

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@band -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frequency-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frequency : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Sets the frequency in Hertz that the radio is tuned to. The frequency
must be within the frequency range for the current band, otherwise it
will be changed to be within the frequency range.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also maximumFrequency and minimumFrequency.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frequencyStep-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frequencyStep : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The number of Hertz for each step when tuning the radio manually. The
value is for the current band.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frequencyStep -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumFrequency-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumFrequency : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The maximum frequency for the current band.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumFrequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumFrequency-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumFrequency : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The minimum frequency for the current band.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumFrequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="muted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

muted : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property reflects whether the radio is muted or not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@muted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searching-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

searching : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property is true if the radio is currently searching for radio
stations, for instance using the scanUp, scanDown, and searchAllStations
methods. Once the search completes, or if it is cancelled using
cancelScan, this property will be false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@searching -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="signalStrength-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

signalStrength : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The strength of the current radio signal as a percentage where 0% equals
no signal, and 100% is a very good signal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@signalStrength -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="state-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

state : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the current state of the Radio.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ActiveState

.. raw:: html

   </td>

.. raw:: html

   <td>

The radio is started and active

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StoppedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The radio is stopped

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also start and stop.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stereo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stereo : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the radio is receiving a stereo signal or
not. If stereoMode is set to ForceMono the value will always be false.
Likewise, it will always be true if stereoMode is set to ForceStereo.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also stereoMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stereo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stereoMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stereoMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the stereo mode of the radio, which can be set to
any one of the values in the table below.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Auto

.. raw:: html

   </td>

.. raw:: html

   <td>

Uses stereo mode matching the station

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ForceStereo

.. raw:: html

   </td>

.. raw:: html

   <td>

Forces the radio to play the station in stereo, converting the sound
signal if necessary

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ForceMono

.. raw:: html

   </td>

.. raw:: html

   <td>

Forces the radio to play the station in mono, converting the sound
signal if necessary

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@stereoMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="volume-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

volume : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Set this property to control the volume of the radio. The valid range of
the volume is from 0 to 100.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volume -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$stationFound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stationFound-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stationFound(int frequency, string stationId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when a new radio station is found. This signal is
only emitted if searchAllStations is called with SearchGetStationId.

.. raw:: html

   </p>

.. raw:: html

   <p>

The frequency is returned in Hertz, and the stationId corresponds to the
station Id in the RadioData for this radio station.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStationFound.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stationFound -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelScan -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelScan-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelScan()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Cancel the current scan. Will also cancel a search started with
searchAllStations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelScan -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scanDown-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

scanDown()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Searches backward in the frequency range for the current band.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scanDown -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scanUp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

scanUp()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Searches forward in the frequency range for the current band.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scanUp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchAllStations-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

searchAllStations(enumeration searchMode)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Start searching the complete frequency range for the current band, and
save all the radio stations found. The search mode can be either of the
values described in the table below.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SearchFast

.. raw:: html

   </td>

.. raw:: html

   <td>

Stores each radio station for later retrival and tuning

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SearchGetStationId

.. raw:: html

   </td>

.. raw:: html

   <td>

Does the same as SearchFast, but also emits the station Id with the
stationFound signal.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The snippet below uses searchAllStations with SearchGetStationId to
receive all the radio stations in the current band, and store them in a
ListView. The station Id is shown to the user and if the user presses a
station, the radio is tuned to this station.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="index.html">Radio</a></span> {
   <span class="name">id</span>: <span class="name">radio</span>
   <span class="name">onStationFound</span>: <span class="name">radioStations</span>.<span class="name">append</span>({&quot;frequency&quot;: <span class="name">frequency</span>, &quot;stationId&quot;: <span class="name">stationId</span>})
   }
   <span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">radioStations</span>
   }
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">radioStations</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">frequency</span> <span class="operator">=</span> <span class="name">frequency</span>
   }
   <span class="type">Text</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">stationId</span>
   }
   }
   }
   <span class="type">Rectangle</span> {
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">searchAllStations</span>(<span class="name">Radio</span>.<span class="name">SearchGetStationId</span>)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@searchAllStations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

start()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts the radio. If the radio is available, as determined by the
availability property, this will result in the state becoming
ActiveState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stop()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stops the radio. After calling this method the state will be
StoppedState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tuneDown-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

tuneDown()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Decrements the frequency by the frequency step for the current band. If
the frequency is already set to the minimum frequency, calling this
function has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also band, frequencyStep, and minimumFrequency.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tuneDown -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tuneUp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

tuneUp()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Increments the frequency by the frequency step for the current band. If
the frequency is already set to the maximum frequency, calling this
function has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also band, frequencyStep, and maximumFrequency.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tuneUp -->


