.. _sdk_qtmultimedia_radiodata:
QtMultimedia RadioData
======================

Access RDS data from a QML application.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`alternativeFrequenciesEnabled <sdk_qtmultimedia_radiodata_alternativeFrequenciesEnabled-prop>`
   : bool
-  :ref:`availability <sdk_qtmultimedia_radiodata_availability-prop>`
   : enumeration
-  :ref:`programType <sdk_qtmultimedia_radiodata_programType-prop>`
   : enumeration
-  :ref:`programTypeName <sdk_qtmultimedia_radiodata_programTypeName-prop>`
   : string
-  :ref:`radioText <sdk_qtmultimedia_radiodata_radioText-prop>` :
   string
-  :ref:`stationId <sdk_qtmultimedia_radiodata_stationId-prop>` :
   string
-  :ref:`stationName <sdk_qtmultimedia_radiodata_stationName-prop>`
   : string

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

``RadioData`` is your gateway to all the data available through RDS. RDS
is the Radio Data System which allows radio stations to broadcast
information like the
:ref:`stationId <sdk_qtmultimedia_radiodata#stationId-prop>`,
:ref:`programType <sdk_qtmultimedia_radiodata#programType-prop>`,
:ref:`programTypeName <sdk_qtmultimedia_radiodata#programTypeName-prop>`,
:ref:`stationName <sdk_qtmultimedia_radiodata#stationName-prop>`, and
:ref:`radioText <sdk_qtmultimedia_radiodata#radioText-prop>`. This
information can be read from the ``RadioData``. It also allows you to
set whether the radio should tune to alternative frequencies if the
current signal strength falls too much.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Rectangle {
        width: 480
        height: 320
        Radio {
            id: radio
            band: Radio.FM
        }
        Column {
            Text {
                text: radio.radioData.stationName
            }
            Text {
                text: radio.radioData.programTypeName
            }
            Text {
                text: radio.radioData.radioText
            }
        }
    }

You use ``RadioData`` together with a
:ref:`Radio <sdk_qtmultimedia_radio>`, either by accessing the
``radioData`` property of the Radio, or creating a separate
:ref:`RadioData <sdk_qtmultimedia_radiodata>`. The properties of the
:ref:`RadioData <sdk_qtmultimedia_radiodata>` type will reflect the
information broadcast by the radio station the Radio is currently tuned
to.

**See also** `Radio
Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_radiodata_alternativeFrequenciesEnabled-prop:

+--------------------------------------------------------------------------+
|        \ alternativeFrequenciesEnabled : bool                            |
+--------------------------------------------------------------------------+

This property allows you to specify whether the radio should try and
tune to alternative frequencies if the signal strength of the current
station becomes too weak. The alternative frequencies are emitted over
RDS by the radio station, and the tuning happens automatically.

| 

.. _sdk_qtmultimedia_radiodata_availability-prop:

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

Returns the availability state of the radio data interface.

This is one of:

.. _sdk_qtmultimedia_radiodata_Value              Description-prop:

+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                             |
+===================+=========================================================================================================================+
.. _sdk_qtmultimedia_radiodata_Busy               The radio data interface is usually available to use, but is currently busy.-prop:
| Available         | The radio data interface is available to use                                                                            |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radiodata_Unavailable        The radio data interface is not available to use (there may be no radio hardware)-prop:
| Busy              | The radio data interface is usually available to use, but is currently busy.                                            |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_radiodata_ResourceMissing    There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time.-prop:
| Unavailable       | The radio data interface is not available to use (there may be no radio hardware)                                       |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time.   |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_radiodata_programType-prop:

+--------------------------------------------------------------------------+
|        \ programType : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the type of the currently playing program as
transmitted by the radio station. The value can be any one of the values
defined in the table below.

.. _sdk_qtmultimedia_radiodata_Value-prop:

+-----------------------+
| Value                 |
+=======================+
.. _sdk_qtmultimedia_radiodata_News-prop:
| Undefined             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_CurrentAffairs-prop:
| News                  |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Information-prop:
| CurrentAffairs        |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Sport-prop:
| Information           |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Education-prop:
| Sport                 |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Drama-prop:
| Education             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Culture-prop:
| Drama                 |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Science-prop:
| Culture               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Varied-prop:
| Science               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_PopMusic-prop:
| Varied                |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_RockMusic-prop:
| PopMusic              |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_EasyListening-prop:
| RockMusic             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_LightClassical-prop:
| EasyListening         |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_SeriousClassical-prop:
| LightClassical        |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_OtherMusic-prop:
| SeriousClassical      |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Weather-prop:
| OtherMusic            |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Finance-prop:
| Weather               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_ChildrensProgrammes-prop:
| Finance               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_SocialAffairs-prop:
| ChildrensProgrammes   |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Religion-prop:
| SocialAffairs         |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_PhoneIn-prop:
| Religion              |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Travel-prop:
| PhoneIn               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Leisure-prop:
| Travel                |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_JazzMusic-prop:
| Leisure               |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_CountryMusic-prop:
| JazzMusic             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_NationalMusic-prop:
| CountryMusic          |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_OldiesMusic-prop:
| NationalMusic         |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_FolkMusic-prop:
| OldiesMusic           |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Documentary-prop:
| FolkMusic             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_AlarmTest-prop:
| Documentary           |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Alarm-prop:
| AlarmTest             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Talk-prop:
| Alarm                 |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_ClassicRock-prop:
| Talk                  |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_AdultHits-prop:
| ClassicRock           |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_SoftRock-prop:
| AdultHits             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Top40-prop:
| SoftRock              |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Soft-prop:
| Top40                 |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Nostalgia-prop:
| Soft                  |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Classical-prop:
| Nostalgia             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_RhythmAndBlues-prop:
| Classical             |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_SoftRhythmAndBlues-prop:
| RhythmAndBlues        |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Language-prop:
| SoftRhythmAndBlues    |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_ReligiousMusic-prop:
| Language              |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_ReligiousTalk-prop:
| ReligiousMusic        |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Personality-prop:
| ReligiousTalk         |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_Public-prop:
| Personality           |
+-----------------------+
.. _sdk_qtmultimedia_radiodata_College-prop:
| Public                |
+-----------------------+
| College               |
+-----------------------+

| 

.. _sdk_qtmultimedia_radiodata_programTypeName-prop:

+--------------------------------------------------------------------------+
|        \ programTypeName : string                                        |
+--------------------------------------------------------------------------+

This property holds a string representation of the
:ref:`programType <sdk_qtmultimedia_radiodata#programType-prop>`.

| 

+--------------------------------------------------------------------------+
|        \ radioText : string                                              |
+--------------------------------------------------------------------------+

This property holds free-text transmitted by the radio station. This is
typically used to show supporting information for the currently playing
content, for instance song title or artist name.

| 

+--------------------------------------------------------------------------+
|        \ stationId : string                                              |
+--------------------------------------------------------------------------+

This property allows you to read the station Id of the currently tuned
radio station.

| 

+--------------------------------------------------------------------------+
|        \ stationName : string                                            |
+--------------------------------------------------------------------------+

This property has the name of the currently tuned radio station.

| 
