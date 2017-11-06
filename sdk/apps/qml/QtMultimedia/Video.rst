.. _sdk_qtmultimedia_video:

QtMultimedia Video
==================

A convenience type for showing a specified video.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`audioRole <sdk_qtmultimedia_video_audioRole>` : enumeration
-  :ref:`autoLoad <sdk_qtmultimedia_video_autoLoad>` : bool
-  :ref:`autoPlay <sdk_qtmultimedia_video_autoPlay>` : bool
-  :ref:`availability <sdk_qtmultimedia_video_availability>` : enumeration
-  :ref:`bufferProgress <sdk_qtmultimedia_video_bufferProgress>` : real
-  :ref:`duration <sdk_qtmultimedia_video_duration>` : int
-  :ref:`error <sdk_qtmultimedia_video_error>` : enumeration
-  :ref:`errorString <sdk_qtmultimedia_video_errorString>` : string
-  :ref:`fillMode <sdk_qtmultimedia_video_fillMode>` : enumeration
-  :ref:`hasAudio <sdk_qtmultimedia_video_hasAudio>` : bool
-  :ref:`hasVideo <sdk_qtmultimedia_video_hasVideo>` : bool
-  :ref:`metaData <sdk_qtmultimedia_video_metaData>` : object
-  :ref:`muted <sdk_qtmultimedia_video_muted>` : bool
-  :ref:`orientation <sdk_qtmultimedia_video_orientation>` : int
-  :ref:`playbackRate <sdk_qtmultimedia_video_playbackRate>` : real
-  :ref:`playbackState <sdk_qtmultimedia_video_playbackState>` : enumeration
-  :ref:`playlist <sdk_qtmultimedia_video_playlist>` : Playlist
-  :ref:`position <sdk_qtmultimedia_video_position>` : int
-  :ref:`seekable <sdk_qtmultimedia_video_seekable>` : bool
-  :ref:`source <sdk_qtmultimedia_video_source>` : url
-  :ref:`status <sdk_qtmultimedia_video_status>` : enumeration
-  :ref:`volume <sdk_qtmultimedia_video_volume>` : real

Signals
-------

-  :ref:`paused <sdk_qtmultimedia_video_paused>`\ ()
-  :ref:`playing <sdk_qtmultimedia_video_playing>`\ ()
-  :ref:`stopped <sdk_qtmultimedia_video_stopped>`\ ()

Methods
-------

-  :ref:`pause <sdk_qtmultimedia_video_pause>`\ ()
-  :ref:`play <sdk_qtmultimedia_video_play>`\ ()
-  :ref:`seek <sdk_qtmultimedia_video_seek>`\ (*offset*)
-  :ref:`stop <sdk_qtmultimedia_video_stop>`\ ()
-  :ref:`supportedAudioRoles <sdk_qtmultimedia_video_supportedAudioRoles>`\ ()

Detailed Description
--------------------

``Video`` is a convenience type combining the functionality of a :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` and a :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` into one. It provides simple video playback functionality without having to declare multiple types.

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

``Video`` supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the :ref:`fillMode <sdk_qtmultimedia_video_fillMode>` property description.

**See also** :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` and :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`.

Property Documentation
----------------------

.. _sdk_qtmultimedia_video_audioRole:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| audioRole : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.

The audio role must be set before setting the source property.

Supported values can be retrieved with :ref:`supportedAudioRoles() <sdk_qtmultimedia_video_supportedAudioRoles>`.

The value can be one of:

-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.UnknownRole - the role is unknown or undefined.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.MusicRole - music.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.VideoRole - soundtrack from a movie or a video.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.VoiceCommunicationRole - voice communications, such as telephony.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.AlarmRole - alarm.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.NotificationRole - notification, such as an incoming e-mail or a chat request.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.RingtoneRole - ringtone.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.AccessibilityRole - for accessibility, such as with a screen reader.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.SonificationRole - sonification, such as with user interface sounds.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.GameRole - game audio.

This QML property was introduced in Qt 5.6.

.. _sdk_qtmultimedia_video_autoLoad:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoLoad : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates if loading of media should begin immediately.

Defaults to true, if false media will not be loaded until playback is started.

.. _sdk_qtmultimedia_video_autoPlay:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoPlay : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines whether the media should begin playback automatically.

Setting to ``true`` also sets :ref:`autoLoad <sdk_qtmultimedia_video_autoLoad>` to ``true``. The default is ``false``.

.. _sdk_qtmultimedia_video_availability:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availability : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the availability state of the video instance.

This is one of:

+------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Value                                                            | Description                                                                                                                       |
+==================================================================+===================================================================================================================================+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Available         | The video player is available to use.                                                                                          |
+------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Busy              | The video player is usually available, but some other process is utilizing the hardware necessary to play media.               |
+------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Unavailable       | There are no supported video playback facilities.                                                                              |
+------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.ResourceMissing   | There is one or more resources missing, so the video player cannot be used. It may be possible to try again at a later time.   |
+------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_video_bufferProgress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bufferProgress : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds how much of the data buffer is currently filled, from 0.0 (empty) to 1.0 (full).

.. _sdk_qtmultimedia_video_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration of the media in milliseconds.

If the media doesn't have a fixed duration (a live stream for example) this will be 0.

.. _sdk_qtmultimedia_video_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the error state of the video. It can be one of:

-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.NoError - there is no current error.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.ResourceError - the video cannot be played due to a problem allocating resources.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.FormatError - the video format is not supported.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.NetworkError - the video cannot be played due to network issues.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.AccessDenied - the video cannot be played due to insufficient permissions.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.ServiceMissing - the video cannot be played because the media service could not be instantiated.

.. _sdk_qtmultimedia_video_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorString : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a string describing the current error condition in more detail.

.. _sdk_qtmultimedia_video_fillMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fillMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to define how the video is scaled to fit the target area.

-  :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`.Stretch - the video is scaled to fit
-  :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`.PreserveAspectFit - the video is scaled uniformly to fit without cropping
-  :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`.PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary

Because this type is for convenience in QML, it does not support enumerations directly, so enumerations from ``VideoOutput`` are used to access the available fill modes.

The default fill mode is preserveAspectFit.

.. _sdk_qtmultimedia_video_hasAudio:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hasAudio : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the current media has audio content.

.. _sdk_qtmultimedia_video_hasVideo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hasVideo : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the current media has video content.

.. _sdk_qtmultimedia_video_metaData:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData : object                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the meta data for the current media.

See MediaPlayer.metaData for details about each meta data key.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_video_muted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| muted : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the audio output is muted.

.. _sdk_qtmultimedia_video_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orientation : int                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The orientation of the ``Video`` in degrees. Only multiples of 90 degrees is supported, that is 0, 90, 180, 270, 360, etc.

.. _sdk_qtmultimedia_video_playbackRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playbackRate : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rate at which video is played at as a multiple of the normal rate.

.. _sdk_qtmultimedia_video_playbackState:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playbackState : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read only property indicates the playback state of the media.

-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.PlayingState - the media is playing
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.PausedState - the media is paused
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.StoppedState - the media is stopped

The default state is :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.StoppedState.

.. _sdk_qtmultimedia_video_playlist:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playlist : :ref:`Playlist <sdk_qtmultimedia_playlist>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the playlist used by the media player.

Setting the playlist property resets the :ref:`source <sdk_qtmultimedia_video_source>` to an empty string.

This QML property was introduced in Qt 5.6.

.. _sdk_qtmultimedia_video_position:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| position : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current playback position in milliseconds.

To change this position, use the :ref:`seek() <sdk_qtmultimedia_video_seek>` method.

**See also** :ref:`seek() <sdk_qtmultimedia_video_seek>`.

.. _sdk_qtmultimedia_video_seekable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| seekable : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the playback position of the video can be changed.

If true, calling the :ref:`seek() <sdk_qtmultimedia_video_seek>` method will cause playback to seek to the new position.

.. _sdk_qtmultimedia_video_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the source URL of the media.

Setting the source property clears the current :ref:`playlist <sdk_qtmultimedia_video_playlist>`, if any.

.. _sdk_qtmultimedia_video_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of media loading. It can be one of:

-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.NoMedia - no media has been set.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Loading - the media is currently being loaded.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Loaded - the media has been loaded.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Buffering - the media is buffering data.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Stalled - playback has been interrupted while the media is buffering data.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.Buffered - the media has buffered data.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.EndOfMedia - the media has played to the end.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.InvalidMedia - the media cannot be played.
-  :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.UnknownStatus - the status of the media cannot be determined.

.. _sdk_qtmultimedia_video_volume:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volume : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).

Signal Documentation
--------------------

.. _sdk_qtmultimedia_video_paused:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| paused()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is paused.

The corresponding handler is ``onPaused``.

.. _sdk_qtmultimedia_video_playing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playing()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is started or continued.

The corresponding handler is ``onPlaying``.

.. _sdk_qtmultimedia_video_stopped:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stopped()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is stopped.

The corresponding handler is ``onStopped``.

Method Documentation
--------------------

.. _sdk_qtmultimedia_video_pause:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pause()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Pauses playback of the media.

.. _sdk_qtmultimedia_video_play:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| play()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts playback of the media.

.. _sdk_qtmultimedia_video_seek:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| seek( *offset*)                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If the :ref:`seekable <sdk_qtmultimedia_video_seekable>` property is true, seeks the current playback position to *offset*.

Seeking may be asynchronous, so the :ref:`position <sdk_qtmultimedia_video_position>` property may not be updated immediately.

**See also** :ref:`seekable <sdk_qtmultimedia_video_seekable>` and :ref:`position <sdk_qtmultimedia_video_position>`.

.. _sdk_qtmultimedia_video_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops playback of the media.

.. _sdk_qtmultimedia_video_supportedAudioRoles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supportedAudioRoles()                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of supported audio roles.

If setting the audio role is not supported, an empty list is returned.

This QML method was introduced in Qt 5.6.

**See also** :ref:`audioRole <sdk_qtmultimedia_video_audioRole>`.

