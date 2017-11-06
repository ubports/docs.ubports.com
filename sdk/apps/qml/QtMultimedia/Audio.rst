.. _sdk_qtmultimedia_audio:

QtMultimedia Audio
==================

Add audio playback to a scene.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`audioRole <sdk_qtmultimedia_audio_audioRole>` : enumeration
-  :ref:`autoLoad <sdk_qtmultimedia_audio_autoLoad>` : bool
-  :ref:`autoPlay <sdk_qtmultimedia_audio_autoPlay>` : bool
-  :ref:`availability <sdk_qtmultimedia_audio_availability>` : enumeration
-  :ref:`bufferProgress <sdk_qtmultimedia_audio_bufferProgress>` : real
-  :ref:`duration <sdk_qtmultimedia_audio_duration>` : int
-  :ref:`error <sdk_qtmultimedia_audio_error>` : enumeration
-  :ref:`errorString <sdk_qtmultimedia_audio_errorString>` : string
-  :ref:`hasAudio <sdk_qtmultimedia_audio_hasAudio>` : bool
-  :ref:`hasVideo <sdk_qtmultimedia_audio_hasVideo>` : bool
-  :ref:`loops <sdk_qtmultimedia_audio_loops>` : int
-  :ref:`metaData.albumArtist <sdk_qtmultimedia_audio_metaData_albumArtist>` : variant
-  :ref:`metaData.albumTitle <sdk_qtmultimedia_audio_metaData_albumTitle>` : variant
-  :ref:`metaData.audioBitRate <sdk_qtmultimedia_audio_metaData_audioBitRate>` : variant
-  :ref:`metaData.audioCodec <sdk_qtmultimedia_audio_metaData_audioCodec>` : variant
-  :ref:`metaData.author <sdk_qtmultimedia_audio_metaData_author>` : variant
-  :ref:`metaData.averageLevel <sdk_qtmultimedia_audio_metaData_averageLevel>` : variant
-  :ref:`metaData.category <sdk_qtmultimedia_audio_metaData_category>` : variant
-  :ref:`metaData.channelCount <sdk_qtmultimedia_audio_metaData_channelCount>` : variant
-  :ref:`metaData.chapterNumber <sdk_qtmultimedia_audio_metaData_chapterNumber>` : variant
-  :ref:`metaData.comment <sdk_qtmultimedia_audio_metaData_comment>` : variant
-  :ref:`metaData.composer <sdk_qtmultimedia_audio_metaData_composer>` : variant
-  :ref:`metaData.conductor <sdk_qtmultimedia_audio_metaData_conductor>` : variant
-  :ref:`metaData.contributingArtist <sdk_qtmultimedia_audio_metaData_contributingArtist>` : variant
-  :ref:`metaData.copyright <sdk_qtmultimedia_audio_metaData_copyright>` : variant
-  :ref:`metaData.coverArtUrlLarge <sdk_qtmultimedia_audio_metaData_coverArtUrlLarge>` : variant
-  :ref:`metaData.coverArtUrlSmall <sdk_qtmultimedia_audio_metaData_coverArtUrlSmall>` : variant
-  :ref:`metaData.date <sdk_qtmultimedia_audio_metaData_date>` : variant
-  :ref:`metaData.description <sdk_qtmultimedia_audio_metaData_description>` : variant
-  :ref:`metaData.director <sdk_qtmultimedia_audio_metaData_director>` : variant
-  :ref:`metaData.genre <sdk_qtmultimedia_audio_metaData_genre>` : variant
-  :ref:`metaData.keywords <sdk_qtmultimedia_audio_metaData_keywords>` : variant
-  :ref:`metaData.language <sdk_qtmultimedia_audio_metaData_language>` : variant
-  :ref:`metaData.leadPerformer <sdk_qtmultimedia_audio_metaData_leadPerformer>` : variant
-  :ref:`metaData.lyrics <sdk_qtmultimedia_audio_metaData_lyrics>` : variant
-  :ref:`metaData.mediaType <sdk_qtmultimedia_audio_metaData_mediaType>` : variant
-  :ref:`metaData.mood <sdk_qtmultimedia_audio_metaData_mood>` : variant
-  :ref:`metaData.parentalRating <sdk_qtmultimedia_audio_metaData_parentalRating>` : variant
-  :ref:`metaData.peakValue <sdk_qtmultimedia_audio_metaData_peakValue>` : variant
-  :ref:`metaData.pixelAspectRatio <sdk_qtmultimedia_audio_metaData_pixelAspectRatio>` : variant
-  :ref:`metaData.posterUrl <sdk_qtmultimedia_audio_metaData_posterUrl>` : variant
-  :ref:`metaData.publisher <sdk_qtmultimedia_audio_metaData_publisher>` : variant
-  :ref:`metaData.ratingOrganization <sdk_qtmultimedia_audio_metaData_ratingOrganization>` : variant
-  :ref:`metaData.resolution <sdk_qtmultimedia_audio_metaData_resolution>` : variant
-  :ref:`metaData.sampleRate <sdk_qtmultimedia_audio_metaData_sampleRate>` : variant
-  :ref:`metaData.size <sdk_qtmultimedia_audio_metaData_size>` : variant
-  :ref:`metaData.subTitle <sdk_qtmultimedia_audio_metaData_subTitle>` : variant
-  :ref:`metaData.title <sdk_qtmultimedia_audio_metaData_title>` : variant
-  :ref:`metaData.trackCount <sdk_qtmultimedia_audio_metaData_trackCount>` : variant
-  :ref:`metaData.trackNumber <sdk_qtmultimedia_audio_metaData_trackNumber>` : variant
-  :ref:`metaData.userRating <sdk_qtmultimedia_audio_metaData_userRating>` : variant
-  :ref:`metaData.videoBitRate <sdk_qtmultimedia_audio_metaData_videoBitRate>` : variant
-  :ref:`metaData.videoCodec <sdk_qtmultimedia_audio_metaData_videoCodec>` : variant
-  :ref:`metaData.videoFrameRate <sdk_qtmultimedia_audio_metaData_videoFrameRate>` : variant
-  :ref:`metaData.writer <sdk_qtmultimedia_audio_metaData_writer>` : variant
-  :ref:`metaData.year <sdk_qtmultimedia_audio_metaData_year>` : variant
-  :ref:`muted <sdk_qtmultimedia_audio_muted>` : bool
-  :ref:`playbackRate <sdk_qtmultimedia_audio_playbackRate>` : real
-  :ref:`playbackState <sdk_qtmultimedia_audio_playbackState>` : enumeration
-  :ref:`playlist <sdk_qtmultimedia_audio_playlist>` : Playlist
-  :ref:`position <sdk_qtmultimedia_audio_position>` : int
-  :ref:`seekable <sdk_qtmultimedia_audio_seekable>` : bool
-  :ref:`source <sdk_qtmultimedia_audio_source>` : url
-  :ref:`status <sdk_qtmultimedia_audio_status>` : enumeration
-  :ref:`volume <sdk_qtmultimedia_audio_volume>` : real

Signals
-------

-  :ref:`error <sdk_qtmultimedia_audio_error>`\ (error, errorString)
-  :ref:`itemAboutToBeInserted <sdk_qtmultimedia_audio_itemAboutToBeInserted>`\ (start, end)
-  :ref:`itemAboutToBeRemoved <sdk_qtmultimedia_audio_itemAboutToBeRemoved>`\ (start, end)
-  :ref:`itemChanged <sdk_qtmultimedia_audio_itemChanged>`\ (start, end)
-  :ref:`itemInserted <sdk_qtmultimedia_audio_itemInserted>`\ (start, end)
-  :ref:`itemRemoved <sdk_qtmultimedia_audio_itemRemoved>`\ (start, end)
-  :ref:`loadFailed <sdk_qtmultimedia_audio_loadFailed>`\ ()
-  :ref:`loaded <sdk_qtmultimedia_audio_loaded>`\ ()
-  :ref:`paused <sdk_qtmultimedia_audio_paused>`\ ()
-  :ref:`playbackStateChanged <sdk_qtmultimedia_audio_playbackStateChanged>`\ ()
-  :ref:`playing <sdk_qtmultimedia_audio_playing>`\ ()
-  :ref:`stopped <sdk_qtmultimedia_audio_stopped>`\ ()

Methods
-------

-  :ref:`pause <sdk_qtmultimedia_audio_pause>`\ ()
-  :ref:`play <sdk_qtmultimedia_audio_play>`\ ()
-  :ref:`seek <sdk_qtmultimedia_audio_seek>`\ (offset)
-  :ref:`stop <sdk_qtmultimedia_audio_stop>`\ ()
-  list<int> :ref:`supportedAudioRoles <sdk_qtmultimedia_audio_supportedAudioRoles>`\ ()

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Text {
        text: "Click Me!";
        font.pointSize: 24;
        width: 150; height: 50;
        Audio {
            id: playMusic
            source: "music.wav"
        }
        MouseArea {
            id: playArea
            anchors.fill: parent
            onPressed:  { playMusic.play() }
        }
    }

**See also** `Video </sdk/apps/qml/QtMultimedia/qml-multimedia/#video>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_audio_audioRole:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| audioRole : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.

The audio role must be set before setting the source property.

Supported values can be retrieved with :ref:`supportedAudioRoles() <sdk_qtmultimedia_audio_supportedAudioRoles>`.

The value can be one of:

-  UnknownRole - the role is unknown or undefined.
-  MusicRole - music.
-  VideoRole - soundtrack from a movie or a video.
-  VoiceCommunicationRole - voice communications, such as telephony.
-  AlarmRole - alarm.
-  NotificationRole - notification, such as an incoming e-mail or a chat request.
-  RingtoneRole - ringtone.
-  AccessibilityRole - for accessibility, such as with a screen reader.
-  SonificationRole - sonification, such as with user interface sounds.
-  GameRole - game audio.

This QML property was introduced in Qt 5.6.

.. _sdk_qtmultimedia_audio_autoLoad:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoLoad : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates if loading of media should begin immediately.

Defaults to ``true``. If ``false``, the media will not be loaded until playback is started.

.. _sdk_qtmultimedia_audio_autoPlay:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoPlay : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property controls whether the media will begin to play on start up.

Defaults to ``false``. If set to ``true``, the value of :ref:`autoLoad <sdk_qtmultimedia_audio_autoLoad>` will be overwritten to ``true``.

.. _sdk_qtmultimedia_audio_availability:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availability : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the availability state of the media player.

This is one of:

+-------------------+--------------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                                    |
+===================+================================================================================================================================+
| Available         | The media player is available to use.                                                                                          |
+-------------------+--------------------------------------------------------------------------------------------------------------------------------+
| Busy              | The media player is usually available, but some other process is utilizing the hardware necessary to play media.               |
+-------------------+--------------------------------------------------------------------------------------------------------------------------------+
| Unavailable       | There are no supported media playback facilities.                                                                              |
+-------------------+--------------------------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | There is one or more resources missing, so the media player cannot be used. It may be possible to try again at a later time.   |
+-------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_audio_bufferProgress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bufferProgress : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds how much of the data buffer is currently filled, from ``0.0`` (empty) to ``1.0`` (full).

Playback can start or resume only when the buffer is entirely filled, in which case the status is ``Audio.Buffered`` or ``Audio.Buffering``. A value lower than ``1.0`` implies that the status is ``Audio.Stalled``.

**See also** :ref:`status <sdk_qtmultimedia_audio_status>`.

.. _sdk_qtmultimedia_audio_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration of the media in milliseconds.

If the media doesn't have a fixed duration (a live stream for example) this will be 0.

.. _sdk_qtmultimedia_audio_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the error state of the audio. It can be one of:

+------------------+-----------------------------------------------------------------------------------+
| Value            | Description                                                                       |
+==================+===================================================================================+
| NoError          | There is no current error.                                                        |
+------------------+-----------------------------------------------------------------------------------+
| ResourceError    | The audio cannot be played due to a problem allocating resources.                 |
+------------------+-----------------------------------------------------------------------------------+
| FormatError      | The audio format is not supported.                                                |
+------------------+-----------------------------------------------------------------------------------+
| NetworkError     | The audio cannot be played due to network issues.                                 |
+------------------+-----------------------------------------------------------------------------------+
| AccessDenied     | The audio cannot be played due to insufficient permissions.                       |
+------------------+-----------------------------------------------------------------------------------+
| ServiceMissing   | The audio cannot be played because the media service could not be instantiated.   |
+------------------+-----------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_audio_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorString : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a string describing the current error condition in more detail.

.. _sdk_qtmultimedia_audio_hasAudio:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hasAudio : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the media contains audio.

.. _sdk_qtmultimedia_audio_hasVideo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hasVideo : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the media contains video.

.. _sdk_qtmultimedia_audio_loops:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loops : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of times the media is played. A value of ``0`` or ``1`` means the media will be played only once; set to ``Audio.Infinite`` to enable infinite looping.

The value can be changed while the media is playing, in which case it will update the remaining loops to the new value.

The default is ``1``.

.. _sdk_qtmultimedia_audio_metaData_albumArtist:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.albumArtist : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the principal artist of the album the media belongs to.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_albumTitle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.albumTitle : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the title of the album the media belongs to.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_audioBitRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.audioBitRate : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the bit rate of the media's audio stream in bits per second.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_audioCodec:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.audioCodec : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the encoding of the media audio stream.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_author:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.author : variant                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the author of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_averageLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.averageLevel : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the average volume level of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_category:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.category : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the category of the media

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_channelCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.channelCount : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of channels in the media's audio stream.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_chapterNumber:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.chapterNumber : variant                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the chapter number of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_comment:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.comment : variant                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a user comment about the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_composer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.composer : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the composer of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_conductor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.conductor : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the conductor of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_contributingArtist:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.contributingArtist : variant                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the names of artists contributing to the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_copyright:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.copyright : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the media's copyright notice.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_coverArtUrlLarge:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.coverArtUrlLarge : variant                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the URL of a large cover art image.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_coverArtUrlSmall:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.coverArtUrlSmall : variant                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the URL of a small cover art image.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_date:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.date : variant                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the date of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_description:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.description : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a description of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_director:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.director : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the director of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_genre:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.genre : variant                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the genre of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_keywords:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.keywords : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of keywords describing the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_language:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.language : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the language of the media, as an ISO 639-2 code.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_leadPerformer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.leadPerformer : variant                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the lead performer in the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_lyrics:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.lyrics : variant                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the lyrics to the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_mediaType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.mediaType : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_mood:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.mood : variant                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the mood of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_parentalRating:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.parentalRating : variant                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the parental rating of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_peakValue:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.peakValue : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the peak volume of media's audio stream.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_pixelAspectRatio:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.pixelAspectRatio : variant                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the pixel aspect ratio of an image or video.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_posterUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.posterUrl : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the URL of a poster image.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_publisher:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.publisher : variant                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the publisher of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_ratingOrganization:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.ratingOrganization : variant                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the rating organization responsible for the parental rating of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_resolution:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.resolution : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the dimension of an image or video.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_sampleRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.sampleRate : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the sample rate of the media's audio stream in hertz.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_size:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.size : variant                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property property holds the size of the media in bytes.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_subTitle:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.subTitle : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the sub-title of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_title:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.title : variant                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the title of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_trackCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.trackCount : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of tracks on the album containing the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_trackNumber:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.trackNumber : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the track number of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_userRating:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.userRating : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a user rating of the media in the range of 0 to 100.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_videoBitRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.videoBitRate : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the bit rate of the media's video stream in bits per second.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_videoCodec:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.videoCodec : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the encoding of the media's video stream.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_videoFrameRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.videoFrameRate : variant                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the frame rate of the media's video stream.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_writer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.writer : variant                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the writer of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_metaData_year:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.year : variant                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the year of release of the media.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_audio_muted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| muted : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the audio output is muted.

Defaults to false.

.. _sdk_qtmultimedia_audio_playbackRate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playbackRate : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rate at which audio is played at as a multiple of the normal rate.

Defaults to 1.0.

.. _sdk_qtmultimedia_audio_playbackState:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playbackState : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the state of media playback. It can be one of:

-  PlayingState - the media is currently playing.
-  PausedState - playback of the media has been suspended.
-  StoppedState - playback of the media is yet to begin.

.. _sdk_qtmultimedia_audio_playlist:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playlist : :ref:`Playlist <sdk_qtmultimedia_playlist>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the playlist used by the media player.

Setting the playlist property resets the :ref:`source <sdk_qtmultimedia_audio_source>` to an empty string.

This QML property was introduced in Qt 5.6.

.. _sdk_qtmultimedia_audio_position:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| position : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current playback position in milliseconds.

To change this position, use the :ref:`seek() <sdk_qtmultimedia_audio_seek>` method.

**See also** :ref:`seek() <sdk_qtmultimedia_audio_seek>`.

.. _sdk_qtmultimedia_audio_seekable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| seekable : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether position of the audio can be changed.

If true, calling the :ref:`seek() <sdk_qtmultimedia_audio_seek>` method will cause playback to seek to the new position.

.. _sdk_qtmultimedia_audio_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the source URL of the media.

Setting the source property clears the current :ref:`playlist <sdk_qtmultimedia_audio_playlist>`, if any.

.. _sdk_qtmultimedia_audio_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of media loading. It can be one of:

-  NoMedia - no media has been set.
-  Loading - the media is currently being loaded.
-  Loaded - the media has been loaded.
-  Buffering - the media is buffering data.
-  Stalled - playback has been interrupted while the media is buffering data.
-  Buffered - the media has buffered data.
-  EndOfMedia - the media has played to the end.
-  InvalidMedia - the media cannot be played.
-  UnknownStatus - the status of the media is unknown.

.. _sdk_qtmultimedia_audio_volume:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volume : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).

Defaults to 1.0.

Signal Documentation
--------------------

.. _sdk_qtmultimedia_audio_error1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error(error, errorString)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an error has occurred. The errorString parameter may contain more detailed information about the error.

The corresponding handler is ``onError``.

.. _sdk_qtmultimedia_audio_itemAboutToBeInserted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemAboutToBeInserted(start, end)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when items are to be inserted into the playlist at *start* and ending at *end*.

The corresponding handler is ``onItemAboutToBeInserted``.

.. _sdk_qtmultimedia_audio_itemAboutToBeRemoved:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemAboutToBeRemoved(start, end)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal emitted when items are to be deleted from the playlist at *start* and ending at *end*.

The corresponding handler is ``onItemAboutToBeRemoved``.

.. _sdk_qtmultimedia_audio_itemChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemChanged(start, end)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted after items have been changed in the playlist between *start* and *end* positions inclusive.

The corresponding handler is ``onItemChanged``.

.. _sdk_qtmultimedia_audio_itemInserted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemInserted(start, end)                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted after items have been inserted into the playlist. The new items are those between *start* and *end* inclusive.

The corresponding handler is ``onItemInserted``.

.. _sdk_qtmultimedia_audio_itemRemoved:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemRemoved(start, end)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted after items have been removed from the playlist. The removed items are those between *start* and *end* inclusive.

The corresponding handler is ``onMediaRemoved``.

.. _sdk_qtmultimedia_audio_loadFailed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loadFailed()                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the playlist loading failed. :ref:`error <sdk_qtmultimedia_audio_error>` and :ref:`errorString <sdk_qtmultimedia_audio_errorString>` can be checked for more information on the failure.

The corresponding handler is ``onLoadFailed``.

.. _sdk_qtmultimedia_audio_loaded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| loaded()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the playlist loading succeeded.

The corresponding handler is ``onLoaded``.

.. _sdk_qtmultimedia_audio_paused:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| paused()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is paused.

The corresponding handler is ``onPaused``.

.. _sdk_qtmultimedia_audio_playbackStateChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playbackStateChanged()                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the :ref:`playbackState <sdk_qtmultimedia_audio_playbackState>` property is altered.

The corresponding handler is ``onPlaybackStateChanged``.

.. _sdk_qtmultimedia_audio_playing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| playing()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is started or resumed.

The corresponding handler is ``onPlaying``.

.. _sdk_qtmultimedia_audio_stopped:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stopped()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when playback is stopped.

The corresponding handler is ``onStopped``.

Method Documentation
--------------------

.. _sdk_qtmultimedia_audio_pause:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pause()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Pauses playback of the media.

Sets the :ref:`playbackState <sdk_qtmultimedia_audio_playbackState>` property to PausedState.

.. _sdk_qtmultimedia_audio_play:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| play()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts playback of the media.

Sets the :ref:`playbackState <sdk_qtmultimedia_audio_playbackState>` property to PlayingState.

.. _sdk_qtmultimedia_audio_seek:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| seek(offset)                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If the :ref:`seekable <sdk_qtmultimedia_audio_seekable>` property is true, seeks the current playback position to *offset*.

Seeking may be asynchronous, so the :ref:`position <sdk_qtmultimedia_audio_position>` property may not be updated immediately.

**See also** :ref:`seekable <sdk_qtmultimedia_audio_seekable>` and :ref:`position <sdk_qtmultimedia_audio_position>`.

.. _sdk_qtmultimedia_audio_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops playback of the media.

Sets the :ref:`playbackState <sdk_qtmultimedia_audio_playbackState>` property to StoppedState.

.. _sdk_qtmultimedia_audio_supportedAudioRoles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<int> supportedAudioRoles()                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of supported audio roles.

If setting the audio role is not supported, an empty list is returned.

This QML method was introduced in Qt 5.6.

**See also** :ref:`audioRole <sdk_qtmultimedia_audio_audioRole>`.

