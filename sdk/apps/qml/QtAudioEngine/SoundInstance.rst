.. _sdk_qtaudioengine_soundinstance:
QtAudioEngine SoundInstance
===========================

Play 3d audio content.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`direction <sdk_qtaudioengine_soundinstance_direction-prop>`
   : vector3d
-  :ref:`engine <sdk_qtaudioengine_soundinstance_engine-prop>` :
   QtAudioEngine::AudioEngine
-  :ref:`gain <sdk_qtaudioengine_soundinstance_gain-prop>` :
   vector3d
-  :ref:`pitch <sdk_qtaudioengine_soundinstance_pitch-prop>` :
   vector3d
-  :ref:`position <sdk_qtaudioengine_soundinstance_position-prop>`
   : vector3d
-  :ref:`sound <sdk_qtaudioengine_soundinstance_sound-prop>` :
   string
-  :ref:`state <sdk_qtaudioengine_soundinstance_state-prop>` :
   enumeration
-  :ref:`velocity <sdk_qtaudioengine_soundinstance_velocity-prop>`
   : vector3d

Signals
-------

-  :ref:`directionChanged <sdk_qtaudioengine_soundinstance_directionChanged-signal>`\ ()
-  :ref:`gainChanged <sdk_qtaudioengine_soundinstance_gainChanged-signal>`\ ()
-  :ref:`pitchChanged <sdk_qtaudioengine_soundinstance_pitchChanged-signal>`\ ()
-  :ref:`positionChanged <sdk_qtaudioengine_soundinstance_positionChanged-signal>`\ ()
-  :ref:`soundChanged <sdk_qtaudioengine_soundinstance_soundChanged-signal>`\ ()
-  :ref:`stateChanged <sdk_qtaudioengine_soundinstance_stateChanged-signal>`\ (state)
-  :ref:`velocityChanged <sdk_qtaudioengine_soundinstance_velocityChanged-signal>`\ ()

Methods
-------

-  :ref:`play <sdk_qtaudioengine_soundinstance_play-method-3>`\ ()
-  :ref:`play <sdk_qtaudioengine_soundinstance_play-method-2>`\ ()
-  :ref:`play <sdk_qtaudioengine_soundinstance_play-method>`\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

There are two ways to create
:ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` objects. You can
obtain it by calling newInstance method of a
:ref:`Sound <sdk_qtaudioengine_sound>`:

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        id:root
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AudioSample {
                name:"explosion01"
                source: "explosion-01.wav"
            }
            Sound {
                name:"explosion"
                PlayVariation {
                    sample:"explosion01"
                }
            }
        }
        property variant soundEffect: audioengine.sounds["explosion"].newInstance();
        MouseArea {
            anchors.fill: parent
            onPressed: {
                root.soundEffect.play();
            }
        }
    }

Or alternatively, you can explicitly define
:ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` outside of
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>` for easier qml bindings:

.. code:: qml

    import QtQuick 2.0
    import QtAudioEngine 1.0
    Rectangle {
        id:root
        color:"white"
        width: 300
        height: 500
        AudioEngine {
            id:audioengine
            AudioSample {
                name:"explosion01"
                source: "explosion-01.wav"
            }
            Sound {
                name:"explosion"
                PlayVariation {
                    sample:"explosion01"
                }
            }
        }
        Item {
            id: animator
            x: 10 + observer.percent * 100
            y: 20 + observer.percent * 80
            property real percent: 0
            SequentialAnimation on percent {
                loops: Animation.Infinite
                running: true
                NumberAnimation {
                duration: 8000
                from: 0
                to: 1
                }
            }
        }
        SoundInstance {
            id:soundEffect
            engine:audioengine
            sound:"explosion"
            position:Qt.vector3d(animator.x, animator.y, 0);
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                soundEffect.play();
            }
        }
    }

Property Documentation
----------------------

.. _sdk_qtaudioengine_soundinstance_direction-prop:

+--------------------------------------------------------------------------+
|        \ direction : vector3d                                            |
+--------------------------------------------------------------------------+

This property holds the current 3d direction.

| 

.. _sdk_qtaudioengine_soundinstance_engine-prop:

+--------------------------------------------------------------------------+
|        \ engine :                                                        |
| :ref:`QtAudioEngine::AudioEngine <sdk_qtaudioengine_audioengine>`           |
+--------------------------------------------------------------------------+

This property holds the reference to
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>`, must be set only once.

| 

.. _sdk_qtaudioengine_soundinstance_gain-prop:

+--------------------------------------------------------------------------+
|        \ gain : vector3d                                                 |
+--------------------------------------------------------------------------+

This property holds the gain adjustment which will be used to modulate
the audio output level from this
:ref:`SoundInstance <sdk_qtaudioengine_soundinstance>`.

| 

.. _sdk_qtaudioengine_soundinstance_pitch-prop:

+--------------------------------------------------------------------------+
|        \ pitch : vector3d                                                |
+--------------------------------------------------------------------------+

This property holds the pitch adjustment which will be used to modulate
the audio pitch from this
:ref:`SoundInstance <sdk_qtaudioengine_soundinstance>`.

| 

.. _sdk_qtaudioengine_soundinstance_position-prop:

+--------------------------------------------------------------------------+
|        \ position : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the current 3d position.

| 

.. _sdk_qtaudioengine_soundinstance_sound-prop:

+--------------------------------------------------------------------------+
|        \ sound : string                                                  |
+--------------------------------------------------------------------------+

This property specifies which Sound this
:ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` will use. Unlike
some properties in other types, this property can be changed
dynamically.

| 

.. _sdk_qtaudioengine_soundinstance_state-prop:

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the current playback state. It can be one of:

.. _sdk_qtaudioengine_soundinstance_Value            Description-prop:

+-----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value           | Description                                                                                                                                                   |
+=================+===============================================================================================================================================================+
.. _sdk_qtaudioengine_soundinstance_PlayingState     The-prop:
| StopppedState   | The :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` is not playing, and when playback begins next it will play from position zero.                        |
+-----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtaudioengine_soundinstance_PausedState      The-prop:
| PlayingState    | The :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` is playing the media.                                                                                 |
+-----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PausedState     | The :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>` is not playing, and when playback begins next it will play from the position that it was paused at.   |
+-----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtaudioengine_soundinstance_velocity-prop:

+--------------------------------------------------------------------------+
|        \ velocity : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the current 3d velocity.

| 

Signal Documentation
--------------------

.. _sdk_qtaudioengine_soundinstance_directionChanged()-prop:

+--------------------------------------------------------------------------+
|        \ directionChanged()                                              |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`direction <sdk_qtaudioengine_soundinstance#direction-prop>` is
changed

The corresponding handler is ``onDirectionChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_gainChanged()-prop:

+--------------------------------------------------------------------------+
|        \ gainChanged()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`gain <sdk_qtaudioengine_soundinstance#gain-prop>` is changed

The corresponding handler is ``onGainChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_pitchChanged()-prop:

+--------------------------------------------------------------------------+
|        \ pitchChanged()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`pitch <sdk_qtaudioengine_soundinstance#pitch-prop>` is changed

The corresponding handler is ``onPitchChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_positionChanged()-prop:

+--------------------------------------------------------------------------+
|        \ positionChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`position <sdk_qtaudioengine_soundinstance#position-prop>` is changed

The corresponding handler is ``onPositionChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_soundChanged()-prop:

+--------------------------------------------------------------------------+
|        \ soundChanged()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`sound <sdk_qtaudioengine_soundinstance#sound-prop>` is changed

The corresponding handler is ``onSoundChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_stateChanged(state)-prop:

+--------------------------------------------------------------------------+
|        \ stateChanged(state)                                             |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`state <sdk_qtaudioengine_soundinstance#state-prop>` is changed

The corresponding handler is ``onStateChanged``.

| 

.. _sdk_qtaudioengine_soundinstance_velocityChanged-method:

+--------------------------------------------------------------------------+
|        \ velocityChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when
:ref:`velocity <sdk_qtaudioengine_soundinstance#velocity-prop>` is changed

The corresponding handler is ``onVelocityChanged``.

| 

Method Documentation
--------------------

.. _sdk_qtaudioengine_soundinstance_play-method:

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Pauses current playback.

| 

.. _sdk_qtaudioengine_soundinstance_play-method:

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Stops current playback.

| 

.. _sdk_qtaudioengine_soundinstance_play-method:

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Starts playback.

| 
