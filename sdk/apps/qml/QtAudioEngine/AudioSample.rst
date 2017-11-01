Load audio samples, mostly .wav.

+---------------------+----------------------------+
| Import Statement:   | import QtAudioEngine 1.0   |
+---------------------+----------------------------+
| Since:              | Qt 5.0                     |
+---------------------+----------------------------+

Properties
----------

-  ****`loaded </sdk/apps/qml/QtAudioEngine/AudioSample#loaded-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtAudioEngine/AudioSample#name-prop>`__****
   : string
-  ****`preloaded </sdk/apps/qml/QtAudioEngine/AudioSample#preloaded-prop>`__****
   : bool

Signals
-------

-  ****`loadedChanged </sdk/apps/qml/QtAudioEngine/AudioSample#loadedChanged-signal>`__****\ ()

Methods
-------

-  void
   ****`load </sdk/apps/qml/QtAudioEngine/AudioSample#load-method>`__****\ ()

Detailed Description
--------------------

``AudioSample`` is part of the **QtAudioEngine 1.0** module.

It can be accessed through
`QtAudioEngine::AudioEngine::samples </sdk/apps/qml/QtAudioEngine/AudioEngine#samples-prop>`__
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
                name:"explosion"
                source: "explosion-02.wav"
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ loaded : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether this sample has been loaded into memory
or not.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the sample, which must be unique among
all samples and only defined once.

| 

+--------------------------------------------------------------------------+
|        \ preloaded : bool                                                |
+--------------------------------------------------------------------------+

This property indicates whether this sample needs to be preloaded or
not. If ``true``, the audio engine will start loading the sample file
immediately when the application starts, otherwise the sample will not
be loaded until explicitly requested.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ loadedChanged()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when
`loaded </sdk/apps/qml/QtAudioEngine/AudioSample#loaded-prop>`__ is
changed.

The corresponding handler is ``onLoadedChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void load()                                                     |
+--------------------------------------------------------------------------+

Starts loading the sample into memory if not loaded.

| 
