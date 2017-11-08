.. _sdk_qtaudioengine_audioengine:

QtAudioEngine AudioEngine
=========================

Organize all your 3d audio content in one place.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`categories <sdk_qtaudioengine_audioengine_categories>` : map
-  :ref:`dopplerFactor <sdk_qtaudioengine_audioengine_dopplerFactor>` : real
-  :ref:`listener <sdk_qtaudioengine_audioengine_listener>` : QtAudioEngine::AudioListener
-  :ref:`liveInstances <sdk_qtaudioengine_audioengine_liveInstances>` : int
-  :ref:`loading <sdk_qtaudioengine_audioengine_loading>` : bool
-  :ref:`samples <sdk_qtaudioengine_audioengine_samples>` : map
-  :ref:`sounds <sdk_qtaudioengine_audioengine_sounds>` : map
-  :ref:`speedOfSound <sdk_qtaudioengine_audioengine_speedOfSound>` : real

Signals
-------

-  :ref:`finishedLoading <sdk_qtaudioengine_audioengine_finishedLoading>`\ ()
-  :ref:`isLoadingChanged <sdk_qtaudioengine_audioengine_isLoadingChanged>`\ ()
-  :ref:`liveInstanceCountChanged <sdk_qtaudioengine_audioengine_liveInstanceCountChanged>`\ ()
-  :ref:`ready <sdk_qtaudioengine_audioengine_ready>`\ ()

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

``AudioEngine`` acts as a central library for configuring all 3d audio content in an app, so you should define only one in your app.

It is mostly used as a container to access other types such as :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>`, :ref:`AudioSample <sdk_qtaudioengine_audiosample>` and Sound.

**See also** :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>`, :ref:`AudioSample <sdk_qtaudioengine_audiosample>`, :ref:`Sound <sdk_qtaudioengine_sound>`, :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>`, :ref:`AttenuationModelLinear <sdk_qtaudioengine_attenuationmodellinear>`, and :ref:`AttenuationModelInverse <sdk_qtaudioengine_attenuationmodelinverse>`.

Property Documentation
----------------------

.. _sdk_qtaudioengine_audioengine_categories:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| categories : map                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Container of all :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>` instances.

.. _sdk_qtaudioengine_audioengine_dopplerFactor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dopplerFactor : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a simple scaling for the effect of doppler shift.

.. _sdk_qtaudioengine_audioengine_listener:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| listener : :ref:`QtAudioEngine::AudioListener <sdk_qtaudioengine_audiolistener>`                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the listener object. You can change various properties to affect the 3D positioning of sounds.

**See also** :ref:`AudioListener <sdk_qtaudioengine_audiolistener>`.

.. _sdk_qtaudioengine_audioengine_liveInstances:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| liveInstances : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates how many live sound instances there are at the moment.

.. _sdk_qtaudioengine_audioengine_loading:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loading : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates if the audio engine is loading any audio sample at the moment. This may be useful if you specified the preloaded property in :ref:`AudioSample <sdk_qtaudioengine_audiosample>` and would like to show a loading screen to the user before all audio samples are loaded.

/sa :ref:`finishedLoading <sdk_qtaudioengine_audioengine_finishedLoading>`, :ref:`AudioSample::preloaded <sdk_qtaudioengine_audiosample_preloaded>`

.. _sdk_qtaudioengine_audioengine_samples:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| samples : map                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Container of all :ref:`AudioSample <sdk_qtaudioengine_audiosample>` instances.

.. _sdk_qtaudioengine_audioengine_sounds:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sounds : map                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Container of all Sound instances.

.. _sdk_qtaudioengine_audioengine_speedOfSound:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| speedOfSound : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the reference value of the sound speed (in meters per second) which will be used in doppler shift calculation. The doppler shift calculation is used to emulate the change in frequency in sound that is perceived by an observer when the sound source is travelling towards or away from the observer. The speed of sound depends on the medium the sound is propagating through.

Signal Documentation
--------------------

.. _sdk_qtaudioengine_audioengine_finishedLoading:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| finishedLoading()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when :ref:`loading <sdk_qtaudioengine_audioengine_loading>` has completed.

The corresponding handler is ``onFinishedLoading``.

.. _sdk_qtaudioengine_audioengine_isLoadingChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isLoadingChanged()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the :ref:`loading <sdk_qtaudioengine_audioengine_loading>` property changes.

The corresponding handler is ``onIsLoadingChanged``.

.. _sdk_qtaudioengine_audioengine_liveInstanceCountChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| liveInstanceCountChanged()                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the number of live instances managed by the :ref:`AudioEngine <sdk_qtaudioengine_audioengine>` is changed.

The corresponding handler is ``onLiveInstanceCountChanged``.

.. _sdk_qtaudioengine_audioengine_ready:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ready()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the :ref:`AudioEngine <sdk_qtaudioengine_audioengine>` is ready to use.

The corresponding handler is ``onReady``.

