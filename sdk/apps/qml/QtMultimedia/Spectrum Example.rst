.. _sdk_qtmultimedia_spectrum_example:

QtMultimedia Spectrum Example
=============================


*Spectrum* demonstrates how the `Qt Multimedia </sdk/apps/qml/QtMultimedia/qtmultimedia-index/>`_  module can be used to analyze an audio stream while recording it, and also play the recorded stream.

Because Qt Multimedia allows the application to access the raw audio stream, the data can either be inspected or modified by the application. The Spectrum Analyzer example displays three pieces of information while audio is being either captured or played back:

-  Information about the raw audio stream, shown in the uppermost widget:

   -  The amount of data currently in the buffer, shown in blue
   -  The segment of data which was most recently analysed to compute the frequency spectrum, shown in green
   -  The raw audio waveform, shown in white and scrolling from right to left

-  A representation of the frequency spectrum, shown at the lower left
-  The current RMS level of the audio stream, and the recent 'high watermark' level, shown at the lower right

Spectrum analysis is performed by calculating the Fast Fourier Transform (FFT) of a segment of audio data. An open-source library, `FFTReal <http://ldesoras.free.fr/prod.html>`_ , against which the application is dynamically linked, is used to compute the transform.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

Files:

-  spectrum/3rdparty/fftreal/Array.h
-  spectrum/3rdparty/fftreal/DynArray.h
-  spectrum/3rdparty/fftreal/FFTReal.h
-  spectrum/3rdparty/fftreal/FFTRealFixLen.h
-  spectrum/3rdparty/fftreal/FFTRealFixLenParam.h
-  spectrum/3rdparty/fftreal/FFTRealPassDirect.h
-  spectrum/3rdparty/fftreal/FFTRealPassInverse.h
-  spectrum/3rdparty/fftreal/FFTRealSelect.h
-  spectrum/3rdparty/fftreal/FFTRealUseTrigo.h
-  spectrum/3rdparty/fftreal/OscSinCos.h
-  spectrum/3rdparty/fftreal/TestAccuracy.h
-  spectrum/3rdparty/fftreal/TestHelperFixLen.h
-  spectrum/3rdparty/fftreal/TestHelperNormal.h
-  spectrum/3rdparty/fftreal/TestSpeed.h
-  spectrum/3rdparty/fftreal/TestWhiteNoiseGen.h
-  spectrum/3rdparty/fftreal/def.h
-  spectrum/3rdparty/fftreal/fftreal\_wrapper.cpp
-  spectrum/3rdparty/fftreal/fftreal\_wrapper.h
-  spectrum/3rdparty/fftreal/test.cpp
-  spectrum/3rdparty/fftreal/test\_fnc.h
-  spectrum/3rdparty/fftreal/test\_settings.h
-  spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.cpp
-  spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.h
-  spectrum/3rdparty/fftreal/stopwatch/Int64.h
-  spectrum/3rdparty/fftreal/stopwatch/StopWatch.cpp
-  spectrum/3rdparty/fftreal/stopwatch/StopWatch.h
-  spectrum/3rdparty/fftreal/stopwatch/def.h
-  spectrum/3rdparty/fftreal/stopwatch/fnc.h
-  spectrum/app/engine.cpp
-  spectrum/app/engine.h
-  spectrum/app/frequencyspectrum.cpp
-  spectrum/app/frequencyspectrum.h
-  spectrum/app/levelmeter.cpp
-  spectrum/app/levelmeter.h
-  spectrum/app/mainwidget.cpp
-  spectrum/app/mainwidget.h
-  spectrum/app/progressbar.cpp
-  spectrum/app/progressbar.h
-  spectrum/app/settingsdialog.cpp
-  spectrum/app/settingsdialog.h
-  spectrum/app/spectrograph.cpp
-  spectrum/app/spectrograph.h
-  spectrum/app/spectrum.h
-  spectrum/app/spectrumanalyser.cpp
-  spectrum/app/spectrumanalyser.h
-  spectrum/app/tonegenerator.cpp
-  spectrum/app/tonegenerator.h
-  spectrum/app/tonegeneratordialog.cpp
-  spectrum/app/tonegeneratordialog.h
-  spectrum/app/utils.cpp
-  spectrum/app/utils.h
-  spectrum/app/waveform.cpp
-  spectrum/app/waveform.h
-  spectrum/app/wavfile.cpp
-  spectrum/app/wavfile.h
-  spectrum/app/main.cpp
-  spectrum/spectrum.pro
-  spectrum/3rdparty/fftreal/fftreal.pro
-  spectrum/app/app.pro
-  spectrum/app/spectrum.qrc

