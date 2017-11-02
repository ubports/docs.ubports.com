.. _sdk_qtmultimedia_playlist:
QtMultimedia Playlist
=====================

For specifying a list of media to be played.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`currentIndex <sdk_qtmultimedia_playlist_currentIndex-prop>`
   : int
-  :ref:`currentItemsource <sdk_qtmultimedia_playlist_currentItemsource-prop>`
   : url
-  :ref:`error <sdk_qtmultimedia_playlist_error-prop>` :
   enumeration
-  :ref:`errorString <sdk_qtmultimedia_playlist_errorString-prop>`
   : string
-  :ref:`itemCount <sdk_qtmultimedia_playlist_itemCount-prop>` :
   int
-  :ref:`playbackMode <sdk_qtmultimedia_playlist_playbackMode-prop>`
   : enumeration
-  :ref:`readOnly <sdk_qtmultimedia_playlist_readOnly-prop>` : bool

Methods
-------

-  bool
   **:ref:`addItem <sdk_qtmultimedia_playlist#addItem-method>`**\ (source)
-  bool
   **:ref:`addItems <sdk_qtmultimedia_playlist#addItems-method>`**\ (sources)
-  bool :ref:`clear <sdk_qtmultimedia_playlist_clear-method>`\ ()
-  bool
   **:ref:`insertItem <sdk_qtmultimedia_playlist#insertItem-method>`**\ (index,
   source)
-  url
   **:ref:`itemSource <sdk_qtmultimedia_playlist#itemSource-method>`**\ (index)
-  :ref:`load <sdk_qtmultimedia_playlist_load-method>`\ (location,
   format)
-  bool
   **:ref:`moveItem <sdk_qtmultimedia_playlist#moveItem-method>`**\ (from,
   to)
-  :ref:`next <sdk_qtmultimedia_playlist_next-method>`\ ()
-  int
   **:ref:`nextIndex <sdk_qtmultimedia_playlist#nextIndex-method>`**\ (steps)
-  :ref:`previous <sdk_qtmultimedia_playlist_previous-method>`\ ()
-  int
   **:ref:`previousIndex <sdk_qtmultimedia_playlist#previousIndex-method>`**\ (steps)
-  bool
   **:ref:`removeItem <sdk_qtmultimedia_playlist#removeItem-method>`**\ (index)
-  bool
   **:ref:`removeItems <sdk_qtmultimedia_playlist#removeItems-method>`**\ (int
   *start*, int *end*)
-  bool
   **:ref:`save <sdk_qtmultimedia_playlist#save-method>`**\ (location,
   format)
-  :ref:`shuffle <sdk_qtmultimedia_playlist_shuffle-method>`\ ()

Detailed Description
--------------------

**``\backported``**\ from 5.6

The Playlist type provides a way to play a list of media with the
:ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`, Audio and Video types.
It can be used as a data source for view elements (such as ListView) and
other elements that interact with model data (such as Repeater). When
used as a data model, each playlist item's source URL can be accessed
using the ``source`` role.

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

**See also** :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`,
`Audio </sdk/apps/qml/QtMultimedia/qml-multimedia/#audio>`_ , and
`Video </sdk/apps/qml/QtMultimedia/qml-multimedia/#video>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_playlist_currentIndex-prop:

+--------------------------------------------------------------------------+
|        \ currentIndex : int                                              |
+--------------------------------------------------------------------------+

This property holds the position of the current item in the playlist.

| 

.. _sdk_qtmultimedia_playlist_currentItemsource-prop:

+--------------------------------------------------------------------------+
|        \ currentItemsource : url                                         |
+--------------------------------------------------------------------------+

This property holds the source URL of the current item in the playlist.

| 

.. _sdk_qtmultimedia_playlist_error-prop:

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the error condition of the playlist.

.. _sdk_qtmultimedia_playlist_Value                      Description-prop:

+---------------------------+-------------------------+
| Value                     | Description             |
+===========================+=========================+
.. _sdk_qtmultimedia_playlist_FormatError                Format error.-prop:
| NoError                   | No errors               |
+---------------------------+-------------------------+
.. _sdk_qtmultimedia_playlist_FormatNotSupportedError    Format not supported.-prop:
| FormatError               | Format error.           |
+---------------------------+-------------------------+
.. _sdk_qtmultimedia_playlist_NetworkError               Network error.-prop:
| FormatNotSupportedError   | Format not supported.   |
+---------------------------+-------------------------+
.. _sdk_qtmultimedia_playlist_AccessDeniedError          Access denied error.-prop:
| NetworkError              | Network error.          |
+---------------------------+-------------------------+
| AccessDeniedError         | Access denied error.    |
+---------------------------+-------------------------+

| 

.. _sdk_qtmultimedia_playlist_errorString-prop:

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds a string describing the current error condition of
the playlist.

| 

.. _sdk_qtmultimedia_playlist_itemCount-prop:

+--------------------------------------------------------------------------+
|        \ itemCount : int                                                 |
+--------------------------------------------------------------------------+

This property holds the number of items in the playlist.

| 

.. _sdk_qtmultimedia_playlist_playbackMode-prop:

+--------------------------------------------------------------------------+
|        \ playbackMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the order in which items in the playlist are played.

.. _sdk_qtmultimedia_playlist_Value                Description-prop:

+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value               | Description                                                                                                                                                                              |
+=====================+==========================================================================================================================================================================================+
.. _sdk_qtmultimedia_playlist_CurrentItemInLoop    The current item is played repeatedly in a loop.-prop:
| CurrentItemOnce     | The current item is played only once.                                                                                                                                                    |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_playlist_Sequential           Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing.-prop:
| CurrentItemInLoop   | The current item is played repeatedly in a loop.                                                                                                                                         |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_playlist_Loop                 Playback restarts at the first item after the last has finished playing.-prop:
| Sequential          | Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing.   |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_playlist_Random               Play items in random order.-prop:
| Loop                | Playback restarts at the first item after the last has finished playing.                                                                                                                 |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Random              | Play items in random order.                                                                                                                                                              |
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_playlist_readOnly-method:

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates if the playlist can be modified.

| 

Method Documentation
--------------------

.. _sdk_qtmultimedia_playlist_bool addItem-method:

+--------------------------------------------------------------------------+
|        \ bool addItem(source)                                            |
+--------------------------------------------------------------------------+

Appends the *source* URL to the playlist.

Returns true if the *source* is added successfully.

| 

.. _sdk_qtmultimedia_playlist_bool addItems-method:

+--------------------------------------------------------------------------+
|        \ bool addItems(sources)                                          |
+--------------------------------------------------------------------------+

Appends *source* URLs to the playlist.

Returns true if the *sources* are added successfully.

| 

.. _sdk_qtmultimedia_playlist_bool clear-method:

+--------------------------------------------------------------------------+
|        \ bool clear()                                                    |
+--------------------------------------------------------------------------+

Removes all the items from the playlist.

Returns true if the operation is successful.

| 

.. _sdk_qtmultimedia_playlist_bool insertItem-method:

+--------------------------------------------------------------------------+
|        \ bool insertItem(index, source)                                  |
+--------------------------------------------------------------------------+

Inserts the *source* URL to the playlist at the given *index*.

Returns true if the *source* is added successfully.

| 

.. _sdk_qtmultimedia_playlist_url itemSource-method:

+--------------------------------------------------------------------------+
|        \ url itemSource(index)                                           |
+--------------------------------------------------------------------------+

Returns the source URL of the item at the given *index* in the playlist.

| 

.. _sdk_qtmultimedia_playlist_load-method:

+--------------------------------------------------------------------------+
|        \ load(location, format)                                          |
+--------------------------------------------------------------------------+

Loads a playlist from the given *location*. If *format* is specified, it
is used, otherwise the format is guessed from the location name and the
data.

New items are appended to the playlist.

``onloaded()`` is emitted if the playlist loads successfully, otherwise
``onLoadFailed()`` is emitted with
:ref:`error <sdk_qtmultimedia_playlist#error-prop>` and
:ref:`errorString <sdk_qtmultimedia_playlist#errorString-prop>` defined
accordingly.

| 

.. _sdk_qtmultimedia_playlist_bool moveItem-method:

+--------------------------------------------------------------------------+
|        \ bool moveItem(from, to)                                         |
+--------------------------------------------------------------------------+

Moves the item at the first given *index* to the second given *index*.

Returns true if the *source* is moved successfully.

| 

.. _sdk_qtmultimedia_playlist_next-method:

+--------------------------------------------------------------------------+
|        \ next()                                                          |
+--------------------------------------------------------------------------+

Advances to the next item in the playlist.

| 

.. _sdk_qtmultimedia_playlist_int nextIndex-method:

+--------------------------------------------------------------------------+
|        \ int nextIndex(steps)                                            |
+--------------------------------------------------------------------------+

Returns the index of the item in the playlist which would be current
after calling :ref:`next() <sdk_qtmultimedia_playlist#next-method>` *steps*
times.

Returned value depends on the size of the playlist, the current position
and the playback mode.

**See also**
:ref:`playbackMode <sdk_qtmultimedia_playlist#playbackMode-prop>` and
:ref:`previousIndex() <sdk_qtmultimedia_playlist#previousIndex-method>`.

| 

.. _sdk_qtmultimedia_playlist_previous-method:

+--------------------------------------------------------------------------+
|        \ previous()                                                      |
+--------------------------------------------------------------------------+

Returns to the previous item in the playlist.

| 

.. _sdk_qtmultimedia_playlist_int previousIndex-method:

+--------------------------------------------------------------------------+
|        \ int previousIndex(steps)                                        |
+--------------------------------------------------------------------------+

Returns the index of the item in the playlist which would be current
after calling :ref:`previous() <sdk_qtmultimedia_playlist#previous-method>`
*steps* times.

Returned value depends on the size of the playlist, the current position
and the playback mode.

**See also**
:ref:`playbackMode <sdk_qtmultimedia_playlist#playbackMode-prop>` and
:ref:`nextIndex() <sdk_qtmultimedia_playlist#nextIndex-method>`.

| 

.. _sdk_qtmultimedia_playlist_bool removeItem-method:

+--------------------------------------------------------------------------+
|        \ bool removeItem(index)                                          |
+--------------------------------------------------------------------------+

Removed the item at the given *index* from the playlist.

Returns true if the *source* is removed successfully.

| 

.. _sdk_qtmultimedia_playlist_bool removeItems-method:

+--------------------------------------------------------------------------+
|        \ bool removeItems(int *start*, int *end*)                        |
+--------------------------------------------------------------------------+

Removes items in the playlist from *start* to **``\end``** inclusive.

Returns true if the items are removed successfully.

| 

.. _sdk_qtmultimedia_playlist_bool save-method:

+--------------------------------------------------------------------------+
|        \ bool save(location, format)                                     |
+--------------------------------------------------------------------------+

Saves the playlist to the given *location*. If *format* is specified, it
is used, otherwise the format is guessed from the location name.

Returns true if the playlist is saved successfully.

| 

.. _sdk_qtmultimedia_playlist_shuffle-method:

+--------------------------------------------------------------------------+
|        \ shuffle()                                                       |
+--------------------------------------------------------------------------+

Shuffles items in the playlist.

| 
