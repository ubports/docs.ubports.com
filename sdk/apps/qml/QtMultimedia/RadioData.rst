.. _sdk_qtmultimedia_radiodata:

QtMultimedia RadioData
======================

Access RDS data from a QML application.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`alternativeFrequenciesEnabled <sdk_qtmultimedia_radiodata_alternativeFrequenciesEnabled>` : bool
-  :ref:`availability <sdk_qtmultimedia_radiodata_availability>` : enumeration
-  :ref:`programType <sdk_qtmultimedia_radiodata_programType>` : enumeration
-  :ref:`programTypeName <sdk_qtmultimedia_radiodata_programTypeName>` : string
-  :ref:`radioText <sdk_qtmultimedia_radiodata_radioText>` : string
-  :ref:`stationId <sdk_qtmultimedia_radiodata_stationId>` : string
-  :ref:`stationName <sdk_qtmultimedia_radiodata_stationName>` : string

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

``RadioData`` is your gateway to all the data available through RDS. RDS is the Radio Data System which allows radio stations to broadcast information like the :ref:`stationId <sdk_qtmultimedia_radiodata_stationId>`, :ref:`programType <sdk_qtmultimedia_radiodata_programType>`, :ref:`programTypeName <sdk_qtmultimedia_radiodata_programTypeName>`, :ref:`stationName <sdk_qtmultimedia_radiodata_stationName>`, and :ref:`radioText <sdk_qtmultimedia_radiodata_radioText>`. This information can be read from the ``RadioData``. It also allows you to set whether the radio should tune to alternative frequencies if the current signal strength falls too much.

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

You use ``RadioData`` together with a :ref:`Radio <sdk_qtmultimedia_radio>`, either by accessing the ``radioData`` property of the Radio, or creating a separate :ref:`RadioData <sdk_qtmultimedia_radiodata>`. The properties of the :ref:`RadioData <sdk_qtmultimedia_radiodata>` type will reflect the information broadcast by the radio station the Radio is currently tuned to.

**See also** `Radio Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_radiodata_alternativeFrequenciesEnabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| alternativeFrequenciesEnabled : bool                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows you to specify whether the radio should try and tune to alternative frequencies if the signal strength of the current station becomes too weak. The alternative frequencies are emitted over RDS by the radio station, and the tuning happens automatically.

.. _sdk_qtmultimedia_radiodata_availability:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availability : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the availability state of the radio data interface.

This is one of:

+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                             |
+===================+=========================================================================================================================+
| Available         | The radio data interface is available to use                                                                            |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| Busy              | The radio data interface is usually available to use, but is currently busy.                                            |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| Unavailable       | The radio data interface is not available to use (there may be no radio hardware)                                       |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time.   |
+-------------------+-------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_radiodata_programType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| programType : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of the currently playing program as transmitted by the radio station. The value can be any one of the values defined in the table below.

+-----------------------+
| Value                 |
+=======================+
| Undefined             |
+-----------------------+
| News                  |
+-----------------------+
| CurrentAffairs        |
+-----------------------+
| Information           |
+-----------------------+
| Sport                 |
+-----------------------+
| Education             |
+-----------------------+
| Drama                 |
+-----------------------+
| Culture               |
+-----------------------+
| Science               |
+-----------------------+
| Varied                |
+-----------------------+
| PopMusic              |
+-----------------------+
| RockMusic             |
+-----------------------+
| EasyListening         |
+-----------------------+
| LightClassical        |
+-----------------------+
| SeriousClassical      |
+-----------------------+
| OtherMusic            |
+-----------------------+
| Weather               |
+-----------------------+
| Finance               |
+-----------------------+
| ChildrensProgrammes   |
+-----------------------+
| SocialAffairs         |
+-----------------------+
| Religion              |
+-----------------------+
| PhoneIn               |
+-----------------------+
| Travel                |
+-----------------------+
| Leisure               |
+-----------------------+
| JazzMusic             |
+-----------------------+
| CountryMusic          |
+-----------------------+
| NationalMusic         |
+-----------------------+
| OldiesMusic           |
+-----------------------+
| FolkMusic             |
+-----------------------+
| Documentary           |
+-----------------------+
| AlarmTest             |
+-----------------------+
| Alarm                 |
+-----------------------+
| Talk                  |
+-----------------------+
| ClassicRock           |
+-----------------------+
| AdultHits             |
+-----------------------+
| SoftRock              |
+-----------------------+
| Top40                 |
+-----------------------+
| Soft                  |
+-----------------------+
| Nostalgia             |
+-----------------------+
| Classical             |
+-----------------------+
| RhythmAndBlues        |
+-----------------------+
| SoftRhythmAndBlues    |
+-----------------------+
| Language              |
+-----------------------+
| ReligiousMusic        |
+-----------------------+
| ReligiousTalk         |
+-----------------------+
| Personality           |
+-----------------------+
| Public                |
+-----------------------+
| College               |
+-----------------------+

.. _sdk_qtmultimedia_radiodata_programTypeName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| programTypeName : string                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a string representation of the :ref:`programType <sdk_qtmultimedia_radiodata_programType>`.

.. _sdk_qtmultimedia_radiodata_radioText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| radioText : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds free-text transmitted by the radio station. This is typically used to show supporting information for the currently playing content, for instance song title or artist name.

.. _sdk_qtmultimedia_radiodata_stationId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stationId : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows you to read the station Id of the currently tuned radio station.

.. _sdk_qtmultimedia_radiodata_stationName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stationName : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property has the name of the currently tuned radio station.

