QtMultimedia.audiooverview
==========================

.. raw:: html

   <h2 id="audio-features">

Audio Features

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Multimedia offers a range of audio classes, covering both low and
high level approaches to audio input, output and processing. In addition
to traditional audio usage, the Qt Audio Engine QML types offer high
level 3D positional audio for QML applications. See that documentation
for more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="audio-implementation-details">

Audio Implementation Details

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Playing Compressed Audio

.. raw:: html

   </h3>

.. raw:: html

   <p>

For playing media or audio files that are not simple, uncompressed
audio, you can use the QMediaPlayer C++ class, or the Audio and
MediaPlayer QML types. The QMediaPlayer class and associated QML types
are also capable of playing video, if required. The compressed audio
formats supported does depend on the operating system environment, and
also what media plugins the user may have installed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is how you play a local file using C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>;
   <span class="comment">// ...</span>
   player<span class="operator">-</span><span class="operator">&gt;</span>setMedia(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;/Users/me/Music/coolsong.mp3&quot;</span>));
   player<span class="operator">-</span><span class="operator">&gt;</span>setVolume(<span class="number">50</span>);
   player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>

.. raw:: html

   <p>

You can also put files (even remote URLs) into a playlist:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>;
   playlist <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlaylist</span>(player);
   playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myfile1.mp3&quot;</span>));
   playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myfile2.mp3&quot;</span>));
   <span class="comment">// ...</span>
   playlist<span class="operator">-</span><span class="operator">&gt;</span>setCurrentIndex(<span class="number">1</span>);
   player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>

.. raw:: html

   <h3>

Recording Audio to a File

.. raw:: html

   </h3>

.. raw:: html

   <p>

For recording audio to a file, the QAudioRecorder class allows you to
compress audio data from an input device and record it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>;
   <span class="type">QAudioEncoderSettings</span> audioSettings;
   audioSettings<span class="operator">.</span>setCodec(<span class="string">&quot;audio/amr&quot;</span>);
   audioSettings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>HighQuality);
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(audioSettings);
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setOutputLocation(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;test.amr&quot;</span>));
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();</pre>

.. raw:: html

   <h3>

Low Latency Sound Effects

.. raw:: html

   </h3>

.. raw:: html

   <p>

In addition to the raw access to sound devices described above, the
QSoundEffect class (and SoundEffect QML type) offers a slightly higher
level way to play sounds. These classes allow you to specify a WAV
format file which can then be played with low latency when necessary.
Both QSoundEffect and SoundEffect have essentially the same API.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can adjust the number of loops a sound effect is played, as well as
the volume (or muting) of the effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

For older, Qt 4.x based applications QSound is also available.
Applications are recommended to use QSoundEffect where possible.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Monitoring Audio Data During Playback or Recording

.. raw:: html

   </h3>

.. raw:: html

   <p>

The QAudioProbe class allows you to monitor audio data being played or
recorded in the higher level classes like QMediaPlayer, QCamera and
QAudioRecorder. After creating your high level class, you can simply set
the source of the probe to your class, and receive audio buffers as they
are processed. This is useful for several audio processing tasks,
particularly for visualization or adjusting gain. You cannot modify the
buffers, and they may arrive at a slightly different time than the media
pipeline processes them.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here's an example of installing a probe during recording:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>;
   <span class="type">QAudioEncoderSettings</span> audioSettings;
   audioSettings<span class="operator">.</span>setCodec(<span class="string">&quot;audio/amr&quot;</span>);
   audioSettings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>HighQuality);
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(audioSettings);
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setOutputLocation(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;test.amr&quot;</span>));
   audioProbe <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioProbe</span>(<span class="keyword">this</span>);
   <span class="keyword">if</span> (audioProbe<span class="operator">-</span><span class="operator">&gt;</span>setSource(audioRecorder)) {
   <span class="comment">// Probing succeeded, audioProbe-&gt;isValid() should be true.</span>
   connect(audioProbe<span class="operator">,</span> SIGNAL(audioBufferProbed(<span class="type">QAudioBuffer</span>))<span class="operator">,</span>
   <span class="keyword">this</span><span class="operator">,</span> SLOT(calculateLevel(<span class="type">QAudioBuffer</span>)));
   }
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();
   <span class="comment">// Now audio buffers being recorded should be signaled</span>
   <span class="comment">// by the probe, so we can do things like calculating the</span>
   <span class="comment">// audio power level, or performing a frequency transform</span></pre>

.. raw:: html

   <h3>

Low Level Audio Playback and Recording

.. raw:: html

   </h3>

.. raw:: html

   <p>

Qt Multimedia offers classes for raw access to audio input and output
facilities, allowing applications to receive raw data from devices like
microphones, and to write raw data to speakers or other devices.
Generally these classes do not do any audio decoding, or other
processing, but they can support different types of raw audio data.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QAudioOutput class offers raw audio data output, while QAudioInput
offers raw audio data input. Both classes have adjustable buffers and
latency, so they are suitable for both low latency use cases (like games
or VOIP) and high latency (like music playback). The available hardware
determines what audio outputs and inputs are available.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Push and Pull

.. raw:: html

   </h4>

.. raw:: html

   <p>

The low level audio classes can operate in two modes - push and pull. In
pull mode, the audio device is started by giving it a QIODevice. For an
output device, the QAudioOutput class will pull data from the QIODevice
(using QIODevice::read()) when more audio data is required. Conversely,
for pull mode with QAudioInput, when audio data is available then the
data will be written directly to the QIODevice.

.. raw:: html

   </p>

.. raw:: html

   <p>

In push mode, the audio device provides a QIODevice instance that can be
written or read to as needed. Typically this results in simpler code but
more buffering, which may affect latency.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Decoding Compressed Audio to Memory

.. raw:: html

   </h3>

.. raw:: html

   <p>

In some cases you may want to decode a compressed audio file and do
further processing yourself (for example, mixing multiple samples or
using custom digital signal processing algorithms). QAudioDecoder
supports decoding local files or data streams from QIODevice instances.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here's an example of decoding a local file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QAudioFormat</span> desiredFormat;
   desiredFormat<span class="operator">.</span>setChannelCount(<span class="number">2</span>);
   desiredFormat<span class="operator">.</span>setCodec(<span class="string">&quot;audio/x-raw&quot;</span>);
   desiredFormat<span class="operator">.</span>setSampleType(<span class="type">QAudioFormat</span><span class="operator">::</span>UnSignedInt);
   desiredFormat<span class="operator">.</span>setSampleRate(<span class="number">48000</span>);
   desiredFormat<span class="operator">.</span>setSampleSize(<span class="number">16</span>);
   <span class="type">QAudioDecoder</span> <span class="operator">*</span>decoder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioDecoder</span>(<span class="keyword">this</span>);
   decoder<span class="operator">-</span><span class="operator">&gt;</span>setAudioFormat(desiredFormat);
   decoder<span class="operator">-</span><span class="operator">&gt;</span>setSourceFilename(<span class="string">&quot;level1.mp3&quot;</span>);
   connect(decoder<span class="operator">,</span> SIGNAL(bufferReady())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(readBuffer()));
   decoder<span class="operator">-</span><span class="operator">&gt;</span>start();
   <span class="comment">// Now wait for bufferReady() signal and call decoder-&gt;read()</span></pre>

.. raw:: html

   <h2 id="examples">

Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are both C++ and QML examples available.

.. raw:: html

   </p>

.. raw:: html

   <h3>

C++ Examples

.. raw:: html

   </h3>

.. raw:: html

   <h2 id="reference-documentation">

Reference Documentation

.. raw:: html

   </h2>

.. raw:: html

   <h3>

C++ Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Contains enums used by the audio classes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioBuffer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a collection of audio samples with a specific format and
sample rate

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioBuffer::StereoFrame

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Simple wrapper for a stereo audio frame

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioDecoder

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Allows decoding audio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioDeviceInfo

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface to query audio devices and their functionality

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioFormat

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Stores audio stream parameter information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioInput

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for receiving audio data from an audio input device

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioOutput

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for sending audio data to an audio output device

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAudioProbe

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Allows you to monitor audio being played or recorded

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSound

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Method to play .wav sound files

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSoundEffect

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Way to play low latency sound effects

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

QML Types

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Audio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Add audio playback to a scene

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MediaPlayer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Add media playback to a scene

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Playlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

For specifying a list of media to be played

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PlaylistItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Defines an item in a Playlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

SoundEffect

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a way to play sound effects in QML

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@audiooverview.html -->
