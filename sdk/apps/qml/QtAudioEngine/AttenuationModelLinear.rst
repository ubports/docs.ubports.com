Defines a linear attenuation curve for a Sound.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`end </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear#end-prop>`__****
   : real
-  ****`name </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear#name-prop>`__****
   : string
-  ****`start </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear#start-prop>`__****
   : real

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

`AttenuationModelLinear </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear/>`__
must be defined inside
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__.

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

+--------------------------------------------------------------------------+
|        \ end : real                                                      |
+--------------------------------------------------------------------------+

This property holds the end distance. There will be no sound hearable if
the distance from sound to listener is larger than this. The default
value is 1.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of
`AttenuationModelLinear </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear/>`__,
must be unique among all attenuation models and only defined once.

| 

+--------------------------------------------------------------------------+
|        \ start : real                                                    |
+--------------------------------------------------------------------------+

This property holds the start distance. There will be no attenuation if
the distance from sound to listener is within this range. The default
value is 0.

| 
