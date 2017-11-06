.. _sdk_qtaudioengine_attenuationmodelinverse:

QtAudioEngine AttenuationModelInverse
=====================================

Defines a non-linear attenuation curve for a Sound.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`end <sdk_qtaudioengine_attenuationmodelinverse_end>` : real
-  :ref:`name <sdk_qtaudioengine_attenuationmodelinverse_name>` : string
-  :ref:`rolloff <sdk_qtaudioengine_attenuationmodelinverse_rolloff>` : real
-  :ref:`start <sdk_qtaudioengine_attenuationmodelinverse_start>` : real

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

:ref:`AttenuationModelInverse <sdk_qtaudioengine_attenuationmodelinverse>` must be defined inside :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`.

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AttenuationModelInverse {
               name:"linear"
               start: 20
               end: 500
               rolloff: 1.5
            }
            AudioSample {
                name:"explosion"
                source: "explosion-02.wav"
            }
            Sound {
                name:"explosion"
                attenuationModel: "linear"
                PlayVariation {
                    sample:"explosion"
                }
            }
        }
    }

Attenuation factor is calculated as below:

distance: distance from sound to listener d = min(max(distance, start), end); attenuation = start / (start + (d - start) \* rolloff);

Property Documentation
----------------------

.. _sdk_qtaudioengine_attenuationmodelinverse_end:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| end : real                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end distance. There will be no further attenuation if the distance from sound to listener is larger than this. The default value is 1000.

.. _sdk_qtaudioengine_attenuationmodelinverse_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of :ref:`AttenuationModelInverse <sdk_qtaudioengine_attenuationmodelinverse>`, must be unique among all attenuation models and only defined once.

.. _sdk_qtaudioengine_attenuationmodelinverse_rolloff:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rolloff : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rolloff factor. The bigger the value is, the faster the sound attenuates. The default value is 1.

.. _sdk_qtaudioengine_attenuationmodelinverse_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the start distance. There will be no attenuation if the distance from sound to listener is within this range. The default value is 1.

