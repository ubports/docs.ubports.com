For specifying a list of media to be played.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`currentIndex </sdk/apps/qml/QtMultimedia/Playlist#currentIndex-prop>`__****
   : int
-  ****`currentItemsource </sdk/apps/qml/QtMultimedia/Playlist#currentItemsource-prop>`__****
   : url
-  ****`error </sdk/apps/qml/QtMultimedia/Playlist#error-prop>`__**** :
   enumeration
-  ****`errorString </sdk/apps/qml/QtMultimedia/Playlist#errorString-prop>`__****
   : string
-  ****`itemCount </sdk/apps/qml/QtMultimedia/Playlist#itemCount-prop>`__****
   : int
-  ****`playbackMode </sdk/apps/qml/QtMultimedia/Playlist#playbackMode-prop>`__****
   : enumeration
-  ****`readOnly </sdk/apps/qml/QtMultimedia/Playlist#readOnly-prop>`__****
   : bool

Methods
-------

-  bool
   ****`addItem </sdk/apps/qml/QtMultimedia/Playlist#addItem-method>`__****\ (source)
-  bool
   ****`addItems </sdk/apps/qml/QtMultimedia/Playlist#addItems-method>`__****\ (sources)
-  bool
   ****`clear </sdk/apps/qml/QtMultimedia/Playlist#clear-method>`__****\ ()
-  bool
   ****`insertItem </sdk/apps/qml/QtMultimedia/Playlist#insertItem-method>`__****\ (index,
   source)
-  url
   ****`itemSource </sdk/apps/qml/QtMultimedia/Playlist#itemSource-method>`__****\ (index)
-  ****`load </sdk/apps/qml/QtMultimedia/Playlist#load-method>`__****\ (location,
   format)
-  bool
   ****`moveItem </sdk/apps/qml/QtMultimedia/Playlist#moveItem-method>`__****\ (from,
   to)
-  ****`next </sdk/apps/qml/QtMultimedia/Playlist#next-method>`__****\ ()
-  int
   ****`nextIndex </sdk/apps/qml/QtMultimedia/Playlist#nextIndex-method>`__****\ (steps)
-  ****`previous </sdk/apps/qml/QtMultimedia/Playlist#previous-method>`__****\ ()
-  int
   ****`previousIndex </sdk/apps/qml/QtMultimedia/Playlist#previousIndex-method>`__****\ (steps)
-  bool
   ****`removeItem </sdk/apps/qml/QtMultimedia/Playlist#removeItem-method>`__****\ (index)
-  bool
   ****`removeItems </sdk/apps/qml/QtMultimedia/Playlist#removeItems-method>`__****\ (int
   *start*, int *end*)
-  bool
   ****`save </sdk/apps/qml/QtMultimedia/Playlist#save-method>`__****\ (location,
   format)
-  ****`shuffle </sdk/apps/qml/QtMultimedia/Playlist#shuffle-method>`__****\ ()

Detailed Description
--------------------

**``\backported``**\ from 5.6

The Playlist type provides a way to play a list of media with the
`MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__, Audio and
Video types. It can be used as a data source for view elements (such as
ListView) and other elements that interact with model data (such as
Repeater). When used as a data model, each playlist item's source URL
can be accessed using the ``source`` role.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    Item {
        width: 400;
        height: 300;
        Audio {
            id: player;
            playlist: Playlist {
                id: playlist
                PlaylistItem { source: "song1.ogg"; }
                PlaylistItem { source: "song2.ogg"; }
                PlaylistItem { source: "song3.ogg"; }
            }
        }
        ListView {
            model: playlist;
            delegate: Text {
                font.pixelSize: 16;
                text: source;
            }
        }
        MouseArea {
            anchors.fill: parent;
            onPressed: {
                if (player.playbackState != Audio.PlayingState) {
                    player.play();
                } else {
                    player.pause();
                }
            }
        }
    }

**See also** `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__,
`Audio </sdk/apps/qml/QtMultimedia/qml-multimedia#audio>`__, and
`Video </sdk/apps/qml/QtMultimedia/qml-multimedia#video>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ currentIndex : int                                              |
+--------------------------------------------------------------------------+

This property holds the position of the current item in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ currentItemsource : url                                         |
+--------------------------------------------------------------------------+

This property holds the source URL of the current item in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the error condition of the playlist.

+---------------------------+-------------------------+
| Value                     | Description             |
+===========================+=========================+
| NoError                   | No errors               |
+---------------------------+-------------------------+
| FormatError               | Format error.           |
+---------------------------+-------------------------+
| FormatNotSupportedError   | Format not supported.   |
+---------------------------+-------------------------+
| NetworkError              | Network error.          |
+---------------------------+-------------------------+
| AccessDeniedError         | Access denied error.    |
+---------------------------+-------------------------+

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds a string describing the current error condition of
the playlist.

| 

+--------------------------------------------------------------------------+
|        \ itemCount : int                                                 |
+--------------------------------------------------------------------------+

This property holds the number of items in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ playbackMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the order in which items in the playlist are played.

+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value               | Description                                                                                                                                                                              |
+=====================+==========================================================================================================================================================================================+
| CurrentItemOnce     | The current item is played only once.                                                                                                                                                    |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| CurrentItemInLoop   | The current item is played repeatedly in a loop.                                                                                                                                         |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Sequential          | Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing.   |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Loop                | Playback restarts at the first item after the last has finished playing.                                                                                                                 |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Random              | Play items in random order.                                                                                                                                                              |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates if the playlist can be modified.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool addItem(source)                                            |
+--------------------------------------------------------------------------+

Appends the *source* URL to the playlist.

Returns true if the *source* is added successfully.

| 

+--------------------------------------------------------------------------+
|        \ bool addItems(sources)                                          |
+--------------------------------------------------------------------------+

Appends *source* URLs to the playlist.

Returns true if the *sources* are added successfully.

| 

+--------------------------------------------------------------------------+
|        \ bool clear()                                                    |
+--------------------------------------------------------------------------+

Removes all the items from the playlist.

Returns true if the operation is successful.

| 

+--------------------------------------------------------------------------+
|        \ bool insertItem(index, source)                                  |
+--------------------------------------------------------------------------+

Inserts the *source* URL to the playlist at the given *index*.

Returns true if the *source* is added successfully.

| 

+--------------------------------------------------------------------------+
|        \ url itemSource(index)                                           |
+--------------------------------------------------------------------------+

Returns the source URL of the item at the given *index* in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ load(location, format)                                          |
+--------------------------------------------------------------------------+

Loads a playlist from the given *location*. If *format* is specified, it
is used, otherwise the format is guessed from the location name and the
data.

New items are appended to the playlist.

``onloaded()`` is emitted if the playlist loads successfully, otherwise
``onLoadFailed()`` is emitted with
`error </sdk/apps/qml/QtMultimedia/Playlist#error-prop>`__ and
`errorString </sdk/apps/qml/QtMultimedia/Playlist#errorString-prop>`__
defined accordingly.

| 

+--------------------------------------------------------------------------+
|        \ bool moveItem(from, to)                                         |
+--------------------------------------------------------------------------+

Moves the item at the first given *index* to the second given *index*.

Returns true if the *source* is moved successfully.

| 

+--------------------------------------------------------------------------+
|        \ next()                                                          |
+--------------------------------------------------------------------------+

Advances to the next item in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ int nextIndex(steps)                                            |
+--------------------------------------------------------------------------+

Returns the index of the item in the playlist which would be current
after calling
`next() </sdk/apps/qml/QtMultimedia/Playlist#next-method>`__ *steps*
times.

Returned value depends on the size of the playlist, the current position
and the playback mode.

**See also**
`playbackMode </sdk/apps/qml/QtMultimedia/Playlist#playbackMode-prop>`__
and
`previousIndex() </sdk/apps/qml/QtMultimedia/Playlist#previousIndex-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ previous()                                                      |
+--------------------------------------------------------------------------+

Returns to the previous item in the playlist.

| 

+--------------------------------------------------------------------------+
|        \ int previousIndex(steps)                                        |
+--------------------------------------------------------------------------+

Returns the index of the item in the playlist which would be current
after calling
`previous() </sdk/apps/qml/QtMultimedia/Playlist#previous-method>`__
*steps* times.

Returned value depends on the size of the playlist, the current position
and the playback mode.

**See also**
`playbackMode </sdk/apps/qml/QtMultimedia/Playlist#playbackMode-prop>`__
and
`nextIndex() </sdk/apps/qml/QtMultimedia/Playlist#nextIndex-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ bool removeItem(index)                                          |
+--------------------------------------------------------------------------+

Removed the item at the given *index* from the playlist.

Returns true if the *source* is removed successfully.

| 

+--------------------------------------------------------------------------+
|        \ bool removeItems(int *start*, int *end*)                        |
+--------------------------------------------------------------------------+

Removes items in the playlist from *start* to **``\end``** inclusive.

Returns true if the items are removed successfully.

| 

+--------------------------------------------------------------------------+
|        \ bool save(location, format)                                     |
+--------------------------------------------------------------------------+

Saves the playlist to the given *location*. If *format* is specified, it
is used, otherwise the format is guessed from the location name.

Returns true if the playlist is saved successfully.

| 

+--------------------------------------------------------------------------+
|        \ shuffle()                                                       |
+--------------------------------------------------------------------------+

Shuffles items in the playlist.

| 
