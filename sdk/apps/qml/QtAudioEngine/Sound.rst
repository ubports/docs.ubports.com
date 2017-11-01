Define a variety of samples and parameters to be used for SoundInstance.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`attenuationModel </sdk/apps/qml/QtAudioEngine/Sound#attenuationModel-prop>`__****
   : string
-  ****`category </sdk/apps/qml/QtAudioEngine/Sound#category-prop>`__****
   : string
-  ****`name </sdk/apps/qml/QtAudioEngine/Sound#name-prop>`__**** :
   string
-  ****`playType </sdk/apps/qml/QtAudioEngine/Sound#playType-prop>`__****
   : enumeration

Methods
-------

-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-12>`__****\ (position,
   velocity, direction, gain, pitch)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-11>`__****\ (position,
   velocity, gain, pitch)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-10>`__****\ (position,
   gain, pitch)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-9>`__****\ (position,
   velocity, direction, gain)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-8>`__****\ (position,
   velocity, gain)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-7>`__****\ (position,
   gain)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-6>`__****\ (position,
   velocity, direction)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-5>`__****\ (position,
   velocity)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-4>`__****\ (position)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-3>`__****\ (gain,
   pitch)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method-2>`__****\ (gain)
-  ****`play </sdk/apps/qml/QtAudioEngine/Sound#play-method>`__****\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

Sound can be accessed through
`QtAudioEngine::AudioEngine::sounds </sdk/apps/qml/QtAudioEngine/AudioEngine#sounds-prop>`__
with its unique name and must be defined inside
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
        MouseArea {
            anchors.fill: parent
            onPressed: {
                audioengine.sounds["explosion"].play();
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ attenuationModel : string                                       |
+--------------------------------------------------------------------------+

This property specifies which attenuation model this sound will apply.

| 

+--------------------------------------------------------------------------+
|        \ category : string                                               |
+--------------------------------------------------------------------------+

This property specifies which
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__ this
sound belongs to.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of Sound, must be unique among all sounds
and only defined once.

| 

+--------------------------------------------------------------------------+
|        \ playType : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the playType. It can be one of:

-  Random - randomly picks up a play variation when playback is
   triggered
-  Sequential - plays each variation in sequence when playback is
   triggered

The default value is Random.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction, gain, pitch)                |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, *velocity*, *direction*,
adjusted *gain* and *pitch*.

| 

+--------------------------------------------------------------------------+
|        \ play(position, velocity, gain, pitch)                           |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, *velocity*, adjusted *gain*
and *pitch*. Direction is set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(position, gain, pitch)                                     |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, adjusted *gain* and *pitch*.
Direction and velocity are all set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction, gain)                       |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, *velocity*, *direction* and
adjusted *gain*.

| 

+--------------------------------------------------------------------------+
|        \ play(position, velocity, gain)                                  |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, *velocity* and adjusted
*gain*. Direction is set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(position, gain)                                            |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position* and adjusted *gain*. Direction
and velocity are all set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction)                             |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*, *velocity* and *direction*.

| 

+--------------------------------------------------------------------------+
|        \ play(position, velocity)                                        |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position* and *velocity*. Direction is
set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(position)                                                  |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with specified *position*. Direction and velocity are all
set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(gain, pitch)                                               |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with the adjusted *gain* and *pitch*. Position, direction
and velocity are all set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play(gain)                                                      |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing with the adjusted *gain*. Position, direction and
velocity are all set to ``"0,0,0"``.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Creates a new
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ and
starts playing. Position, direction and velocity are all set to
``"0,0,0"``.

| 
