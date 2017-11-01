Play 3d audio content.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`direction </sdk/apps/qml/QtAudioEngine/SoundInstance#direction-prop>`__****
   : vector3d
-  ****`engine </sdk/apps/qml/QtAudioEngine/SoundInstance#engine-prop>`__****
   : QtAudioEngine::AudioEngine
-  ****`gain </sdk/apps/qml/QtAudioEngine/SoundInstance#gain-prop>`__****
   : vector3d
-  ****`pitch </sdk/apps/qml/QtAudioEngine/SoundInstance#pitch-prop>`__****
   : vector3d
-  ****`position </sdk/apps/qml/QtAudioEngine/SoundInstance#position-prop>`__****
   : vector3d
-  ****`sound </sdk/apps/qml/QtAudioEngine/SoundInstance#sound-prop>`__****
   : string
-  ****`state </sdk/apps/qml/QtAudioEngine/SoundInstance#state-prop>`__****
   : enumeration
-  ****`velocity </sdk/apps/qml/QtAudioEngine/SoundInstance#velocity-prop>`__****
   : vector3d

Signals
-------

-  ****`directionChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#directionChanged-signal>`__****\ ()
-  ****`gainChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#gainChanged-signal>`__****\ ()
-  ****`pitchChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#pitchChanged-signal>`__****\ ()
-  ****`positionChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#positionChanged-signal>`__****\ ()
-  ****`soundChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#soundChanged-signal>`__****\ ()
-  ****`stateChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#stateChanged-signal>`__****\ (state)
-  ****`velocityChanged </sdk/apps/qml/QtAudioEngine/SoundInstance#velocityChanged-signal>`__****\ ()

Methods
-------

-  ****`play </sdk/apps/qml/QtAudioEngine/SoundInstance#play-method-3>`__****\ ()
-  ****`play </sdk/apps/qml/QtAudioEngine/SoundInstance#play-method-2>`__****\ ()
-  ****`play </sdk/apps/qml/QtAudioEngine/SoundInstance#play-method>`__****\ ()

Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

There are two ways to create
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ objects.
You can obtain it by calling newInstance method of a
`Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__:

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
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ outside
of `AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__ for easier
qml bindings:

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

+--------------------------------------------------------------------------+
|        \ direction : vector3d                                            |
+--------------------------------------------------------------------------+

This property holds the current 3d direction.

| 

+--------------------------------------------------------------------------+
|        \ engine :                                                        |
| `QtAudioEngine::AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`_ |
| _                                                                        |
+--------------------------------------------------------------------------+

This property holds the reference to
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__, must be set
only once.

| 

+--------------------------------------------------------------------------+
|        \ gain : vector3d                                                 |
+--------------------------------------------------------------------------+

This property holds the gain adjustment which will be used to modulate
the audio output level from this
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__.

| 

+--------------------------------------------------------------------------+
|        \ pitch : vector3d                                                |
+--------------------------------------------------------------------------+

This property holds the pitch adjustment which will be used to modulate
the audio pitch from this
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__.

| 

+--------------------------------------------------------------------------+
|        \ position : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the current 3d position.

| 

+--------------------------------------------------------------------------+
|        \ sound : string                                                  |
+--------------------------------------------------------------------------+

This property specifies which Sound this
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ will use.
Unlike some properties in other types, this property can be changed
dynamically.

| 

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the current playback state. It can be one of:

+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value           | Description                                                                                                                                                              |
+=================+==========================================================================================================================================================================+
| StopppedState   | The `SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ is not playing, and when playback begins next it will play from position zero.                        |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PlayingState    | The `SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ is playing the media.                                                                                 |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PausedState     | The `SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__ is not playing, and when playback begins next it will play from the position that it was paused at.   |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ velocity : vector3d                                             |
+--------------------------------------------------------------------------+

This property holds the current 3d velocity.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ directionChanged()                                              |
+--------------------------------------------------------------------------+

This signal is emitted when
`direction </sdk/apps/qml/QtAudioEngine/SoundInstance#direction-prop>`__
is changed

The corresponding handler is ``onDirectionChanged``.

| 

+--------------------------------------------------------------------------+
|        \ gainChanged()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when
`gain </sdk/apps/qml/QtAudioEngine/SoundInstance#gain-prop>`__ is
changed

The corresponding handler is ``onGainChanged``.

| 

+--------------------------------------------------------------------------+
|        \ pitchChanged()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when
`pitch </sdk/apps/qml/QtAudioEngine/SoundInstance#pitch-prop>`__ is
changed

The corresponding handler is ``onPitchChanged``.

| 

+--------------------------------------------------------------------------+
|        \ positionChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when
`position </sdk/apps/qml/QtAudioEngine/SoundInstance#position-prop>`__
is changed

The corresponding handler is ``onPositionChanged``.

| 

+--------------------------------------------------------------------------+
|        \ soundChanged()                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when
`sound </sdk/apps/qml/QtAudioEngine/SoundInstance#sound-prop>`__ is
changed

The corresponding handler is ``onSoundChanged``.

| 

+--------------------------------------------------------------------------+
|        \ stateChanged(state)                                             |
+--------------------------------------------------------------------------+

This signal is emitted when
`state </sdk/apps/qml/QtAudioEngine/SoundInstance#state-prop>`__ is
changed

The corresponding handler is ``onStateChanged``.

| 

+--------------------------------------------------------------------------+
|        \ velocityChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when
`velocity </sdk/apps/qml/QtAudioEngine/SoundInstance#velocity-prop>`__
is changed

The corresponding handler is ``onVelocityChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Pauses current playback.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Stops current playback.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Starts playback.

| 
