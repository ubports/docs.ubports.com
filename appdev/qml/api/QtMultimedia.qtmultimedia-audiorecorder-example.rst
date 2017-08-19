QtMultimedia.qtmultimedia-audiorecorder-example
===============================================

.. raw:: html

   <p>

Audio Recorder demonstrates how to identify the available devices and
supported codecs, and the use of QAudioRecorder class.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="displaying-the-window-and-audio-settings">

Displaying the Window and Audio Settings

.. raw:: html

   </h2>

.. raw:: html

   <p>

We display a window for the user to select the appropriate audio input,
codec, container, and sample rate. Allow a setting of either quality or
bitrate. Finally, the output file can be selected and recording can be
started.

.. raw:: html

   </p>

.. raw:: html

   <p>

The lists are setup using the audioInputs(), supportedAudioCodecs(),
supportedContainers(), supportedContainers(), and
supportedAudioSampleRates() methods. The quality slider is setup from 0
(zero) to QMultimedia::VeryHighQuality with a default value of
QMultimedia::NormalQuality, while the bitrates are hardcoded into the
list.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="recording-audio">

Recording Audio

.. raw:: html

   </h2>

.. raw:: html

   <p>

To record audio we simply create a QAudioRecorder object.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>(<span class="keyword">this</span>);</pre>

.. raw:: html

   <p>

And setup the lists as described above. The text on the record and pause
buttons are toggled depending on the state of the audioRecorder object.
This means that if the state is QMediaRecorder::StoppedState then the
button text will be "Record" and "Pause". In
QMediaRecorder::RecordingState the record button will have the text
"Stop", and in QMediaRecorder::PausedState the pause button will have
the text "Resume".

.. raw:: html

   </p>

.. raw:: html

   <p>

Pressing the buttons will also result in a toggle based on the state. If
recording is stopped, then pressing the record button will setup the
QAudioEncoderSettings based on the values of the selection lists, will
set the encoding settings and container on the audioRecorder object, and
start recording using the record() method.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QAudioEncoderSettings</span> settings;
   settings<span class="operator">.</span>setCodec(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>audioCodecBox)<span class="operator">.</span>toString());
   settings<span class="operator">.</span>setSampleRate(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>sampleRateBox)<span class="operator">.</span>toInt());
   settings<span class="operator">.</span>setBitRate(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>bitrateBox)<span class="operator">.</span>toInt());
   settings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>EncodingQuality(ui<span class="operator">-</span><span class="operator">&gt;</span>qualitySlider<span class="operator">-</span><span class="operator">&gt;</span>value()));
   settings<span class="operator">.</span>setEncodingMode(ui<span class="operator">-</span><span class="operator">&gt;</span>constantQualityRadioButton<span class="operator">-</span><span class="operator">&gt;</span>isChecked() <span class="operator">?</span>
   <span class="type">QMultimedia</span><span class="operator">::</span>ConstantQualityEncoding :
   <span class="type">QMultimedia</span><span class="operator">::</span>ConstantBitRateEncoding);
   <span class="type">QString</span> container <span class="operator">=</span> boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>containerBox)<span class="operator">.</span>toString();
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(settings<span class="operator">,</span> <span class="type">QVideoEncoderSettings</span>()<span class="operator">,</span> container);
   audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();</pre>

.. raw:: html

   <p>

While recording, the status bar of the application is updated with
duration information from the durationChanged signal from the
audioRecorder object.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ui<span class="operator">-</span><span class="operator">&gt;</span>statusbar<span class="operator">-</span><span class="operator">&gt;</span>showMessage(tr(<span class="string">&quot;Recorded %1 sec&quot;</span>)<span class="operator">.</span>arg(duration <span class="operator">/</span> <span class="number">1000</span>));</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

audiorecorder/audiorecorder.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/audiorecorder.h

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/audiorecorder.ui

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/qaudiolevel.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/qaudiolevel.h

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

audiorecorder/audiorecorder.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@audiorecorder -->
