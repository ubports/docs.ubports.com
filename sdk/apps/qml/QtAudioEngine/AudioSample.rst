.. _sdk_qtaudioengine_audiosample:

QtAudioEngine AudioSample
=========================

Load audio samples, mostly .wav.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  :ref:`loaded <sdk_qtaudioengine_audiosample_loaded>` : bool
-  :ref:`name <sdk_qtaudioengine_audiosample_name>` : string
-  :ref:`preloaded <sdk_qtaudioengine_audiosample_preloaded>` : bool

Signals
-------

-  :ref:`loadedChanged <sdk_qtaudioengine_audiosample_loadedChanged>`\ ()

Methods
-------

-  void :ref:`load <sdk_qtaudioengine_audiosample_load>`\ ()

Detailed Description
--------------------

``AudioSample`` is part of the **QtAudioEngine 1.0** module.

It can be accessed through :ref:`QtAudioEngine::AudioEngine::samples <sdk_qtaudioengine_audioengine_samples>` with its unique name and must be defined inside :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`.

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
        }
    }

Property Documentation
----------------------

.. _sdk_qtaudioengine_audiosample_loaded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loaded : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether this sample has been loaded into memory or not.

.. _sdk_qtaudioengine_audiosample_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the sample, which must be unique among all samples and only defined once.

.. _sdk_qtaudioengine_audiosample_preloaded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preloaded : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether this sample needs to be preloaded or not. If ``true``, the audio engine will start loading the sample file immediately when the application starts, otherwise the sample will not be loaded until explicitly requested.

Signal Documentation
--------------------

.. _sdk_qtaudioengine_audiosample_loadedChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loadedChanged()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when :ref:`loaded <sdk_qtaudioengine_audiosample_loaded>` is changed.

The corresponding handler is ``onLoadedChanged``.

Method Documentation
--------------------

.. _sdk_qtaudioengine_audiosample_load:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void load()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts loading the sample into memory if not loaded.

