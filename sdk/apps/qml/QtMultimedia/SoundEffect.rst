The SoundEffect type provides a way to play sound effects in QML.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+
| Instantiates:       | QSoundEffect              |
+---------------------+---------------------------+

Properties
----------

-  ****`category </sdk/apps/qml/QtMultimedia/SoundEffect#category-prop>`__****
   : string
-  ****`loops </sdk/apps/qml/QtMultimedia/SoundEffect#loops-prop>`__****
   : int
-  ****`loopsRemaining </sdk/apps/qml/QtMultimedia/SoundEffect#loopsRemaining-prop>`__****
   : int
-  ****`muted </sdk/apps/qml/QtMultimedia/SoundEffect#muted-prop>`__****
   : bool
-  ****`playing </sdk/apps/qml/QtMultimedia/SoundEffect#playing-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/QtMultimedia/SoundEffect#source-prop>`__****
   : url
-  ****`status </sdk/apps/qml/QtMultimedia/SoundEffect#status-prop>`__****
   : enumeration
-  ****`volume </sdk/apps/qml/QtMultimedia/SoundEffect#volume-prop>`__****
   : qreal

Signals
-------

-  ****`categoryChanged </sdk/apps/qml/QtMultimedia/SoundEffect#categoryChanged-signal>`__****\ ()
-  ****`loadedChanged </sdk/apps/qml/QtMultimedia/SoundEffect#loadedChanged-signal>`__****\ ()
-  ****`loopCountChanged </sdk/apps/qml/QtMultimedia/SoundEffect#loopCountChanged-signal>`__****\ ()
-  ****`loopsRemainingChanged </sdk/apps/qml/QtMultimedia/SoundEffect#loopsRemainingChanged-signal>`__****\ ()
-  ****`mutedChanged </sdk/apps/qml/QtMultimedia/SoundEffect#mutedChanged-signal>`__****\ ()
-  ****`playingChanged </sdk/apps/qml/QtMultimedia/SoundEffect#playingChanged-signal>`__****\ ()
-  ****`sourceChanged </sdk/apps/qml/QtMultimedia/SoundEffect#sourceChanged-signal>`__****\ ()
-  ****`statusChanged </sdk/apps/qml/QtMultimedia/SoundEffect#statusChanged-signal>`__****\ ()
-  ****`volumeChanged </sdk/apps/qml/QtMultimedia/SoundEffect#volumeChanged-signal>`__****\ ()

Methods
-------

-  bool
   ****`isLoaded </sdk/apps/qml/QtMultimedia/SoundEffect#isLoaded-method>`__****\ ()
-  ****`play </sdk/apps/qml/QtMultimedia/SoundEffect#play-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtMultimedia/SoundEffect#stop-method>`__****\ ()

Detailed Description
--------------------

SoundEffect is part of the **QtMultimedia 5.0** module.

This type allows you to play uncompressed audio files (typically WAV
files) in a generally lower latency way, and is suitable for "feedback"
type sounds in response to user actions (e.g. virtual keyboard sounds,
positive or negative feedback for popup dialogs, or game sounds). If low
latency is not important, consider using the
`MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__ or Audio types
instead, since they support a wider variety of media formats and are
less resource intensive.

Typically the sound effect should be reused, which allows all the
parsing and preparation to be done ahead of time, and only triggered
when necessary. This is easy to achieve with QML, since you can declare
your
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__
instance and refer to it elsewhere.

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

Since
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__
requires slightly more resources to achieve lower latency playback, the
platform may limit the number of simultaneously playing sound effects.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ category : string                                               |
+--------------------------------------------------------------------------+

This property contains the *category* of this sound effect.

Some platforms can perform different audio routing for different
categories, or may allow the user to set different volume levels for
different categories.

This setting will be ignored on platforms that do not support audio
categories.

| 

+--------------------------------------------------------------------------+
|        \ loops : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of times the sound is played. A value of
0 or 1 means the sound will be played only once; set to
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Infinite
to enable infinite looping.

The value can be changed while the sound effect is playing, in which
case it will update the remaining loops to the new value.

| 

+--------------------------------------------------------------------------+
|        \ loopsRemaining : int                                            |
+--------------------------------------------------------------------------+

This property contains the number of loops remaining before the sound
effect stops by itself, or
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Infinite
if that's what has been set in
`loops </sdk/apps/qml/QtMultimedia/SoundEffect#loops-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property provides a way to control muting. A value of ``true`` will
mute this effect. Otherwise, playback will occur with the currently
specified
`volume </sdk/apps/qml/QtMultimedia/SoundEffect#volume-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ playing : bool                                                  |
+--------------------------------------------------------------------------+

This property indicates whether the sound effect is playing or not.

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

This property holds the url for the sound to play. For the
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__
to attempt to load the source, the URL must exist and the application
must have read permission in the specified directory. If the desired
source is a local file the URL may be specified using either absolute or
relative (to the file that declared the
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__)
pathing.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property indicates the current status of the
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__
as enumerated within
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.
Possible statuses are listed below.

+-----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| Value                                                                             | Description                                                                                                 |
+===================================================================================+=============================================================================================================+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Null      | No source has been set or the source is null.                                                               |
+-----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Loading   | The `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__ is trying to load the source.   |
+-----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Ready     | The source is loaded and ready for play.                                                                    |
+-----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.Error     | An error occurred during operation, such as failure of loading the source.                                  |
+-----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ volume : qreal                                                  |
+--------------------------------------------------------------------------+

This property holds the volume of the sound effect playback, from 0.0
(silent) to 1.0 (maximum volume).

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ categoryChanged()                                               |
+--------------------------------------------------------------------------+

The ``categoryChanged`` signal is emitted when the category property has
changed.

The corresponding handler is ``onCategoryChanged``.

| 

+--------------------------------------------------------------------------+
|        \ loadedChanged()                                                 |
+--------------------------------------------------------------------------+

The ``loadedChanged`` signal is emitted when the loading state has
changed.

The corresponding handler is ``onLoadedChanged``.

| 

+--------------------------------------------------------------------------+
|        \ loopCountChanged()                                              |
+--------------------------------------------------------------------------+

The ``loopCountChanged`` signal is emitted when the initial number of
loops has changed.

The corresponding handler is ``onLoopCountChanged``.

| 

+--------------------------------------------------------------------------+
|        \ loopsRemainingChanged()                                         |
+--------------------------------------------------------------------------+

The ``loopsRemainingChanged`` signal is emitted when the remaining
number of loops has changed.

The corresponding handler is ``onLoopsRemainingChanged``.

| 

+--------------------------------------------------------------------------+
|        \ mutedChanged()                                                  |
+--------------------------------------------------------------------------+

The ``mutedChanged`` signal is emitted when the mute state has changed.

The corresponding handler is ``onMutedChanged``.

| 

+--------------------------------------------------------------------------+
|        \ playingChanged()                                                |
+--------------------------------------------------------------------------+

The ``playingChanged`` signal is emitted when the playing property has
changed.

The corresponding handler is ``onPlayingChanged``.

| 

+--------------------------------------------------------------------------+
|        \ sourceChanged()                                                 |
+--------------------------------------------------------------------------+

The ``sourceChanged`` signal is emitted when the source has been
changed.

The corresponding handler is ``onSourceChanged``.

| 

+--------------------------------------------------------------------------+
|        \ statusChanged()                                                 |
+--------------------------------------------------------------------------+

The ``statusChanged`` signal is emitted when the status property has
changed.

The corresponding handler is ``onStatusChanged``.

| 

+--------------------------------------------------------------------------+
|        \ volumeChanged()                                                 |
+--------------------------------------------------------------------------+

The ``volumeChanged`` signal is emitted when the volume has changed.

The corresponding handler is ``onVolumeChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool isLoaded()                                                 |
+--------------------------------------------------------------------------+

Returns whether the sound effect has finished loading the
`source </sdk/apps/qml/QtMultimedia/SoundEffect#source-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Start playback of the sound effect, looping the effect for the number of
times as specified in the loops property.

This is the default method for
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__.

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

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stop current playback.

| 
