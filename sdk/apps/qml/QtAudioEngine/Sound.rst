.. _sdk_qtaudioengine_sound:
QtAudioEngine Sound
===================

Define a variety of samples and parameters to be used for SoundInstance.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`attenuationModel <sdk_qtaudioengine_sound_attenuationModel-prop>`
   : string
-  :ref:`category <sdk_qtaudioengine_sound_category-prop>` : string
-  :ref:`name <sdk_qtaudioengine_sound_name-prop>` : string
-  :ref:`playType <sdk_qtaudioengine_sound_playType-prop>` :
   enumeration

Methods
-------

-  :ref:`play <sdk_qtaudioengine_sound_play-method-12>`\ (position,
   velocity, direction, gain, pitch)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-11>`\ (position,
   velocity, gain, pitch)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-10>`\ (position,
   gain, pitch)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-9>`\ (position,
   velocity, direction, gain)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-8>`\ (position,
   velocity, gain)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-7>`\ (position,
   gain)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-6>`\ (position,
   velocity, direction)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-5>`\ (position,
   velocity)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-4>`\ (position)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-3>`\ (gain,
   pitch)
-  :ref:`play <sdk_qtaudioengine_sound_play-method-2>`\ (gain)
-  :ref:`play <sdk_qtaudioengine_sound_play-method>`\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

Sound can be accessed through
:ref:`QtAudioEngine::AudioEngine::sounds <sdk_qtaudioengine_audioengine#sounds-prop>`
with its unique name and must be defined inside
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>`.

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

.. _sdk_qtaudioengine_sound_attenuationModel-prop:

+--------------------------------------------------------------------------+
|        \ attenuationModel : string                                       |
+--------------------------------------------------------------------------+

This property specifies which attenuation model this sound will apply.

| 

.. _sdk_qtaudioengine_sound_category-prop:

+--------------------------------------------------------------------------+
|        \ category : string                                               |
+--------------------------------------------------------------------------+

This property specifies which
:ref:`AudioCategory <sdk_qtaudioengine_audiocategory>` this sound belongs
to.

| 

.. _sdk_qtaudioengine_sound_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of Sound, must be unique among all sounds
and only defined once.

| 

.. _sdk_qtaudioengine_sound_playType-prop:

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

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction, gain, pitch)                |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, *velocity*, *direction*,
adjusted *gain* and *pitch*.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity, gain, pitch)                           |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, *velocity*, adjusted *gain*
and *pitch*. Direction is set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, gain, pitch)                                     |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, adjusted *gain* and *pitch*.
Direction and velocity are all set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction, gain)                       |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, *velocity*, *direction* and
adjusted *gain*.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity, gain)                                  |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, *velocity* and adjusted
*gain*. Direction is set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, gain)                                            |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position* and adjusted *gain*. Direction
and velocity are all set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity, direction)                             |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*, *velocity* and *direction*.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position, velocity)                                        |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position* and *velocity*. Direction is
set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(position)                                                  |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with specified *position*. Direction and velocity are all
set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(gain, pitch)                                               |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with the adjusted *gain* and *pitch*. Position, direction
and velocity are all set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play(gain)                                                      |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing with the adjusted *gain*. Position, direction and
velocity are all set to ``"0,0,0"``.

| 

.. _sdk_qtaudioengine_sound_play-method:

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Creates a new :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` and
starts playing. Position, direction and velocity are all set to
``"0,0,0"``.

| 
