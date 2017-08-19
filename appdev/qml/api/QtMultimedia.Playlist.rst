QtMultimedia.Playlist
=====================

.. raw:: html

   <p>

For specifying a list of media to be played. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Playlist -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtMultimedia 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

currentIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentItemsource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playbackMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

readOnly : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

bool addItem(source)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool addItems(sources)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool clear()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool insertItem(index, source)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url itemSource(index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

load(location, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool moveItem(from, to)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

next()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int nextIndex(steps)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previous()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int previousIndex(steps)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool removeItem(index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool removeItems(int start, int end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool save(location, format)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shuffle()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Playlist-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   <p>

:raw-latex:`\backported`from 5.6

.. raw:: html

   </p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Playlist type provides a way to play a list of media with the
MediaPlayer, Audio and Video types. It can be used as a data source for
view elements (such as ListView) and other elements that interact with
model data (such as Repeater). When used as a data model, each playlist
item's source URL can be accessed using the source role.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">400</span>;
   <span class="name">height</span>: <span class="number">300</span>;
   <span class="type"><a href="QtMultimedia.Audio.md">Audio</a></span> {
   <span class="name">id</span>: <span class="name">player</span>;
   <span class="name">playlist</span>: <span class="name">Playlist</span> {
   <span class="name">id</span>: <span class="name">playlist</span>
   <span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song1.ogg&quot;</span>; }
   <span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song2.ogg&quot;</span>; }
   <span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song3.ogg&quot;</span>; }
   }
   }
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">playlist</span>;
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">font</span>.pixelSize: <span class="number">16</span>;
   <span class="name">text</span>: <span class="name">source</span>;
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>;
   <span class="name">onPressed</span>: {
   <span class="keyword">if</span> (<span class="name">player</span>.<span class="name">playbackState</span> <span class="operator">!=</span> <span class="name">Audio</span>.<span class="name">PlayingState</span>) {
   <span class="name">player</span>.<span class="name">play</span>();
   } <span class="keyword">else</span> {
   <span class="name">player</span>.<span class="name">pause</span>();
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See also MediaPlayer, Audio, and Video.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Playlist -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentIndex : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the position of the current item in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentItemsource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentItemsource : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the source URL of the current item in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentItemsource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the error condition of the playlist.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoError

.. raw:: html

   </td>

.. raw:: html

   <td>

No errors

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FormatError

.. raw:: html

   </td>

.. raw:: html

   <td>

Format error.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FormatNotSupportedError

.. raw:: html

   </td>

.. raw:: html

   <td>

Format not supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NetworkError

.. raw:: html

   </td>

.. raw:: html

   <td>

Network error.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AccessDeniedError

.. raw:: html

   </td>

.. raw:: html

   <td>

Access denied error.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorString : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a string describing the current error condition of
the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemCount : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the number of items in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playbackMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playbackMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the order in which items in the playlist are played.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CurrentItemOnce

.. raw:: html

   </td>

.. raw:: html

   <td>

The current item is played only once.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CurrentItemInLoop

.. raw:: html

   </td>

.. raw:: html

   <td>

The current item is played repeatedly in a loop.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Sequential

.. raw:: html

   </td>

.. raw:: html

   <td>

Playback starts from the current and moves through each successive item
until the last is reached and then stops. The next item is a null item
when the last one is currently playing.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Loop

.. raw:: html

   </td>

.. raw:: html

   <td>

Playback restarts at the first item after the last has finished playing.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Random

.. raw:: html

   </td>

.. raw:: html

   <td>

Play items in random order.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@playbackMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="readOnly-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

readOnly : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates if the playlist can be modified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@readOnly -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool addItem(source)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Appends the source URL to the playlist.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the source is added successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool addItems(sources)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Appends source URLs to the playlist.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the sources are added successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clear-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool clear()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes all the items from the playlist.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the operation is successful.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insertItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool insertItem(index, source)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Inserts the source URL to the playlist at the given index.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the source is added successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insertItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemSource-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

url itemSource(index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the source URL of the item at the given index in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="load-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

load(location, format)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Loads a playlist from the given location. If format is specified, it is
used, otherwise the format is guessed from the location name and the
data.

.. raw:: html

   </p>

.. raw:: html

   <p>

New items are appended to the playlist.

.. raw:: html

   </p>

.. raw:: html

   <p>

onloaded() is emitted if the playlist loads successfully, otherwise
onLoadFailed() is emitted with error and errorString defined
accordingly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@load -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool moveItem(from, to)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Moves the item at the first given index to the second given index.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the source is moved successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="next-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

next()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Advances to the next item in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@next -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nextIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int nextIndex(steps)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the index of the item in the playlist which would be current
after calling next() steps times.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returned value depends on the size of the playlist, the current position
and the playback mode.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also playbackMode and previousIndex().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nextIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previous-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

previous()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns to the previous item in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int previousIndex(steps)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the index of the item in the playlist which would be current
after calling previous() steps times.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returned value depends on the size of the playlist, the current position
and the playback mode.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also playbackMode and nextIndex().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool removeItem(index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removed the item at the given index from the playlist.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the source is removed successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool removeItems(int start, int end)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes items in the playlist from start to \\end inclusive.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the items are removed successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool save(location, format)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Saves the playlist to the given location. If format is specified, it is
used, otherwise the format is guessed from the location name.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the playlist is saved successfully.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shuffle-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

shuffle()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Shuffles items in the playlist.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shuffle -->


