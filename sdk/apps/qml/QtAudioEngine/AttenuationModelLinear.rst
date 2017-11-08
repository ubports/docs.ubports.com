.. _sdk_qtaudioengine_attenuationmodellinear:

QtAudioEngine AttenuationModelLinear
====================================

Defines a linear attenuation curve for a Sound.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`end <sdk_qtaudioengine_attenuationmodellinear_end>` : real
-  :ref:`name <sdk_qtaudioengine_attenuationmodellinear_name>` : string
-  :ref:`start <sdk_qtaudioengine_attenuationmodellinear_start>` : real

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

:ref:`AttenuationModelLinear <sdk_qtaudioengine_attenuationmodellinear>` must be defined inside :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`.

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AttenuationModelLinear {
               name:"linear"
               start: 20
               end: 180
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

Property Documentation
----------------------

.. _sdk_qtaudioengine_attenuationmodellinear_end:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| end : real                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end distance. There will be no sound hearable if the distance from sound to listener is larger than this. The default value is 1.

.. _sdk_qtaudioengine_attenuationmodellinear_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of :ref:`AttenuationModelLinear <sdk_qtaudioengine_attenuationmodellinear>`, must be unique among all attenuation models and only defined once.

.. _sdk_qtaudioengine_attenuationmodellinear_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the start distance. There will be no attenuation if the distance from sound to listener is within this range. The default value is 0.

