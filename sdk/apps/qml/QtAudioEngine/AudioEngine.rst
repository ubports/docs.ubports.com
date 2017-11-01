Organize all your 3d audio content in one place.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`categories </sdk/apps/qml/QtAudioEngine/AudioEngine#categories-prop>`__****
   : map
-  ****`dopplerFactor </sdk/apps/qml/QtAudioEngine/AudioEngine#dopplerFactor-prop>`__****
   : real
-  ****`listener </sdk/apps/qml/QtAudioEngine/AudioEngine#listener-prop>`__****
   : QtAudioEngine::AudioListener
-  ****`liveInstances </sdk/apps/qml/QtAudioEngine/AudioEngine#liveInstances-prop>`__****
   : int
-  ****`loading </sdk/apps/qml/QtAudioEngine/AudioEngine#loading-prop>`__****
   : bool
-  ****`samples </sdk/apps/qml/QtAudioEngine/AudioEngine#samples-prop>`__****
   : map
-  ****`sounds </sdk/apps/qml/QtAudioEngine/AudioEngine#sounds-prop>`__****
   : map
-  ****`speedOfSound </sdk/apps/qml/QtAudioEngine/AudioEngine#speedOfSound-prop>`__****
   : real

Signals
-------

-  ****`finishedLoading </sdk/apps/qml/QtAudioEngine/AudioEngine#finishedLoading-signal>`__****\ ()
-  ****`isLoadingChanged </sdk/apps/qml/QtAudioEngine/AudioEngine#isLoadingChanged-signal>`__****\ ()
-  ****`liveInstanceCountChanged </sdk/apps/qml/QtAudioEngine/AudioEngine#liveInstanceCountChanged-signal>`__****\ ()
-  ****`ready </sdk/apps/qml/QtAudioEngine/AudioEngine#ready-signal>`__****\ ()

Detailed Description
--------------------

``AudioEngine`` is part of the **QtAudioEngine 1.0** module.

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
                name:"explosion"
                source: "explosion-02.wav"
            }
            Sound {
                name:"explosion"
                PlayVariation {
                    sample:"explosion"
                }
            }
            dopplerFactor: 1
            speedOfSound: 343.33 // Approximate speed of sound in air at 20 degrees Celsius
            listener.up:"0,0,1"
            listener.position:"0,0,0"
            listener.velocity:"0,0,0"
            listener.direction:"0,1,0"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                audioengine.sounds["explosion"].play();
            }
        }
    }

``AudioEngine`` acts as a central library for configuring all 3d audio
content in an app, so you should define only one in your app.

It is mostly used as a container to access other types such as
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__,
`AudioSample </sdk/apps/qml/QtAudioEngine/AudioSample/>`__ and Sound.

**See also**
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__,
`AudioSample </sdk/apps/qml/QtAudioEngine/AudioSample/>`__,
`Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__,
`SoundInstance </sdk/apps/qml/QtAudioEngine/SoundInstance/>`__,
`AttenuationModelLinear </sdk/apps/qml/QtAudioEngine/AttenuationModelLinear/>`__,
and
`AttenuationModelInverse </sdk/apps/qml/QtAudioEngine/AttenuationModelInverse/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ categories : map                                                |
+--------------------------------------------------------------------------+

Container of all
`AudioCategory </sdk/apps/qml/QtAudioEngine/AudioCategory/>`__
instances.

| 

+--------------------------------------------------------------------------+
|        \ dopplerFactor : real                                            |
+--------------------------------------------------------------------------+

This property holds a simple scaling for the effect of doppler shift.

| 

+--------------------------------------------------------------------------+
|        \ listener :                                                      |
| `QtAudioEngine::AudioListener </sdk/apps/qml/QtAudioEngine/AudioListener |
| />`__                                                                    |
+--------------------------------------------------------------------------+

This property holds the listener object. You can change various
properties to affect the 3D positioning of sounds.

**See also**
`AudioListener </sdk/apps/qml/QtAudioEngine/AudioListener/>`__.

| 

+--------------------------------------------------------------------------+
|        \ liveInstances : int                                             |
+--------------------------------------------------------------------------+

This property indicates how many live sound instances there are at the
moment.

| 

+--------------------------------------------------------------------------+
|        \ loading : bool                                                  |
+--------------------------------------------------------------------------+

This property indicates if the audio engine is loading any audio sample
at the moment. This may be useful if you specified the preloaded
property in `AudioSample </sdk/apps/qml/QtAudioEngine/AudioSample/>`__
and would like to show a loading screen to the user before all audio
samples are loaded.

/sa
`finishedLoading </sdk/apps/qml/QtAudioEngine/AudioEngine#finishedLoading-signal>`__,
`AudioSample::preloaded </sdk/apps/qml/QtAudioEngine/AudioSample#preloaded-prop>`__

| 

+--------------------------------------------------------------------------+
|        \ samples : map                                                   |
+--------------------------------------------------------------------------+

Container of all
`AudioSample </sdk/apps/qml/QtAudioEngine/AudioSample/>`__ instances.

| 

+--------------------------------------------------------------------------+
|        \ sounds : map                                                    |
+--------------------------------------------------------------------------+

Container of all Sound instances.

| 

+--------------------------------------------------------------------------+
|        \ speedOfSound : real                                             |
+--------------------------------------------------------------------------+

This property holds the reference value of the sound speed (in meters
per second) which will be used in doppler shift calculation. The doppler
shift calculation is used to emulate the change in frequency in sound
that is perceived by an observer when the sound source is travelling
towards or away from the observer. The speed of sound depends on the
medium the sound is propagating through.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ finishedLoading()                                               |
+--------------------------------------------------------------------------+

This signal is emitted when
`loading </sdk/apps/qml/QtAudioEngine/AudioEngine#loading-prop>`__ has
completed.

The corresponding handler is ``onFinishedLoading``.

| 

+--------------------------------------------------------------------------+
|        \ isLoadingChanged()                                              |
+--------------------------------------------------------------------------+

This signal is emitted when the
`loading </sdk/apps/qml/QtAudioEngine/AudioEngine#loading-prop>`__
property changes.

The corresponding handler is ``onIsLoadingChanged``.

| 

+--------------------------------------------------------------------------+
|        \ liveInstanceCountChanged()                                      |
+--------------------------------------------------------------------------+

This signal is emitted when the number of live instances managed by the
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__ is changed.

The corresponding handler is ``onLiveInstanceCountChanged``.

| 

+--------------------------------------------------------------------------+
|        \ ready()                                                         |
+--------------------------------------------------------------------------+

This signal is emitted when the
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__ is ready to
use.

The corresponding handler is ``onReady``.

| 
