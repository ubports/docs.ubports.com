Define a playback variation for sounds. So each time the playback of the
same sound can be a slightly different even with the same AudioSample.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`looping </sdk/apps/qml/QtAudioEngine/PlayVariation#looping-prop>`__****
   : bool
-  ****`maxGain </sdk/apps/qml/QtAudioEngine/PlayVariation#maxGain-prop>`__****
   : real
-  ****`maxPitch </sdk/apps/qml/QtAudioEngine/PlayVariation#maxPitch-prop>`__****
   : real
-  ****`minGain </sdk/apps/qml/QtAudioEngine/PlayVariation#minGain-prop>`__****
   : real
-  ****`minPitch </sdk/apps/qml/QtAudioEngine/PlayVariation#minPitch-prop>`__****
   : real
-  ****`sample </sdk/apps/qml/QtAudioEngine/PlayVariation#sample-prop>`__****
   : string

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

`PlayVariation </sdk/apps/qml/QtAudioEngine/PlayVariation/>`__ must be
defined inside a `Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__.

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AudioSample {
                name:"explosion01"
                source: "explosion-01.wav"
            }
            AudioSample {
                name:"explosion02"
                source: "explosion-02.wav"
            }
            Sound {
                name:"explosion"
                PlayVariation {
                    sample:"explosion01"
                    minPitch: 0.8
                    maxPitch: 1.1
                }
                PlayVariation {
                    sample:"explosion01"
                    minGain: 1.1
                    maxGain: 1.5
                }
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ looping : bool                                                  |
+--------------------------------------------------------------------------+

This property indicates whether the playback will be looped or not.

| 

+--------------------------------------------------------------------------+
|        \ maxGain : real                                                  |
+--------------------------------------------------------------------------+

This property specifies the maximum gain adjustment that can be applied
in any playback.

| 

+--------------------------------------------------------------------------+
|        \ maxPitch : real                                                 |
+--------------------------------------------------------------------------+

This property specifies the maximum pitch adjustment that can be applied
in any playback.

| 

+--------------------------------------------------------------------------+
|        \ minGain : real                                                  |
+--------------------------------------------------------------------------+

This property specifies the minimum gain adjustment that can be applied
in any playback.

| 

+--------------------------------------------------------------------------+
|        \ minPitch : real                                                 |
+--------------------------------------------------------------------------+

This property specifies the minimum pitch adjustment that can be applied
in any playback.

| 

+--------------------------------------------------------------------------+
|        \ sample : string                                                 |
+--------------------------------------------------------------------------+

This property specifies which
`AudioSample </sdk/apps/qml/QtAudioEngine/AudioSample/>`__ this
variation will use.

| 
