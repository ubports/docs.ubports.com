QtMultimedia.RadioData
======================

.. raw:: html

   <p>

Access RDS data from a QML application. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RadioData -->

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

alternativeFrequenciesEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availability : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

programType : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

programTypeName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

radioText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stationId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stationName : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RadioData-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

RadioData is your gateway to all the data available through RDS. RDS is
the Radio Data System which allows radio stations to broadcast
information like the stationId, programType, programTypeName,
stationName, and radioText. This information can be read from the
RadioData. It also allows you to set whether the radio should tune to
alternative frequencies if the current signal strength falls too much.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">480</span>
   <span class="name">height</span>: <span class="number">320</span>
   <span class="type"><a href="QtMultimedia.Radio.md">Radio</a></span> {
   <span class="name">id</span>: <span class="name">radio</span>
   <span class="name">band</span>: <span class="name">Radio</span>.<span class="name">FM</span>
   }
   <span class="type">Column</span> {
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">stationName</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">programTypeName</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">radioText</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

You use RadioData together with a Radio, either by accessing the
radioData property of the Radio, or creating a separate RadioData. The
properties of the RadioData type will reflect the information broadcast
by the radio station the Radio is currently tuned to.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Radio Overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RadioData -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alternativeFrequenciesEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alternativeFrequenciesEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alternativeFrequenciesEnabled : bool

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

This property allows you to specify whether the radio should try and
tune to alternative frequencies if the signal strength of the current
station becomes too weak. The alternative frequencies are emitted over
RDS by the radio station, and the tuning happens automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alternativeFrequenciesEnabled -->

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

Returns the availability state of the radio data interface.

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

The radio data interface is available to use

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

The radio data interface is usually available to use, but is currently
busy.

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

The radio data interface is not available to use (there may be no radio
hardware)

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
may be possible to try again at a later time.

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

   <tr valign="top" id="programType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

programType : enumeration

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

This property holds the type of the currently playing program as
transmitted by the radio station. The value can be any one of the values
defined in the table below.

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

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Undefined

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

News

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CurrentAffairs

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Information

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Sport

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Education

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Drama

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Culture

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Science

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Varied

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PopMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

RockMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

EasyListening

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LightClassical

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SeriousClassical

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

OtherMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Weather

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Finance

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ChildrensProgrammes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SocialAffairs

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Religion

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PhoneIn

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Travel

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Leisure

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

JazzMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CountryMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NationalMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

OldiesMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FolkMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Documentary

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AlarmTest

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Alarm

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Talk

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ClassicRock

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AdultHits

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SoftRock

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Top40

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Soft

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Nostalgia

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Classical

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

RhythmAndBlues

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SoftRhythmAndBlues

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Language

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ReligiousMusic

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ReligiousTalk

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Personality

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Public

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

College

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@programType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="programTypeName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

programTypeName : string

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

This property holds a string representation of the programType.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@programTypeName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="radioText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

radioText : string

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

This property holds free-text transmitted by the radio station. This is
typically used to show supporting information for the currently playing
content, for instance song title or artist name.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@radioText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stationId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stationId : string

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

This property allows you to read the station Id of the currently tuned
radio station.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stationId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stationName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stationName : string

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

This property has the name of the currently tuned radio station.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stationName -->


