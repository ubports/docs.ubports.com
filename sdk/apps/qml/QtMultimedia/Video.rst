A convenience type for showing a specified video.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`audioRole </sdk/apps/qml/QtMultimedia/Video#audioRole-prop>`__****
   : enumeration
-  ****`autoLoad </sdk/apps/qml/QtMultimedia/Video#autoLoad-prop>`__****
   : bool
-  ****`autoPlay </sdk/apps/qml/QtMultimedia/Video#autoPlay-prop>`__****
   : bool
-  ****`availability </sdk/apps/qml/QtMultimedia/Video#availability-prop>`__****
   : enumeration
-  ****`bufferProgress </sdk/apps/qml/QtMultimedia/Video#bufferProgress-prop>`__****
   : real
-  ****`duration </sdk/apps/qml/QtMultimedia/Video#duration-prop>`__****
   : int
-  ****`error </sdk/apps/qml/QtMultimedia/Video#error-prop>`__**** :
   enumeration
-  ****`errorString </sdk/apps/qml/QtMultimedia/Video#errorString-prop>`__****
   : string
-  ****`fillMode </sdk/apps/qml/QtMultimedia/Video#fillMode-prop>`__****
   : enumeration
-  ****`hasAudio </sdk/apps/qml/QtMultimedia/Video#hasAudio-prop>`__****
   : bool
-  ****`hasVideo </sdk/apps/qml/QtMultimedia/Video#hasVideo-prop>`__****
   : bool
-  ****`metaData </sdk/apps/qml/QtMultimedia/Video#metaData-prop>`__****
   : object
-  ****`muted </sdk/apps/qml/QtMultimedia/Video#muted-prop>`__**** :
   bool
-  ****`orientation </sdk/apps/qml/QtMultimedia/Video#orientation-prop>`__****
   : int
-  ****`playbackRate </sdk/apps/qml/QtMultimedia/Video#playbackRate-prop>`__****
   : real
-  ****`playbackState </sdk/apps/qml/QtMultimedia/Video#playbackState-prop>`__****
   : enumeration
-  ****`playlist </sdk/apps/qml/QtMultimedia/Video#playlist-prop>`__****
   : Playlist
-  ****`position </sdk/apps/qml/QtMultimedia/Video#position-prop>`__****
   : int
-  ****`seekable </sdk/apps/qml/QtMultimedia/Video#seekable-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/QtMultimedia/Video#source-prop>`__**** :
   url
-  ****`status </sdk/apps/qml/QtMultimedia/Video#status-prop>`__**** :
   enumeration
-  ****`volume </sdk/apps/qml/QtMultimedia/Video#volume-prop>`__**** :
   real

Signals
-------

-  ****`paused </sdk/apps/qml/QtMultimedia/Video#paused-signal>`__****\ ()
-  ****`playing </sdk/apps/qml/QtMultimedia/Video#playing-signal>`__****\ ()
-  ****`stopped </sdk/apps/qml/QtMultimedia/Video#stopped-signal>`__****\ ()

Methods
-------

-  ****`pause </sdk/apps/qml/QtMultimedia/Video#pause-method>`__****\ ()
-  ****`play </sdk/apps/qml/QtMultimedia/Video#play-method>`__****\ ()
-  ****`seek </sdk/apps/qml/QtMultimedia/Video#seek-method>`__****\ (*offset*)
-  ****`stop </sdk/apps/qml/QtMultimedia/Video#stop-method>`__****\ ()
-  ****`supportedAudioRoles </sdk/apps/qml/QtMultimedia/Video#supportedAudioRoles-method>`__****\ ()

Detailed Description
--------------------

``Video`` is a convenience type combining the functionality of a
`MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__ and a
`VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ into one. It
provides simple video playback functionality without having to declare
multiple types.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Video {
        id: video
        width : 800
        height : 600
        source: "video.avi"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                video.play()
            }
        }
        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.seek(video.position - 5000)
        Keys.onRightPressed: video.seek(video.position + 5000)
    }

``Video`` supports untransformed, stretched, and uniformly scaled video
presentation. For a description of stretched uniformly scaled
presentation, see the
`fillMode </sdk/apps/qml/QtMultimedia/Video#fillMode-prop>`__ property
description.

**See also** `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__
and `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ audioRole : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the role of the audio stream. It can be set to
specify the type of audio being played, allowing the system to make
appropriate decisions when it comes to volume, routing or
post-processing.

The audio role must be set before setting the source property.

Supported values can be retrieved with
`supportedAudioRoles() </sdk/apps/qml/QtMultimedia/Video#supportedAudioRoles-method>`__.

The value can be one of:

-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.UnknownRole
   - the role is unknown or undefined.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.MusicRole -
   music.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.VideoRole -
   soundtrack from a movie or a video.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.VoiceCommunicationRole
   - voice communications, such as telephony.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.AlarmRole -
   alarm.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.NotificationRole
   - notification, such as an incoming e-mail or a chat request.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.RingtoneRole
   - ringtone.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.AccessibilityRole
   - for accessibility, such as with a screen reader.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.SonificationRole
   - sonification, such as with user interface sounds.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.GameRole -
   game audio.

This QML property was introduced in Qt 5.6.

| 

+--------------------------------------------------------------------------+
|        \ autoLoad : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates if loading of media should begin immediately.

Defaults to true, if false media will not be loaded until playback is
started.

| 

+--------------------------------------------------------------------------+
|        \ autoPlay : bool                                                 |
+--------------------------------------------------------------------------+

This property determines whether the media should begin playback
automatically.

Setting to ``true`` also sets
`autoLoad </sdk/apps/qml/QtMultimedia/Video#autoLoad-prop>`__ to
``true``. The default is ``false``.

| 

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

Returns the availability state of the video instance.

This is one of:

+-----------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| Value                                                                       | Description                                                                                                                    |
+=============================================================================+================================================================================================================================+
| `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Available         | The video player is available to use.                                                                                          |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Busy              | The video player is usually available, but some other process is utilizing the hardware necessary to play media.               |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Unavailable       | There are no supported video playback facilities.                                                                              |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.ResourceMissing   | There is one or more resources missing, so the video player cannot be used. It may be possible to try again at a later time.   |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ bufferProgress : real                                           |
+--------------------------------------------------------------------------+

This property holds how much of the data buffer is currently filled,
from 0.0 (empty) to 1.0 (full).

| 

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the media in milliseconds.

If the media doesn't have a fixed duration (a live stream for example)
this will be 0.

| 

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the error state of the video. It can be one of:

-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.NoError -
   there is no current error.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.ResourceError
   - the video cannot be played due to a problem allocating resources.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.FormatError
   - the video format is not supported.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.NetworkError
   - the video cannot be played due to network issues.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.AccessDenied
   - the video cannot be played due to insufficient permissions.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.ServiceMissing
   - the video cannot be played because the media service could not be
   instantiated.

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds a string describing the current error condition in
more detail.

| 

+--------------------------------------------------------------------------+
|        \ fillMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to define how the video is scaled to fit the target
area.

-  `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__.Stretch -
   the video is scaled to fit
-  `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__.PreserveAspectFit
   - the video is scaled uniformly to fit without cropping
-  `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__.PreserveAspectCrop
   - the video is scaled uniformly to fill, cropping if necessary

Because this type is for convenience in QML, it does not support
enumerations directly, so enumerations from ``VideoOutput`` are used to
access the available fill modes.

The default fill mode is preserveAspectFit.

| 

+--------------------------------------------------------------------------+
|        \ hasAudio : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the current media has audio content.

| 

+--------------------------------------------------------------------------+
|        \ hasVideo : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the current media has video content.

| 

+--------------------------------------------------------------------------+
|        \ metaData : object                                               |
+--------------------------------------------------------------------------+

This property holds the meta data for the current media.

See MediaPlayer.metaData for details about each meta data key.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property holds whether the audio output is muted.

| 

+--------------------------------------------------------------------------+
|        \ orientation : int                                               |
+--------------------------------------------------------------------------+

The orientation of the ``Video`` in degrees. Only multiples of 90
degrees is supported, that is 0, 90, 180, 270, 360, etc.

| 

+--------------------------------------------------------------------------+
|        \ playbackRate : real                                             |
+--------------------------------------------------------------------------+

This property holds the rate at which video is played at as a multiple
of the normal rate.

| 

+--------------------------------------------------------------------------+
|        \ playbackState : enumeration                                     |
+--------------------------------------------------------------------------+

This read only property indicates the playback state of the media.

-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.PlayingState
   - the media is playing
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.PausedState
   - the media is paused
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.StoppedState
   - the media is stopped

The default state is
`MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.StoppedState.

| 

+--------------------------------------------------------------------------+
|        \ playlist : `Playlist </sdk/apps/qml/QtMultimedia/Playlist/>`__  |
+--------------------------------------------------------------------------+

This property holds the playlist used by the media player.

Setting the playlist property resets the
`source </sdk/apps/qml/QtMultimedia/Video#source-prop>`__ to an empty
string.

This QML property was introduced in Qt 5.6.

| 

+--------------------------------------------------------------------------+
|        \ position : int                                                  |
+--------------------------------------------------------------------------+

This property holds the current playback position in milliseconds.

To change this position, use the
`seek() </sdk/apps/qml/QtMultimedia/Video#seek-method>`__ method.

**See also** `seek() </sdk/apps/qml/QtMultimedia/Video#seek-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ seekable : bool                                                 |
+--------------------------------------------------------------------------+

This property holds whether the playback position of the video can be
changed.

If true, calling the
`seek() </sdk/apps/qml/QtMultimedia/Video#seek-method>`__ method will
cause playback to seek to the new position.

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

This property holds the source URL of the media.

Setting the source property clears the current
`playlist </sdk/apps/qml/QtMultimedia/Video#playlist-prop>`__, if any.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of media loading. It can be one of:

-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.NoMedia -
   no media has been set.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Loading -
   the media is currently being loaded.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Loaded -
   the media has been loaded.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Buffering -
   the media is buffering data.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Stalled -
   playback has been interrupted while the media is buffering data.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.Buffered -
   the media has buffered data.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.EndOfMedia
   - the media has played to the end.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.InvalidMedia
   - the media cannot be played.
-  `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__.UnknownStatus
   - the status of the media cannot be determined.

| 

+--------------------------------------------------------------------------+
|        \ volume : real                                                   |
+--------------------------------------------------------------------------+

This property holds the volume of the audio output, from 0.0 (silent) to
1.0 (maximum volume).

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ paused()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when playback is paused.

The corresponding handler is ``onPaused``.

| 

+--------------------------------------------------------------------------+
|        \ playing()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when playback is started or continued.

The corresponding handler is ``onPlaying``.

| 

+--------------------------------------------------------------------------+
|        \ stopped()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when playback is stopped.

The corresponding handler is ``onStopped``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ pause()                                                         |
+--------------------------------------------------------------------------+

Pauses playback of the media.

| 

+--------------------------------------------------------------------------+
|        \ play()                                                          |
+--------------------------------------------------------------------------+

Starts playback of the media.

| 

+--------------------------------------------------------------------------+
|        \ seek( *offset*)                                                 |
+--------------------------------------------------------------------------+

If the `seekable </sdk/apps/qml/QtMultimedia/Video#seekable-prop>`__
property is true, seeks the current playback position to *offset*.

Seeking may be asynchronous, so the
`position </sdk/apps/qml/QtMultimedia/Video#position-prop>`__ property
may not be updated immediately.

**See also**
`seekable </sdk/apps/qml/QtMultimedia/Video#seekable-prop>`__ and
`position </sdk/apps/qml/QtMultimedia/Video#position-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops playback of the media.

| 

+--------------------------------------------------------------------------+
|        \ supportedAudioRoles()                                           |
+--------------------------------------------------------------------------+

Returns a list of supported audio roles.

If setting the audio role is not supported, an empty list is returned.

This QML method was introduced in Qt 5.6.

**See also**
`audioRole </sdk/apps/qml/QtMultimedia/Video#audioRole-prop>`__.

| 
