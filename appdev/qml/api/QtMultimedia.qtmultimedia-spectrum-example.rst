QtMultimedia.qtmultimedia-spectrum-example
==========================================

.. raw:: html

   <p>

Spectrum demonstrates how the Qt Multimedia module can be used to
analyze an audio stream while recording it, and also play the recorded
stream.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Because Qt Multimedia allows the application to access the raw audio
stream, the data can either be inspected or modified by the application.
The Spectrum Analyzer example displays three pieces of information while
audio is being either captured or played back:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Information about the raw audio stream, shown in the uppermost widget:

.. raw:: html

   <ul>

.. raw:: html

   <li>

The amount of data currently in the buffer, shown in blue

.. raw:: html

   </li>

.. raw:: html

   <li>

The segment of data which was most recently analysed to compute the
frequency spectrum, shown in green

.. raw:: html

   </li>

.. raw:: html

   <li>

The raw audio waveform, shown in white and scrolling from right to left

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

A representation of the frequency spectrum, shown at the lower left

.. raw:: html

   </li>

.. raw:: html

   <li>

The current RMS level of the audio stream, and the recent 'high
watermark' level, shown at the lower right

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Spectrum analysis is performed by calculating the Fast Fourier Transform
(FFT) of a segment of audio data. An open-source library, FFTReal,
against which the application is dynamically linked, is used to compute
the transform.

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

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/Array.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/DynArray.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTReal.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealFixLen.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealFixLenParam.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealPassDirect.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealPassInverse.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealSelect.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/FFTRealUseTrigo.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/OscSinCos.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/TestAccuracy.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/TestHelperFixLen.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/TestHelperNormal.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/TestSpeed.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/TestWhiteNoiseGen.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/def.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/fftreal\_wrapper.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/fftreal\_wrapper.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/test.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/test\_fnc.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/test\_settings.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/Int64.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/StopWatch.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/StopWatch.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/def.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/stopwatch/fnc.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/engine.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/engine.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/frequencyspectrum.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/frequencyspectrum.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/levelmeter.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/levelmeter.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/mainwidget.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/mainwidget.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/progressbar.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/progressbar.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/settingsdialog.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/settingsdialog.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrograph.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrograph.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrum.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrumanalyser.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrumanalyser.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/tonegenerator.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/tonegenerator.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/tonegeneratordialog.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/tonegeneratordialog.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/utils.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/utils.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/waveform.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/waveform.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/wavfile.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/wavfile.h

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/spectrum.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/3rdparty/fftreal/fftreal.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/app.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

spectrum/app/spectrum.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@spectrum -->
