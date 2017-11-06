.. _sdk_qtmultimedia_soundeffect:

QtMultimedia SoundEffect
========================

The SoundEffect type provides a way to play sound effects in QML.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+
| Instantiates:       | QSoundEffect              |
+---------------------+---------------------------+

Properties
----------

-  :ref:`category <sdk_qtmultimedia_soundeffect_category>` : string
-  :ref:`loops <sdk_qtmultimedia_soundeffect_loops>` : int
-  :ref:`loopsRemaining <sdk_qtmultimedia_soundeffect_loopsRemaining>` : int
-  :ref:`muted <sdk_qtmultimedia_soundeffect_muted>` : bool
-  :ref:`playing <sdk_qtmultimedia_soundeffect_playing>` : bool
-  :ref:`source <sdk_qtmultimedia_soundeffect_source>` : url
-  :ref:`status <sdk_qtmultimedia_soundeffect_status>` : enumeration
-  :ref:`volume <sdk_qtmultimedia_soundeffect_volume>` : qreal

Signals
-------

-  :ref:`categoryChanged <sdk_qtmultimedia_soundeffect_categoryChanged>`\ ()
-  :ref:`loadedChanged <sdk_qtmultimedia_soundeffect_loadedChanged>`\ ()
-  :ref:`loopCountChanged <sdk_qtmultimedia_soundeffect_loopCountChanged>`\ ()
-  :ref:`loopsRemainingChanged <sdk_qtmultimedia_soundeffect_loopsRemainingChanged>`\ ()
-  :ref:`mutedChanged <sdk_qtmultimedia_soundeffect_mutedChanged>`\ ()
-  :ref:`playingChanged <sdk_qtmultimedia_soundeffect_playingChanged>`\ ()
-  :ref:`sourceChanged <sdk_qtmultimedia_soundeffect_sourceChanged>`\ ()
-  :ref:`statusChanged <sdk_qtmultimedia_soundeffect_statusChanged>`\ ()
-  :ref:`volumeChanged <sdk_qtmultimedia_soundeffect_volumeChanged>`\ ()

Methods
-------

-  bool :ref:`isLoaded <sdk_qtmultimedia_soundeffect_isLoaded>`\ ()
-  :ref:`play <sdk_qtmultimedia_soundeffect_play>`\ ()
-  :ref:`stop <sdk_qtmultimedia_soundeffect_stop>`\ ()

Detailed Description
--------------------

SoundEffect is part of the **QtMultimedia 5.0** module.

This type allows you to play uncompressed audio files (typically WAV files) in a generally lower latency way, and is suitable for "feedback" type sounds in response to user actions (e.g. virtual keyboard sounds, positive or negative feedback for popup dialogs, or game sounds). If low latency is not important, consider using the :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` or Audio types instead, since they support a wider variety of media formats and are less resource intensive.

Typically the sound effect should be reused, which allows all the parsing and preparation to be done ahead of time, and only triggered when necessary. This is easy to achieve with QML, since you can declare your `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  instance and refer to it elsewhere.

The following example plays a WAV file on mouse click.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Text {
        text: "Click Me!";
        font.pointSize: 24;
        width: 150; height: 50;
        SoundEffect {
            id: playSound
            source: "soundeffect.wav"
        }
        MouseArea {
            id: playArea
            anchors.fill: parent
            onPressed: { playSound.play() }
        }
    }

Since `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  requires slightly more resources to achieve lower latency playback, the platform may limit the number of simultaneously playing sound effects.

Property Documentation
----------------------

.. _sdk_qtmultimedia_soundeffect_category:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| category : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the *category* of this sound effect.

Some platforms can perform different audio routing for different categories, or may allow the user to set different volume levels for different categories.

This setting will be ignored on platforms that do not support audio categories.

.. _sdk_qtmultimedia_soundeffect_loops:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loops : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of times the sound is played. A value of 0 or 1 means the sound will be played only once; set to `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Infinite to enable infinite looping.

The value can be changed while the sound effect is playing, in which case it will update the remaining loops to the new value.

.. _sdk_qtmultimedia_soundeffect_loopsRemaining:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loopsRemaining : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the number of loops remaining before the sound effect stops by itself, or `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Infinite if that's what has been set in :ref:`loops <sdk_qtmultimedia_soundeffect_loops>`.

.. _sdk_qtmultimedia_soundeffect_muted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| muted : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides a way to control muting. A value of ``true`` will mute this effect. Otherwise, playback will occur with the currently specified :ref:`volume <sdk_qtmultimedia_soundeffect_volume>`.

.. _sdk_qtmultimedia_soundeffect_playing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playing : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether the sound effect is playing or not.

.. _sdk_qtmultimedia_soundeffect_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the url for the sound to play. For the `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  to attempt to load the source, the URL must exist and the application must have read permission in the specified directory. If the desired source is a local file the URL may be specified using either absolute or relative (to the file that declared the `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ ) pathing.

.. _sdk_qtmultimedia_soundeffect_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates the current status of the `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  as enumerated within `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ . Possible statuses are listed below.

+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| Value                                                                              | Description                                                                                                  |
+====================================================================================+==============================================================================================================+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Null      | No source has been set or the source is null.                                                                |
+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Loading   | The `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  is trying to load the source.   |
+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Ready     | The source is loaded and ready for play.                                                                     |
+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .Error     | An error occurred during operation, such as failure of loading the source.                                   |
+------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_soundeffect_volume:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volume : qreal                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the volume of the sound effect playback, from 0.0 (silent) to 1.0 (maximum volume).

Signal Documentation
--------------------

.. _sdk_qtmultimedia_soundeffect_categoryChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| categoryChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``categoryChanged`` signal is emitted when the category property has changed.

The corresponding handler is ``onCategoryChanged``.

.. _sdk_qtmultimedia_soundeffect_loadedChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loadedChanged()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``loadedChanged`` signal is emitted when the loading state has changed.

The corresponding handler is ``onLoadedChanged``.

.. _sdk_qtmultimedia_soundeffect_loopCountChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loopCountChanged()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``loopCountChanged`` signal is emitted when the initial number of loops has changed.

The corresponding handler is ``onLoopCountChanged``.

.. _sdk_qtmultimedia_soundeffect_loopsRemainingChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loopsRemainingChanged()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``loopsRemainingChanged`` signal is emitted when the remaining number of loops has changed.

The corresponding handler is ``onLoopsRemainingChanged``.

.. _sdk_qtmultimedia_soundeffect_mutedChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mutedChanged()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``mutedChanged`` signal is emitted when the mute state has changed.

The corresponding handler is ``onMutedChanged``.

.. _sdk_qtmultimedia_soundeffect_playingChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playingChanged()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``playingChanged`` signal is emitted when the playing property has changed.

The corresponding handler is ``onPlayingChanged``.

.. _sdk_qtmultimedia_soundeffect_sourceChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceChanged()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``sourceChanged`` signal is emitted when the source has been changed.

The corresponding handler is ``onSourceChanged``.

.. _sdk_qtmultimedia_soundeffect_statusChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| statusChanged()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``statusChanged`` signal is emitted when the status property has changed.

The corresponding handler is ``onStatusChanged``.

.. _sdk_qtmultimedia_soundeffect_volumeChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volumeChanged()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The ``volumeChanged`` signal is emitted when the volume has changed.

The corresponding handler is ``onVolumeChanged``.

Method Documentation
--------------------

.. _sdk_qtmultimedia_soundeffect_isLoaded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isLoaded()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns whether the sound effect has finished loading the :ref:`source <sdk_qtmultimedia_soundeffect_source>`.

.. _sdk_qtmultimedia_soundeffect_play:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| play()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Start playback of the sound effect, looping the effect for the number of times as specified in the loops property.

This is the default method for `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ .

.. code:: qml

    SoundEffect {
        id: playSound
        source: "soundeffect.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed: { playSound.play() }
    }

.. _sdk_qtmultimedia_soundeffect_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stop current playback.

